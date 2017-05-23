<?php namespace CoasterCms\Http\Controllers\AdminControllers;

use Auth;
use CoasterCms\Helpers\Cms\Page\Path;
use CoasterCms\Http\Controllers\AdminController as Controller;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Page;
use App\MyCustomProduct as Product;
use Request;
use Response;
use Validator;
use View;

class ProductsController extends Controller
{

    private $page_names = '';


    public function getIndex()
    {
        $products = Product::all()->toArray();
        $this->layoutData['modals'] = View::make('coaster::modals.general.delete_item')->render().View::make('coaster::modals.products.add')->render();
        $this->layoutData['content'] = View::make('coaster::pages.products', array('products' => $products, 'can_add' => Auth::action('products.add'), 'can_delete' => Auth::action('products.delete'), 'can_edit' => Auth::action('products.edit')));

    }


    public function postDelete($productId = 0)
    {
        $error = 'Product with ID '.$productId.' not found';
        if ($product = Product::find($productId)) {
            return json_encode($product->delete());
        }

        return Response::make($error, 500);
    }

    public function postAdd()
    {
        $v = Validator::make(Request::all(), array(
            'product_name' => 'required',
            '1_2_price' => 'required',
            '3_4_price' => 'required',
            '5_9_price' => 'required',
            '10_15_price' => 'required',
            '16_24_price' => 'required',
            '25_49_price' => 'required',
            '50_5000_price' => 'required'
        ));
        if ($v->passes()) {
            //dd(Request::all());die;
            $product = new Product;
            
            $product['product_name'] = Request::input('product_name');
            $product['1_2_price'] = Request::input('1_2_price');
            $product['3_4_price'] = Request::input('3_4_price');
            $product['5_9_price'] = Request::input('5_9_price');
            $product['10_15_price'] = Request::input('10_15_price');
            $product['16_24_price'] = Request::input('16_24_price');
            $product['25_49_price'] = Request::input('25_49_price');
            $product['50_5000_price'] = Request::input('50_5000_price');
            $product['sku'] = Request::input('product_name');
            $product['user_id'] = Auth::user()->id;
            $product->save();

            return $product->id;
        }
        return 0;
    }

    public function postUpdate()
    {
        $v = Validator::make(Request::all(), array(
            'product_name' => 'required',
            '1_2_price' => 'required',
            '3_4_price' => 'required',
            '5_9_price' => 'required',
            '10_15_price' => 'required',
            '16_24_price' => 'required',
            '25_49_price' => 'required',
            '50_5000_price' => 'required'
        ));
        $productId = Request::input('id');
        $product = Product::find($productId);

        if (!empty($product)) {
            $product['product_name'] = Request::input('product_name');
            $product['1_2_price'] = Request::input('1_2_price');
            $product['3_4_price'] = Request::input('3_4_price');
            $product['5_9_price'] = Request::input('5_9_price');
            $product['10_15_price'] = Request::input('10_15_price');
            $product['16_24_price'] = Request::input('16_24_price');
            $product['25_49_price'] = Request::input('25_49_price');
            $product['50_5000_price'] = Request::input('50_5000_price');
            $product['sku'] = Request::input('product_name');
            $size->save();

            return 1;
        }
        return null;
    }



    

}