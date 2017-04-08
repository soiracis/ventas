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
    //
    DB::table('users')->insert([
      'name' => 'ADMINISTRADOR DEL SISTEMA',
      'username'=> 'admin',
      'password' => bcrypt('qwerty')
    ]);

    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'users'
    ]);
    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'ventas'
    ]);
    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'empresa'
    ]);
    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'producto'
    ]);
    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'mesa'
    ]);
    //
    DB::table('modulos')->insert([
      'user_id' => 1,
      'modulo'=> 'meseros'
    ]);
  }
}
