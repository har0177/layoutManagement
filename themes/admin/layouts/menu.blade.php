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

		@if(user_can('access channels'))
			<li class="nav-item">
				<a href="{{url('admin/channels')}}" class="nav-link {!! request()->is('admin/channels*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Channels</span>
				</a>
			</li>
		@endif

		@if(user_can('access groups'))
			<li class="nav-item">
				<a href="{{url('admin/groups')}}" class="nav-link {!! request()->is('admin/groups*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Groups</span>
				</a>
			</li>
		@endif

		@if(user_can('access layouts'))
			<li class="nav-item">
				<a href="{{url('admin/layouts')}}" class="nav-link {!! request()->is('admin/layouts*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Layouts</span>
				</a>
			</li>
		@endif

		@if(user_can('access problems'))
			<li class="nav-item">
				<a href="{{url('admin/problems')}}" class="nav-link {!! request()->is('admin/problems*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Problems</span>
				</a>
			</li>
		@endif

		@if(user_can('access gaps'))
			<li class="nav-item">
				<a href="{{url('admin/gaps')}}" class="nav-link {!! request()->is('admin/gaps*')?' active':'' !!}">
					<i class="fas fa-address-book"></i>
					<span>Gaps</span>
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

		@if(user_can('access roles'))
			<li class="nav-item">
				<a href="{{url('admin/roles')}}" class="nav-link {!! request()->is('admin/reports/role*')?' active':'' !!}">
					<i class="icon-menu3"></i>
					<span>Roles</span>
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