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
        if(Auth::user()) {
            $orders = $data['order'];
            Auth::setUser($user);
            $cart = Cart::current();

            foreach ($orders as $order) {
                $shopItem = MyCustomProduct::find($order['itemId']);
                $cart->add($shopItem, $order['price'],  $order['size'], $order['quantity']);
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
die;
        }


        // define('UPLOAD_DIR', tempdir());

        // if(isset($data['data']['screenshot'])){
        //     saveScreenshot($data['data']['screenshot']);
        // }

        // if(isset($data['data']['logo'])){

        //     saveLogo($data['data']['logo']);
        // }

        // writeFotballData($data['data']);
        // //doZip();

        // Zip(UPLOAD_DIR, UPLOAD_DIR.'/file.zip');
        // sendeamilConfirmation($data['data'],explode("/",UPLOAD_DIR)[1]);
        echo 'success';


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

    function doZip(){
    // Get real path for our folder
        $rootPath = UPLOAD_DIR;

    // Initialize archive object
        $zip = new ZipArchive();
        $zip->open(UPLOAD_DIR.'/file.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);

    // Create recursive directory iterator
        /** @var SplFileInfo[] $files */
        $files = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($rootPath),
            RecursiveIteratorIterator::LEAVES_ONLY
            );

        foreach ($files as $name => $file)
        {
    // Skip directories (they would be added automatically)
            if (!$file->isDir())
            {
        // Get real and relative path for current file
                $filePath = $file->getRealPath();
                $relativePath = substr($filePath, strlen($rootPath) + 1);

        // Add current file to archive
                $zip->addFile($filePath, $relativePath);
            }
        }

    // Zip archive will be created only after closing object
        $zip->close();


    }

    function Zip($source, $destination)
    {
        if (!extension_loaded('zip') || !file_exists($source)) {
            return false;
        }

        $zip = new ZipArchive();
        if (!$zip->open($destination, ZIPARCHIVE::CREATE)) {
            return false;
        }

        $source = str_replace('\\', '/', realpath($source));

        if (is_dir($source) === true)
        {
            $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);

            foreach ($files as $file)
            {
                $file = str_replace('\\', '/', $file);

            // Ignore "." and ".." folders
                if( in_array(substr($file, strrpos($file, '/')+1), array('.', '..')) )
                    continue;

                $file = realpath($file);

                if (is_dir($file) === true)
                {
                    $zip->addEmptyDir(str_replace($source . '/', '', $file . '/'));
                }
                else if (is_file($file) === true)
                {
                    $zip->addFromString(str_replace($source . '/', '', $file), file_get_contents($file));
                }
            }
        }
        else if (is_file($source) === true)
        {
            $zip->addFromString(basename($source), file_get_contents($source));
        }

        return $zip->close();
    }

    

}