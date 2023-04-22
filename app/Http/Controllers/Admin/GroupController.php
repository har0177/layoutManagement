<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Group;
use App\Services\GroupService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class GroupController extends Controller
{
  private $service;
  
  public function __construct( GroupService $service )
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
    if( $request->ajax() && $request->isMethod( 'post' ) ) {
      return $this->service->dataTables( $request, $dataTables );
    }
    return view( 'admin.groups.index' );
  }// index
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'name'     => 'required|string|max:255',
      'quantity' => 'required|numeric|gt:0',
    ], [
      'name.required'     => 'Name is Required',
      'quantity.required' => 'Quantity is Required',
    ] );
    
    $data = $request->all();
    Group::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Group Added' ], 200 );
  } // store
  
  /**
   * @param Group $group
   * @return JsonResponse
   */
  public function edit( Group $group ) : JsonResponse
  {
    return new JsonResponse( $group );
  }// edit
  
  /**
   * @param Request $request
   * @param Group $group
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Group $group ) : object
  {
    $this->validate( $request, [
      'name'     => 'required|string|max:255',
      'quantity' => 'required|numeric|gt:0',
    ], [
      'name.required'     => 'Name is Required',
      'quantity.required' => 'Quantity is Required',
    ] );
    //update the Employee
    
    $group->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Group Updated' ], 200 );
  } // update
  
  /**
   * @param Group $group
   * @return string[]
   */
  public function destroy( Group $group ) : array
  {
    $group->delete();
    return [ 'status' => 'ok', 'message' => 'Group Deleted' ];
  }
  
}
