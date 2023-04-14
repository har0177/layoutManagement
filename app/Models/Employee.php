<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Employee extends Model
{
  use HasFactory, SoftDeletes;
  use LogsActivity;
  
  /**
   * The attributes that are mass assignable.
   * @var array
   */
  protected $fillable = [
    'id', 'name',  'phone'
  ];
  
  /**
   * The attributes that should be cast to native types.
   * @var array
   */
  protected $casts = [
    'created_at' => 'datetime:Y-m-d H:i:s',
    'updated_at' => 'datetime:Y-m-d H:i:s',
  ];
  
  
  public function getActivitylogOptions() : LogOptions
  {
    return LogOptions::defaults()
                     ->useLogName( 'Battry' )
                     ->logAll();
  }
  
}// User

