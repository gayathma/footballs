<?php namespace CoasterCms\Http\Controllers\AdminControllers;

use Auth;
use CoasterCms\Helpers\Cms\Page\Path;
use CoasterCms\Http\Controllers\AdminController as Controller;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Page;
use App\Team;
use Request;
use Response;
use Validator;
use View;

class TeamsController extends Controller
{

    private $page_names = '';


    public function getIndex()
    {
        $teams = Team::all();
        $this->layoutData['content'] = View::make('coaster::pages.teams', array('teams' => $teams));

    }


}