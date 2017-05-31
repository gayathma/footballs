<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsForOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->text('shipping_address')->after('team_name')->nullable();
            $table->text('comments')->after('shipping_address')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('orders', 'shipping_address')) {
            Schema::table('orders', function(Blueprint $table)
            {
                 $table->dropColumn('shipping_address');
            });
        }

        if (Schema::hasColumn('orders', 'comments')) {
            Schema::table('orders', function(Blueprint $table)
            {
                 $table->dropColumn('comments');
            });
        }
    }
}
