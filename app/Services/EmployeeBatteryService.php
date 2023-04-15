<?php

namespace App\Services;

use App\Models\Battery;
use App\Repositories\EmployeeBatteryRepository;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class EmployeeBatteryService
{
  private $repository;
  
  public function __construct( EmployeeBatteryRepository $repository )
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
    
    $table->addIndexColumn();
    
    $table->addColumn( 'battery', static function( $row ) {
      return '<a href="#" onclick="batteryClick(' . $row->battery_id . ')" >' . $row->battery->name . '</a>';
    } );
    
    $table->addColumn( 'date', static function( $row ) {
      return Carbon::make( $row->created_at )->format( 'd-m-Y h:i A' );
    } );
    
    $table->addColumn( 'issued_by', static function( $row ) {
      return $row->by->name;
    } );
    
    $table->addColumn( 'issued_to', static function( $row ) {
      return $row->to->name;
    } );
    
    /*
      $table->addColumn( 'type', static function( $row ) {
        if( $row->location_type == 'Camp' ) {
          return '<span class="badge bg-success">Camp</span>';
        } else {
          return '<span class="badge bg-warning">Field</span>';
          
        }
      } );*/
    
    $table->addColumn( 'status', static function( $row ) {
      if( $row->status == 'Good' ) {
        return '<span class="badge bg-success">Good</span>';
      } elseif( $row->status == 'Bad' ) {
        return '<span class="badge bg-danger">Bad</span>';
      } else {
        return '<span class="badge bg-warning">Charging</span>';
        
      }
    } );
    
    $table->rawColumns( [ 'battery', 'date', 'issued_to', 'status', 'issued_by' ] );
    
    return $table->make();
  }
  
  
}
