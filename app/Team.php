<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Team extends Model {


	protected $table = 'team';

	protected $fillable = ['team_name','age_group','postcode','first_name','last_name', 'position', 'email', 'phone'
    , 'comments', 'code'];


}