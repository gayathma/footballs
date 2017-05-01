<?php namespace CoasterCms\Http\Controllers\AdminControllers;

use Auth;
use CoasterCms\Helpers\Cms\Page\Path;
use CoasterCms\Http\Controllers\AdminController as Controller;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Page;
use App\Order;
use Request;
use Response;
use View;

class SizesController extends Controller
{

    private $page_names = '';


    public function getIndex()
    {
        $sizes = Order::all();
        $this->layoutData['modals'] = View::make('coaster::modals.general.delete_item');
        $this->layoutData['content'] = View::make('coaster::pages.sizes', array('sizes' => $sizes, 'can_add' => Auth::action('sizes.add'), 'can_delete' => Auth::action('sizes.delete'), 'can_edit' => Auth::action('sizes.edit')));
    }


    public function postDelete($orderId = 0)
    {
        $error = 'Order with # '.$orderId.' not found';
        if ($order = Order::find($orderId)) {
            return json_encode($order->delete());
        }

        return Response::make($error, 500);
    }

    

}