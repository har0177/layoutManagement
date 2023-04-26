@extends('admin.layouts.admin')

@section('page-title','Manage Detours')
@section('heading','Manage Detours')
@section('breadcrumbs', 'Detours')

@section('content')
	@include('admin.detours.edit')
	@include('admin.detours.overview')
@endsection

@include('plugins.ajax')
@include('plugins.DataTables')
@include('plugins.select2')

@push('footer')

	<script>
	 let table
	 $(document).ready(function () {
		 table = $('#table-Detours').dataTable({
			 autoWidth: true,
			 ordering: false,
			 ajax: {
				 url: "{{route('detours.ajax')}}",
				 type: 'post'
			 },
			 columns: [
				 { data: 'line' },
				 { data: 'point' },
				 { data: 'channels' },
				 { data: 'date' },
				 { data: 'type' },
				 { data: 'remarks' },
				 { data: 'action' },
			 ],
			 dom: 'Bfrtip',
			 buttons: [
				 'copy', 'csv', 'excel', 'pdf', 'print'
			 ]
		 })
		 $('body').addClass('sidebar-xs')

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
				 $('#line').val(res.line)
				 $('#point').val(res.point)
				 $('#channels').val(res.channels)
				 $('#type').val(res.type)
				 $('#remarks').val(res.remarks)
				 $('#date').val(res.date)
				 $('#form-submit').removeAttr('disabled').val('Update Detours')
				 $('#section-edit').find('.card-title').text('Edit ' + res.name + ' Detours')

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
		 $('#type').val('Detour').trigger('change')
	 }


	</script>
@endpush()
