<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Channel;
use App\Models\Gap;
use App\Models\Layout;
use App\Models\Problem;
use App\Services\LayoutService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class LayoutController extends Controller
{
  private $service;
  
  public function __construct( LayoutService $service )
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
    $totalPointField = Layout::where( 'status', 'Field' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalPointCamp = Layout::where( 'status', 'Camp' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalGap = Gap::where( 'status', 'UnSolved' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalStolen = Problem::where( 'status', 'Stolen' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalQabza = Problem::where( 'status', 'Qabza' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    
    $inField = $totalPointField - $totalPointCamp - $totalGap - $totalQabza - $totalStolen;
    $inCamp = $channels - $inField;
    if( $request->ajax() && $request->isMethod( 'post' ) ) {
      return $this->service->dataTables( $request, $dataTables );
    }
    return view( 'admin.layout.index',
      compact( 'channels', 'inField', 'inCamp', 'totalGap', 'totalQabza', 'totalStolen' ) );
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
      'type'        => 'required',
      'status'      => 'required',
      'date'        => 'required',
    ], [
      'employee_id.required' => 'Employee Name is Required',
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'type.required'        => 'Type is Required',
      'status.required'      => 'Status is Required',
      'date.required'        => 'Date is Required',
    ] );
    
    $data = $request->all();
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    
    Layout::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Layout Added' ], 200 );
  } // store
  
  /**
   * @param Layout $layout
   * @return JsonResponse
   */
  public function edit( Layout $layout ) : JsonResponse
  {
    return new JsonResponse( $layout );
  }// edit
  
  /**
   * @param Request $request
   * @param Layout $layout
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Layout $layout ) : object
  {
    $this->validate( $request, [
      'employee_id' => 'required',
      'point_from'  => 'required|numeric|gt:0',
      'point_to'    => 'required|numeric|gt:0',
      'line_number' => 'required|numeric|gt:0',
      'type'        => 'required',
      'status'      => 'required',
      'date'        => 'required',
    ], [
      'employee_id.required' => 'Employee Name is Required',
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'type.required'        => 'Type is Required',
      'status.required'      => 'Status is Required',
      'date.required'        => 'Date is Required',
    ] );
    //update the Employee
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    $layout->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Layout Updated' ], 200 );
  } // update
  
  /**
   * @param Layout $layout
   * @return string[]
   */
  public function destroy( Layout $layout ) : array
  {
    $layout->delete();
    return [ 'status' => 'ok', 'message' => 'Layout Deleted' ];
  }
  
}
