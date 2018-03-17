<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    protected $fillable = [
    	'company_id', 'type', 'produk', 'harga'
    ];

    public function company()
    {
    	return $this->belongsTo(Company::class);
    }
}
