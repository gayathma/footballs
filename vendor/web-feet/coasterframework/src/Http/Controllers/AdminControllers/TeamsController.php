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
        $teams = Team::orderBy('id', 'desc')->paginate(10);
        $this->layoutData['content'] = View::make('coaster::pages.teams', array('teams' => $teams, 'can_export' => Auth::action('teams.csv'), 'export_link' => route('coaster.admin.teams.csv')));

    }

    public function getCsv()
    {
            $csv = array();
            $columns = array();
            $column = 2;
            $row = 1;
            $teams = Team::orderBy('id', 'desc')->get();
            if (!$teams->isEmpty()) {
                foreach ($teams as $team) {
                    $csv[$row] = array();
                    $csv[$row][0] = $team->created_at;
                    $csv[$row][1] = $team->team_name;
                    $csv[$row][2] = $team->age_group;
                    $csv[$row][3] = $team->postcode;
                    $csv[$row][4] = $team->first_name.' '.$team->last_name;
                    $csv[$row][5] = $team->position;
                    $csv[$row][6] = $team->email;
                    $csv[$row][7] = $team->phone;
                    $csv[$row][8] = $team->code;
                    $csv[$row][9] = $team->comments;

                    
                    $row++;
                }
                // add row titles
                $csv[0][0] = 'Date/Time';
                $csv[0][1] = 'Grassroots Team Name';
                $csv[0][2] = 'Age Group';
                $csv[0][3] = 'Post Code';
                $csv[0][4] = 'Contact Name';
                $csv[0][5] = 'Position';
                $csv[0][6] = 'Email';
                $csv[0][7] = 'Phone Number';
                $csv[0][8] = 'Code';
                $csv[0][9] = 'Comments';
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
                header("Content-Disposition: attachment; filename=teams.csv");
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