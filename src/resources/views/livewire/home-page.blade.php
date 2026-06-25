<div class="bg-[#081425] text-white min-h-screen">

    {{-- Navbar --}}
    <header class="fixed top-0 left-0 right-0 z-50 bg-[#081425]/90 backdrop-blur border-b border-slate-800">
        <div class="max-w-7xl mx-auto px-6 h-16 flex justify-between items-center">
            <h1 class="text-blue-400 font-bold text-2xl">
                Portfolio
            </h1>

            <nav class="hidden md:flex gap-10">
                <a href="#about" class="hover:text-blue-400">About</a>
                <a href="#projects" class="hover:text-blue-400">Projects</a>
                <a href="#skills" class="hover:text-blue-400">Skills</a>
                <a href="#contact" class="hover:text-blue-400">Contact</a>
            </nav>
        </div>
    </header>

    {{-- Hero --}}
    <section
        id="about"
        class="max-w-7xl mx-auto px-6 pt-36 pb-24">

        <div class="grid md:grid-cols-2 gap-16 items-center">

            <div>

                <span
                    class="px-4 py-2 rounded-full bg-slate-800 text-blue-400 inline-block mb-6">
                    Hello, I'am
                </span>

                <h1 class="text-6xl font-extrabold mb-5">
                    {{ $portfolio?->name }}
                </h1>

                <h2 class="text-3xl text-blue-400 mb-8">
                    {{ $portfolio?->title }}
                </h2>

                <p class="text-gray-300 text-lg leading-9">
                    {{ $portfolio?->about }}
                </p>

            </div>

            <div class="flex justify-center">

                @if($portfolio?->photo)
                    <img
                        src="{{ asset('storage/'.$portfolio->photo) }}"
                        class="w-80 h-80 object-cover rounded-3xl border border-slate-700">
                @endif

            </div>

        </div>
    </section>

    {{-- Projects --}}
    <section
        id="projects"
        class="bg-[#111c2d] py-24">

        <div class="max-w-7xl mx-auto px-6">

            <h2 class="text-4xl font-bold mb-12">
                Featured Projects
            </h2>

            <div class="grid md:grid-cols-3 gap-8">

                @foreach($projects as $project)

                    <div
                        class="bg-slate-800 rounded-2xl overflow-hidden border border-slate-700 hover:border-blue-400 transition">

                        @if($project->photo)
                            <img
                                src="{{ asset('storage/'.$project->photo) }}"
                                class="h-52 w-full object-cover">
                        @else
                            <div
                                class="h-52 flex justify-center items-center text-6xl text-blue-400">
                                💻
                            </div>
                        @endif

                        <div class="p-6">

                            <h3 class="text-2xl font-bold mb-4">
                                {{ $project->title }}
                            </h3>

                            <p class="text-gray-400">
                                {{ $project->description }}
                            </p>

                        </div>

                    </div>

                @endforeach

            </div>

        </div>
    </section>

    {{-- Skills --}}
    <section
        id="skills"
        class="py-24">

        <div class="max-w-7xl mx-auto px-6">

            <div class="grid md:grid-cols-2 gap-20">

                <div>

                    <h2 class="text-4xl font-bold mb-10">
                        Core Languages
                    </h2>

                    <div class="space-y-5">

                        @foreach($skills as $skill)

                            <div
                                class="bg-slate-800 rounded-xl p-5 border border-slate-700">

                                <div class="flex justify-between mb-3">
                                    <span class="font-semibold">
                                        {{ $skill->name }}
                                    </span>

                                    <span class="text-blue-400">
                                        {{ $skill->level }}
                                    </span>
                                </div>

                                <div
                                    class="w-full h-2 bg-slate-700 rounded-full">

                                    <div
                                        class="bg-blue-400 h-2 rounded-full"
                                        style="width: {{ $skill->percentage }}%">
                                    </div>

                                </div>

                            </div>

                        @endforeach

                    </div>

                </div>

                <div>

                    <h2 class="text-4xl font-bold mb-10">
                        Tools & Technologies
                    </h2>

                    <div class="flex flex-wrap gap-4">

                        @foreach($technologies as $technology)

                            <div
                                class="px-5 py-3 bg-slate-800 rounded-xl border border-slate-700 hover:border-blue-400 transition">

                                {{ $technology->name }}

                            </div>

                        @endforeach

                    </div>

                </div>

            </div>

        </div>
    </section>

    {{-- Contact --}}
    <section
        id="contact"
        class="bg-blue-600 py-24">

        <div class="max-w-4xl mx-auto text-center px-6">

            <h2 class="text-5xl font-bold mb-6">
                Mari Berkolaborasi
            </h2>

            <p class="text-xl mb-10">
                Saya selalu terbuka untuk diskusi mengenai pengembangan web,
                Laravel, Filament, dan proyek akademik.
            </p>

            @if($portfolio?->email)
                <a
                    href="mailto:{{ $portfolio->email }}"
                    class="bg-white text-blue-600 px-8 py-4 rounded-xl font-bold">
                    Email Me
                </a>
            @endif

        </div>
    </section>

    {{-- Footer --}}
    <footer class="bg-[#0a0f1a] border-t border-slate-800 py-16">
        <div class="max-w-7xl mx-auto px-6">
            
            <div class="grid md:grid-cols-4 gap-12 mb-12">
                
                {{-- Brand --}}
                <div>
                    <h3 class="text-blue-400 font-bold text-xl mb-4">
                        Portfolio
                    </h3>
                    <p class="text-gray-400 text-sm leading-relaxed">
                        Full Stack Developer dengan passion untuk membuat aplikasi web yang inovatif dan berkualitas tinggi.
                    </p>
                </div>

                {{-- Quick Links --}}
                <div>
                    <h4 class="font-semibold text-white mb-4">
                        Quick Links
                    </h4>
                    <ul class="space-y-2">
                        <li>
                            <a href="#about" class="text-gray-400 hover:text-blue-400 transition text-sm">
                                About
                            </a>
                        </li>
                        <li>
                            <a href="#projects" class="text-gray-400 hover:text-blue-400 transition text-sm">
                                Projects
                            </a>
                        </li>
                        <li>
                            <a href="#skills" class="text-gray-400 hover:text-blue-400 transition text-sm">
                                Skills
                            </a>
                        </li>
                        <li>
                            <a href="#contact" class="text-gray-400 hover:text-blue-400 transition text-sm">
                                Contact
                            </a>
                        </li>
                    </ul>
                </div>

                {{-- Social Media --}}
                <div>
                    <h4 class="font-semibold text-white mb-4">
                        Follow Me
                    </h4>
                    <div class="flex gap-4">
                        <a href="#" class="w-10 h-10 bg-slate-800 rounded-lg flex items-center justify-center hover:bg-blue-600 transition">
                            <span class="text-sm">f</span>
                        </a>
                        <a href="#" class="w-10 h-10 bg-slate-800 rounded-lg flex items-center justify-center hover:bg-blue-600 transition">
                            <span class="text-sm">𝕏</span>
                        </a>
                        <a href="#" class="w-10 h-10 bg-slate-800 rounded-lg flex items-center justify-center hover:bg-blue-600 transition">
                            <span class="text-sm">in</span>
                        </a>
                        <a href="#" class="w-10 h-10 bg-slate-800 rounded-lg flex items-center justify-center hover:bg-blue-600 transition">
                            <span class="text-sm">gh</span>
                        </a>
                    </div>
                </div>

                {{-- Get in Touch --}}
                <div>
                    <h4 class="font-semibold text-white mb-4">
                        Get in Touch
                    </h4>
                    <p class="text-gray-400 text-sm mb-3">
                        @if($portfolio?->email)
                            <a href="mailto:{{ $portfolio->email }}" class="hover:text-blue-400 transition">
                                {{ $portfolio->email }}
                            </a>
                        @else
                            your.email@example.com
                        @endif
                    </p>
                </div>

            </div>

            {{-- Divider --}}
            <div class="border-t border-slate-800 pt-8">
                <div class="flex md:flex-row flex-col md:justify-between md:items-center gap-4">
                    <p class="text-gray-500 text-sm">
                        &copy; {{ date('Y') }} {{ $portfolio?->name ?? 'Portfolio' }}. All rights reserved.
                    </p>
                    <button 
                        @click="window.scrollTo({ top: 0, behavior: 'smooth' })"
                        class="px-4 py-2 text-blue-400 hover:text-blue-300 transition text-sm border border-blue-400 rounded-lg hover:border-blue-300">
                        Back to Top ↑
                    </button>
                </div>
            </div>

        </div>
    </footer>

</div>


