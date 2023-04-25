<?php

namespace App\Repositories;

use App\Models\Gap;
use App\Models\Group;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class GroupRepository extends BaseRepository
{
  
  public function model()
  {
    return Group::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Group::query()->orderByDesc('id');
  }
  
}
