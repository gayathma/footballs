<?php namespace CoasterCms\Http\Controllers\AdminControllers;

use Auth;
use CoasterCms\Helpers\Cms\Page\Path;
use CoasterCms\Http\Controllers\AdminController as Controller;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Page;
use App\Size;
use Request;
use Response;
use Validator;
use View;

class SizesController extends Controller
{

    private $page_names = '';


    public function getIndex()
    {
        $sizes = Size::all();
        $this->layoutData['modals'] = View::make('coaster::modals.general.delete_item')->render().View::make('coaster::modals.sizes.add')->render();
        $this->layoutData['content'] = View::make('coaster::pages.sizes', array('sizes' => $sizes, 'can_add' => Auth::action('sizes.add'), 'can_delete' => Auth::action('sizes.delete'), 'can_edit' => Auth::action('sizes.edit')));

    }


    public function postDelete($sizeId = 0)
    {
        $error = 'Size with ID '.$sizeId.' not found';
        if ($size = Size::find($sizeId)) {
            return json_encode($size->delete());
        }

        return Response::make($error, 500);
    }

    public function postAdd()
    {
        $v = Validator::make(Request::all(), array(
            'size' => 'required'
        ));
        if ($v->passes()) {
            $size = new Size;
            $size->size = Request::input('size');
            $size->save();

            return $size->id;
        }
        return 0;
    }



    

}