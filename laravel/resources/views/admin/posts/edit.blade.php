<x-admin-master>

@section('content')

<h1>Create</h1>

<form method="post" action="{{route('post.update',$post->id)}}" enctype="multipart/form-data">
    @csrf
    @method('PATCH')
    <div class="form-group">
      <label for="title" value="title">Title:</label> 
       <input 
       type="text"
       name="title"
       class="form-control"
       plasceholder="enter title"
       value="{{$post->title}}"
       >
    
    </div>
    <p>Custom file:</p>
    <div class="custom-file mb-3">
      <input type="file" class="custom-file-input" id="customFile" name="post_image">
      <label class="custom-file-label" for="customFile">Choose file</label>
    </div>
    <div class="form-group">
      <label for="body" value="body">Description:</label> 
      <textarea class="form-control" name="body" id="" cols="100" rows="10">{{$post->body}}</textarea>
    
    </div>
    
   
  
    <div class="mt-3">
      <button type="submit" class="btn btn-primary">Update</button>
    </div>
  </form>


@endsection

</x-admin-master>