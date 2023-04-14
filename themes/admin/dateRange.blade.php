	<form method="post" id="filter-form" style="margin-top: 10px;">
		<div class="row">
		<div class="col-md-3">
			<label><strong>Date Range:</strong></label>
			<input type="text" id="dataRange" name="date-range"
			       class="form-control flatpickr-range flatpickr-input active"
			       placeholder="From Date to Date Range" readonly="readonly">
		</div>

		<div class="col-md-3">

			<label><strong>Battery Name:</strong></label>
			<select name="battery_id" data-placeholder="Select Battery"
			        class="form-control select2 batteries_1"></select>
		</div>

		<div class="col-md-3">

			<label><strong>Issue By:</strong></label>
			<select name="issued_by" data-placeholder="Select Issued By"
			        class="form-control select2 issued_by_1"></select>
		</div>
		<div class="col-md-3">

			<label><strong>Issue To:</strong></label>
			<select name="issued_to" data-placeholder="Select Issued To"
			        class="form-control select2 issued_to_1"></select>
		</div>
	</div>

	<div class="box-footer text-right mt-3">
		<div class="btn-group">

			<input type="submit" value="Filter" class="btn btn-primary float-right">
			<input type="reset" id="reset-filters" class="btn btn-warning float-right">
		</div>
	</div>
	</form>
<br>