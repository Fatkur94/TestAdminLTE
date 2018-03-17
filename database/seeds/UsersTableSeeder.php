<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        DB::table('users')->truncate();
	
		factory(App\User::class, 5)->create()->each(function($u) {
		    $u->messages()->save(factory(App\Message::class)->make());
		});
	}
}
