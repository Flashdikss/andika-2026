<?php

namespace Database\Seeders;

use App\Models\Skill;
use Illuminate\Database\Seeder;

class SkillSeeder extends Seeder
{
    public function run(): void
    {
        Skill::insert([
            [
                'name' => 'Python',
                'percentage' => 75,
                'level' => 'Intermediate',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Java',
                'percentage' => 45,
                'level' => 'Beginner',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'HTML/CSS',
                'percentage' => 90,
                'level' => 'Advanced',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}