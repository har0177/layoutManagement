<?php

use Database\Seeders\CategorySeeder;
use Database\Seeders\CustomerSeeder;
use Database\Seeders\OptionTableSeeder;
use Database\Seeders\PaymentMethodSeeder;
use Database\Seeders\ProductsSeeder;
use Database\Seeders\RoleSeeder;
use Database\Seeders\StatusSeeder;
use Database\Seeders\UserTableSeeder;
use Database\Seeders\VendorSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
  /**
   * Run the database seeds.
   * @return void
   */
  public function run()
  {
    $this->call( RoleSeeder::class );
    $this->call( UserTableSeeder::class );

  }
}
