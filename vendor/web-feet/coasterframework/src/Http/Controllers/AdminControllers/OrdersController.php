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
        $this->layoutData['content'] = View::make('coaster::pages.orders', array('orders' => $orders, 'can_delete' => Auth::action('orders.delete'), 'can_edit' => Auth::action('orders.edit'), 'can_export' => Auth::action('orders.csv'), 'export_link' => route('coaster.admin.orders.csv'))); 
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

    public function getCsv()
    {
            $csv = array();
            $columns = array();
            $column = 2;
            $row = 1;
            $orders = Order::orderBy('id', 'desc')->get();
            if (!$orders->isEmpty()) {
                foreach ($orders as $order) {
                    $csv[$row] = array();
                    $csv[$row][0] = $order->created_at;
                    $csv[$row][1] = $order->user->name;
                    $csv[$row][2] = $order->user->email;
                    $csv[$row][3] = $order->team_name;
                    $csv[$row][4] = $order->shipping_address;
                    $csv[$row][5] = $order->comments;
                    $count  = 0;
                    foreach ($order->items as $item):
                        $count += $item->quantity;
                    endforeach;
                    $csv[$row][6] = $count;
                    $csv[$row][7] = $order->getDisplayTotalPriceAttribute();

                    
                    $row++;
                }
                // add row titles
                $csv[0][0] = 'Date/Time';
                $csv[0][1] = 'Customer Name';
                $csv[0][2] = 'Email';
                $csv[0][3] = 'Team Name';
                $csv[0][4] = 'Shipping Address';
                $csv[0][5] = 'Comments';
                $csv[0][6] = 'No of Items';
                $csv[0][7] = 'Total Amount';

                $numb_columns = count($columns);
                foreach ($csv as $row_id => $csv_row) {
                    for ($i = 0; $i < $numb_columns; $i++) {
                        if (!isset($csv_row[$i])) {
                            $csv[$row_id][$i] = '';
                        }
                    }
                    ksort($csv[$row_id]);
                }
                ksort($csv);
                header("Content-type: text/csv");
                header("Content-Disposition: attachment; filename=orders.csv");
                header("Pragma: no-cache");
                header("Expires: 0");
                $output = fopen("php://output", "w");
                foreach ($csv as $csv_row) {
                    fputcsv($output, $csv_row); // here you can change delimiter/enclosure
                }
                fclose($output);
            }
            exit;
        
    }

    

}