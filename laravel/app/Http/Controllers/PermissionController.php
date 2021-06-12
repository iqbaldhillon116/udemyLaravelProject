<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use App\Permission;
use Illuminate\Support\Str;

class PermissionController extends Controller
{
    public function index(){
        $permissions = Permission::all();
        return view('admin.authorization.permission',['permissions'=>$permissions]);
    }

    public function attach(Role $role){
        $role->permissions()->attach(request('permission'));
        return back();
    }

    public function detach(Role $role){
        $role->permissions()->detach(request('permission'));
        return back();
    }

    public function store(){

        request()->validate(['name'=>'required']);

        session()->flash('permission-created','New Permission has been generated');

        Permission::create(['name'=>request('name'),'slug'=>str::of(request('name'))->slug('-')]);

        return back();
    }

    public function show(Permission $permission){
            return view('admin.authorization.permissionupdate',['permission'=>$permission]);
    }

    public function update(Permission $permission){

        request()->validate(['name'=>'required']);

        $permission->name = Str::ucfirst(request('name'));
        $permission->slug = Str::of(request('name'))->slug('-');

        $permission->save();

        session()->flash('permission-updated',$permission->name.' has been updated');
        return redirect('admin/permissions');

    }

    public function destroy(Permission $permission){

        $permission->delete();
        session()->flash('permission-deleted','New Permission has been deleted');
        return back();

    }


}
