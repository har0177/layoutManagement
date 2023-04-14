<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class EmailMessage extends Mailable
{
  use Queueable, SerializesModels;
  
  private $message;
  
  /**
   * Create a new message instance.
   * @return void
   */
  public function __construct( $message )
  {
    $this->message = $message;
  }
  
  /**
   * Build the message.
   * @return $this
   */
  public function build()
  {
    activity()
      ->useLog( 'battery-notification' )
      ->causedBy( \auth()->user() )
      ->log( $this->message );
    return $this->subject( env( 'app_name' ) )
                ->view( 'emails.batteryNotify', [ 'data' => $this->message ] );
  }
}
