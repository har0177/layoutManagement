<?php

namespace App\DataTables;

use App\Models\BatteryUser;
use Carbon\Carbon;
use Yajra\DataTables\DataTableAbstract;
use Yajra\DataTables\Html\Builder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class EmployeeBatteryDataTable extends DataTable
{
  /**
   * @param $query
   * @return DataTableAbstract|\Yajra\DataTables\EloquentDataTable
   */
  public function dataTable( $query )
  {
    return datatables()
      ->eloquent( $query )
      ->addIndexColumn()
      ->addColumn( 'battery', static function( $row ) {
        return '<a href="#" onclick="batteryClick(' . $row->battery_id . ')" >' . batteryName( $row->battery_id ) . '</a>';
      } )->addColumn( 'date', static function( $row ) {
        return Carbon::make( $row->created_at )->format( 'd-m-Y h:i A' );
      } )->addColumn( 'issued_by', static function( $row ) {
        return employeeName( $row->issued_by );
      } )->addColumn( 'issued_to', static function( $row ) {
        return employeeName( $row->issued_to );
      } )->addColumn( 'status', static function( $row ) {
        if( $row->status == 'Good' ) {
          return '<span class="badge bg-success">Good</span>';
        } elseif( $row->status == 'Bad' ) {
          return '<span class="badge bg-danger">Bad</span>';
        } else {
          return '<span class="badge bg-warning">Charging</span>';
        }
      } )->rawColumns( [ 'battery', 'date', 'issued_to', 'status', 'issued_by' ] );
  }
  
  /**
   * @param BatteryUser $model
   * @return \Illuminate\Database\Eloquent\Builder
   */
  public function query( BatteryUser $model )
  {
    $date = request( 'date-range' );
    $battery = request( 'battery_id' );
    $to = request( 'issued_to' );
    $by = request( 'issued_by' );
    $query = $model->newQuery();
    $start = startDate( $date );
    $end = endDate( $date );
    
    if( $start && $end ) {
      $query->where( 'created_at', '>=', $start )->where( 'created_at', '<=', $end );
    }
    if( $battery ) {
      $query->where( 'battery_id', $battery );
    }
    if( $to ) {
      $query->where( 'issued_to', $to );
    }
    if( $by ) {
      $query->where( 'issued_by', $by );
    }
    return $query->limit( 20 )->orderByDesc( 'id' );
  }
  
  /**
   * Optional method if you want to use html builder.
   * @return Builder
   */
  public function html()
  {
    return $this->builder()
                ->setTableId( 'battery_employee_table' )
                ->setTableAttribute( 'style', 'width:100%' )
                ->columns( $this->getColumns() )
                ->minifiedAjax()
                ->scrollX( true )
                ->dom( '<"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-3"l><"col-sm-12 col-md-3"B><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 mb-1 row"<"col-sm-12 col-md-3"i><"col-sm-12 col-md-3"p>>' )
                ->orderBy( 1, 'asc' )
                ->buttons(
                  Button::make( 'print' ),
                  Button::make( 'excel' ),
                )
                ->ajaxWithForm( null, '#filter-form' );
  }
  
  /**
   * Get columns.
   * @return array
   */
  protected function getColumns()
  {
    return [
      Column::make( 'DT_RowIndex' )->title( "#" )->searchable( false )->orderable( false ),
      Column::make( 'date' ),
      Column::make( 'battery' ),
      Column::make( 'issued_by' ),
      Column::make( 'issued_to' ),
      Column::make( 'status' )
    ];
  }
  
  /**
   * Get filename for export.
   * @return string
   */
  protected function filename()
  {
    return 'battery_employee_table_' . date( 'YmdHis' );
  }
}
