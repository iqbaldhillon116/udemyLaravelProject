<x-admin-master>
    @section('content')
    @if(session('permission-updated'))
    <div class="alert alert-success">
        {{session('permission-updated')}}
    </div>
    @endif

    <div class="row">
        
        <div class="col-sm-3">
        
            <form method="post" action="{{route('admin.permission.update',$permission->id)}}">
            @csrf
            @method('PUT')
                <div class="form-group">
                    <label for="role">Name:</label>
                    <input type="text" name="name" value="{{$permission->name}}" class="form-control @error('name') is-invalid @enderror">
                </div>

                <div>
                    @error('name')
                        <span ><strong>{{$message}}</strong></span>
                    @enderror
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary ">update</button>
                </div>
            </form>
        
        </div>
    </div>
    @endsection


</x-admin-master>