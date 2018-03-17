@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Perusahaan
      </h1>
    </section>
  
  <div class="container">

    <div class="panel panel-default">
      
  <div class="panel-heading">
    <div class="row">
      <div class="col-sm-6"><h4>Tambah Perusahaan</h4></div>
    </div>
  </div>

      <div class="panel-body">
        <form method='post' action="{{ route('sales.update', $sale->id)}}"> {{ csrf_field() }} {{ method_field('PUT') }}

            <div class="form-group">
              <label for="kota">Perusahaan</label>
                  <select name="company_id" id="kota" class="form-control select2">
                  <option value="">pilih perusahaan</option>
                  @foreach($companies as $company)
                    <option value="{{ $company->id }}" {{ $company->id == $sale->company->id ? 'selected' : '' }}>
                      {{ $company->nama }}
                    </option>
                  @endforeach
                </select>
            </div>

            <div class="form-group">
              <label for="kota">Type</label>
                  <select name="type" id="kota" class="form-control select2">
                  <option value="">pilih type</option>
                  @foreach($types as $type)
                    <option value="{{ $type }}" {{ $type == $sale->type ? 'selected' : '' }}>
                      {{ $type }}
                    </option>
                  @endforeach
                </select>
            </div>         

            <div class="form-group">
              <label for="produk">Produk</label>
              <input type="text" class="form-control" id="produk" name="produk" value="{{ $sale->produk}}">
            </div>

            <div class="form-group">
              <label for="harga">harga</label>
              <input type="text" class="form-control" id="harga" name="harga" value="{{ $sale->harga }}">
            </div>
          </div>

            <button type="submit" class="btn btn-default">Submit</button>
          </form>
      
    </div>
</div>
    <!-- /.content -->
  </div>
@endsection