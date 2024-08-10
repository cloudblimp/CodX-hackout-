<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [];
        $locations = [
            // Indian Locations
            '28.6139,77.2090', // Delhi
            '19.0760,72.8777', // Mumbai
            '13.0827,80.2707', // Chennai
            '12.9716,77.5946', // Bangalore
            '22.5726,88.3639', // Kolkata
            '23.8103,90.4125', // Dhaka
            '26.9124,75.7873', // Jaipur
            '17.3850,78.4867', // Hyderabad
            '11.0168,76.9558', // Coimbatore
            '30.7333,76.7794', // Chandigarh
            '31.5497,74.3436', // Amritsar
            '21.1702,72.8311', // Ahmedabad
            '10.8505,76.2711', // Ernakulam
            '32.0668,76.2749', // Shimla
            '29.0588,75.3186', // Hisar
            // International Locations
            '37.7749,-122.4194', // San Francisco, USA
            '34.0522,-118.2437', // Los Angeles, USA
            '40.7128,-74.0060',  // New York, USA
            '41.8781,-87.6298',  // Chicago, USA
            '29.7604,-95.3698',  // Houston, USA
            '48.8566,2.3522',    // Paris, France
            '51.5074,-0.1278',   // London, UK
            '52.5200,13.4050',   // Berlin, Germany
            '35.6895,139.6917',  // Tokyo, Japan
            '39.9042,116.4074',  // Beijing, China
            '39.7392,-104.9903', // Denver, USA
            '45.4215,-75.6972',  // Ottawa, Canada
            '37.7749,-122.4194', // San Francisco, USA
            '40.7306,-73.9352',  // New York, USA
            '55.7558,37.6176',   // Moscow, Russia
            '39.9042,32.0626',   // Ankara, Turkey
            '28.6139,77.2090',   // Delhi, India
            '20.5937,78.9629',   // India (generic)
            '43.6532,-79.3832',  // Toronto, Canada
            '39.0997,-94.5786',  // Kansas City, USA
            '48.2082,16.3738',   // Vienna, Austria
            '37.9838,23.7275',   // Athens, Greece
            '33.8688,151.2093',  // Sydney, Australia
            '34.0522,-118.2437', // Los Angeles, USA
        ];

        for ($i = 1; $i <= 200; $i++) {
            $users[] = [
                'name' => 'Farmer ' . $i,
                'email' => 'farmer' . $i . '@example.com',
                'password' => Hash::make('farmer1234'),
                'location' => $locations[array_rand($locations)],
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        // Insert users into the database
        DB::table('users')->insert($users);
    }
}
