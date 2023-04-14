<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBatteryUsersTable extends Migration
{
  /**
   * Run the migrations.
   * @return void
   */
  public function up()
  {
    Schema::create( 'battery_users', function( Blueprint $table ) {
      $table->id();
      $table->unsignedBigInteger( 'battery_id' );
      $table->unsignedBigInteger( 'employee_id' );
      $table->text( 'location' );
      $table->enum( 'status', [ 'Issue', 'Return' ] );
      $table->softDeletes();
      $table->timestamps();
    } );
  }
  
  /**
   * Reverse the migrations.
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists( 'battery_users' );
  }
}
