<?php namespace CoasterCms\Models;

use Auth;
use Carbon\Carbon;
use CoasterCms\Libraries\Builder\FormMessage;
use Hash;
use Illuminate\Auth\Authenticatable;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Eloquent;
use Request;
use Validator;
use Amsgames\LaravelShop\Traits\ShopUserTrait;

class User extends Eloquent implements AuthenticatableContract, AuthorizableContract, CanResetPasswordContract
{
    use Authenticatable, Authorizable, CanResetPassword, ShopUserTrait;

    protected $table = 'users';
    protected $hidden = ['password', 'remember_token'];
    protected static $_aliases;

    public function getAuthIdentifier()
    {
        return $this->getKey();
    }

    public function getAuthPassword()
    {
        return $this->password;
    }

    public function getRememberToken()
    {
        return $this->remember_token;
    }

    public function setRememberToken($value)
    {
        $this->remember_token = $value;
    }

    public function getRememberTokenName()
    {
        return 'remember_token';
    }

    public function getReminderEmail()
    {
        return $this->email;
    }

    public function role()
    {
        return $this->belongsTo('CoasterCms\Models\UserRole');
    }

    public function change_password($tmp_code = null)
    {

        $tmp_check = false;
        if (!Auth::check()) {
            $code_created = new Carbon($this->tmp_code_created);
            $tmp_check = !empty($this->tmp_code) && $this->tmp_code == $tmp_code && $code_created->diff(new Carbon)->days <= 7;
            if (!$tmp_check) {
                FormMessage::add('tmp_code', 'The code was incorrect');
                return false;
            }
        }

        $details = Request::all();
        $rules = array('new_password' => 'required|confirmed|min:4');
        if (!($tmp_check || (Auth::check() && Auth::action('user.edit') && Auth::user()->id != $this->id))) {
            $rules['current_password'] = 'required';
        }

        $v = Validator::make($details, $rules);
        if ($v->passes()) {
            // check password
            if (!empty($rules['current_password']) && !Hash::check($details['current_password'], $this->password)) {
                FormMessage::add('current_password', 'The current password was incorrect');
                return false;
            }
            // if user can change his password then change it
            if (Auth::action('account.password', ['user_id' => $this->id]) || (Auth::check() && Auth::action('user.edit'))) {
                $this->password = Hash::make($details['new_password']);
                $this->tmp_code = '';
                $this->save();
                return true;
            }
        } else {
            FormMessage::set($v->messages());
        }
        return false;
    }

    public function getPageStates()
    {
        if (!empty($this->page_states)) {
            return unserialize($this->page_states);
        }
        return [];
    }

    public function savePageStates($pageStates)
    {
        $this->page_states = serialize($pageStates);
        $this->save();
    }

    public function getName()
    {
        return $this->name ?: $this->email;
    }

    public static function userAliases()
    {
        if (!isset(self::$_aliases)) {
            self::$_aliases = [];
            foreach (User::all() as $user) {
                self::$_aliases[$user->id] = $user->name ?: $user->email;
            }
        }
        return self::$_aliases;
    }

    public function delete()
    {
        $log_id = AdminLog::new_log('User \'' . $this->email . '\' deleted');
        Backup::new_backup($log_id, '\CoasterCms\Models\User', $this);

        // delete data
        parent::delete();

        return $log_id;
    }

}