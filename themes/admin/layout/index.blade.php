@extends('admin.layouts.admin')

@section('page-title','Manage Layouts')
@section('heading','Manage Layouts')
@section('breadcrumbs', 'Layouts')

@section('content')
	@include('admin.layout.edit')
	@include('admin.layout.overview')
@endsection

@include('plugins.ajax')
@include('plugins.DataTables')
@include('plugins.select2')

@push('footer')

	<script>
	 let table
	 $(document).ready(function () {
		 table = $('#table-layouts').dataTable({
			 autoWidth: true,
			 ordering: false,
			 ajax: {
				 url: "{{route('layouts.ajax')}}",
				 type: 'post'
			 },
			 columns: [
				 { data: 'employee' },
				 { data: 'line_number' },
				 { data: 'point_from' },
				 { data: 'point_to' },
			{ data: 'totalPoint' },
				 { data: 'date' },
				 { data: 'type' },
				 { data: 'status' },
				 { data: 'action' },
			 ],
			 dom: 'Bfrtip',
			 buttons: [
				 'copy', 'csv', 'excel', 'pdf', 'print'
			 ]
		 })
		 $('body').addClass('sidebar-xs')

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
		 $('#form-submit').attr('disabled', true).html('submitting...')
		 let $form = $(this)
		 $.ajax({
			 url: $form.attr('action'),
			 type: 'post',
			 dataType: 'json',
			 data: $form.serialize(),
			 success: function (res) {
				 if (res.status === 'ok') {
					 ui.successMessage(res.message)
					 table.api().ajax.reload(null, false)
					 $('#form-submit').removeAttr('disabled')
					 resetLayout()
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
				 $('#type').val(res.type)
				 $('#status').val(res.status)
				 $('#date').val(res.date)
				 if (res.employee) {
					 let editEmployee = new Option(res.employee.name, res.employee.id, false, false)
					 $('#employees').append(editEmployee).trigger('change')
				 }
				 $('#form-submit').removeAttr('disabled').val('Update Layouts')
				 $('#section-edit').find('.card-title').text('Edit ' + res.name + ' Layouts')

				 $form.attr('action', $el.attr('data-url'))

			 },
			 error: function (res) {
				 ui.ajaxError(res)
			 }
		 })

	 })

	 ui.$body.on('click', '#form-cancel', function (e) {
		 e.preventDefault()
		 resetLayout()
	 })

	 $('#form-reset').on('click', function (e) {
		 e.preventDefault()
		 resetLayout()
	 })

	 function resetLayout () {
		 $('#form-edit')[0].reset()
		 $('#status').val('Field').trigger('change')
		 $('#type').val('Layout').trigger('change')
		 $('#employees').empty().trigger('change')
	 }


	</script>
@endpush()
