@extends('admin.layouts.admin')

@section('page-title','Manage Problems')
@section('heading','Manage Problems')
@section('breadcrumbs', 'Problems')

@section('content')
	@include('admin.problems.edit')
	@include('admin.problems.overview')
@endsection

@include('plugins.ajax')
@include('plugins.DataTables')
@include('plugins.select2')

@push('footer')
	<script>
	 let table
	 $(document).ready(function () {
		 table = $('#table-Problems').dataTable({
			 autoWidth: true,
			 ordering: false,
			 ajax: {
				 url: "{{route('problems.ajax')}}",
				 type: 'post'
			 },
			 columns: [
				 { data: 'reporter' },
				 { data: 'line_number' },
				 { data: 'point_from' },
				 { data: 'point_to' },
				 { data: 'date' },
				 { data: 'land_owner' },
				 { data: 'area' },
				 { data: 'recovered_by' },
				 { data: 'hand_over_to' },
				 { data: 'recovery_date' },
				 { data: 'status' },
				 { data: 'action' },
			 ]
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
					 $('#status').val('problems').trigger('change')
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
				 $('#reporter').val(res.reporter)
				 $('#status').val(res.status)
				 $('#date').val(res.date)
				 $('#land_owner').val(res.land_owner)
				 $('#area').val(res.area)
				 $('#recovered_by').val(res.recovered_by)
				 $('#hand_over_to').val(res.hand_over_to)
				 $('#recovery_date').val(res.recovery_date)
				 $('#form-submit').removeAttr('disabled').val('Update Problems')
				 $('#section-edit').find('.card-title').text('Edit ' + res.name + ' Problems')

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
		 $('#status').val('problems').trigger('change')
	 })

	 $('#form-reset').on('click', function (e) {
		 e.preventDefault()

		 $('#form-edit')[0].reset()
		 $('#status').val('problems').trigger('change')

	 })


	</script>
@endpush()
