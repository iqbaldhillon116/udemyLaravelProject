<x-admin-master>
    @section('content')

    @if(session('message'))
      <div class="alert alert-danger">{{session('message')}}</div>
      @elseif(session('post-created-message'))
        <div class="alert alert-success">{{session('post-created-message')}}</div>
      @elseif(session('post-updated-message'))
        <div class="alert alert-success">{{session('post-updated-message')}}</div>
    @endif
    <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Owner</th>
                      <th>Title</th>
                      <th>Image</th>
                      <th>Created At</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID</th>
                      <th>Owner</th>
                      <th>Title</th>
                      <th>Image</th>
                      <th>Created At</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  @foreach($posts as $post)
                    <tr>
                      <td>{{$post->id}}</td>
                      <td>{{$post->user->name}}</td>
                      <td><a href="{{route('post.edit',$post->id)}}">{{$post->title}}</a></td>
                      <td><img src="{{$post->post_image}}" height="40px" alt=""></td>
                      <td>{{$post->created_at->diffForHumans()}}</td>
                      <td>{{$post->updated_at->diffForHumans()}}</td>
                      <td>

                      @can('view',$post)
                        <form method="post" action="{{route('post.destroy',$post->id)}}">
                        @csrf 
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                        @endcan
                      </td>
                    </tr>
                  @endforeach
                  </tbody>
                </table>
                <div class="d-flex">
                  <div class="mx-auto">
                  {{$posts->links()}}
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