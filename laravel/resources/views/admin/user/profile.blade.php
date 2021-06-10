<x-admin-master>

@section('content')

<h1>User Profile </h1>

<div class="col-6">
    <form action="{{route('user.profile.update',$user)}}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
        <div class="mb-2">
            <img class="img-profile rounded-circle" height="40px" src="{{$user->avatar}}" >
        </div>

        <div class="form-group">
        <input type="file" name="avatar">
        </div>


        <div class="form-group">
        <label for="" >Username:</label>
        <input type="text" class="form-control {{$errors->has('username')?'is-invalid':''}} " name="username" value="{{$user->username}}">
        
        
        @error('username')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
        

        </div>

        <div class="form-group">
        <label for="name" >Name:</label>
        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{$user->name}}">

        @error('name')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
        </div>
        
        <div class="form-group">
        <label for="" >Email:</label>
        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{$user->email}}">

        @error('email')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
        </div>

        <div class="form-group">
        <label for="" >Password:</label>
        <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" value="">

        @error('password')
        <div class="invalid-feedback">
            {{$message}}
        </div>
        @enderror
        </div>

        <div class="form-group">
        <label for="" >Confirm Password:</label>
        <input type="password" class="form-control" name="password_confirmation" value="">
        </div>

        <input type="submit" class="btn btn-primary" value="submit">


    </form>

   
</div>

<div class="row">
    <div class="col-12">
    <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Options</th>
                  <th>Role Id</th>
                  <th>Name</th>
                  <th>Slug</th>
                  <th>Attach</th>
                  <th>Detach</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>Options</th>
                  <th>Role Id</th>
                  <th>Name</th>
                  <th>Slug</th>
                  <th>Attach</th>
                  <th>Detach</th>
                </tr>
              </tfoot>
              <tbody>
              @foreach($roles as $role)
                <tr>
                  <td><input type="checkbox"
                  @foreach($user->roles as $user_role)
                    @if($user_role->slug == $role->slug)
                    checked
                    @endif
                  @endforeach
                  ></td>
                  <td>{{$role->id}}</td>
                  <td>{{$role->name}}</td>
                  <td>{{$role->slug}}</td>
                  <td>
                  <form method="post" action="{{route('user.role.attach',$user)}}">
                        @csrf
                        @method('PUT')
                        <input type="hidden" name="role" value="{{$role->id}}">
                  <button type="submit" class="btn btn-primary"
                    @if($user->roles->contains($role))
                        disabled
                    @endif
                   >Attach</button>

                  </form>
                 </td>
                  <td>
                  <form method="post" action="{{route('user.role.detach',$user)}}">
                        @csrf
                        @method('DELETE')
                        <input type="hidden" name="role" value="{{$role->id}}">
                  <button type="submit" class="btn btn-danger"
                  @if(!$user->roles->contains($role))
                        disabled
                    @endif
                   >Detach</button>

                  </form>
                  </td>
                
                </tr>
              @endforeach
              </tbody>
            </table>
         
           
          </div>
        </div>
    </div>
</div>


@endsection

</x-admin-master>