<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/**
* Main page route 'middleware' => 'web'
*/
Route::group([], function (){
	//pages  + UserSender is absent
	Route::match(['get','post'],'/',['uses'=>'IndexController@execute','as'=>'home']);

 	
 	//WEBmenu is apsent
    Route::get('/page/{alias}',['uses'=>'PageController@execute','as'=>'page']);
 
   
    //filter prases is apsent
    Route::get('/wordbook/{name}',function(){
	return redirect('/');
	})->where('name','[A-Za-z]+');
	Route::resource('wordbook','PageController');
	Route::post('getData','PageController@getData');
	});
	//confirmmail is apsent, further... 
/**
* AdminPanel page route
*/

Auth::routes();

Route::get('/admin', 'HomeController@index')->name('admin');
/**
* Admin page route
*/

Route::group(['prefix' => 'admin','middleware' => 'auth'], function (){

 	 	
/**
* WITH RESOURCE
*/


Route::resource('logos', 'LogosController');
Route::resource('socials', 'SocialysController');
Route::resource('portfolios', 'PortfoliosController');
//Route::get('portfolioRestore', 'PortfoliosController@restore')->name('restore');
Route::prefix('portfolios/{portfolio}')->group(function () {
	Route::resource('pages', 'PagesController');
	Route::get('topic', 'PagesController@topic')->name('topic');
});
//Route::resource('services', 'ServicesController');
Route::resource('peoples', 'PeoplesController');
Route::prefix('peoples/{people}')->group(function () {
	Route::resource('socialPeoples', 'SocialPeoplesController');	    
	 
});
});	
