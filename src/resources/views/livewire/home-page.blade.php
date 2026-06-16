@php
use Illuminate\Support\Facades\Storage;
@endphp
<div class="min-h-screen bg-[#081425] text-white">
    <style>
        .glass-card {
            background: rgba(30, 41, 59, 0.7);
            backdrop-filter: blur(12px);
            border: 1px solid #334155;
        }

        .project-card:hover {
            box-shadow: 0px 4px 20px rgba(59, 130, 246, 0.15);
            border-color: #60a5fa;
            transform: translateY(-4px);
        }

        .tech-chip {
            background: #1f2937;
            border: 1px solid #334155;
        }
    </style>

    {{-- Navbar --}}
    <header class="fixed top-0 w-full z-50 bg-surface dark:bg-surface border-b border-outline-variant">
        <div class="flex justify-between items-center h-16 px-gutter max-w-container-max mx-auto">
            <div class="font-mono-code text-body-lg font-bold text-primary">Portfolio</div>
            <nav class="hidden md:flex gap-lg items-center">
                <a class="text-primary font-bold border-b-2 border-primary pb-1 font-body-md text-body-md cursor-pointer active:opacity-80 transition-colors duration-200" href="#about">About</a>
                <a class="text-on-surface-variant font-medium hover:text-primary transition-colors duration-200 font-body-md text-body-md cursor-pointer active:opacity-80" href="#projects">Projects</a>
                <a class="text-on-surface-variant font-medium hover:text-primary transition-colors duration-200 font-body-md text-body-md cursor-pointer active:opacity-80" href="#skills">Skills</a>
                <a class="text-on-surface-variant font-medium hover:text-primary transition-colors duration-200 font-body-md text-body-md cursor-pointer active:opacity-80" href="#contact">Contact</a>
            </nav>
            <div class="flex items-center">
                <button class="bg-primary text-on-primary px-sm py-xs rounded hover:opacity-90 transition-all font-label-sm text-label-sm">Resume</button>
            </div>
        </div>
    </header>
    <main class="pt-16">

    {{-- Hero --}}
    <section class="relative min-h-[819px] flex items-center px-gutter max-w-container-max mx-auto py-xl" id="about">
            <div class="grid grid-cols-1 md:grid-cols-12 gap-lg items-center">
                <div class="md:col-span-7 space-y-md">
                    <div class="inline-block py-1 px-3 tech-chip rounded-full">
                        <span class="text-primary font-mono-code text-label-sm">Hello World!</span>
                    </div>
                    <h1 class="font-display-lg-mobile md:font-display-lg text-display-lg-mobile md:text-display-lg text-on-surface">
                        {{ $portfolio->name }}
                    </h1>
                    <p class="font-headline-md text-headline-md text-primary-fixed-dim">
                        {{ $portfolio->title }}
                    </p>
                    <p class="font-body-lg text-body-lg text-on-surface-variant max-w-xl">
                        {{ $portfolio->about }}
                    </p>

                <div class="flex gap-sm pt-base">
                        <button class="bg-primary text-on-primary px-lg py-sm rounded-lg font-bold hover:brightness-110 transition-all">Hubungi Saya</button>
                        <button class="border border-outline text-on-surface px-lg py-sm rounded-lg hover:bg-surface-container transition-all">Lihat Karya</button>
                    </div>
                </div>

            <div class="md:col-span-5 flex justify-center">
                    <img
                        src="{{ asset('storage/'.$portfolio->photo) }}"
                        class="w-96 h-96 object-cover rounded-2xl border border-slate-700 shadow-2xl">
                </div>
            </div>
        </section>

    {{-- Projects --}}
    <section class="py-20 bg-slate-900" id="projects">
    <div class="max-w-7xl mx-auto px-6">

        <div class="flex items-center mb-12">
            <div>
                <span class="text-blue-400 uppercase text-sm tracking-widest">
                    selected_works
                </span>

                <h2 class="text-4xl font-bold text-white mt-2">
                    Featured Projects
                </h2>
            </div>

            <div class="h-px flex-1 bg-slate-700 ml-8 hidden md:block"></div>
        </div>

        <div class="grid md:grid-cols-3 gap-8">
            
        <img src="{{ asset('storage/'.$projects->photo) }}">
                  
    </div>
