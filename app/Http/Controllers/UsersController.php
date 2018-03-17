<?php

namespace App\Http\Controllers;

use App\Kota;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::paginate(15);
        return view('users.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cities = Kota::all();
        return view('users.create', compact('cities'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $user = new User;
        $user->fill([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat,
            'tanggal_lahir' => Carbon::parse($request->tanggal_lahir)->format('Y-m-d'),
            'email' => $request->email,
            'nama' => $request->nama 
        ])->kota()->associate($request->kota_id)->save();

        return redirect()->route('user.index');
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
    public function edit(User $user)
    {
        $cities = Kota::all();
        return view('users.edit', compact('user', 'users', 'cities'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        // dd($user);
        $user->fill([
            'username' => $request->username,
            'password' => bcrypt($request->password),
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat,
            'tanggal_lahir' => Carbon::parse($request->tanggal_lahir)->format('Y-m-d'),
            'email' => $request->email,
            'nama' => $request->nama
        ])->kota()->associate($request->kota_id)->save();

        return redirect()->route('user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(User $user)
    {
        // dd($user);
        $user->delete();
        return redirect()->route('user.index');
    }
}
