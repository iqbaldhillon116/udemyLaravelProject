

<x-admin-master>
    @section('content')
        <h1>Roles</h1>
        @if(session()->has('role-deleted'))
        <div class="alert alert-danger">
                   {{session('role-deleted')}} 
        </div>
        @elseif(session()->has('role-created'))
        <div class="alert alert-success">
                {{session('role-created')}}
        </div>
        @endif
        <div class="row">
        
                <div class="col-sm-3">
                
                    <form method="post" action="{{route('user.role.create')}}">
                    @csrf
                        <div class="form-group">
                            <label for="role">Name:</label>
                            <input type="text" name="role" class="form-control @error('name') is-invalid @enderror">
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

                <div class="col-sm-9">
                
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            <th>Role Id</th>
                                            <th>Name</th>
                                            <th>Slug</th>
                                            <th>Delete</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                            <th>Role Id</th>
                                            <th>Name</th>
                                            <th>Slug</th>
                                            <th>Delete</th>
                                            </tr>
                                        </tfoot>
                                    <tbody>
                                    @foreach($roles as $role)
                                        <tr>
                                        <td>{{$role->id}}</td>
                                        <td>{{$role->name}}</td>
                                        <td>{{$role->slug}}</td>
                                        <td>
                                            <form method="post" action="{{route('user.role.delete',$role->id)}}">
                                                @csrf
                                                @method('DELETE')
                                                <input type="hidden" name="role" value="{{$role->id}}">
                                                <button class="btn btn-danger">Delete</button>
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




    @endsection

</x-admin-master>