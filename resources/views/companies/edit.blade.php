@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Perusahaan
      </h1>
    </section>
  
  <div class="container">

    <div class="panel panel-default">
      
  <div class="panel-heading">
    <div class="row">
      <div class="col-sm-6"><h4>Edit Perusahaan</h4></div>
    </div>
  </div>

      <div class="panel-body">
        <form method='post' action="{{ route('companies.update', $company->id)}}"> {{ csrf_field() }} {{ method_field('PUT') }}
          <div class="row">
            <div class="col-sm-6">

            <div class="form-group">
              <label for="nama">Nama</label>
              <input type="text" class="form-control" id="nama" name="nama" value="{{ $company->nama }}">
            </div>

            <div class="form-group">
              <label for="contact_person">Contact Person</label>
              <input type="text" class="form-control" id="contact_person" name="contact_person" value="{{ $company->contact_person }}">
            </div>

            <div class="form-group">
              <label for="kota">Pemilik</label>
                  <select name="user_id" id="kota" class="form-control select2">
                  <option value="">pilih pemilik</option>
                  @foreach($users as $user)
                    <option value="{{ $user->id }}" {{ $user->id == $company->user->id ? 'selected' : "" }}>
                      {{ $user->nama }}
                    </option>
                  @endforeach
                </select>
            </div>         

            <div class="form-group">
              <label for="badan_usaha">Badan Usaha</label>
              <select name="badan_usaha" id="kota" class="form-control select2">
                  <option value="">pilih badan usaha</option>
                  @foreach($legals as $legal)
                    <option value="{{ $legal }}" {{ $legal == $company->badan_usaha ? 'selected' : ''}}>
                      {{ $legal }}
                    </option>
                  @endforeach
                </select>
            </div> 

             <div class="form-group">
              <label for="produk">Produk</label>
              <input type="text" class="form-control" id="produk" name="produk" value="{{ $company->produk }}">
            </div>
            
             <div class="form-group">
              <label for="website">Website</label>
              <input type="text" class="form-control" id="website" name="website" value="{{ $company->website }}">
            </div>

            </div>
            <div class="col-sm-6">

            <div class="form-group">
              <label for="alamat">Alamat</label>
              <textarea class="form-control" id="alamat" name="alamat">{{ $company->alamat }}</textarea>
            </div>
  
            <div class="form-group">
              <label for="no_telp">No Telp</label>
              <input type="text" class="form-control" id="no_telp" name="no_telp" value="{{ $company->no_telp }}">
            </div>

            <div class="form-group">
              <label for="kota">Kota</label>
                  <select name="kota_id" id="kota" class="form-control select2">
                  <option value="">pilih kota</option>
                  @foreach($cities as $city)
                    <option value="{{ $city->id }}" {{ $company->kota->id == $city->id ? 'selected' : ''}}>
                      {{ $city->NamaKota }}
                    </option>
                  @endforeach
                </select>
            </div> 

            <div class="form-group">
              <label for="email">Email</label>
              <input type="text" class="form-control" id="email" name="email" value="{{ $company->email }}">
            </div>

            <div class="form-group">
              <label for="logo">Logo</label>
              <input type="text" class="form-control" id="logo" name="logo">
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