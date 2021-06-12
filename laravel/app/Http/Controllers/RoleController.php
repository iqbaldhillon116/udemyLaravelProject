<?php

namespace App\Http\Controllers;

use App\Permission;
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

    public function edit(Role $role){

      return  view('admin.authorization.roleupdate',['role'=>$role,'permissions'=>Permission::all()]);

    }

    public function update(Role $role){

        $role->name = Str::ucfirst(request('name'));
        $role->slug = Str::of(request('name'))->slug('-');

        if($role->isDirty('name')){
              session()->flash('role-updated',$role->name.' Role has been updated');  
        }
        
        $role->save();//dont forget to call this method , else it will not update anything

        // return back();
       return  redirect('/admin/roles');
  
      }

    public function destroy(Role $role){

        $role->delete();

        session()->flash('role-deleted',$role->name.' role has been deleted');

        return back();

    }
}
