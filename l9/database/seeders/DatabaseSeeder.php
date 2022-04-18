<?php

namespace Database\Seeders;

use App\Models\AdminUser;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();

        \App\Models\Post::factory(10)->create();

        AdminUser::factory(1)->create([
            "name" => "admin",
            "email" => "admin123@gmail.com",
            "password" => bcrypt("123123")
        ]);
    }
}
