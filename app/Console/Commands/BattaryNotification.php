<?php

namespace App\Console\Commands;

use App\Mail\EmailMessage;
use App\Models\Battery;
use App\Models\BatteryUser;
use Carbon\Carbon;
use Illuminate\Console\Command;

class BattaryNotification extends Command
{
  /**
   * The name and signature of the console command.
   * @var string
   */
  protected $signature = 'battery:notify';
  
  /**
   * The console command description.
   * @var string
   */
  protected $description = 'Notification for Battery having not issued within 3 days';
  
  /**
   * Create a new command instance.
   * @return void
   */
  public function __construct()
  {
    parent::__construct();
  }
  
  /**
   * Execute the console command.
   * @return mixed
   */
  public function handle()
  {
    $addDays = Carbon::now()->subDays( 3 );
    $batteries = Battery::all();
    foreach( $batteries as $battery ) {
      $bat = BatteryUser::where( 'battery_id', $battery->id )->orderBy( 'id', 'DESC' )->first();
      if( $bat && $addDays <= $bat->created_at ) {
        $message = 'Hey, Battery Name ' . $battery->name . ' last issued on ' . Carbon::make( $bat->created_at )->format( 'd-M-Y, h:i:s A' ) . ' to ' . employeeName( $bat->issued_to ) . ' by ' . employeeName( $bat->issued_by ) . 'having status ' . $bat->status . '.';
        \Mail::to( 'haroonyousaf80@gmail.com' )->send( new EmailMessage( $message ) );
      }
    }
  }
}
