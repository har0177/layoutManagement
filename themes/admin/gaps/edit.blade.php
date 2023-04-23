<div class="card">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">Add Gaps</h6>
	</div>

	<div class="card-body">
		<form method="post" action="{{route('gaps.add')}}" name="form-edit" id="form-edit" class="form-horizontal">
			@csrf
			<div class="form-group row">

				<div class="col-md-4">

					<label><strong>Employee Name:</strong></label>
					<select name="employee_id" id="employees" data-placeholder="Select Employee"
					        class="form-control select2"></select>
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
					<label><strong>Land Owner:</strong></label>
					<input type="text" name="land_owner" id="land_owner" placeholder="i.e. Land Owner Name" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Area:</strong></label>
					<input type="text" name="area" id="area" placeholder="i.e. Area" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Mobile Number:</strong></label>
					<input type="text" name="mobile_number" id="mobile_number" placeholder="i.e. Mobile Number" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Permit By:</strong></label>
					<input type="text" name="permit_by" id="permit_by" placeholder="i.e. Permit By" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label
						for="status">Status:</label>
					<select id="status" name="status" class="form-control select2">
						<option value="Solved">Solved</option>
						<option value="UnSolved">UnSolved</option>
					</select>
				</div>

				<div class="col-md-4">
					<label><strong>Reason:</strong></label>
					<textarea name="reason" cols="4" rows="4" id="reason" class="form-control"></textarea>
				</div>


			</div>
		</form>
		<div class="box-footer text-right">
			<div class="btn-group">
				<input type="submit" id="form-submit" name="form-submit" class="btn btn-primary" form="form-edit"
				       value="Add Gaps">
				<input type="reset" name="form-reset" id="form-reset" class="btn btn-default" form="form-edit">
				<input type="button" name="form-cancel" id="form-cancel" class="btn btn-warning" value="Cancel">
			</div>
		</div>
	</div>

</div>

