<?php
		
		namespace App\Services;
		
		use Illuminate\Http\Request;
		
		class DatatableService
		{
				
				/**
					* @var
					*/
				protected $query;
				
				protected $request;
				
				public function __construct( Request $request )
				{
						$this->request = $request;
				}
				
				protected function buildQuery()
				{
						$this->query = app()->call( [ $this, 'query' ] );
						$this->addSorting();
						
						return $this->query;
				}
				
				/**
					* @return void
					*/
				private function addSorting()
				{
						$sort = $this->request->input( 'sort' );
						if( !empty( $sort[ 'field' ] ) && !empty( $sort[ 'order' ] ) ) {
								$this->query->orderBy( $sort[ 'field' ], $sort[ 'order' ] === 'ascend' ? 'asc' : 'desc' );
						}
				}
		}// DataTableService