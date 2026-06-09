<div>
    <!-- TopAppBar Section -->
    <header class="fixed top-0 w-full z-50 bg-surface dark:bg-surface border-b border-outline-variant">
        <div class="flex justify-between items-center h-16 px-gutter max-w-container-max mx-auto">
            <div class="font-mono-code text-body-lg font-bold text-primary">CS_Portfolio</div>
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
        <!-- Hero Section -->
        <section class="relative min-h-[819px] flex items-center px-gutter max-w-container-max mx-auto py-xl" id="about">
            <div class="grid grid-cols-1 md:grid-cols-12 gap-lg items-center">
                <div class="md:col-span-7 space-y-md">
                    <div class="inline-block py-1 px-3 tech-chip rounded-full">
                        <span class="text-primary font-mono-code text-label-sm">System.out.println("Hello, World!");</span>
                    </div>
                    <h1 class="font-display-lg-mobile md:font-display-lg text-display-lg-mobile md:text-display-lg text-on-surface">
                        Andika Nur Hidayat
                    </h1>
                    <p class="font-headline-md text-headline-md text-primary-fixed-dim">
                        Mahasiswa Ilmu Komputer @ MNC University (Semester 2)
                    </p>
                    <p class="font-body-lg text-body-lg text-on-surface-variant max-w-xl">
                        Saya memiliki ketertarikan besar pada pengembangan web dan desain antarmuka. Selama perkuliahan, saya aktif membangun fondasi logika pemrograman melalui proyek-proyek kecil.
                    </p>
                    <div class="flex gap-sm pt-base">
                        <button class="bg-primary text-on-primary px-lg py-sm rounded-lg font-bold hover:brightness-110 transition-all">Hubungi Saya</button>
                        <button class="border border-outline text-on-surface px-lg py-sm rounded-lg hover:bg-surface-container transition-all">Lihat Karya</button>
                    </div>
                </div>
                <div class="md:col-span-5 flex justify-center">
                    <div class="relative w-64 h-64 md:w-80 md:h-80 group">
                        <div class="absolute inset-0 bg-primary opacity-20 blur-xl group-hover:opacity-40 transition-opacity"></div>
                        <img alt="Andika Nur Hidayat" class="w-full h-full object-cover rounded-xl border border-outline-variant relative z-10" data-alt="A professional headshot of a young male computer science student with a friendly expression, captured in a modern tech-focused environment. The lighting is soft and directional, highlighting the contours of his face against a backdrop of out-of-focus digital screens and warm interior lights. The overall aesthetic is clean, professional, and corporate, using a palette of deep navy blues and soft white highlights to convey intellectual curiosity and reliability." src="https://lh3.googleusercontent.com/aida-public/AB6AXuBd4_-fgUkXxwulbJl2qpmanWBFkp7J5dsNIDLZk0SDshrTAqNC92Q0DQPKe0HAE7OaVRPw3pyE2mMXdqbWmmSwCfuby_wcgk_QQ3AKStnDUuQu8pO27bLr9fumQYZDyohpNRHLdqJ_MCq-GbHx4yv9bgnU__Jx-TL2M0aLmYSwulSZasAIRPDcspyruQyih8iLT_tZY9Cm6wODgSQdngDoz7haqAHDIPeilXIUbyi7evm1V--LzIZPtuGeETQN0nlLMJy6-67QjtQ" />
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured Projects Section -->
        <section class="py-xl bg-surface-container-low" id="projects">
            <div class="px-gutter max-w-container-max mx-auto">
                <div class="flex flex-col md:flex-row justify-between items-end mb-lg gap-sm">
                    <div>
                        <span class="font-mono-code text-label-sm text-primary uppercase tracking-widest">selected_works</span>
                        <h2 class="font-headline-md text-headline-md text-on-surface mt-xs">Featured Projects</h2>
                    </div>
                    <div class="h-[1px] flex-grow bg-outline-variant mx-lg hidden md:block opacity-30"></div>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-md">
                    <!-- Project 1 -->
                    <div class="glass-card project-card rounded-xl overflow-hidden transition-all duration-300 flex flex-col h-full">
                        <div class="h-48 bg-surface-container-highest flex items-center justify-center p-md">
                            <span class="material-symbols-outlined text-primary text-[64px]" data-icon="terminal">terminal</span>
                        </div>
                        <div class="p-sm flex-grow flex flex-col">
                            <div class="flex justify-between items-start mb-xs">
                                <h3 class="font-headline-md text-[20px] text-on-surface">Kalkulator Python (Tugas Individu)</h3>
                                <span class="material-symbols-outlined text-outline-variant text-[20px]" data-icon="open_in_new">open_in_new</span>
                            </div>
                            <p class="font-body-md text-body-md text-on-surface-variant mb-md">
                                Membangun aplikasi kalkulator berbasis terminal dengan Python, menerapkan konsep validasi input dan penyimpanan riwayat perhitungan menggunakan array.
                            </p>
                            <div class="mt-auto flex flex-wrap gap-xs">
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">Python</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">Logic</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">CLI</span>
                            </div>
                        </div>
                    </div>

                    <!-- Project 2 -->
                    <div class="glass-card project-card rounded-xl overflow-hidden transition-all duration-300 flex flex-col h-full">
                        <div class="h-48 bg-surface-container-highest flex items-center justify-center p-md">
                            <span class="material-symbols-outlined text-primary text-[64px]" data-icon="design_services">design_services</span>
                        </div>
                        <div class="p-sm flex-grow flex flex-col">
                            <div class="flex justify-between items-start mb-xs">
                                <h3 class="font-headline-md text-[20px] text-on-surface">Prototipe Aplikasi Mahasiswa (Proyek Tim)</h3>
                                <span class="material-symbols-outlined text-outline-variant text-[20px]" data-icon="open_in_new">open_in_new</span>
                            </div>
                            <p class="font-body-md text-body-md text-on-surface-variant mb-md">
                                Berkontribusi sebagai desainer antarmuka dan presenter. Berhasil membuat mockup dan mempresentasikan ide aplikasi manajemen tugas dengan jelas.
                            </p>
                            <div class="mt-auto flex flex-wrap gap-xs">
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">UI/UX</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">Figma</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">Presentation</span>
                            </div>
                        </div>
                    </div>

                    <!-- Project 3 -->
                    <div class="glass-card project-card rounded-xl overflow-hidden transition-all duration-300 flex flex-col h-full">
                        <div class="h-48 bg-surface-container-highest flex items-center justify-center p-md">
                            <span class="material-symbols-outlined text-primary text-[64px]" data-icon="code">code</span>
                        </div>
                        <div class="p-sm flex-grow flex flex-col">
                            <div class="flex justify-between items-start mb-xs">
                                <h3 class="font-headline-md text-[20px] text-on-surface">Blog Pribadi Statis (Proyek Mandiri)</h3>
                                <span class="material-symbols-outlined text-outline-variant text-[20px]" data-icon="open_in_new">open_in_new</span>
                            </div>
                            <p class="font-body-md text-body-md text-on-surface-variant mb-md">
                                Mengembangkan halaman web pribadi responsif menggunakan HTML dan CSS sebagai latihan mandiri, yang memicu minat untuk mendalami front-end.
                            </p>
                            <div class="mt-auto flex flex-wrap gap-xs">
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">HTML</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">CSS</span>
                                <span class="tech-chip px-xs py-1 rounded text-primary font-mono-code text-[12px]">Responsive</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Skills & Tools Section -->
        <section class="py-xl px-gutter max-w-container-max mx-auto" id="skills">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-xl">
                <div>
                    <h2 class="font-headline-md text-headline-md text-on-surface mb-lg">Core Languages</h2>
                    <div class="space-y-sm">
                        <div class="p-sm glass-card rounded-lg flex items-center gap-md">
                            <div class="w-12 h-12 rounded bg-surface-container-highest flex items-center justify-center">
                                <span class="material-symbols-outlined text-primary" data-icon="developer_mode">developer_mode</span>
                            </div>
                            <div class="flex-grow">
                                <div class="flex justify-between mb-1">
                                    <span class="font-body-md font-bold text-on-surface">Python</span>
                                    <span class="font-mono-code text-label-sm text-primary">Intermediary</span>
                                </div>
                                <div class="w-full bg-surface-variant h-2 rounded-full">
                                    <div class="bg-primary h-2 rounded-full" style="width: 75%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="p-sm glass-card rounded-lg flex items-center gap-md">
                            <div class="w-12 h-12 rounded bg-surface-container-highest flex items-center justify-center">
                                <span class="material-symbols-outlined text-primary" data-icon="coffee">coffee</span>
                            </div>
                            <div class="flex-grow">
                                <div class="flex justify-between mb-1">
                                    <span class="font-body-md font-bold text-on-surface">Java</span>
                                    <span class="font-mono-code text-label-sm text-primary">Beginner</span>
                                </div>
                                <div class="w-full bg-surface-variant h-2 rounded-full">
                                    <div class="bg-primary h-2 rounded-full" style="width: 45%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="p-sm glass-card rounded-lg flex items-center gap-md">
                            <div class="w-12 h-12 rounded bg-surface-container-highest flex items-center justify-center">
                                <span class="material-symbols-outlined text-primary" data-icon="html">html</span>
                            </div>
                            <div class="flex-grow">
                                <div class="flex justify-between mb-1">
                                    <span class="font-body-md font-bold text-on-surface">HTML/CSS</span>
                                    <span class="font-mono-code text-label-sm text-primary">Advanced</span>
                                </div>
                                <div class="w-full bg-surface-variant h-2 rounded-full">
                                    <div class="bg-primary h-2 rounded-full" style="width: 90%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <h2 class="font-headline-md text-headline-md text-on-surface mb-lg">Tools &amp; Technologies</h2>
                    <div class="flex flex-wrap gap-sm">
                        <div class="flex items-center gap-xs px-sm py-xs glass-card rounded hover:border-primary transition-all">
                            <span class="material-symbols-outlined text-primary" data-icon="laptop_mac">laptop_mac</span>
                            <span class="font-body-md">VS Code</span>
                        </div>
                        <div class="flex items-center gap-xs px-sm py-xs glass-card rounded hover:border-primary transition-all">
                            <span class="material-symbols-outlined text-primary" data-icon="terminal">terminal</span>
                            <span class="font-body-md">NetBeans</span>
                        </div>
                        <div class="flex items-center gap-xs px-sm py-xs glass-card rounded hover:border-primary transition-all">
                            <span class="material-symbols-outlined text-primary" data-icon="source">source</span>
                            <span class="font-body-md">Git (GitHub)</span>
                        </div>
                        <div class="flex items-center gap-xs px-sm py-xs glass-card rounded hover:border-primary transition-all">
                            <span class="material-symbols-outlined text-primary" data-icon="draw">draw</span>
                            <span class="font-body-md">Figma</span>
                        </div>
                        <div class="flex items-center gap-xs px-sm py-xs glass-card rounded hover:border-primary transition-all">
                            <span class="material-symbols-outlined text-primary" data-icon="palette">palette</span>
                            <span class="font-body-md">Canva</span>
                        </div>
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
            <div class="font-mono-code text-body-md text-on-surface">CS_Portfolio</div>
            <div class="copyright_text text-on-surface-variant font-label-sm text-label-sm text-center">
                © 2024 Computer Science Portfolio. Built with precision.
            </div>
            <div class="flex gap-md">
                <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">Email</a>
                <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">GitHub</a>
                <a class="links text-on-surface-variant font-label-sm text-label-sm hover:text-primary underline transition-all transition-transform hover:-translate-y-1" href="#">LinkedIn</a>
            </div>
        </div>
    </footer>
</div>
