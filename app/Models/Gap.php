<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gap extends Model
{
  use HasFactory;
  
  protected $fillable = [
    'id', 'employee_id', 'line_number', 'point_from', 'point_to', 'reason', 'land_owner',
    'area', 'mobile_number', 'permit_by', 'status'
  ];
  
  public function employee()
  {
    return $this->belongsTo( Employee::class );
  }
}
