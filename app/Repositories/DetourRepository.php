<?php

namespace App\Repositories;

use App\Models\Detour;
use App\Models\Layout;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class DetourRepository extends BaseRepository
{
  
  public function model()
  {
    return Detour::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Detour::query()->orderByDesc('id');
  }
  
}
