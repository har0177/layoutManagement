<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;

class EmployeeController extends Controller
{
  
  /**
   * @param Request $request
   * @return JsonResponse
   * @throws ValidationException
   */
  public function store( Request $request )
  {
    $this->validate( $request, [
      'name' => 'required|string|max:255|unique:employees',
    ], [
      'name.required' => 'Name is Required',
    ] );
    
    $data = $request->all();
    Employee::create( $data );
    return response()->json( [ 'status' => 'ok', 'message' => 'Employee Added' ], 200 );
  } // store
  
  /**
   * @param Request $request
   * @param Employee $employee
   * @return object
   * @throws ValidationException
   */
  public function update( Request $request, Employee $employee ) : object
  {
    $this->validate( $request,
      [
        'name' => [
          'required', 'string', 'max:191',
          Rule::unique( 'employees' )->ignore( $employee->id ),
        ],
      ], [
        'name.required' => 'Name is Required',
      ] );
    //update the Employee
    
    $employee->update( $request->all() );
    
    return response()->json( [ 'status' => 'ok', 'message' => 'Employee Updated' ], 200 );
  } // update
  
  /**
   * @param Employee $employee
   * @return string[]
   */
  public function destroy( Employee $employee ) : array
  {
    $employee->delete();
    return [ 'status' => 'ok', 'message' => 'Employee Deleted' ];
  }
}
