<?php namespace CoasterCms\Http\Controllers;

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

            $this->saveImages($data['screenshot1'], $folder);
            $this->saveImages($data['screenshot2'], $folder);

            if(!is_null($data['logo1']) && $data['logo1']!='no logo uploaded'){
                $this->saveImages($data['logo1'], $folder);
            }

            if(!is_null($data['logo2']) && $data['logo2']!='no logo uploaded'){
                $this->saveImages($data['logo2'], $folder);
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

        $tocken = $data['token'];
        $amount = $data['tot'];
        $email = $data['email'];
        $emailCheck = \Stripe\Customer::where('email', $email)->value('email');

        \Stripe\Stripe::setApiKey(Config::get('shop.stripe_sk'));

        // If the email doesn't exist in the database create new customer and user record
        if (!isset($emailCheck)) {
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

        } else {
            $customerID = \Stripe\Customer::find('email', $email)->value('id');
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
                $tocken                 = $tocken,
                $transactionId          = $charge->id,
                $detail                 = 'Stripe Customer ID:'.$customerID
        );

        return json_encode(['status'=>'successful', 'message'=> 'Your purchase was successful!']);

    }

    private function saveImages($img, $folder){

        $img = str_replace('data:image/png;base64,', '', $img);
        $img = str_replace(' ', '+', $img);
        $data = base64_decode($img);
        Storage::disk('uploads')->put($folder.'/'. uniqid() . '.png', $data);
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