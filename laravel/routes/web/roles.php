<?php 
use Illuminate\Support\Facades\Route;

Route::get('/roles','RoleController@index')->name('user.roles');
Route::post('/roles/create','RoleController@store')->name('user.role.create');
Route::delete('/roles/{role}/delete','RoleController@destroy')->name('user.role.delete');