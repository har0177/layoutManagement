<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\BatteryUser;
use App\Services\EmployeeBatteryService;
use Cache;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class BatteryEmployeeController extends Controller
{
  
  private $service;
  
  public function __construct( EmployeeBatteryService $service )
  {
    $this->service = $service;
  }
  
  public function index( Request $request, DataTables $dataTables )
  {
    
    if( $request->ajax() && $request->isMethod( 'post' ) ) {
      
      return $this->service->dataTables( $request, $dataTables );
    }
    
  }// index
  
  /**
   * @param Request $request
   * @return JsonResponse
   */
  public function store( Request $request )
  {
    $request->validate( [
      'battery_id' => 'required|array',
      'issued_by'  => 'required',
      'issued_to'  => 'required',
      'status'     => 'required',
    ], [
      'battery_id.required' => 'Select Batteries',
      'battery_id.array'    => 'Select Batteries',
      'issued_by.required'  => 'Select Issued To',
      'issued_to.required'  => 'Select Issued By',
      'status.required'     => 'Select Status',
    ] );
    $data = $request->all();
    foreach( $request->battery_id as $bat ) {
      
      if( $request->issued_to === $request->issued_by ) {
        return response()->json( [ 'status' => 'error', 'message' => 'Issued By & Issued To Must be different.' ],
          400 );
      }
      
      $data[ 'type' ] = 'Camp';
      
      $data[ 'battery_id' ] = $bat;
      
      if( (int) $request->issued_by === 51 ) {
        $data[ 'type' ] = 'Field';
      }
      BatteryUser::create( $data );
    }
    return response()->json( [ 'status' => 'ok', 'message' => 'Battery Issued Successfully' ], 200 );
  } // store
  
}
