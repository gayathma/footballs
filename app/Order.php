<?php

namespace App;

use Amsgames\LaravelShop\Models\ShopOrderModel;
use CoasterCms\Models\AdminLog;
use CoasterCms\Models\Backup;

class Order extends ShopOrderModel 
{


	public function delete()
    {
        $log_id = AdminLog::new_log('Order # \'' . $this->id . '\' deleted');
        Backup::new_backup($log_id, '\App\Order', $this);

        // delete data
        parent::delete();

        return $log_id;
    }
}