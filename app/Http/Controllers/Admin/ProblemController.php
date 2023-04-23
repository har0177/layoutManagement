<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Problem;
use App\Services\ProblemService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class ProblemController extends Controller
{
  private $service;
  
  public function __construct( ProblemService $service )
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
    
    $totalStolen = Problem::where( 'status', 'Stolen' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    $totalQabza = Problem::where( 'status', 'Qabza' )->value( \DB::raw( "SUM(point_to - point_from + 1)" ) );
    
    if( $request->ajax() && $request->isMethod( 'post' ) ) {
      return $this->service->dataTables( $request, $dataTables );
    }
    return view( 'admin.problems.index', compact( 'totalQabza', 'totalStolen' ) );
  }// index
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'point_from'  => 'required|numeric|gt:0',
      'point_to'    => 'required|numeric|gt:0',
      'line_number' => 'required|numeric|gt:0',
      'status'      => 'required',
      'date'        => 'required',
    ], [
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'status.required'      => 'Status is Required',
      'date.required'        => 'Date is Required',
    ] );
    
    $data = $request->all();
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    
    Problem::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Problem Added' ], 200 );
  } // store
  
  /**
   * @param Problem $problem
   * @return JsonResponse
   */
  public function edit( Problem $problem ) : JsonResponse
  {
    return new JsonResponse( $problem );
  }// edit
  
  /**
   * @param Request $request
   * @param Problem $problem
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Problem $problem ) : object
  {
    $this->validate( $request, [
      'point_from'  => 'required|numeric|gt:0',
      'point_to'    => 'required|numeric|gt:0',
      'line_number' => 'required|numeric|gt:0',
      'status'      => 'required',
      'date'        => 'required',
    ], [
      'point_from.required'  => 'Point From is Required',
      'point_to.required'    => 'Point To is Required',
      'line_number.required' => 'Line Number is Required',
      'status.required'      => 'Status is Required',
      'date.required'        => 'Date is Required',
    ] );
    //update the Employee
    $from = $request->point_from;
    $to = $request->point_to;
    if( $from > $to ) {
      return response()->json( [ 'status' => 'error', 'message' => 'Point To must be greater than Point From' ], 400 );
    }
    $problem->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Problem Updated' ], 200 );
  } // update
  
  /**
   * @param Problem $problem
   * @return string[]
   */
  public function destroy( Problem $problem ) : array
  {
    $problem->delete();
    return [ 'status' => 'ok', 'message' => 'Problem Deleted' ];
  }
  
}
