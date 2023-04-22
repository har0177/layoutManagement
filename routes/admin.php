<?php

use App\Http\Controllers\Admin\ChannelController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\GapController;
use App\Http\Controllers\Admin\GroupController;
use App\Http\Controllers\Admin\LayoutController;
use App\Http\Controllers\Admin\ProblemController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\RoleController;
use App\Http\Controllers\Api\Select2Controller;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\LogController;
use App\Http\Controllers\PointOfSale;
use Illuminate\Support\Facades\Route;

Route::get( '/',
  [ DashboardController::class, 'index' ] )->name( 'dashboard' )->middleware( 'can:access dashboard' );

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
 * channels
 */
Route::prefix( 'channels' )->group( function() {
  Route::get( '/', [ ChannelController::class, 'index' ] )
       ->name( 'admin.channels' )->middleware( 'can:access channels' );
  
  Route::post( '/ajax', [ ChannelController::class, 'index' ] )
       ->name( 'channels.ajax' )->middleware( 'can:access channel' );
  
  Route::post( '/add', [ ChannelController::class, 'store' ] )
       ->name( 'channels.add' )->middleware( 'can:add channel' );
  
  Route::get( '/edit/{channel}', [ ChannelController::class, 'edit' ] )
       ->name( 'channels.edit' )->middleware( 'can:update channel' );
  
  Route::post( '/edit/{channel}', [ ChannelController::class, 'update' ] )
       ->name( 'channels.update' )->middleware( 'can:update channel' );
  
  Route::post( '/delete/{channel}', [ ChannelController::class, 'destroy' ] )
       ->name( 'channels.delete' )->middleware( 'can:delete channel' );
  
} );

/**
 * groups
 */
Route::prefix( 'groups' )->group( function() {
  Route::get( '/', [ GroupController::class, 'index' ] )
       ->name( 'admin.groups' )->middleware( 'can:access groups' );
  
  Route::post( '/ajax', [ GroupController::class, 'index' ] )
       ->name( 'groups.ajax' )->middleware( 'can:access group' );
  
  Route::post( '/add', [ GroupController::class, 'store' ] )
       ->name( 'groups.add' )->middleware( 'can:add group' );
  
  Route::get( '/edit/{group}', [ GroupController::class, 'edit' ] )
       ->name( 'groups.edit' )->middleware( 'can:update group' );
  
  Route::post( '/edit/{group}', [ GroupController::class, 'update' ] )
       ->name( 'groups.update' )->middleware( 'can:update group' );
  
  Route::post( '/delete/{group}', [ GroupController::class, 'destroy' ] )
       ->name( 'groups.delete' )->middleware( 'can:delete group' );
  
} );

/**
 * gaps
 */
Route::prefix( 'gaps' )->group( function() {
  Route::get( '/', [ GapController::class, 'index' ] )
       ->name( 'admin.gaps' )->middleware( 'can:access gaps' );
  
  Route::post( '/ajax', [ GapController::class, 'index' ] )
       ->name( 'gaps.ajax' )->middleware( 'can:access gap' );
  
  Route::post( '/add', [ GapController::class, 'store' ] )
       ->name( 'gaps.add' )->middleware( 'can:add gap' );
  
  Route::get( '/edit/{gap}', [ GapController::class, 'edit' ] )
       ->name( 'gaps.edit' )->middleware( 'can:update gap' );
  
  Route::post( '/edit/{gap}', [ GapController::class, 'update' ] )
       ->name( 'gaps.update' )->middleware( 'can:update gap' );
  
  Route::post( '/delete/{gap}', [ GapController::class, 'destroy' ] )
       ->name( 'gaps.delete' )->middleware( 'can:delete gap' );
  
} );

/**
 * problems
 */
Route::prefix( 'problems' )->group( function() {
  Route::get( '/', [ ProblemController::class, 'index' ] )
       ->name( 'admin.problems' )->middleware( 'can:access problems' );
  
  Route::post( '/ajax', [ ProblemController::class, 'index' ] )
       ->name( 'problems.ajax' )->middleware( 'can:access problem' );
  
  Route::post( '/add', [ ProblemController::class, 'store' ] )
       ->name( 'problems.add' )->middleware( 'can:add problem' );
  
  Route::get( '/edit/{problem}', [ ProblemController::class, 'edit' ] )
       ->name( 'problems.edit' )->middleware( 'can:update problem' );
  
  Route::post( '/edit/{problem}', [ ProblemController::class, 'update' ] )
       ->name( 'problems.update' )->middleware( 'can:update problem' );
  
  Route::post( '/delete/{problem}', [ ProblemController::class, 'destroy' ] )
       ->name( 'problems.delete' )->middleware( 'can:delete problem' );
  
} );

/**
 * problems
 */
Route::prefix( 'layouts' )->group( function() {
  Route::get( '/', [ LayoutController::class, 'index' ] )
       ->name( 'admin.layouts' )->middleware( 'can:access layouts' );
  
  Route::post( '/ajax', [ LayoutController::class, 'index' ] )
       ->name( 'layouts.ajax' )->middleware( 'can:access layout' );
  
  Route::post( '/add', [ LayoutController::class, 'store' ] )
       ->name( 'layouts.add' )->middleware( 'can:add layout' );
  
  Route::get( '/edit/{layout}', [ LayoutController::class, 'edit' ] )
       ->name( 'layouts.edit' )->middleware( 'can:update layout' );
  
  Route::post( '/edit/{layout}', [ LayoutController::class, 'update' ] )
       ->name( 'layouts.update' )->middleware( 'can:update layout' );
  
  Route::post( '/delete/{layout}', [ LayoutController::class, 'destroy' ] )
       ->name( 'layouts.delete' )->middleware( 'can:delete layout' );
  
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


