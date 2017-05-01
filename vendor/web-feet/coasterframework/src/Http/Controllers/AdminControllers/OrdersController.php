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

class OrdersController extends Controller
{

    private $page_names = '';


    public function getIndex()
    {
        $orders = Order::orderBy('id', 'desc')->paginate(10);
        $this->layoutData['modals'] = View::make('coaster::modals.general.delete_item');
        $this->layoutData['content'] = View::make('coaster::pages.orders', array('orders' => $orders, 'can_delete' => Auth::action('orders.delete'), 'can_edit' => Auth::action('orders.edit')));
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