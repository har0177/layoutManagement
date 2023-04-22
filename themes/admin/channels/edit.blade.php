<div class="card">
	<div
		class="card-header bg-teal-400 header-elements-inline">
		<h6 class="card-title">Add Channel</h6>
	</div>

	<div class="card-body">
		<form method="post" action="{{route('channels.add')}}" name="form-edit" id="form-edit" class="form-horizontal">
			@csrf
			<div class="form-group row">
				<div class="col-md-6">
					<label for="name">Name:</label>
					<input
						id="name"
						type="text"
						name="name"
						placeholder="Full Name"
						class="form-control"
					/>
				</div>

				<div class="col-md-6">
					<label
						for="phone">Quantity:</label>
					<input
						id="quantity"
						type="number"
						name="quantity"
						placeholder="i.e 5"
						class="form-control"
					/>
				</div>
			</div>
		</form>
		<div class="box-footer text-right">
			<div class="btn-group">
				<input type="submit" id="form-submit" name="form-submit" class="btn btn-primary" form="form-edit"
				       value="Add Channel">
				<input type="reset" name="form-reset" id="form-reset" class="btn btn-default" form="form-edit">
				<input type="button" name="form-cancel" id="form-cancel" class="btn btn-warning" value="Cancel">
			</div>
		</div>
	</div>

</div>

