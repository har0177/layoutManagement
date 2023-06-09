<?php

namespace App\Services;

use App\Helpers\Ui;
use App\Models\Layout;
use App\Repositories\LayoutRepository;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class LayoutService
{
  private $repository;
  
  public function __construct( LayoutRepository $repository )
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
    
    $table->addColumn( 'totalPoint', static function( $row ) {
      return $row->point_to - $row->point_from + 1;
    } );
    
    $table->addColumn( 'date', static function( $row ) {
      return Carbon::make( $row->date )->format( 'd-M-Y' );
    } );
    
    $table->addColumn( 'action', static function( Layout $row ) {
      
      $buttons = [
        
        [
          'href'        => '#',
          'data-url'    => route( 'layouts.edit', $row->id ),
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
    $table->rawColumns( [ 'action', 'date', 'employee','totalPoint' ] );
    
    return $table->make();
  }
  
}
