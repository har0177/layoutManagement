<div class="card">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">Add Layout</h6>
	</div>

	<div class="card-body">
		<form method="post" action="{{route('layouts.add')}}" name="form-edit" id="form-edit" class="form-horizontal">
			@csrf
			<div class="form-group row">

				<div class="col-md-4">

					<label><strong>Employee Name:</strong></label>
					<select name="employee_id" id="employees" data-placeholder="Select Employee"
					        class="form-control select2"></select>
				</div>
				<div class="col-md-4">
					<label><strong>Line Number:</strong></label>

					<input type="text" name="line_number" placeholder="i.e. Line Number" id="tags-input" class="form-control"/>
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
					<label
						for="type">Type:</label>
					<select id="type" name="type" class="form-control select2">
						<option value="Layout">Layout</option>
						<option value="Picking">Picking</option>
						<option value="Picking FDU">Picking FDU</option>
					</select>
				</div>
				<div class="col-md-4">
					<label
						for="status">Status:</label>
					<select id="status" name="status" class="form-control select2">
						<option value="Field">Field</option>
						<option value="Camp">Camp</option>
					</select>
				</div>


			</div>
		</form>
		<div class="box-footer text-right">
			<div class="btn-group">
				<input type="submit" id="form-submit" name="form-submit" class="btn btn-primary" form="form-edit"
				       value="Add Layout">
				<input type="reset" name="form-reset" id="form-reset" class="btn btn-default" form="form-edit">
				<input type="button" name="form-cancel" id="form-cancel" class="btn btn-warning" value="Cancel">
			</div>
		</div>
	</div>

</div>

