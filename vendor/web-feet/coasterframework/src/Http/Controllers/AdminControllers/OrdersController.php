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

    public function getEdit($orderId = 0, $action = null)
    {
        $order = Order::find($orderId);
        $authUser = Auth::user();
        if (!empty($order)) {
                if ($authUser->role->admin) {
                    $can_edit = true;
                } else {
                    $can_edit = false;
                }
                $this->layoutData['content'] = View::make('coaster::pages.orders.edit', array('order' => $order, 'can_edit' => $can_edit));
        
        } else {
            $this->layoutData['content'] = 'Order not found';
        }
    }


    public function postDelete($orderId = 0)
    {
        $error = 'Order with # '.$orderId.' not found';
        if ($order = Order::find($orderId)) {
            return json_encode($order->delete());
        }

        return Response::make($error, 500);
    }

    public function getDownload($orderId = 0, $action = null)
    {
        $zipname = storage_path('app').'/footballzip/order_'.$orderId.'.zip';
        $name = 'order_'.$orderId.'.zip';
        $headers = array(
          'Content-Type' => 'application/zip',
          'Content-Disposition' => sprintf('attachment; filename="%s"', $name),
          'Content-Length' => sizeof($name),
          );

        return Response::download($zipname, $name, $headers);

    }

    

}