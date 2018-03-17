<?php

namespace App\Http\Controllers;

use App\Kota;
use App\Sale;
use App\User;
use App\Company;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
    }

    public function backend()
    {
        $sales = Sale::all();
        $users = User::all();
        $companies = Company::all();
        return view('backend.index',compact('users', 'sales', 'companies'));
    }
}
