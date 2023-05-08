<div class="card">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">Add Detour</h6>
	</div>

	<div class="card-body">
		<form method="post" action="{{route('detours.add')}}" name="form-edit" id="form-edit" class="form-horizontal">
			@csrf
			<div class="form-group row">

				<div class="col-md-4">
					<label><strong>Line Number:</strong></label>
					<input type="number" name="line" placeholder="i.e. Line" id="line" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Point:</strong></label>
					<input type="number" name="point" placeholder="i.e. Point" id="point" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Channels:</strong></label>
					<input type="number" name="channels" placeholder="i.e. Channels" id="channels" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label><strong>Date:</strong></label>
					<input type="date" name="date" value="{{date('Y-m-d')}}" id="date" class="form-control"/>
				</div>
				<div class="col-md-4">
					<label
						for="type">Type:</label>
					<select id="type" name="type" class="form-control select2">
						<option value="Detour">Detour</option>
						<option value="Troubleshoot">Troubleshoot</option>
					</select>
				</div>
				<div class="col-md-4">
					<label><strong>Remarks:</strong></label>
					<textarea name="remarks" cols="4" rows="4" id="remarks" class="form-control"></textarea>
				</div>


			</div>
		</form>
		<div class="box-footer text-right">
			<div class="btn-group">
				<input type="submit" id="form-submit" name="form-submit" class="btn btn-primary" form="form-edit"
				       value="Add Detour">
				<input type="reset" name="form-reset" id="form-reset" class="btn btn-default" form="form-edit">
				<input type="button" name="form-cancel" id="form-cancel" class="btn btn-warning" value="Cancel">
			</div>
		</div>
	</div>

</div>

