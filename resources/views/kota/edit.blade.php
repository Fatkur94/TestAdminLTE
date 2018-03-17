@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Kota
      </h1>
    </section>
  
  <div class="container">

    <div class="panel panel-default">
      <div class="panel-body">
        <form method='post' action="{{ route('kota.update', $city->id)}}"> {{ csrf_field() }} {{ method_field('PUT')}}
            <div class="form-group">
              <label for="provinsi">Provinsi</label>
                  <select name="provinsi" id="provinsi" class="form-control select2">
                  <option value="">- All Area -</option>
                  @foreach($provinsi as $item)
                    <option value="{{ $item }}" {{ $item == $city->FK_Propinsi ? 'selected' : ""}} >
                      {{ $item }}
                    </option>
                  @endforeach
                </select>
            </div>
            <div class="form-group">
              <label for="kota">Kota</label>
              <input type="text" class="form-control" id="kota" name="kota" value="{{ $city->NamaKota }}">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
      </div>
    </div>
</div>
    <!-- /.content -->
  </div>
@endsection