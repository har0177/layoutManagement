<?php

namespace App\Services;

use App\Helpers\Ui;
use App\Models\Battery;
use App\Repositories\BatteryRepository;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class BatteryService
{
  private $repository;
  
  public function __construct( BatteryRepository $repository )
  {
    $this->repository = $repository;
  }
  
  /**
   * @param Request $request
   * @param DataTables $dataTables
   * @return JsonResponse
   * @throws Exception
   */
  public function dataTables( Request $request, DataTables $dataTables )
  {
    
    $table = $dataTables->eloquent( $this->repository->dataTablesQuery() );
    $table->addColumn( 'status', static function( $row ) {
      return batteryUser( $row->id );
    } );
    $table->addColumn( 'action', static function( Battery $row ) {
      
      $buttons = [
        
        [
          'href'        => '#',
          'data-url'    => route( 'batteries.edit', $row->id ),
          'label'       => '<i class="fas fa-edit"></i>',
          'class'       => 'btn-primary btn-sm',
          'data-action' => 'edit'
        ],
        /*[
            'href'        => '#',
            'data-url'    => route( 'categories.delete', $row->id ),
            'label'       => '<i class="fas fa-trash"></i>',
            'class'       => 'btn-danger btn-sm',
            'data-action' => 'delete'
        ],*/
      ];
      return Ui::actionButtons( $buttons );
    } );
    $table->rawColumns( [ 'action', 'status' ] );
    return $table->make();
  }
  
}
