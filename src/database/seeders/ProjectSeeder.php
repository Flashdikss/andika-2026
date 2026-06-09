<?php

namespace Database\Seeders;

use App\Models\Project;
use Illuminate\Database\Seeder;

class ProjectSeeder extends Seeder
{
    public function run(): void
    {
        Project::insert([
            [
                'title' => 'Kalkulator Python (Tugas Individu)',
                'description' => 'Membangun aplikasi kalkulator berbasis terminal dengan Python.',
                'icon' => 'terminal',
                'sort_order' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Prototipe Aplikasi Mahasiswa (Proyek Tim)',
                'description' => 'Membuat mockup dan mempresentasikan aplikasi manajemen tugas.',
                'icon' => 'design_services',
                'sort_order' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Blog Pribadi Statis (Proyek Mandiri)',
                'description' => 'Website pribadi responsif menggunakan HTML dan CSS.',
                'icon' => 'code',
                'sort_order' => 3,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}