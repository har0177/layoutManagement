<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\InventoryController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\OrderUpdateController;
use App\Http\Controllers\Admin\PaymentController;
use App\Http\Controllers\Admin\ReportController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\StockController;
use App\Http\Controllers\Api\AccountController;
use App\Http\Controllers\Api\BankController;
use App\Http\Controllers\Api\BatteryController;
use App\Http\Controllers\Api\BatteryEmployeeController;
use App\Http\Controllers\Api\CustomerController;
use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\PaymentMethodsController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\RoleController;
use App\Http\Controllers\Api\Select2Controller;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\VendorController;
use App\Http\Controllers\LogController;
use App\Http\Controllers\PointOfSale;
use Illuminate\Support\Facades\Route;

Route::get( '/',
  [ DashboardController::class, 'index' ] )->name( 'dashboard' )->middleware( 'can:access dashboard' );

Route::prefix( 'dashboard' )->group( function() {
  Route::post( '/ajax', [ BatteryEmployeeController::class, 'index' ] )
       ->name( 'dashboard.ajax' )->middleware( 'can:access batteries' );
  Route::post( '/ajax/count', [ BatteryEmployeeController::class, 'count' ] )
       ->name( 'dashboard.ajax.count' )->middleware( 'can:access batteries' );
  Route::post( '/save', [ BatteryEmployeeController::class, 'store' ] )
       ->name( 'dashboard.save' )->middleware( 'can:add battery' );
} );

Route::prefix( 'users' )->group( function() {
  Route::get( '/', [ \App\Http\Controllers\Admin\UserController::class, 'index' ] )
       ->name( 'admin.users' )->middleware( 'can:access users' );
  
  Route::post( '/ajax', [ \App\Http\Controllers\Admin\UserController::class, 'index' ] )
       ->name( 'users.ajax' )->middleware( 'can:access users' );
  
  Route::post( '/add', [ UserController::class, 'store' ] )
       ->name( 'users.add' )->middleware( 'can:add user' );
  
  Route::get( '/edit/{user}', [ \App\Http\Controllers\Admin\UserController::class, 'edit' ] )
       ->name( 'users.edit' )->middleware( 'can:update user' );
  
  Route::post( '/edit/{user}', [ UserController::class, 'update' ] )
       ->name( 'users.update' )->middleware( 'can:update user' );
  
  Route::put( '/verify/{user}', [ UserController::class, 'verify' ] )
       ->name( 'users.verify' )->middleware( 'can:verify user' );
  
  Route::post( '/delete/{user}', [ UserController::class, 'destroy' ] )
       ->name( 'users.delete' )->middleware( 'can:delete user' );
  
} );

Route::prefix( 'select2' )->group( static function() {
  Route::post( 'employee',
    [ Select2Controller::class, 'employee' ] )->name( 'select2.employee' );
  Route::post( 'batteries',
    [ Select2Controller::class, 'batteries' ] )->name( 'select2.batteries' );
  Route::post( 'roles',
    [ Select2Controller::class, 'roles' ] )->name( 'select2.roles' );
  
} );

/* --------------------------------------------------------------
 *  Settings
 * --------------------------------------------------------------
 */
Route::prefix( 'settings' )->group( static function() {
  Route::get( '/', [ SettingController::class, 'index' ] )
       ->name( 'setup' )->middleware( 'can:access settings' );
  
  Route::get( '/roles', [ SettingController::class, 'rolesIndex' ] )
       ->name( 'setup.roles' )->middleware( 'can:access settings' );
  
  Route::post( '/roles', [ SettingController::class, 'rolesUpdate' ] )
       ->name( 'setup.roles.update' )->middleware( 'can:access settings' );
  
  Route::get( '/redirects', [ SettingController::class, 'redirectionIndex' ] )
       ->name( 'setup.redirects' )->middleware( 'can:access settings' );
  
  Route::post( '/redirects', [ SettingController::class, 'redirectionUpdate' ] )
       ->name( 'setup.redirects.update' )->middleware( 'can:access settings' );
  
  Route::get( '/general', [ SettingController::class, 'generalIndex' ] )
       ->name( 'setup.general' )->middleware( 'can:access settings' );
  
  Route::post( '/general', [ SettingController::class, 'generalUpdate' ] )
       ->name( 'setup.general.update' )->middleware( 'can:access settings' );
  
  Route::get( '/backups', [ SettingController::class, 'backups' ] )
       ->name( 'setup.backups' )->middleware( 'can:access settings' );
  
  Route::get( '/download/{file}', [ SettingController::class, 'download' ] )
       ->name( 'setup.backups.download' )->middleware( 'can:access settings' );
  
  Route::get( '/delete/{file}', [ SettingController::class, 'delete' ] )
       ->name( 'setup.backups.delete' )->middleware( 'can:access settings' );
} );

