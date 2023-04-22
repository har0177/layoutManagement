@extends('admin.layouts.admin')

@section('page-title','Manage Groups')
@section('heading','Manage Groups')
@section('breadcrumbs', 'Groups')

@section('content')
	@include('admin.groups.edit')
	@include('admin.groups.overview')
@endsection

@include('plugins.ajax')
@include('plugins.DataTables')

@push('footer')
	<script>
	 let table
	 $(document).ready(function () {
		 table = $('#table-groups').dataTable({
			 autoWidth: true,
			 ordering: false,
			 ajax: {
				 url: "{{route('groups.ajax')}}",
				 type: 'post'
			 },
			 columns: [
				 { data: 'name' },
				 { data: 'quantity' },
				 { data: 'action' }
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
				 $('#name').val(res.name)
				 $('#quantity').val(res.quantity)

				 $('#form-submit').removeAttr('disabled').val('Update Groups')
				 $('#section-edit').find('.card-title').text('Edit ' + res.name + ' Groups')

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
	 })


	</script>
@endpush()
