<?php

use App\Models\Account;
use App\Models\Bank;
use App\Models\Battery;
use App\Models\BatteryUser;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Employee;
use App\Models\Expense;
use App\Models\Inventory;
use App\Models\Product;
use App\Models\Vendor;
use Carbon\Carbon;
use Carbon\CarbonTimeZone;

function format_date( $format = 'm/d/Y', $date = 'now' )
{
  $tz = new CarbonTimeZone( config( 'app.timezone' ) );
  $carbon = new Carbon( $date, $tz );
  return $carbon->format( $format );
}

function employeeName( $id )
{
  $employee = Employee::find( $id );
  if( $employee ) {
    return $employee->name;
  }
  return '';
}

function batteryName( $id )
{
  $battery = Battery::find( $id );
  if( $battery ) {
    return $battery->name;
  }
  return '';
}

function batteryUser( $id )
{
  $battery = BatteryUser::with( 'to', 'by' )->where( 'battery_id', $id )->orderBy( 'id', 'DESC' )->first();
  $addDays = Carbon::now()->subDays( 3 );
  if( $battery ) {
    if( $addDays >= $battery->created_at ) {
      return '<span class="badge badge-warning"> Last issued on ' . Carbon::make( $battery->created_at )->format( 'd-M-Y, h:i:s A' ) . ' to ' . $battery->to->name . ' by ' . $battery->by->name . 'having status ' . $battery->status . '</span>';
    }
    return 'Issued to ' . $battery->to->name . ' remarks ' . $battery->remarks . ' On ' . Carbon::make( $battery->created_at )->format( 'd-M-Y h:i A' );
  }
  return '';
}

function convert_object_to_array( $data )
{
  
  if( is_object( $data ) ) {
    $data = get_object_vars( $data );
  }
  
  if( is_array( $data ) ) {
    return array_map( __FUNCTION__, $data );
  } else {
    return $data;
  }
}

function logCauserDetail( $subjectId )
{
  $user = \App\Models\User::find( $subjectId );
  if( $user ) {
    return $user->first_name . ' ' . $user->last_name;
  }
  return '';
}

function startDate( $date )
{
  $start = '';
  if( $date ) {
    $start = explode( 'to', $date )[ 0 ];
    return Carbon::make( $start )->format( 'Y-m-d 00:00:00' );
  }
  return '';
}

function endDate( $date )
{
  if( $date ) {
    $end = explode( 'to', $date )[ 1 ];
    return Carbon::make( $end )->format( 'Y-m-d 23:59:59' );
  }
  
  return '';
}


