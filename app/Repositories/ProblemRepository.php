<?php

namespace App\Repositories;

use App\Models\Problem;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class ProblemRepository extends BaseRepository
{
  
  public function model()
  {
    return Problem::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Problem::query();
  }
  
}
