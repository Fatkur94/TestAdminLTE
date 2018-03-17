<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->string('contact_person')->nullable();
            $table->unsignedInteger('user_id')->nullable();
            $table->enum('badan_usaha', ['PT', 'CV', 'FIRMA', 'KOPERASI'])->nullable();
            $table->string('produk')->nullable();
            $table->text('alamat')->nullable();
            $table->string('no_telp')->nullable();
            $table->unsignedInteger('kota_id')->nullable();
            $table->string('email')->unique()->nullable();
            $table->string('logo')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('companies');
    }
}
