<?php

namespace App\Repositories;

use App\Models\Battery;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class EmployeeRepository extends BaseRepository
{
  
  public function model()
  {
    return Employee::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Employee::query();
  }
  
}
