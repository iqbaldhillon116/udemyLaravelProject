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

@endsection

</x-admin-master>