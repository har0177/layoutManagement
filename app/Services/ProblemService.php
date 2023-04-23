<?php

namespace App\Services;

use App\Helpers\Ui;
use App\Models\Layout;
use App\Models\Problem;
use App\Repositories\LayoutRepository;
use App\Repositories\ProblemRepository;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ProblemService
{
  private $repository;
  
  public function __construct( ProblemRepository $repository )
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
    
    $table->editColumn( 'date', static function( $row ) {
      return Carbon::make( $row->date )->format( 'd-M-Y' );
    } );
    
    $table->editColumn( 'recovery_date', static function( $row ) {
      return Carbon::make( $row->recovery_date )->format( 'd-M-Y' );
    } );
    
    $table->addColumn( 'action', static function( Problem $row ) {
      
      $buttons = [
        
        [
          'href'        => '#',
          'data-url'    => route( 'problems.edit', $row->id ),
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
    $table->rawColumns( [ 'action' ] );
    
    return $table->make();
  }
  
}
