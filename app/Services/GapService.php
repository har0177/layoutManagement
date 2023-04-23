<?php

namespace App\Services;

use App\Helpers\Ui;
use App\Models\Gap;
use App\Repositories\GapsRepository;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class GapService
{
  private $repository;
  
  public function __construct( GapsRepository $repository )
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
    
    $table->addColumn( 'employee', static function( $row ) {
      return $row->employee->name;
    } );
    
    $table->addColumn( 'action', static function( Gap $row ) {
      
      $buttons = [
        
        [
          'href'        => '#',
          'data-url'    => route( 'gaps.edit', $row->id ),
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
    $table->rawColumns( [ 'action', 'employee' ] );
    
    return $table->make();
  }
  
}
