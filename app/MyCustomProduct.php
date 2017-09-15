<?php

namespace App;

use Amsgames\LaravelShop\Traits\ShopItemTrait;
use Illuminate\Database\Eloquent\Model;

class MyCustomProduct extends Model {

	use ShopItemTrait;

	// MY METHODS AND MODEL DEFINITIONS........
	protected $itemName = 'product_name';

}