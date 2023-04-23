<div class="card" id="section-overview">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">All Problems</h6>

		<div class="header-elements">
			<div class="list-icons">
				<h4>Stolen: {{$totalStolen ?? 0}}</h4> &nbsp;&nbsp;
				<h4>Qabza: {{$totalQabza ?? 0}}</h4>
			</div>
		</div>
	</div>

	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered table-striped table-hover" id="table-Problems">
				<thead>
				<tr>
					<th>Reporter</th>
					<th>Line Number</th>
					<th>Point From</th>
					<th>Point To</th>
					<th>Date</th>
					<th>Land Owner</th>
					<th>Area</th>
					<th>Recovered By</th>
					<th>Hand Over To</th>
					<th>Recovery Date</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
				</thead>

			</table>
		</div>
	</div>
</div>
