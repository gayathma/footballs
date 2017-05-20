<?php namespace CoasterCms\Http\Controllers;

use Illuminate\Support\Facades\Config;
use CoasterCms\Events\Cms\GeneratePage\LoadedPageResponse;
use CoasterCms\Events\Cms\GeneratePage\LoadErrorTemplate;
use CoasterCms\Events\Cms\GeneratePage\LoadPageTemplate;
use CoasterCms\Exceptions\CmsPageException;
use CoasterCms\Helpers\Cms\Html\DOMDocument;
use CoasterCms\Helpers\Cms\Page\Search;
use CoasterCms\Libraries\Builder\PageBuilder;
use CoasterCms\Models\Block;
use CoasterCms\Models\PageRedirect;
use CoasterCms\Models\PageVersionSchedule;
use Exception;
use CoasterCms\Models\User;
use Illuminate\Routing\Controller;
use App\Share;
use App\Order;
use App\Cart;
use App\MyCustomProduct;
use Request;
use Response;
use Hash;
use View;
use Auth;
use Storage;
use ZipArchive;
use Mail;

class OrderProcessController extends Controller
{

    /**
     * @var array
     */
    protected $headers;

    /**
     * @var int
     */
    protected $responseCode;

    /**
     * @var string|\Symfony\Component\HttpFoundation\Response
     */
    protected $responseContent;

    /**
     * OrderProcessController constructor.
     */
    public function __construct()
    {
        $this->headers = [];
        $this->responseCode = 200;
        $this->responseContent = '';
    }

    public function postOrder(Request $request)
    {


        $data = json_decode($request::getContent(),true);

        //Find User or Create New User
        $email = $data['email'];
        $user = User::where('email', $email) -> first();

        if(is_null($user)){

            $new_user = new User;
            $new_user->email = $email;
            $new_user->name = $data['name'];
            $new_user->role_id = 5;
            $new_user->password = Hash::make('123456');
            $new_user->save();

            $user = User::where('email', $email) -> first();
        }

        Auth::setUser($user);
        $status = false;
        $total = 0;

        if(Auth::user()) {
            $orders = $data['order'];
            Auth::setUser($user);
            $cart = Cart::current();

            foreach ($orders as $order) {
                $shopItem = MyCustomProduct::find($order['itemId']);
                $total += $order['price'];
                $cart->add($shopItem, $order['quantity'], $order['price'], $order['size']);
            }           

            
            $order = $cart->placeOrder([
                    'team_name' => $data['team']
                ]);

            $folder = 'footballs/order_'.$order->id;

            $this->saveImages($data['screenshot1'], $folder.'/'. uniqid() . '.png');
            $this->saveImages($data['screenshot2'], $folder.'/'. uniqid() . '.png');

            if(!is_null($data['logo1']) && $data['logo1']!='no logo uploaded'){
                $this->saveImages($data['logo1'], $folder.'/'. uniqid() . '.png');
            }

            if(!is_null($data['logo2']) && $data['logo2']!='no logo uploaded'){
                $this->saveImages($data['logo2'], $folder.'/'. uniqid() . '.png');
            }

            $this->writeFootballData($data, $folder);

            //Zip File Creation
            $path = storage_path('app').'/footballzip/';
            $zip = new ZipArchive;
            $zip->open($path.'order_'.$order->id.'.zip', ZipArchive::CREATE);
            foreach ( glob( public_path().'/uploads/'.$folder.'/*') as $fileName )
            {
                    $file = basename( $fileName );
                    $zip->addFile(public_path().'/uploads/'.$folder.'/'.$file, $file );
            }
            $zip->close();
            $status = true;

        }


        return json_encode(array('tot' => $total*100, 'status' => $status, 'order_id' =>$order->id ));


    }

