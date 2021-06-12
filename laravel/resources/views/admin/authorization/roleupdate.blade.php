<x-admin-master>
    @section('content')
        <h1>Edit Role:{{$role->name}}</h1>

        @if(session('role-updated'))
           <div class="alert alert-success">{{session('role-updated')}}</div>
        @endif

        <form method="post" action="{{route('user.role.update',$role->id)}}"> 
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" name="name" value="{{$role->name}}">

                <button type="submit" class="btn btn-primary">Update</button>

            </div>
        </form>
<div class="row">
        <div class="col-sm-9">
                
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        <th>Options</th>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Attach</th>
                                        <th>DeAttach</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        <th>Options</th>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Attach</th>
                                        <th>DeAttach</th>
                                        </tr>
                                    </tfoot>
                                <tbody>
                                @foreach($permissions as $permission)
                                    <tr>
                                    <td><input 
                                    type="checkbox" 
                                    value="$permission->id"
                                    @foreach($role->permissions as $role_permission)

                                    @if($role_permission->slug == $permission->slug)
                                        checked
                                    @endif

                                    @endforeach
                                    >
                                    
                                    </td>
                                    <td>{{$permission->id}}</td>
                                    <td><a href="{{route('user.role.edit',$role->id)}}">{{$permission->name}}</a></td>
                                    <td>
                                        <form method="post" action="{{route('user.permission.attach',$role->id)}}">
                                            @csrf
                                            @method('PUT')
                                            <input type="hidden" name="permission" value="{{$permission->id}}">
                                            <button class="btn btn-primary" type="submit"
                                            @if($role->permissions->contains($permission))
                                            disabled
                                            @endif
                                            >Attach</button>
                                        </form>

                                    </td>
                                    <td>
                                        <form method="post" action="{{route('user.permission.detach',$role->id)}}">
                                            @csrf
                                            @method('DELETE')
                                            <input type="hidden" name="permission" value="{{$permission->id}}">
                                            <button class="btn btn-danger" type="submit"
                                            @if(!$role->permissions->contains($permission))
                                            disabled
                                            @endif
                                            >Detach</button>
                                        </form>

                                    </td>
                                    </tr>
                                @endforeach
                                </tbody>
                        </table>
                            <div class="d-flex">
                                <div class="mx-auto">

                                 </div>
                            </div>
                    </div>
                 </div>
          </div>
</div>      
    @endsection

</x-admin-master>
