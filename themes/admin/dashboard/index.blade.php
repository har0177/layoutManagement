@extends('admin.layouts.admin')

@section('page-title','Dashboard')
@section('heading','Dashboard')
@section('breadcrumbs', 'Dashboard')

@section('content')
	<div class="card" id="section-overview">
		<div class="card-body">
		</div>
	</div>
@endsection
@include('plugins.ajax')
@include('plugins.DataTables')
@include('plugins.select2')

@push('footer')

@endpush()