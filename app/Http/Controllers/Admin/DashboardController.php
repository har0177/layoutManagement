<?php

namespace App\Http\Controllers\Admin;

use Cache;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
  
  public function index()
  {
  
    /* $batteries = Battery::all();
     $data = [
       'camp'  => 0,
       'field' => 0,
       'not'   => 0
     ];
     foreach( $batteries as $battery ) {
       $statusInField = BatteryUser::where( 'battery_id', $battery->id )
                                   ->where( 'issued_to', '!=', 51 )->orderBy( 'id', 'DESC' )->first();
       if( $statusInField ) {
         $data[ 'field' ]++;
         continue;
       }
       
       $statusInCamp = BatteryUser::where( 'battery_id', $battery->id )
                                  ->where( 'issued_to', 51 )->orderBy( 'id', 'DESC' )->first();
       if( $statusInCamp ) {
         $data[ 'camp' ]++;
         continue;
       }
       
       $data[ 'not' ]++;
       
     }
     $data[ 'total' ] = $batteries->count();
     $data[ 'not' ] = $data[ 'total' ] - $data[ 'camp' ] - $data[ 'field' ];
     */
    return view( 'admin.dashboard.index' );
  }// index
  
}