</section>

    <section class="py-20 px-6 max-w-7xl mx-auto" id="skills">

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">

        {{-- Core Languages --}}
        <div>
            <h2 class="text-3xl font-semibold text-white mb-8">
                Core Languages
            </h2>

            <div class="space-y-4">

                @foreach($skills as $skill)

                    @php
                        $icon = match(strtolower($skill->name)) {
                            'python' => 'developer_mode',
                            'java' => 'coffee',
                            'html/css' => 'html',
                            'laravel' => 'code',
                            'docker' => 'globe-alt',
                            default => 'terminal',
                        };
                    @endphp

                    <div
                        class="p-3 glass-card rounded-lg flex items-center gap-4">

                        <div
                            class="w-10 h-10 rounded bg-slate-800 flex items-center justify-center">

                            <span class="material-symbols-outlined text-blue-400">
                                {{ $icon }}
                            </span>

                        </div>

                        <div class="flex-1">

                            <div class="flex justify-between mb-2">

                                <span class="font-semibold text-white">
                                    {{ $skill->name }}
                                </span>

                                <span class="text-sm text-blue-400">
                                    {{ $skill->level }}
                                </span>

                            </div>

                            <div class="w-full bg-slate-700 h-2 rounded-full">
                                <div
                                    class="bg-blue-500 h-2 rounded-full"
                                    style="width: {{ $skill->percentage }}%">
                                </div>
                            </div>

                        </div>

                    </div>

                @endforeach

            </div>
        </div>

        {{-- Tools --}}
        <div>
            <h2 class="text-2xl font-semibold text-white mb-8">
                Tools & Technologies
            </h2>

            <div class="flex flex-wrap gap-3">

                @foreach($technologies as $technology)

                    @php
                        $icon = match(strtolower($technology->name)) {
                            'vs code' => 'laptop_mac',
                            'docker' => 'terminal',
                            'github' => 'source',
                            'figma' => 'draw',
                            'canva' => 'palette',
                            default => 'code',
                        };
                    @endphp

                    <div
                        class="flex items-center gap-2 px-4 py-3 glass-card rounded-lg hover:border-blue-400 transition">

                        <span class="material-symbols-outlined text-blue-400">
                            {{ $icon }}
                        </span>

                        <span class="text-white text-sm">
                            {{ $technology->name }}
                        </span>

                    </div>

                @endforeach

            </div>
        </div>

    </div>

</section>

<!-- Contact CTA -->
        <section class="py-xl bg-primary-container text-on-primary-container" id="contact">
            <div class="px-gutter max-w-container-max mx-auto text-center space-y-md">
                <h2 class="font-display-lg-mobile text-display-lg-mobile md:text-headline-md font-extrabold uppercase">Mari Berkolaborasi</h2>
                <p class="font-body-lg text-body-lg opacity-90 max-w-2xl mx-auto">
                    Saya selalu terbuka untuk diskusi mengenai pengembangan web, desain, atau proyek akademik yang menantang.
                </p>
                <div class="flex flex-col md:flex-row justify-center gap-md pt-md">
                    <a class="bg-on-primary-container text-primary-container px-lg py-sm rounded-lg font-bold hover:scale-105 transition-all flex items-center justify-center gap-xs" href="mailto:email@example.com">
                        <span class="material-symbols-outlined" data-icon="mail">mail</span>
                        Email Me
                    </a>
                    <a class="border-2 border-on-primary-container px-lg py-sm rounded-lg font-bold hover:bg-on-primary-container hover:text-primary-container transition-all flex items-center justify-center gap-xs" href="#">
                        <span class="material-symbols-outlined" data-icon="person">person</span>
                        Connect LinkedIn
                    </a>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer Section -->
    <footer class="w-full py-lg border-t border-outline-variant bg-surface-container-lowest dark:bg-surface-container-lowest">
        <div class="flex flex-col md:flex-row justify-between items-center px-gutter max-w-container-max mx-auto gap-sm">
            <div class="font-mono-code text-body-md text-on-surface">Portfolio</div>
            <div class="copyright_text text-on-surface-variant font-label-sm text-label-sm text-center">
                © 2026 Computer Science Portfolio. Built with precision.
            </div>
            <div class="flex gap-md">
                    <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">Email</a>
                <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">GitHub</a>
                <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">LinkedIn</a>
            </div>
        </div>
    </footer>
</div>
