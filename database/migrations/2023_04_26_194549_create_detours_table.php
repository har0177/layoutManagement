<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetoursTable extends Migration
{
  /**
   * Run the migrations.
   * @return void
   */
  public function up()
  {
    Schema::create( 'detours', function( Blueprint $table ) {
      $table->id();
      $table->integer( 'line' )->nullable();
      $table->integer( 'point' )->nullable();
      $table->integer( 'channels' );
      $table->date( 'date' )->nullable();
      $table->text( 'remarks' )->nullable();
      $table->enum( 'type', [ 'Detour', 'Troubleshoot' ] );
      $table->timestamps();
    } );
  }
  
  /**
   * Reverse the migrations.
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists( 'detours' );
  }
}
