<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bank;
use App\Models\Battery;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Employee;
use App\Models\Expense;
use App\Models\PaymentMethods;
use App\Models\Product;
use App\Models\Role;
use App\Models\Vendor;
use Illuminate\Http\Request;

class Select2Controller extends Controller
{
  
  public function batteries( Request $request ) : array
  {
    // $this->authorize('isAdmin');
    $model = Battery::query();
    if( !empty( $request->term ) ) {
      $model->where( 'name', 'like', '%' . $request->term . '%' );
    }
    $model = $model->orderBy( 'name' )->get();
    $data = [];
    foreach( $model as $key => $value ) {
      $data[ $key ] = [
        'id'   => $value->id,
        'text' => $value->name,
      ];
      # code...
    }
    
    return [ 'results' => $data ];
  }
  
  public function roles( Request $request ) : array
  {
    // $this->authorize('isAdmin');
    $model = Role::query();
    if( !empty( $request->term ) ) {
      $model->where( 'name', 'like', '%' . $request->term . '%' );
    }
    $model = $model->orderBy( 'name' )->get();
    $data = [];
    foreach( $model as $key => $value ) {
      $data[ $key ] = [
        'id'   => $value->id,
        'text' => $value->name,
      ];
      # code...
    }
    
    return [ 'results' => $data ];
  }
  
  public function employee( Request $request ) : array
  {
    // $this->authorize('isAdmin');
    $model = Employee::query();
    if( !empty( $request->term ) ) {
      $model->where( 'name', 'like', '%' . $request->term . '%' );
    }
    $model = $model->orderBy( 'name' )->get();
    $data = [];
    foreach( $model as $key => $value ) {
      $data[ $key ] = [
        'id'   => $value->id,
        'text' => $value->name,
      ];
      # code...
    }
    
    return [ 'results' => $data ];
  }
  
  
  
  
}