/**
 * Roles
 */
Route::prefix( 'roles' )->group( function() {
  Route::get( '/', [ \App\Http\Controllers\Admin\RoleController::class, 'index' ] )
       ->name( 'admin.roles' )->middleware( 'can:access roles' );
  
  Route::post( '/ajax', [ \App\Http\Controllers\Admin\RoleController::class, 'indexAjax' ] )
       ->name( 'roles.ajax' )->middleware( 'can:access roles' );
  
  Route::post( '/add', [ RoleController::class, 'store' ] )
       ->name( 'roles.add' )->middleware( 'can:add role' );
  
  Route::get( '/edit/{role}', [ \App\Http\Controllers\Admin\RoleController::class, 'edit' ] )
       ->name( 'roles.edit' )->middleware( 'can:update roles' );
  
  Route::post( '/edit/{role}', [ RoleController::class, 'update' ] )
       ->name( 'users.update' )->middleware( 'can:update roles' );
  
  Route::post( '/delete/{role}', [ RoleController::class, 'destroy' ] )
       ->name( 'roles.delete' )->middleware( 'can:delete roles' );
  
  Route::get( '/permissions/{role}', [ \App\Http\Controllers\Admin\RoleController::class, 'editPermissions' ] )
       ->name( 'roles.permissions.edit' )->middleware( 'can:update permissions' );
  
  Route::post( '/permissions/{role}', [ \App\Http\Controllers\Admin\RoleController::class, 'updatePermissions' ] )
       ->name( 'roles.permissions.update' )->middleware( 'can:update permissions' );
  
} );

/**
 * batteries
 */
Route::prefix( 'batteries' )->group( function() {
  Route::get( '/', [ \App\Http\Controllers\Admin\BatteryController::class, 'index' ] )
       ->name( 'admin.batteries' )->middleware( 'can:access batteries' );
  
  Route::post( '/ajax', [ \App\Http\Controllers\Admin\BatteryController::class, 'index' ] )
       ->name( 'batteries.ajax' )->middleware( 'can:access batteries' );
  
  Route::post( '/add', [ BatteryController::class, 'store' ] )
       ->name( 'batteries.add' )->middleware( 'can:add battery' );
  
  Route::get( '/edit/{battery}', [ \App\Http\Controllers\Admin\BatteryController::class, 'edit' ] )
       ->name( 'batteries.edit' )->middleware( 'can:update battery' );
  
  Route::post( '/edit/{battery}', [ BatteryController::class, 'update' ] )
       ->name( 'batteries.update' )->middleware( 'can:update battery' );
  
  
  Route::post( '/get', [ BatteryController::class, 'getData' ] )
       ->name( 'batteries.getData' )->middleware( 'can:add battery' );
  
  Route::post( '/delete/{battery}', [ BatteryController::class, 'destroy' ] )
       ->name( 'batteries.delete' )->middleware( 'can:delete battery' );
  
} );

/**
 * Employee
 */
Route::prefix( 'employee' )->group( function() {
  Route::get( '/', [ \App\Http\Controllers\Admin\EmployeeController::class, 'index' ] )
       ->name( 'admin.employee' )->middleware( 'can:access employee' );
  
  Route::post( '/ajax', [ \App\Http\Controllers\Admin\EmployeeController::class, 'index' ] )
       ->name( 'employee.ajax' )->middleware( 'can:access employee' );
  
  Route::post( '/add', [ EmployeeController::class, 'store' ] )
       ->name( 'employee.add' )->middleware( 'can:add employee' );
  
  Route::get( '/edit/{employee}', [ \App\Http\Controllers\Admin\EmployeeController::class, 'edit' ] )
       ->name( 'employee.edit' )->middleware( 'can:update employee' );
  
  Route::post( '/edit/{employee}', [ EmployeeController::class, 'update' ] )
       ->name( 'employee.update' )->middleware( 'can:update employee' );
  
  Route::post( '/delete/{employee}', [ EmployeeController::class, 'destroy' ] )
       ->name( 'employee.delete' )->middleware( 'can:delete employee' );
  
} );

/**
 * POS
 */

Route::prefix( 'pos' )->group( function() {
  Route::get( '/', [ PointOfSale::class, 'index' ] )
       ->name( 'admin.pos' )->middleware( 'can:show pos' );
} );

Route::prefix( 'logs' )->group( function() {
  
  Route::get( '/', [ LogController::class, 'index' ] )
       ->name( 'admin.logs' )->middleware( 'can:access logs' );
  
  Route::post( '/filter', [ LogController::class, 'filter' ] )
       ->name( 'admin.logs.filter' )->middleware( 'can:access logs' );
  
} );

