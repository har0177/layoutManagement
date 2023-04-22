<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGapsTable extends Migration
{
  /**
   * Run the migrations.
   * @return void
   */
  public function up()
  {
    Schema::create( 'gaps', function( Blueprint $table ) {
      $table->id();
      $table->unsignedBigInteger( 'employee_id' );
      $table->integer( 'line_number' );
      $table->integer( 'point_from' );
      $table->integer( 'point_to' );
      $table->text( 'reason' )->nullable();
      $table->string( 'land_owner' )->nullable();
      $table->string( 'area' )->nullable();
      $table->string( 'mobile_number' )->nullable();
      $table->string( 'permit_by' )->nullable();
      $table->enum( 'status', [ 'Solved', 'UnSolved' ] );
      $table->timestamps();
    } );
  }
  
  /**
   * Reverse the migrations.
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists( 'gaps' );
  }
}
