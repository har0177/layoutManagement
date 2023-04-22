<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Layout extends Model
{
  use HasFactory;
  
  protected $fillable = [
    'id', 'employee_id', 'line_number', 'point_from', 'point_to', 'type', 'status', 'date'
  ];
  
  protected $with = [ 'employee' ];
  
  public function employee()
  {
    return $this->belongsTo( Employee::class );
  }
}
