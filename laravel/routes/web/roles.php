<?php 
use Illuminate\Support\Facades\Route;

Route::get('/roles','RoleController@index')->name('user.roles');
Route::post('/roles/create','RoleController@store')->name('user.role.create');
Route::delete('/roles/{role}/delete','RoleController@destroy')->name('user.role.delete');
Route::get('/roles/{role}/edit','RoleController@edit')->name('user.role.edit');

Route::put('/roles/{role}/update','RoleController@update')->name('user.role.update');

Route::put('/permissions/{role}/attach','PermissionController@attach')->name('user.permission.attach');
Route::delete('/permissions/{role}/detach','PermissionController@detach')->name('user.permission.detach');