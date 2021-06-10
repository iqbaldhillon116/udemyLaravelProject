<x-admin-master>

@section('content')
@if(session('user-deleted'))
      <div class="alert alert-danger">{{session('user-deleted')}}</div>
        @endif
<h1>All Users</h1>
<div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>User Id</th>
                  <th>Username</th>
                  <th>email</th>
                  <th>Image</th>
                  <th>Created At</th>
                  <th>Updated At</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                <th>User Id</th>
                  <th>Username</th>
                  <th>email</th>
                  <th>Image</th>
                  <th>Created At</th>
                  <th>Updated At</th>
                  <th>Delete</th>
                </tr>
              </tfoot>
              <tbody>
              @foreach($users as $user)
                <tr>
                  <td>{{$user->id}}</td>
                  <td>{{$user->username}}</td>
                  <td>{{$user->email}}</td>
                  <td><img src="{{$user->avatar}}" height="40px" alt=""></td>
                  <td>{{$user->created_at->diffForHumans()}}</td>
                  <td>{{$user->updated_at->diffForHumans()}}</td>
                  <td>
                    <form method="post" action="{{route('admin.users.destroy',$user->id)}}">
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

    
@endsection
@section('scripts')
<!-- Page level plugins -->
<script src="{{asset('vendor/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>

<!-- Page level custom scripts -->
<!-- <script src="{{asset('js/demo/datatables-demo.js')}}"></script> -->
@endsection
</x-admin-master>