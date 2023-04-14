<?php

namespace App\Repositories;

use App\Models\Battery;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class BatteryRepository extends BaseRepository
{
  
  public function model()
  {
    return Battery::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Battery::query();
  }
  
}
