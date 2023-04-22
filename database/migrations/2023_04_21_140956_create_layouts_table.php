<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLayoutsTable extends Migration
{
  /**
   * Run the migrations.
   * @return void
   */
  public function up()
  {
    Schema::create( 'layouts', function( Blueprint $table ) {
      $table->id();
      $table->unsignedBigInteger( 'employee_id' );
      $table->integer( 'line_number' );
      $table->integer( 'point_from' );
      $table->integer( 'point_to' );
      $table->enum( 'type', [ 'Picking', 'Layout' ] )->nullable();
      $table->enum( 'status', [ 'Field', 'Camp' ] )->nullable();
      $table->date( 'date' );
      $table->timestamps();
    } );
  }
  
  /**
   * Reverse the migrations.
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists( 'layouts' );
  }
}
