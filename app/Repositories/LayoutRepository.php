<?php

namespace App\Repositories;

use App\Models\Layout;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class LayoutRepository extends BaseRepository
{
  
  public function model()
  {
    return Layout::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Layout::query();
  }
  
}
