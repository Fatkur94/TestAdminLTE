<section class="sidebar">
  <!-- Sidebar user panel -->
  <div class="user-panel">
    <div class="pull-left image">
      <img src="dist/img/laravel-indonesia.png" class="img-circle" alt="User Image">
    </div>
    <div class="pull-left info">
      <p>Sector Code</p>
      <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
    </div>
  </div>
  <!-- search form -->
  <form action="#" method="get" class="sidebar-form">
    <div class="input-group">
      <input type="text" name="q" class="form-control" placeholder="Search...">
      <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
    </div>
  </form>
  <!-- /.search form -->
  <!-- sidebar menu: : style can be found in sidebar.less -->
  <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MAIN NAVIGATION</li>

    <li class="{{ Request::is('home*') ? 'active' : '' }}">
      <a href="{{ route('index')}}">
        <i class="fa fa-home"></i> <span>Home</span>
      </a>
    </li>

    <li class="{{ Request::is('kota*') ? 'active' : '' }}">
        <a href="{{ route('kota.index')}}"><i class="fa fa-shopping-cart"></i> Kota</a>
    </li>

    <li class="{{ Request::is('user*') ? 'active' : '' }}">
        <a href="{{ route('user.index')}}"><i class="fa fa-users"></i> Users</a>
    </li>

    <li class="{{ Request::is('companies*') ? 'active' : '' }}">
        <a href="{{ route('companies.index')}}"><i class="fa fa-database"></i> Perusahaan</a>
    </li>

    <li class="{{ Request::is('sales*') ? 'active' : '' }}">
        <a href="{{ route('sales.index')}}"><i class="fa fa-shopping-cart"></i> Penjualan</a>
    </li>

{{--     <li class="treeview">
      <a href="#">
        <i class="fa fa-database"></i> <span>Manage</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li class="active"><a href="#"><i class="fa fa-users"></i> Users</a></li>
        <li><a href="{{ route('kota.index')}}"><i class="fa fa-shopping-cart"></i> Kota</a></li>
      </ul>
    </li> --}}
  </ul>
</section>