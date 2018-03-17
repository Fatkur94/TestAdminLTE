@extends('layouts.master')

@section('content')
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Kota
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kota</li>
      </ol>
    </section>
  


  <div class="container">
      <div class="pull-right">
    {{-- <h2>Modal Example</h2> --}}
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal"> Tambah Kota</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Tambah Kota</h4>
        </div>
        <div class="modal-body">
         
          <form method= 'post' action="{{ route('kota.store')}}"> {{ csrf_field() }}
            <div class="form-group">
              <label for="provinsi">Provinsi</label>
                  <select name="provinsi" id="provinsi" class="form-control select2">
                  <option value="">- All Area -</option>
                  @foreach($provinsi as $item)
                    <option value="{{ $item }}">
                      {{ $item }}
                    </option>
                  @endforeach
                </select>
            </div>
            <div class="form-group">
              <label for="kota">Kota</label>
              <input type="text" class="form-control" id="kota" name="kota">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  


      </div>

  <h2>Kota</h2>
  <div class="panel panel-default">
    <div class="panel-body">
        <table class="table">
          <thead>
            <tr>
              <th>Provinsi</th>
              <th>Kota</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($cities as $city)
              <tr>
                <td>{{ $city->FK_Propinsi }}</td>
                <td>{{ $city->NamaKota }}</td>
                <td>
                  <a href="{{ route('kota.edit', $city->id) }}" class="btn btn-success">Edit</a>
                  <a data-confirm="Are you sure?" data-method="delete" 
                  href="{{ route('kota.delete', $city->id)}}" class="btn btn-danger">Delete</a

                </td>
              </tr>
            @endforeach


          </tbody>
        </table>
      <div class="paginator text-center">{{ $cities->links() }}</div>
    </div>
  </div>
</div>

</div>


    <!-- /.content -->
  </div>
@endsection