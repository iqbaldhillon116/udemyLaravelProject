<?php 
use Illuminate\Support\Facades\Route;

Route::middleware('auth')->group(function(){

    Route::get('/', 'AdminsController@index')->name('admin.index');



    Route::get('/users/{user}/profile','UserController@show')->name('user.profile.show');
    Route::put('/users/{user}/update','UserController@update')->name('user.profile.update');

    Route::get('/all-users','UserController@allUsers')->name('admin.users.index');
    Route::delete('/all-users/{user}/delete','UserController@destroy')->name('admin.users.destroy');

});

Route::middleware('role:Admin')->group(function(){
    Route::get('/all-users','UserController@allUsers')->name('admin.users.index');
});