<div class="card" id="section-overview">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">All Layouts</h6>

		<div class="header-elements">
			<div class="list-icons">
				<h4>Total Channels: {{$channels?? 0}}</h4> &nbsp;&nbsp;
				<h4>In Field: {{$inField?? 0}}</h4>
				<h4>In Camp: {{$inCamp?? 0}}</h4>
				<h4>Gap: {{$totalGap ?? 0}}</h4>
				<h4>Stolen: {{$totalStolen ?? 0}}</h4>
				<h4>Qabza: {{$totalQabza ?? 0}}</h4>
				<h4>FDUs: {{$totalPickingFDU ?? 0}}</h4>
			</div>
		</div>
	</div>

	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered table-striped table-hover" id="table-layouts">
				<thead>
				<tr>
					<th>Employee</th>
					<th>Line Number</th>
					<th>Point From</th>
					<th>Point To</th>
					<th>Total Points</th>
					<th>Date</th>
					<th>Type</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
				</thead>

			</table>
		</div>
	</div>
</div>
