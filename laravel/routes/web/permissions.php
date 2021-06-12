<?php 
use Illuminate\Support\Facades\Route;

Route::get('/permissions','PermissionController@index')->name('user.permissions');
Route::post('/permissions','PermissionController@store')->name('user.permission.create');



Route::delete('/permissions/{permission}/delete','PermissionController@destroy')->name('admin.permission.destroy');
Route::get('/permissions/{permission}/show','PermissionController@show')->name('admin.permission.show');

Route::put('/permissions/{permission}/update','PermissionController@update')->name('admin.permission.update');





