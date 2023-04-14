<!-- Main navigation -->
<div class="card card-sidebar-mobile">
	<ul class="nav nav-sidebar" data-nav-type="accordion">

		<!-- Main -->
		<li class="nav-item-header">
			<div class="text-uppercase font-size-xs line-height-xs">Main</div>
			<i class="icon-menu" title="Main"></i></li>
		@if(user_can('access dashboard'))
			<li class="nav-item">
				<a href="{{url('admin')}}"
				   class="nav-link {!! request()->is('admin')?' active':'' !!}">
					<i class="fas fa-home"></i>
					<span>Dashboard</span>
				</a>
			</li>
		@endif

		@if(user_can('access roles'))
			<li class="nav-item">
				<a href="{{url('admin/roles')}}" class="nav-link {!! request()->is('admin/reports/role*')?' active':'' !!}">
					<i class="icon-menu3"></i>
					<span>Roles</span>
				</a>
			</li>
		@endif
		@if(user_can('access batteries'))
			<li class="nav-item">
				<a href="{{url('admin/batteries')}}" class="nav-link {!! request()->is('admin/batteries*')?' active':'' !!}">
					<i class="fas fa-list"></i>
					<span>Batteries</span>
				</a>
			</li>
		@endif
		@if(user_can('access employee'))
			<li class="nav-item">
				<a href="{{url('admin/employee')}}" class="nav-link {!! request()->is('admin/employee*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Employee</span>
				</a>
			</li>
		@endif

		@if(user_can('access users'))
			<li class="nav-item">
				<a href="{{url('admin/users')}}" class="nav-link {!! request()->is('admin/reports/user*')?' active':'' !!}">
					<i class="fas fa-users"></i>
					<span>Users</span>
				</a>
			</li>
		@endif
		@if(user_can('access settings'))
			<li class="nav-item">
				<a href="{{route('setup')}}" class="nav-link {!! request()->is('admin/reports/setup*')?' active':'' !!}">
					<i class="fas fa-cogs"></i>
					<span>Settings</span>
				</a>
			</li>
		@endif


		<li class="nav-item">
			<a href="{{route("admin.logs")}}" class="nav-link {!! request()->is('admin/logs')?' active':'' !!}">
				<i class="fas fa-archive"></i>
				<span>Logs History</span>
			</a>
		</li>


	</ul>
</div>
<!-- /main navigation -->