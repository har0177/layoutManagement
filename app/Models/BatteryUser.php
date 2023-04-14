<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;

class BatteryUser extends Model
{
  use HasFactory;
  
  protected $fillable = [
    'id', 'battery_id', 'issued_to', 'status', 'issued_by'
  ];
  
  
  public function getActivitylogOptions() : LogOptions
  {
    return LogOptions::defaults()
                     ->useLogName( 'Employee Batteries' )
                     ->logAll();
  }
  
}
