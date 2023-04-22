<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Channel;
use App\Services\ChannelService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class ChannelController extends Controller
{
  private $service;
  
  public function __construct( ChannelService $service )
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
    return view( 'admin.channels.index' );
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
    Channel::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Channel Added' ], 200 );
  } // store
  
  /**
   * @param Channel $channel
   * @return JsonResponse
   */
  public function edit( Channel $channel ) : JsonResponse
  {
    return new JsonResponse( $channel );
  }// edit
  
  /**
   * @param Request $request
   * @param Channel $channel
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Channel $channel ) : object
  {
    $this->validate( $request, [
      'name'     => 'required|string|max:255',
      'quantity' => 'required|numeric|gt:0',
    ], [
      'name.required'     => 'Name is Required',
      'quantity.required' => 'Quantity is Required',
    ] );
    //update the Employee
    
    $channel->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Channel Updated' ], 200 );
  } // update
  
  /**
   * @param Channel $channel
   * @return string[]
   */
  public function destroy( Channel $channel ) : array
  {
    $channel->delete();
    return [ 'status' => 'ok', 'message' => 'Channel Deleted' ];
  }
  
}
