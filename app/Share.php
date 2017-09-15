<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Share extends Model {


	protected $table = 'share';

	protected $fillable = ['layer_one_color','layer_two_color','logo_one','logo_two','design'];


}