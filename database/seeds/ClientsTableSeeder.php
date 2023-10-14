<?php

use Illuminate\Database\Seeder;

class ClientsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $clients = ['ahmed', 'oraby'];

        foreach ($clients as $client) {

            \App\Models\Client::create([
               'name' => $client,
               'phone' => '01205082343',
               'address' => 'bani suef',
            ]);

        }//end of foreach

    }//end of run

}//end of seeder
