<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    protected $guarded = ['id'];
    protected $casts = [
        'projects' => 'array',
        'skills' => 'array',
        'technologies' => 'array',
    ];
}
