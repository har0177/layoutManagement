<?php
		
		namespace App\Http\Resources;
		
		use App\Models\User;
		use Carbon\Carbon;
		use Illuminate\Contracts\Support\Arrayable;
		use Illuminate\Http\Request;
		use Illuminate\Http\Resources\Json\JsonResource;
		use Illuminate\Http\Resources\Json\ResourceCollection;
		use JsonSerializable;
		use Spatie\Activitylog\Models\Activity;
		
		class ActivityResource extends JsonResource
		{
				/**
					* Transform the resource into an array.
					* @param Request $request
					* @return array|Arrayable|JsonSerializable
					*/
				public function toArray( $request )
				{
						if( !$this->causer_id ) {
								$check = $this->subject_id;
						} else {
								$check = $this->causer_id;
						}
						$users = User::find( $check,
										[ 'id', 'first_name', 'last_name' ] ) ?? [ 'first_name' => "Guest", 'last_name' => '' ];
						
						return [
								'id'          => $this->id,
								'log_name'    => $this->log_name,
								'description' => $this->description,
								'event'       => $this->subject_type,
								'user'        => $users,
								'properties'  => $this->properties,
								'created_at'  => Carbon::make( $this->created_at )->format( 'd-m-Y h:i A' ),
						];
				}// toArray
		}