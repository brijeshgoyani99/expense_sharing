<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;   

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('login', [App\Http\Controllers\API\RegisterController::class , 'login']);
Route::post('register', [App\Http\Controllers\API\RegisterController::class , 'register']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('logout', [App\Http\Controllers\API\RegisterController::class , 'logout']);

    // Group Routes  
    Route::get('get-group-data', [App\Http\Controllers\API\GroupController::class , 'get_group_data']);

    // Store Total Expense Data
    Route::post('expense-store', [App\Http\Controllers\API\TransactionController::class , 'store']);

    // get total user wise balance 
    Route::post('get-balance', [App\Http\Controllers\API\BalanceController::class , 'get_balance']);
});