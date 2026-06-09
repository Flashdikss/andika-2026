<?php

namespace Database\Seeders;

use App\Models\Portfolio;
use Illuminate\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    public function run(): void
    {
        Portfolio::create([
            'name' => 'Andika Nur Hidayat',
            'title' => 'Mahasiswa Ilmu Komputer @ MNC University (Semester 2)',
            'about' => 'Saya memiliki ketertarikan besar pada pengembangan web dan desain antarmuka. Selama perkuliahan, saya aktif membangun fondasi logika pemrograman melalui proyek-proyek kecil.',
            'photo' => null,
        ]);
    }
}