<?php
		
		namespace App\DataTables;
		
		
		use App\Models\User;
		use App\Services\DatatableService;
		use Illuminate\Http\Request;
		use Spatie\Activitylog\Models\Activity;
		
		/**
			*
			*/
		class ActivityDataTable extends DatatableService
		{
				
				public function query( Request $request, Activity $model )
				{
						$query = $model->newQuery();
						if( $request->role ) {
								$users = User::query();
								$users = $users->where( 'role_id', $request->role )->pluck( 'id' );
								$query->whereIn( 'causer_id', $users )->orWhereIn( 'subject_id', $users );
						}
						if( !empty( $request->type ) ) {
								$log = '';
								switch( $request->type ) {
										case 'reg':
												$log = [ 'registered-sms', 'registered-email' ];
												break;
										case 'manual':
												$log = [ 'send-sms-manual', 'not-send-sms-manual', 'send-email-manual', 'not-send-email-manual' ];
												break;
										case 'project':
												$log = [ 'send-sms', 'send-email' ];
												break;
								}
								
								if( $request->type === 'query' ) {
										$query->where( 'log_name', 'LIKE', '%' . $request->type . '%' );
								} elseif( $request->type === 'job' ) {
										$query->where( 'log_name', 'LIKE', '%' . $request->type . '%' );
								} else {
										$query->whereIn( 'log_name', $log );
								}
								
						}
			
						$query = $query->orderByDesc( 'id');
						return $query;
				}
				
				public function make( $resource )
				{
						$query = $this->buildQuery();
						return $resource::collection( $query->paginate( 100 ) );
				}
				
		}// ActivityDataTable