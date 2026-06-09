<!DOCTYPE html>
<html class="dark" lang="id">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Andika Nur Hidayat | CS Portfolio</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;800&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet" />
    
    <!-- Tailwind Theme Configuration -->
    <script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    "colors": {
                        "outline": "#8c909f",
                        "surface-tint": "#adc6ff",
                        "secondary-fixed": "#d4e4fa",
                        "tertiary-fixed-dim": "#bec6e0",
                        "surface-container": "#152031",
                        "surface-container-highest": "#2a3548",
                        "on-secondary-fixed": "#0d1c2d",
                        "on-surface": "#d8e3fb",
                        "primary-fixed": "#d8e2ff",
                        "error-container": "#93000a",
                        "primary": "#adc6ff",
                        "error": "#ffb4ab",
                        "surface-bright": "#2f3a4c",
                        "surface-variant": "#2a3548",
                        "on-error": "#690005",
                        "on-secondary": "#233143",
                        "tertiary-container": "#8990a8",
                        "on-primary": "#002e6a",
                        "on-tertiary-fixed-variant": "#3f465c",
                        "surface-container-low": "#111c2d",
                        "on-primary-fixed": "#001a42",
                        "on-tertiary-fixed": "#131b2e",
                        "tertiary": "#bec6e0",
                        "tertiary-fixed": "#dae2fd",
                        "primary-fixed-dim": "#adc6ff",
                        "surface-container-lowest": "#040e1f",
                        "secondary-fixed-dim": "#b9c8de",
                        "on-tertiary": "#283044",
                        "background": "#081425",
                        "inverse-on-surface": "#263143",
                        "secondary-container": "#39485a",
                        "inverse-primary": "#005ac2",
                        "surface-container-high": "#1f2a3c",
                        "on-primary-fixed-variant": "#004395",
                        "on-secondary-container": "#a7b6cc",
                        "inverse-surface": "#d8e3fb",
                        "on-secondary-fixed-variant": "#39485a",
                        "primary-container": "#4d8eff",
                        "surface-dim": "#081425",
                        "surface": "#081425",
                        "on-background": "#d8e3fb",
                        "outline-variant": "#424754",
                        "secondary": "#b9c8de",
                        "on-surface-variant": "#c2c6d6",
                        "on-tertiary-container": "#22293d",
                        "on-error-container": "#ffdad6",
                        "on-primary-container": "#00285d"
                    },
                    "borderRadius": {
                        "DEFAULT": "0.125rem",
                        "lg": "0.25rem",
                        "xl": "0.5rem",
                        "full": "0.75rem"
                    },
                    "spacing": {
                        "gutter": "24px",
                        "md": "24px",
                        "container-max": "1120px",
                        "xl": "80px",
                        "lg": "48px",
                        "base": "4px",
                        "sm": "16px",
                        "xs": "8px"
                    },
                    "fontFamily": {
                        "mono-code": ["JetBrains Mono"],
                        "display-lg-mobile": ["Inter"],
                        "display-lg": ["Inter"],
                        "body-md": ["Inter"],
                        "label-sm": ["JetBrains Mono"],
                        "body-lg": ["Inter"],
                        "headline-md": ["Inter"]
                    },
                    "fontSize": {
                        "mono-code": ["14px", {"lineHeight": "20px", "fontWeight": "400"}],
                        "display-lg-mobile": ["40px", {"lineHeight": "48px", "letterSpacing": "-0.02em", "fontWeight": "800"}],
                        "display-lg": ["64px", {"lineHeight": "72px", "letterSpacing": "-0.02em", "fontWeight": "800"}],
                        "body-md": ["16px", {"lineHeight": "24px", "fontWeight": "400"}],
                        "label-sm": ["13px", {"lineHeight": "16px", "letterSpacing": "0.05em", "fontWeight": "500"}],
                        "body-lg": ["18px", {"lineHeight": "28px", "fontWeight": "400"}],
                        "headline-md": ["32px", {"lineHeight": "40px", "letterSpacing": "-0.01em", "fontWeight": "600"}]
                    }
                },
            },
        }
    </script>
    <style>
        body {
            background-color: #081425;
            color: #d8e3fb;
            scroll-behavior: smooth;
        }
        .glass-card {
            background: rgba(30, 41, 59, 0.7);
            backdrop-filter: blur(12px);
            border: 1px solid #334155;
        }
        .project-card:hover {
            box-shadow: 0px 4px 20px rgba(59, 130, 246, 0.15);
            border-color: #adc6ff;
            transform: translateY(-4px);
        }
        .tech-chip {
            background: #1f2a3c;
            border: 1px solid #334155;
        }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
            vertical-align: middle;
        }
    </style>
</head>
<body class="font-body-md text-body-md overflow-x-hidden">
    {{ $slot }}
    
    <script>
        // Micro-interaction for smooth scrolling and active state mapping
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    window.scrollTo({
                        top: target.offsetTop - 64,
                        behavior: 'smooth'
                    });
                }
            });
        });

        // Intersection Observer for active nav highlighting
        const sections = document.querySelectorAll('section');
        const navLinks = document.querySelectorAll('nav a');

        window.addEventListener('scroll', () => {
            let current = "";
            sections.forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;
                if (pageYOffset >= (sectionTop - 100)) {
                    current = section.getAttribute('id');
                }
            });

            navLinks.forEach(link => {
                link.classList.remove('text-primary', 'font-bold', 'border-b-2', 'border-primary', 'pb-1');
                link.classList.add('text-on-surface-variant', 'font-medium');
                if (link.getAttribute('href').includes(current)) {
                    link.classList.add('text-primary', 'font-bold', 'border-b-2', 'border-primary', 'pb-1');
                    link.classList.remove('text-on-surface-variant', 'font-medium');
                }
            });
        });
    </script>
</body>
</html>
