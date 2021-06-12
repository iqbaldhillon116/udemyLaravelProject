<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use APP\Role;

class PostController extends Controller
{
    public function show(Post $post){

        return view('blog',['post'=>$post]);

    }

    public function create(){
        return view('admin.posts.create');
     }

     public function store(Request $request){
     //note in this command i am not using any variable to access post data.all i am using is request() method 
    //    dd(request()->all());  

       $input = request()->validate([
        'title'=>'required|min:8|max:255',
        'post_image'=>'file',
        'body'=>'required'
       ]);

        if(request('post_image')){
            $input['post_image'] = request('post_image')->store('images');
        }

        auth()->user()->posts()->create($input);
        session()->flash('post-created-message','post was created');

        return redirect()->route('post.index');

     }

     public function index(){
        // $posts=Post::all();
        // $posts = auth()->user()->posts;

        $posts = auth()->user()->posts()->paginate(2);
        return view('admin.posts.index',['posts'=>$posts]);
     }

     public function edit(Post $post){
        $this->authorize('view',$post);
        return view('admin.posts.edit',['post'=>$post]);
     }

     public function destroy(Post $post){

        $post->delete();
        session()->flash('message','post was deleted');

        return back();

     }

     public function update(Post $post){

        $input = request()->validate([
            'title'=>'required|min:8|max:255',
            'post_image'=>'file',
            'body'=>'required'
           ]);
    
            if(request('post_image')){
                $input['post_image'] = request('post_image')->store('images');
                $post->post_image =  $input['post_image'];
            }
            
            $post->body = $input['body'];
            $post->title = $input['title'];
            //i can either use atuhenticated save . but it will also update the user name for currently logged in user
            // auth()->user()->posts()->save('$post');

            //adding policy here lecture 210
            $this->authorize('update',$post);
            
            $post->save();
            session()->flash('post-updated-message','post was updated');
    
            return redirect()->route('post.index');

     }



   
}
