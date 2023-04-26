<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Channel;
use App\Models\Detour;
use App\Models\Gap;
use App\Models\Problem;
use App\Services\DetourService;
use App\Services\LayoutService;
use Exception;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;

class DetourController extends Controller
{
  private $service;
  
  public function __construct( DetourService $service )
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
    return view( 'admin.detours.index' );
  }// index
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'channels' => 'required'
    ], [
      'channels.required' => 'Channels is Required'
    ] );
    
    $data = $request->all();
    Detour::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Detour Added' ], 200 );
  } // store
  
  /**
   * @param Detour $detour
   * @return JsonResponse
   */
  public function edit( Detour $detour ) : JsonResponse
  {
    return new JsonResponse( $detour );
  }// edit
  
  /**
   * @param Request $request
   * @param Detour $detour
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Detour $detour ) : object
  {
    $this->validate( $request, [
      'channels' => 'required'
    ], [
      'channels.required' => 'Channels is Required'
    ] );
    $detour->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Detour Updated' ], 200 );
  } // update
  
  /**
   * @param Detour $detour
   * @return string[]
   */
  public function destroy( Detour $detour ) : array
  {
    $detour->delete();
    return [ 'status' => 'ok', 'message' => 'Detour Deleted' ];
  }
  
}
