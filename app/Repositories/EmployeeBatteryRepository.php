<?php

namespace App\Repositories;

use App\Models\Battery;
use App\Models\BatteryUser;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class EmployeeBatteryRepository extends BaseRepository
{
  
  public function model()
  {
    return BatteryUser::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return BatteryUser::with( [ 'battery', 'to', 'by' ] )->orderBy( 'id', 'DESC' )->limit( 500 );
  }
  
}
