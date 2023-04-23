<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Channel;
use App\Models\Gap;
use App\Services\GapService;
use App\Services\ProblemService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class GapController extends Controller
{
  private $service;
  
  public function __construct( GapService $service )
  {
    $this->service = $service;
  }
  
  /**
   * @param Request $request
   * @param DataTables $dataTables
   * @return Application|Factory|View|JsonResponse
   * @throws Exception
   */
  public function index( Request $request, DataTables $dataTables )
  {
    
    $channels = Channel::sum( 'quantity' );
    $totalPointField = Gap::where( 'status', 'Field' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalPointCamp = Gap::where( 'status', 'Camp' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $inField = $totalPointField - $totalPointCamp;
    $inCamp = $channels - $inField;
    if( $request->ajax() && $request->isMethod( 'post' ) ) {
      return $this->service->dataTables( $request, $dataTables );
    }
    return view( 'admin.gaps.index', compact( 'channels', 'inField', 'inCamp' ) );
  }// index
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'employee_id' => 'required',
      'point_from'  => 'required|numeric|gt:0',
      'point_to'    => 'required|numeric|gt:0',
      'line_number' => 'required|numeric|gt:0',
      'status'      => 'required',
    ], [
      'employee_id.required' => 'Employee Name is Required',
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'status.required'      => 'Status is Required',
    ] );
    
    $data = $request->all();
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    
    Gap::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Gap Added' ], 200 );
  } // store
  
  /**
   * @param Gap $gap
   * @return JsonResponse
   */
  public function edit( Gap $gap ) : JsonResponse
  {
    return new JsonResponse( $gap );
  }// edit
  
  /**
   * @param Request $request
   * @param Gap $gap
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Gap $gap ) : object
  {
    $this->validate( $request, [
      'employee_id' => 'required',
      'point_from'  => 'required|numeric|gt:0',
      'point_to'    => 'required|numeric|gt:0',
      'line_number' => 'required|numeric|gt:0',
      'status'      => 'required',
    ], [
      'employee_id.required' => 'Employee Name is Required',
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'status.required'      => 'Status is Required',
    ] );
    //update the Employee
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    $gap->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Gap Updated' ], 200 );
  } // update
  
  /**
   * @param Gap $gap
   * @return string[]
   */
  public function destroy( Gap $gap ) : array
  {
    $gap->delete();
    return [ 'status' => 'ok', 'message' => 'Gap Deleted' ];
  }
  
}
