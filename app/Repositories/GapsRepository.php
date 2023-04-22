<?php

namespace App\Repositories;

use App\Models\Gap;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class GapsRepository extends BaseRepository
{
  
  public function model()
  {
    return Gap::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Gap::query();
  }
  
}
