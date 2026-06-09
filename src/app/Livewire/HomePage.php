<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Portfolio;
use App\Models\Project;
use App\Models\Skill;
use App\Models\Technology;

class HomePage extends Component
{
    public $portfolio;
    public $projects;
    public $skills;
    public $technologies;

    public function mount()
    {
        $this->portfolio = Portfolio::first();

        $this->projects = Project::all();

        $this->skills = Skill::all();

        $this->technologies = Technology::all();
    }

    public function render()
    {
        return view('livewire.home-page')->layout('layouts.app');
    }
}