<?php

namespace App\Repositories;

use App\Models\Channel;
use Illuminate\Database\Eloquent\Builder;
use Prettus\Repository\Eloquent\BaseRepository;

class ChannelRepository extends BaseRepository
{
  
  public function model()
  {
    return Channel::class;
  }
  
  /**
   * @return Builder
   */
  public function dataTablesQuery()
  {
    return Channel::query()->orderByDesc('id');
  }
  
}
