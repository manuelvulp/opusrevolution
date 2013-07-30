<?php

/**
 * App routing
 */

Route::get('/', 'HomeController@index');
Route::get('/music', 'MusicController@index');
Route::get('/archive', 'ArchiveController@index');
Route::get('/archive/{id}', 'ArchiveController@event');

Route::get('/history/start/{start}/end/{end}', 'HistoryController@index');
Route::get('/history/event/{id}', 'HistoryController@event');

Route::get('/site', 'AboutController@site');
Route::get('/us', 'AboutController@us');
Route::get('/contact', 'AboutController@contact');

Route::get('/updaterss', 'RssController@updateRssFeed');


Route::get('/json', 'JsonController@autocompleteCountries');
Route::get('/json/{limit}/{offset}', 'JsonController@getEvents');
Route::post('/json/areasbydate', 'JsonController@getEventsAreasByDate');
Route::post('/json/bydate', 'JsonController@getEventsByDate');
Route::post('/json/byarea', 'JsonController@getEventsByArea');


/**
 * Errors
 */

App::missing(function($exception) 
{
    return Response::view('errors.404', array(), 404);
});