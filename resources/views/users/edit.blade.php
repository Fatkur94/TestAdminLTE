@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit User
      </h1>
    </section>
  
  <div class="container">

    <div class="panel panel-default">
      <div class="panel-body">
        <form method='post' action="{{ route('user.update', $user->id)}}"> {{ csrf_field() }} {{ method_field('PUT')}}
          <div class="row">
            <div class="col-sm-6">

            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" class="form-control" id="username" name="username" value="{{ $user->username }}">
            </div>

            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" disabled>
            </div>

            <div class="form-group">
              <label for="nama">Nama</label>
              <input type="text" class="form-control" id="nama" name="nama" value="{{ $user->nama }}">
            </div>
            
            <div class="form-group">
              <label for="no_telp">No Telp</label>
              <input type="text" class="form-control" id="no_telp" name="no_telp" value="{{ $user->no_telp }}">
            </div>
            
            <div class="form-group">
              <label for="alamat">Alamat</label>
              <textarea class="form-control" id="alamat" name="alamat">{{ $user->alamat }}</textarea>
            </div>

            </div>
            <div class="col-sm-6">

            <div class="form-group">
                <label>Date:</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control datepicker" id="datepicker" name="tanggal_lahir" value="{{ $user->tanggal_lahir }}">
                </div>
              </div>

            <div class="form-group">
              <label for="kota">Kota</label>
                  <select name="kota_id" id="kota" class="form-control select2">
                  <option value="">- All Area -</option>
                  @foreach($cities as $item)
                    <option value="{{ $item->id }}" {{ $item->id == $user->kota_id ? 'selected' : "" }}>
                      {{ $item->NamaKota }}
                    </option>
                  @endforeach
                </select>
            </div>          
  
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" class="form-control" id="email" name="email" value="{{ $user->email }}">
            </div>
            <div class="form-group">
              <label for="foto">Foto</label>
              <input type="text" class="form-control" id="foto" name="foto">
            </div>
            </div>
          </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
      </div>
    </div>
</div>
    <!-- /.content -->
  </div>
@endsection