<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Problem extends Model
{
  use HasFactory;
  
  protected $fillable = [
    'id', 'reporter', 'line_number', 'point_from', 'point_to', 'date', 'land_owner',
    'area', 'recovered_by', 'hand_over_to', 'recovery_date', 'status'
  ];
  
}
