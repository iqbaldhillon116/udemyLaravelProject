<x-admin-master>
    @section('content')
        <h1>Permissions</h1>

    @if(session('permission-updated'))
    <div class="alert alert-success">
        {{session('permission-updated')}}
    </div>
    @endif
        <div class="row">
        
                <div class="col-sm-3">
                
                    <form method="post" action="{{route('user.permission.create')}}">
                    @csrf
                        <div class="form-group">
                            <label for="role">Name:</label>
                            <input type="text" name="name"  class="form-control @error('name') is-invalid @enderror">
                        </div>

                        <div>
                            @error('name')
                                <span ><strong>{{$message}}</strong></span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary ">create</button>
                        </div>
                    </form>
                
                </div>
        </div>

            <div class="row">
                <div class="col-sm-9">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                <th>Permission Id</th>
                                <th>Permission Name</th>
                                <th>Permission slug</th>
                                <th>Delete</th>>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                <th>Permission Id</th>
                                <th>Permission Name</th>
                                <th>Permission slug</th>
                                <th>Delete</th>
                                </tr>
                            </tfoot>
                            <tbody>
                            @foreach($permissions as $permission)
                                <tr>
                                <td>{{$permission->id}}</td>
                                <td><a href="{{route('admin.permission.show',$permission->id)}}">{{$permission->name}}</a></td>
                                <td>{{$permission->slug}}</td>
                        
                                <td>
                                <form method="post" action="{{route('admin.permission.destroy',$permission->id)}}">
                                    @csrf 
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Delete</button>
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
        
        </div>

    @endsection

</x-admin-master>