<?php namespace CoasterCms\Http\Controllers\AdminControllers;

use Auth;
use CoasterCms\Helpers\Cms\Page\Path;
use CoasterCms\Http\Controllers\AdminController as Controller;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Menu;
use CoasterCms\Models\MenuItem;
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
        $orders = Order::all();
        $this->layoutData['modals'] = View::make('coaster::modals.general.delete_item');
        $this->layoutData['content'] = View::make('coaster::pages.orders', array('orders' => $orders, 'can_delete' => Auth::action('orders.delete'), 'can_edit' => Auth::action('orders.edit')));
    }

    public function postAdd()
    {
        $menu_id = Request::input('menu');
        $page_id = Request::input('id');
        $last_item = MenuItem::where('menu_id', '=', $menu_id)->orderBy('order', 'desc')->first();
        if (!empty($last_item)) {
            $order = $last_item->order + 1;
        } else {
            $order = 1;
        }
        $new_item = new MenuItem;
        $new_item->menu_id = $menu_id;
        $new_item->page_id = $page_id;
        $new_item->order = $order;
        $new_item->sub_levels = 0;
        $new_item->save();
        $this->preload_menu_item_names();
        $item_name = $this->page_names[$page_id];
        AdminLog::new_log('Menu Item \'' . $item_name . '\' added to \'' . Menu::name($menu_id) . '\'');
        return $new_item->id;
    }

    public function postDelete($itemId)
    {
        if ($menu_item = MenuItem::find($itemId)) {
            $menu_item->delete();
            return $menu_item->getJSONLogIds();
        }
        return Response::make('Menu item with ID '.$itemId.' not found', 500);
    }

    public function postSort()
    {
        $order = 1;
        $items = Request::input('list');
        $menuId = 0;
        foreach ($items as $item) {
            $current_item = MenuItem::find($item);
            $current_item->order = $order++;
            $current_item->save();
            $menuId = $current_item->menu_id;
        }
        AdminLog::new_log('Items re-ordered in menu \'' . Menu::name($menuId) . '\'');
        return 1;
    }

    public function postGetLevels()
    {
        $itemId = substr(Request::input('id'), 5);
        $item = MenuItem::find($itemId);
        if (!empty($item)) {
            return $item->sub_levels;
        }
        return null;
    }

    public function postSaveLevels()
    {
        $itemId = substr(Request::input('id'), 5);
        $item = MenuItem::find($itemId);
        if (!empty($item)) {
            $menu = Menu::find($item->menu_id);
            $item->sub_levels = Request::input('sub_level') > $menu->max_sublevel ? $menu->max_sublevel : Request::input('sub_level');
            $item->save();
            // log action
            AdminLog::new_log('Change sub levels for menu item \'' . Path::getFullName($item->page_id) . '\' in \'' . Menu::name($item->menu_id) . '\' to ' . $item->sub_levels);
            return 1;
        }
        return null;
    }

    public function postRename()
    {
        $itemId = substr(Request::input('id'), 5);
        $item = MenuItem::find($itemId);
        if (!empty($item)) {
            $item->custom_name = Request::input('custom_name');
            $item->save();
            $this->preload_menu_item_names();
            // log action
            $item_name = $this->page_names[$item->page_id];
            if ($item->custom_name) {
                AdminLog::new_log('Renamed menu item \'' . $item_name . '\' in \'' . Menu::name($item->menu_id) . '\' to ' . $item->custom_name);
            } else {
                AdminLog::new_log('Removed custom name for menu item \'' . $item_name . '\' in \'' . Menu::name($item->menu_id) . '\'');
            }
            return 1;
        }
        return null;
    }

}