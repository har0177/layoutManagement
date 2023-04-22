<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProblemsTable extends Migration
{
  /**
   * Run the migrations.
   * @return void
   */
  public function up()
  {
    Schema::create( 'problems', function( Blueprint $table ) {
      $table->id();
      $table->string( 'reporter' )->nullable();
      $table->integer( 'line_number' );
      $table->integer( 'point_from' );
      $table->integer( 'point_to' );
      $table->date( 'date' )->nullable();
      $table->string( 'land_owner' )->nullable();
      $table->string( 'area' )->nullable();
      $table->string( 'recovered_by' )->nullable();
      $table->string( 'hand_over_to' )->nullable();
      $table->date( 'recovery_date' )->nullable();
      $table->enum( 'status', [ 'Stolen', 'Recovered', 'Qabza' ] );
      $table->timestamps();
    } );
  }
  
  /**
   * Reverse the migrations.
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists( 'problems' );
  }
}
