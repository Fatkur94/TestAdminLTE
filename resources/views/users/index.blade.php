@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Users
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Users</li>
      </ol>
    </section>
  


  <div class="container">
      <div class="pull-right">
      </div>

  <div class="panel panel-default">
  <div class="panel-heading">
    <div class="row">
      <div class="col-sm-6"><h4>Users</h4></div>
      <div class="col-sm-6">
        <a href="{{route('user.create')}}" class="pull-right btn btn-success">Tambah User</a>
      </div>
    </div>
  </div>
    <div class="panel-body">
        <table class="table">
          <thead>
            <tr>
              <th>Nama</th>
              <th>Username</th>
              <th>Email</th>
              <th>No Telp</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($users as $user)
              <tr>
                <td>{{ $user->nama }}</td>
                <td>{{ $user->username }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->no_telp }}</td>
                <td>
                  <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success">Edit</a>
                  <a data-confirm="Are you sure?" data-method="delete" 
                  href="{{ route('user.delete', $user->id)}}" class="btn btn-danger">Delete</a>

                </td>
              </tr>
            @endforeach


          </tbody>
        </table>
      <div class="paginator text-center">{{ $users->links() }}</div>
    </div>
  </div>
</div>

</div>


    <!-- /.content -->
  </div>
@endsection