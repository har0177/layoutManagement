<?php

namespace App\Services;

use App\Helpers\Ui;
use App\Models\Detour;
use App\Models\Layout;
use App\Repositories\DetourRepository;
use App\Repositories\LayoutRepository;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class DetourService
{
  private $repository;
  
  public function __construct( DetourRepository $repository )
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
    
    $table->addColumn( 'date', static function( $row ) {
      return Carbon::make( $row->date )->format( 'd-M-Y' );
    } );
    
    $table->addColumn( 'action', static function( Detour $row ) {
      
      $buttons = [
        
        [
          'href'        => '#',
          'data-url'    => route( 'detours.edit', $row->id ),
          'label'       => '<i class="fas fa-edit"></i>',
          'class'       => 'btn-primary btn-sm',
          'data-action' => 'edit'
        ],
        /*  [
              'href'        => '#',
              'data-url'    => route( 'users.delete', $row->id ),
              'label'       => '<i class="fas fa-trash"></i>',
              'class'       => 'btn-danger btn-sm',
              'data-action' => 'delete'
          ],*/
      ];
      return Ui::actionButtons( $buttons );
    } );
    $table->rawColumns( [ 'action', 'date' ] );
    
    return $table->make();
  }
  
}
