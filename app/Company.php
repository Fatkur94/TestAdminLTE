<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $fillable = [
    	'nama', 'contact_person', 'user_id', 'badan_usaha', 'produk', 'alamat',
    	'no_telp', 'kota_id', 'email', 'logo', 'website'
    ];

    public function kota() 
    {
    	return $this->belongsTo(Kota::class);
    }

    public function user() 
    {
    	return $this->belongsTo(User::class);
    }
}
