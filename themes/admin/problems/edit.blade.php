<div class="card">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">Add Problem</h6>
	</div>

	<div class="card-body">
		<form method="post" action="{{route('problems.add')}}" name="form-edit" id="form-edit" class="form-horizontal">
			@csrf
			<div class="form-group row">

				<div class="col-md-4">

					<label><strong>Reporter Name:</strong></label>
					<input type="text" name="reporter" placeholder="i.e. Reporter Name" id="reporter" class="form-control"/>

				</div>
				<div class="col-md-4">
					<label><strong>Line Number:</strong></label>
					<input type="number" name="line_number" placeholder="i.e. Line Number" id="line_number" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Point From:</strong></label>
					<input type="number" name="point_from" placeholder="i.e. Point From" id="point_from" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Point To:</strong></label>
					<input type="number" name="point_to" placeholder="i.e. Point To" id="point_to" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Date:</strong></label>
					<input type="date" name="date" value="{{date('Y-m-d')}}" id="date" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Land Owner:</strong></label>
					<input type="text" name="land_owner" id="land_owner" placeholder="i.e. Land Owner Name" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Area:</strong></label>
					<input type="text" name="area" id="area" placeholder="i.e. Area" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Recovered By:</strong></label>
					<input type="text" name="recovered_by" id="recovered_by" placeholder="i.e. Recovered By" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Hand Over To:</strong></label>
					<input type="text" name="hand_over_to" id="hand_over_to" placeholder="i.e. Hand Over To" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Recovery Date:</strong></label>
					<input type="date" name="recovery_date" id="recovery_date" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label
						for="status">Status:</label>
					<select id="status" name="status" class="form-control select2">
						<option value="Stolen">Stolen</option>
						<option value="Qabza">Qabza</option>
						<option value="Recovered">Recovered</option>
					</select>
				</div>


			</div>
		</form>
		<div class="box-footer text-right">
			<div class="btn-group">
				<input type="submit" id="form-submit" name="form-submit" class="btn btn-primary" form="form-edit"
				       value="Add Problem">
				<input type="reset" name="form-reset" id="form-reset" class="btn btn-default" form="form-edit">
				<input type="button" name="form-cancel" id="form-cancel" class="btn btn-warning" value="Cancel">
			</div>
		</div>
	</div>

</div>

