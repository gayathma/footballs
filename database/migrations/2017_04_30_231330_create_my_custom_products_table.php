<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMyCustomProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('my_custom_products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('product_name');
            $table->string('sku');
            $table->decimal('1_2_price', 20, 2);
            $table->decimal('3_4_price', 20, 2);
            $table->decimal('5_9_price', 20, 2);
            $table->decimal('10_15_price', 20, 2);
            $table->decimal('16_24_price', 20, 2);
            $table->decimal('25_49_price', 20, 2);
            $table->decimal('50_5000_price', 20, 2);
            $table->integer('user_id')->unsigned();
            $table->timestamps();
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unique(['product_name']);
        });

        Schema::create('item_size', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('size');
            $table->timestamps();
        });

        Schema::table('items', function (Blueprint $table) {
            $table->integer('size_id')->after('order_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
         Schema::drop('my_custom_products');
         Schema::drop('item_size');

         if (Schema::hasColumn('items', 'size_id')) {
            Schema::table('items', function(Blueprint $table)
            {
                 $table->dropColumn('size_id');
            });
        }
    }
}
