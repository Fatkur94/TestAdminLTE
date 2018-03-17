<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model
{
	public $timestamps = false;
	protected $table = 'kota';
    protected $fillable = ['kode_kota', 'NamaKota', 'Jenis', 'FK_Propinsi'];
}
