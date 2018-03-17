@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Perusahaan
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Perusahaan</li>
      </ol>
    </section>
  


  <div class="container">
      <div class="pull-right">
      </div>

  <div class="panel panel-default">
  <div class="panel-heading">
    <div class="row">
      <div class="col-sm-6"><h4>Perusahaan</h4></div>
      <div class="col-sm-6">
        <a href="{{route('companies.create')}}" class="pull-right btn btn-success">Tambah Perusahaan</a>
      </div>
    </div>
  </div>
    <div class="panel-body">
        <table class="table">
          <thead>
            <tr>
              <th>User</th>
              <th>Nama</th>
              <th>Contact Person</th>
              <th>Email</th>
              <th>Website</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($companies as $company)
              <tr>
                <td>{{ $company->user->nama }}</td>
                <td>{{ $company->nama }}</td>
                <td>{{ $company->contact_person }}</td>
                <td>{{ $company->email }}</td>
                <td>{{ $company->website }}</td>
                <td>
                  <a href="{{ route('companies.edit', $company->id) }}" class="btn btn-success">Edit</a>
                  <a data-confirm="Are you sure?" data-method="delete" 
                  href="{{ route('companies.delete', $company->id)}}" class="btn btn-danger">Delete</a>

                </td>
              </tr>
            @endforeach


          </tbody>
        </table>
      <div class="paginator text-center">{{ $companies->links() }}</div>
    </div>
  </div>
</div>

</div>


    <!-- /.content -->
  </div>
@endsection