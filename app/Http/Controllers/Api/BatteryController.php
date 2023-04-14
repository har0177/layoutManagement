<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Battery;
use App\Models\BatteryUser;
use App\Models\Employee;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;

class BatteryController extends Controller
{
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'name' => 'required|string|max:191|unique:batteries'
    ], [
      'name.required' => 'Battery Name is Required',
    ] );
    $data = $request->all();
    Battery::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Battery Added' ], 200 );
  } // store
  
  /**
   * @param Request $request
   * @param category $battery
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Battery $battery ) : object
  {
    $this->validate( $request, [
      'name' => [
        'required', 'string', 'max:191',
        Rule::unique( 'batteries' )->ignore( $battery->id ),
      ],
    ], [
      'name.required' => 'Battery Name is Required',
    ] );
    //update the Battery
    
    $battery->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Battery Updated' ], 200 );
  } // update
  
  /**
   * @param category $battery
   * @return array|string[]
   * @throws \Exception
   */
  public function destroy( Battery $battery ) : array
  {
    $battery->delete();
    return [ 'status' => 'ok', 'message' => 'Battery Deleted' ];
  }
  
  public function getData( Request $request )
  {
    $battery = BatteryUser::where( 'battery_id', $request->battery_id )->orderBy( 'created_at', 'DESC' )->first();
    $data = [
      'batteries' => Battery::find( $battery->battery_id ),
      'issued_by' => Employee::find( $battery->issued_to ),
      'status'    => $battery->status
    ];
    return response()->json( [ 'status' => 'ok', 'data' => $data ], 200 );
    
  }
}
