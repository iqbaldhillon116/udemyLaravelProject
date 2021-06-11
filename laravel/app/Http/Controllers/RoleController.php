<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use Illuminate\Support\Str;

class RoleController extends Controller
{
    public function index(){
        $roles = Role::all();
        return view('admin.authorization.roles',['roles'=>$roles]);
    }

    public function store(){
        
        request()->validate([
            'role'=>'required'
        ]);
        
        Role::create([
                'name'=>request('role'),
                'slug'=>Str::lower(request('role'))
        ]);
        session()->flash('role-created',' New role has been created');

        return back();
    }

    public function destroy(Role $role){

        $role->delete();

        session()->flash('role-deleted',$role->name.' role has been deleted');

        return back();

    }
}
