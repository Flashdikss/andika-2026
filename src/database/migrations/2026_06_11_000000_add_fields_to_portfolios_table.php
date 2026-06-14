<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('portfolios', function (Blueprint $table) {
            $table->string('email')->nullable()->after('photo');
            $table->string('github')->nullable()->after('email');
            $table->string('linkedin')->nullable()->after('github');

            $table->json('projects')->nullable()->after('linkedin');
            $table->json('skills')->nullable()->after('projects');
            $table->json('technologies')->nullable()->after('skills');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('portfolios', function (Blueprint $table) {
            $table->dropColumn(['email', 'github', 'linkedin', 'projects', 'skills', 'technologies']);
        });
    }
};
