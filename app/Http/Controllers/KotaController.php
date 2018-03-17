<?php

namespace App\Http\Controllers;

use App\Kota;
use Illuminate\Http\Request;

class KotaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cities = Kota::paginate(15);
        $provinsi = Kota::pluck('FK_Propinsi');
        return view('kota.index', compact('cities', 'provinsi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kota.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $city = new Kota;
        $city->create([
            'kode_kota' => 'TEST',
            'NamaKota' => $request->kota,
            'Jenis' => 'Kota',
            'FK_Propinsi' => $request->provinsi
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($kotum)
    {
        $city = Kota::find($kotum);
        $provinsi = Kota::pluck('FK_Propinsi');
        return view('kota.edit', compact('city', 'provinsi'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kota $kotum)
    {
        $kotum->update(['NamaKota' => $request->kota,
            'FK_Propinsi' => $request->provinsi
        ]);
        return redirect()->route('kota.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Kota $kotum)
    {
        
        $kotum->delete();

        return back();
    }
}
