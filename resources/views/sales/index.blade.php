@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Penjualan
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penjualan</li>
      </ol>
    </section>
  


  <div class="container">
      <div class="pull-right">
      </div>

  <div class="panel panel-default">
  <div class="panel-heading">
    <div class="row">
      <div class="col-sm-6"><h4>Penjualan</h4></div>
      <div class="col-sm-6">
        <a href="{{route('sales.create')}}" class="pull-right btn btn-success">Tambah Penjualan</a>
      </div>
    </div>
  </div>
    <div class="panel-body">
        <table class="table">
          <thead>
            <tr>
              <th>User</th>
              <th>Perusahaan</th>
              <th>Type</th>
              <th>Produk</th>
              <th>Harga</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($sales as $sale)
              <tr>
                <td>{{ $sale->company->user->nama }}</td>
                <td>{{ $sale->company->nama }}</td>
                <td>{{ $sale->type }}</td>
                <td>{{ $sale->produk }}</td>
                <td>{{ $sale->harga }}</td>
                <td>
                  <a href="{{ route('sales.edit', $sale->id) }}" class="btn btn-success">Edit</a>
                  <a data-confirm="Are you sure?" data-method="delete" 
                  href="{{ route('sales.delete', $sale->id)}}" class="btn btn-danger">Delete</a>

                </td>
              </tr>
            @endforeach


          </tbody>
        </table>
      <div class="paginator text-center">{{ $sales->links() }}</div>
    </div>
  </div>
</div>

</div>


    <!-- /.content -->
  </div>
@endsection