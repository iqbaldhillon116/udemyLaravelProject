<?php 

use Illuminate\Support\Facades\Route;

Route::middleware('auth')->group(function(){
Route::get('/posts/create', 'PostController@create')->name('post.create');
Route::post('/posts/store', 'PostController@store')->name('post.store');
Route::get('/posts/index', 'PostController@index')->name('post.index');
Route::delete('/posts/{post}', 'PostController@destroy')->name('post.destroy');

Route::get('/posts/{post}', 'PostController@edit')->name('post.edit');
Route::patch('/posts/{post}', 'PostController@update')->name('post.update');
});