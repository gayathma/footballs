<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Backup;

class Size extends Model {


	protected $table = 'item_size';

	protected $fillable = ['size'];

    public function delete()
    {
        $log_id = AdminLog::new_log('Size ID \'' . $this->id . '\' deleted');
        Backup::new_backup($log_id, '\App\Size', $this);

        // delete data
        parent::delete();

        return $log_id;
    }


}