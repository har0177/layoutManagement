<?php

namespace App\Http\Controllers\Admin;

use App\Models\Battery;
use App\Models\BatteryUser;
use Cache;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
  
  public function index()
  {
    
    $field = 0;
    $camp = 0;
    $batteries = Battery::all();
    foreach( $batteries as $battery ) {
      $status = BatteryUser::where( 'battery_id', $battery->id )->latest()->first();
      if( !empty( $status ) && $status->type === 'Camp' ) {
        $camp++;
      }
      if( !empty( $status ) && $status->type === 'Field' ) {
        $field++;
      }
    }
    
    $total = $batteries->count();
    $batteries = BatteryUser::all()->pluck( 'battery_id' )->toArray();
    $notIssued = Battery::whereNotIn( 'id', $batteries )->count();
    return view( 'admin.dashboard.index', compact( 'field', 'total', 'notIssued', 'camp' ) );
  }// index
  
  public function field()
  {
    $batteries = Battery::all();
    $data = [];
    foreach( $batteries as $battery ) {
      $statusInField = BatteryUser::with( [ 'battery', 'to', 'by' ] )->where( 'battery_id', $battery->id )
                                  ->where( 'issued_to', '!=', 51 )->orderBy( 'id', 'DESC' )->first();
      
      $statusInCamp = BatteryUser::where( 'battery_id', $battery->id )
                                 ->where( 'issued_to', 51 )->orderBy( 'id', 'DESC' )->first();
      if( $statusInCamp && $statusInField ) {
        if( $statusInField->created_at > $statusInCamp->created_at ) {
          $data[] = $statusInField;
        }
      }
    }
    
    return view( 'admin.dashboard.field', compact( 'data' ) );
    
  }// index
  
  public function camp()
  {
    $batteries = Battery::all();
    $data = [];
    foreach( $batteries as $battery ) {
      $statusInField = BatteryUser::with( [ 'battery', 'to', 'by' ] )->where( 'battery_id', $battery->id )
                                  ->where( 'issued_to', '!=', 51 )->orderBy( 'id', 'DESC' )->first();
      
      $statusInCamp = BatteryUser::where( 'battery_id', $battery->id )
                                 ->where( 'issued_to', 51 )->orderBy( 'id', 'DESC' )->first();
      if( $statusInCamp && $statusInField ) {
        if( $statusInField->created_at < $statusInCamp->created_at ) {
          $data[] = $statusInCamp;
        }
      }
    }
    
    return view( 'admin.dashboard.camp', compact( 'data' ) );
    
  }// index
  
  public function not()
  {
    $batteries = BatteryUser::all()->pluck( 'battery_id' )->toArray();
    $data = Battery::whereNotIn( 'id', $batteries )->get();
    
    return view( 'admin.dashboard.not', compact( 'data' ) );
    
  }// index
  
}
