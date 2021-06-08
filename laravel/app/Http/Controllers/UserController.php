<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function show(User $user){
        return view('admin.user.profile',['user'=>$user]);
    }

    public function update(User $user){

        $inputs = request()->validate([
            'username'=>['required','string','max:255'],
            'name'=>['required','string','min:6'],
            'email'=>['email','required'],
            'avatar'=>['file']
        ]);


       if(request('avatar')){
           $inputs['avatar']=request('avatar')->store('images');
       }

       $user->update($inputs);

       return back();
    }
}
