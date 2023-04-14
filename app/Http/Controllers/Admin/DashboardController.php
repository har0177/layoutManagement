<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\EmployeeBatteryDataTable;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
  
  
  public function index( EmployeeBatteryDataTable $dataTable )
  {
    
    return $dataTable->render( 'admin.dashboard.index' );
  }// index
  
  
}
