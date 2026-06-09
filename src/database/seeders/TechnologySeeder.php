<?php

namespace Database\Seeders;

use App\Models\Technology;
use Illuminate\Database\Seeder;

class TechnologySeeder extends Seeder
{
    public function run(): void
    {
        Technology::insert([
            ['name' => 'VS Code'],
            ['name' => 'NetBeans'],
            ['name' => 'GitHub'],
            ['name' => 'Figma'],
            ['name' => 'Canva'],
        ]);
    }
}