@extends('admin.layouts.admin')

@section('page-title','Manage Gaps')
@section('heading','Manage Gaps')
@section('breadcrumbs', 'Gaps')

@section('content')
	@include('admin.gaps.edit')
	@include('admin.gaps.overview')
@endsection

@include('plugins.ajax')
@include('plugins.DataTables')
@include('plugins.select2')

@push('footer')
	<script>
	 let table
	 $(document).ready(function () {
		 table = $('#table-Gaps').dataTable({
			 autoWidth: true,
			 ordering: false,
			 ajax: {
				 url: "{{route('gaps.ajax')}}",
				 type: 'post'
			 },
			 columns: [
				 { data: 'employee' },
				 { data: 'line_number' },
				 { data: 'point_from' },
				 { data: 'point_to' },
				 { data: 'land_owner' },
				 { data: 'area' },
				 { data: 'mobile_number' },
				 { data: 'permit_by' },
				 { data: 'reason' },
				 { data: 'status' },
				 { data: 'action' },
			 ]
		 })

		 $('#employees').select2({
			 ajax: {
				 url: "{{route('select2.employee')}}",
				 type: 'post',
				 data: function (params) {
					 return {
						 term: params.term
					 }
				 }
			 },
		 })

	 })

	 ui.$body.on('submit', '#form-edit', function (e) {
		 e.preventDefault()
		 $('#form-submit').attr('disabled', true).html('Uploading...')
		 let $form = $(this)
		 $.ajax({
			 url: $form.attr('action'),
			 type: 'post',
			 dataType: 'json',
			 data: $form.serialize(),
			 success: function (res) {
				 if (res.status === 'ok') {
					 ui.successMessage(res.message)
					 $form[0].reset()
					 $('#status').val('Gaps').trigger('change')
					 $('#employees').empty().trigger('change')

					 table.api().ajax.reload(null, false)
					 $('#form-submit').removeAttr('disabled')
					 return true
				 }
				 $('#form-submit').removeAttr('disabled')
				 ui.errorMessage(res.message)
			 },
			 error: function (res) {
				 $('#form-submit').removeAttr('disabled')
				 ui.ajaxError(res)
			 }
		 })
	 })

	 ui.$body.on('click', '[data-action="edit"]', function (e) {
		 e.preventDefault()
		 let $form = $('#form-edit')
		 let $el = $(this)

		 $.ajax({
			 url: $el.attr('data-url'),
			 dataType: 'json',
			 success: function (res) {
				 $('#line_number').val(res.line_number)
				 $('#point_from').val(res.point_from)
				 $('#point_to').val(res.point_to)
				 $('#status').val(res.status)
				 $('#land_owner').val(res.land_owner)
				 $('#area').val(res.area)
				 $('#mobile_number').val(res.mobile_number)
				 $('#permit_by').val(res.permit_by)
				 $('#reason').val(res.reason)
				 if (res.employee) {
					 let editEmployee = new Option(res.employee.name, res.employee.id, false, false)
					 $('#employees').append(editEmployee).trigger('change')
				 }
				 $('#form-submit').removeAttr('disabled').val('Update Gaps')
				 $('#section-edit').find('.card-title').text('Edit ' + res.name + ' Gaps')

				 $form.attr('action', $el.attr('data-url'))

			 },
			 error: function (res) {
				 ui.ajaxError(res)
			 }
		 })

	 })

	 ui.$body.on('click', '#form-cancel', function (e) {
		 e.preventDefault()
		 $('#form-edit')[0].reset()
		 $('#status').val('Gaps').trigger('change')
		 $('#employees').empty().trigger('change')

	 })

	 $('#form-reset').on('click', function (e) {
		 e.preventDefault()

		 $('#form-edit')[0].reset()
		 $('#status').val('Gaps').trigger('change')
		 $('#employees').empty().trigger('change')

	 })


	</script>
@endpush()