    public function postPayment(Request $request)
    {
        $data = json_decode($request::getContent(),true);

        $order = Order::find($data['orderId']);

        \Stripe\Stripe::setApiKey(Config::get('shop.stripe_sk'));

        $token = $data['token'];
        $amount = $data['tot'];
        $email = $data['email'];
        $emailCheck = User::where('email', $email)->first();

        

        // If the email doesn't exist in the database create new customer and user record
        if (is_null($emailCheck) || empty($emailCheck->stripe_customer_id)) {
            // Create a new Stripe customer
            try {
                $customer = \Stripe\Customer::create([
                    'source' => $token,
                    'email' => $email
                ]);
            } catch (\Stripe\Error\Card $e) {
                return json_encode(['status'=>'error', 'message'=> $e->getMessage()]);
            }

            $customerID = $customer->id;

            if(is_null($emailCheck)){
                $new_user = new User;
                $new_user->email = $email;
                $new_user->name = 'Stripe User';
                $new_user->role_id = 5;
                $new_user->password = Hash::make('123456');
                $new_user->stripe_customer_id = $customerID;
                $new_user->save();

            }else{
                $emailCheck->stripe_customer_id = $customerID;
                $emailCheck->save();
            }

        } else {
            $customerID = $emailCheck->stripe_customer_id;
        }

        // Charging the Customer with the selected amount
        try {
            $charge = \Stripe\Charge::create([
                'amount' => $amount,
                'currency' => 'gbp',
                'customer' => $customerID,
                'metadata' => [
                        'order_id' => $order->id
                    ]
                ]);
        } catch (\Stripe\Error\Card $e) {
            return json_encode(['status'=>'error', 'message'=> $e->getMessage()]);
        }

        // Create purchase record in the database

        $transaction = $order->placeTransaction(
                $gateway                = 'stripe',
                $token                  = $token,
                $transactionId          = $charge->id,
                $detail                 = $customerID
        );

        //E- mail function
        $subject = 'New Order | ID '.$order->id;
        $body    = 'Please find attached zip file with order details';
        $name = $email;
        Mail::queue('themes.default.emails.default', [
                'body' => $body
            ], function ($message) use ($email, $name, $subject, $order) {
                $message->to($email, $name)->subject($subject)
                        ->cc('gayathma3@gmail.com', $name)->subject($subject)
                        ->attach(storage_path('app').'/footballzip/order_'.$order->id.'.zip');
            });

        return json_encode(['status'=>'successful', 'message'=> 'You have successfully placed the order. You will receive a confirmation email with order details shortly. Thank you.!']);

    }

    public function postShare(Request $request)
    {
        $data = json_decode($request::getContent(),true);

        $share = Share::create([
                'layer_one_color' => $data['layer1color'],
                'layer_two_color' => $data['layer2color'],
                'logo_one' => 'logo1.png',
                'logo_two' => 'logo2.png',
                'design' => $data['design']
            ]);

        $folder = 'share/sh_'.$share->id;

        if(!is_null($data['logo1']) && $data['logo1']!='no logo uploaded'){
            $this->saveImages($data['logo1'], $folder.'/logo1.png');
        }

        if(!is_null($data['logo2']) && $data['logo2']!='no logo uploaded'){
            $this->saveImages($data['logo2'], $folder.'/logo2.png');
        }

        return $share->id;
    }



    private function saveImages($img, $folder){

        $img = str_replace('data:image/png;base64,', '', $img);
        $img = str_replace(' ', '+', $img);
        $data = base64_decode($img);
        Storage::disk('uploads')->put($folder, $data);
        return true;
    }


    function writeFootballData($data, $folder){

        $current = "Customer Name : ".$data['name']."\r\n";
        $current .= "Customer email : ".$data['email']."\r\n";
        $current .= "Team Name : ".$data['team']."\r\n";
        $current .= "Layer one color : ".$data['layer1color']."\r\n";
        $current .= "Layer two color : ".$data['layer2color']."\r\n";
        $current .= "Design selected : ".$data['design']."\r\n";

        Storage::disk('uploads')->put($folder.'/'.'details.txt', $current);

    }

    function sendeamilConfirmation($data,$orderID){


        $email = new PHPMailer();
        $email->From      = $data['email'];
        $email->FromName  = $data['email'];
        $email->Subject   = 'New Order | ID '.$orderID;
        $email->Body      = 'Please find attached zip file with order details';
        $email->AddAddress( 'richard@1v1footballs.com' );
        $email->AddAddress( 'shamain.kolourbox@gmail.com' );

        $file_to_attach = UPLOAD_DIR.'/file.zip';

        $email->AddAttachment( $file_to_attach , 'file.zip' );

        return $email->Send();

    }

    

    

}