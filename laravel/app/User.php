<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'username' ,'name', 'email', 'password','avatar'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $guarded = [];


    //it means a user can have multiple posts
    public function posts(){

        return $this->hasMany(Post::class);
    }

    public function permissions(){
        return $this->belongsToMany(Permission::class);
    }

    public function roles(){
        return $this->belongsToMany(Role::class);
    }

    //creating mutator for encrypting password alwasy when we modify user 
    public function setPasswordAttribute($value){
        $this->attributes['password'] = Hash::make($value); 
    }

    public function getAvatarAttribute($value){
        return asset('storage/'.$value);//accessor
    }

    public function userHasRole($role_name){
       
        foreach($this->roles as $role){
            if($role_name == $role->name){
                return true;
            }

        }
       return false;

    }
}
