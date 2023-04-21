<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;

class BatteryUser extends Model
{
  use HasFactory;
  
  protected $fillable = [
    'id', 'battery_id', 'issued_to', 'status', 'issued_by', 'remarks', 'type'
  ];
  
  public function to()
  {
    return $this->belongsTo( Employee::class, 'issued_to', 'id' );
  }
  
  public function by()
  {
    return $this->belongsTo( Employee::class, 'issued_by', 'id' );
  }
  
  public function battery()
  {
    return $this->belongsTo( Battery::class, 'battery_id', 'id' );
  }
  
  public function getActivitylogOptions() : LogOptions
  {
    return LogOptions::defaults()
                     ->useLogName( 'Employee Batteries' )
                     ->logAll();
  }
  
}
