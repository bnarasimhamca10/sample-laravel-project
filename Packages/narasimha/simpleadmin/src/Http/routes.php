<?php


Route::get('/package', 'Narasimha\SimpleAdmin\Controllers\SimpleAdminController@index');
Route::get('timezones/{timezone}', 
  'vevegam\questions\SimpleAdminController@index');
