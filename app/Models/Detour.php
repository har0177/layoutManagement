<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Detour extends Model
{
  use HasFactory;
  
  protected $fillable = [ 'line', 'point', 'channels', 'date', 'remarks', 'type' ];
}
