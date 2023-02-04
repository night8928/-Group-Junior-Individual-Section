<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SchedulesController;
use App\Http\Controllers\HotelsController;
use App\Http\Controllers\SpotSerController;
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

Route::get('/', function () {
    return view('welcome');
});
Route::resource('schedules', SchedulesController::class);
Route::resource('hotels', HotelsController::class);
// Route::get('/api/travel_website', 'TravelWebsiteController@index');
//寫法二
Route::get('/showSpot', [SchedulesController::class, 'showSpot']);
Route::get('/attractions_info', [SpotSerController::class, 'index']);

