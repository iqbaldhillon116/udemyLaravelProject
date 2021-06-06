<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    protected $guarded = [];
    //it means every post must belongs to a certian user
    public function user(){
        return $this->belongsTo(User::class);
    }

    public function setPostImageAttribute($value){
        $this->attributes['post_image'] = asset('storage/'.$value);//mutators

    }


    public function getPostImageAttribute($value){
        return asset('storage/'.$value);//accessor
    }
 
}
