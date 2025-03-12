// let name = "Krishna"
let name = "Aman"
let title = "Anhsirk0"
let logo = "k.png"
let about = "I'm Aman Kumar, I go by Krishna online.
I am a Full-stack Web Developer by profession and I work on CLI tools in my free time.

I have been enjoying programming for about 5 years, mostly as a Web developer and messing around with GNU/Linux. I always use and promote Free/Libre Open Source software."

module NavLink = {
  type t = {title: string, path: string}
  let all: array<t> = [
    {path: "/", title: "Home"},
    {path: "/tech", title: "Tech stack"},
    {path: "/projects", title: "Projects"},
  ]
}

module Liked = {
  type t = {title: string}
  let all: array<t> = [
    {title: "Linux"},
    {title: "Emacs / Text Editors"},
    {title: "Terminal Emulators"},
    {title: "Playing Chess"},
    {title: "Frontend Web Development"},
    {title: "Building CLI tools"},
    {title: "Functional programming"},
    {title: "Sudoku & Kakuro puzzles"},
  ]
}

module Contact = {
  type t = {title: string, link: string, icon: string => React.element}
  let all: array<t> = [
    {
      title: "Mail",
      link: "mailto:krishna404@yandex.com",
      icon: className => <Icon.mail className />,
    },
    {
      title: "LinkedIn",
      link: "https://linkedin.com/in/anhsirk0",
      icon: className => <Icon.linkedin className />,
    },
    {
      title: "Codeberg",
      link: "https://codeberg.org/anhsirk0",
      icon: className => <Icon.codeberg className />,
    },
    {
      title: "Github",
      link: "https://github.com/anhsirk0",
      icon: className => <Icon.github className />,
    },
  ]
}

module Tech = {
  type t = {title: string, link: string, image: string}
  let languages: array<t> = [
    {title: "Rescript", link: "https://rescript-lang.org", image: Images.rescript},
    {title: "Typescript", link: "https://typescriptlang.org", image: Images.typescript},
    {title: "Perl", link: "https://perl.org", image: Images.perl},
    {title: "Python", link: "https://python.org", image: Images.python},
    {
      title: "Javascript",
      link: "https://ecma-international.org/publications-and-standards/standards/ecma-262",
      image: Images.javascript,
    },
    // { title: "R", image: "r.png", link: "https://r-project.org/" },
    {title: "Rust", link: "https://rust-lang.org", image: Images.rust},
  ]
  let tools: array<t> = [
    {title: "Linux", link: "https://linuxfoundation.org", image: Images.linux},
    {title: "Emacs", link: "https://gnu/software/emacs", image: Images.emacs},
    // {title: "Kakoune", link: "https://kakoune.org", image: "kakoune.png"},
    {title: "Fish", link: "https://fishshell.com", image: Images.fish},
    {title: "Git", link: "https://git-scm.com", image: Images.git},
    {title: "Codeberg", link: "https://codeberg.org", image: Images.codeberg},
    {title: "Github", link: "https://github.com", image: Images.github},
    {title: "Inkscape", link: "https://inkscape.org", image: Images.inkscape},
  ]
  let frontend: array<t> = [
    {title: "Sveltekit", link: "https://kit.svelte.dev", image: Images.sveltekit},
    {title: "React", link: "https://reactjs.org", image: Images.react},
    {title: "Nextjs", link: "https://nextjs.org", image: Images.nextjs},
    {title: "Angular", link: "https://angular.dev", image: Images.angular},
    // { title: "Vue", image: "vue.png", link: "https://vuejs.org" },
    {
      title: "Tailwindcss",
      link: "https://tailwindcss.com",
      image: Images.tailwindcss,
    },
    {title: "Daisyui", link: "https://daisyui.com", image: Images.daisyui},
    {title: "MUI", link: "https://mui.com", image: Images.mui},
    // {
    //   title: "Materialize",
    //   link: "https://materializecss.com",
    //   image: "materialize.png",
    // },
  ]
  let backend: array<t> = [
    {title: "Nestjs", link: "https://nestjs.com", image: Images.nestjs},
    {title: "Django", link: "https://djangoproject.com", image: Images.django},
    // {title: "Express", link: "https://expressjs.com", image: "express.png"},
  ]
}

module Project = {
  type t = {
    title: string,
    about: string,
    langName: string,
    langImage: string,
    codeberg?: string,
    github?: string,
    link?: string,
  }

  let all: array<t> = [
    {
      title: "Fetch-master-6000",
      about: "Simple Dilbert themed system information fetching tool for Linux and BSD based systems.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/fetch-master-6000",
      github: "https://github.com/anhsirk0/fetch-master-6000",
    },
    {
      title: "Undoo-Start",
      about: "Super elegant startpage",
      langName: "Rescript",
      langImage: Images.rescript,
      codeberg: "https://codeberg.org/anhsirk0/undoo-start",
      github: "https://github.com/anhsirk0/undoo-start",
      link: "https://undoo.netlify.app",
    },
    {
      title: "Panda-Notes",
      about: "Simple markdown notes",
      langName: "Rescript",
      langImage: Images.rescript,
      codeberg: "https://codeberg.org/anhsirk0/panda-notes",
      github: "https://github.com/anhsirk0/panda-notes",
      link: "https://notes-panda.netlify.app",
    },
    {
      title: "Landslides",
      about: "Collection of Landing pages redesigned using DaisyUI",
      langName: "Rescript",
      langImage: Images.rescript,
      link: "https://landslides.netlify.app",
      codeberg: "https://codeberg.org/anhsirk0/landslides",
      github: "https://github.com/anhsirk0/landslides",
    },
    {
      title: "Whatsapp-svelte",
      about: "WhatsApp mockup screens using Tailwind, DaisyUI and Sveltekit.",
      langName: "Sveltekit",
      langImage: Images.sveltekit,
      codeberg: "https://codeberg.org/anhsirk0/whatsapp-svelte",
      github: "https://github.com/anhsirk0/whatsapp-svelte",
      link: "https://anhsirk0.codeberg.page/whatsapp-svelte",
    },
    {
      title: "Local-notes",
      about: "Sveltekit WebApp for managing notes locally without any backend.",
      langName: "Sveltekit",
      langImage: Images.sveltekit,
      codeberg: "https://codeberg.org/anhsirk0/local-notes",
      link: "https://anhsirk0.codeberg.page/local-notes",
    },
    {
      title: "Klip",
      about: "Sveltekit WebApp for saving text for copy-pasting (clipboard).",
      langName: "Sveltekit",
      langImage: Images.sveltekit,
      codeberg: "https://codeberg.org/anhsirk0/klip",
      link: "https://anhsirk0.codeberg.page/klip",
    },
    {
      title: "Silver-Searcher",
      about: "Svelte WebApp for searching same query on multiple sites.",
      langName: "Sveltekit",
      langImage: Images.sveltekit,
      codeberg: "https://codeberg.org/anhsirk0/silver-searcher",
      link: "https://anhsirk0.codeberg.page/silver-searcher",
    },
    {
      title: "Slider-login-signup",
      about: "Login/Signup design with a slider animation made with tailwindcss and nextjs.",
      langName: "Javascript",
      langImage: Images.javascript,
      codeberg: "https://codeberg.org/anhsirk0/slider-login-signup",
      link: "https://anhsirk0-ts-projects.netlify.com/slider",
    },
    {
      title: "Tendrils",
      about: "Markdown based social media platform. [React-Typescript]",
      langName: "React",
      langImage: Images.react,
      codeberg: "https://codeberg.org/anhsirk0/tendrils-frontend",
      github: "https://github.com/anhsirk0/tendrils-frontend",
    },
    {
      title: "Tendrils-Backend",
      about: "Backend for Markdown based social media platform. [Nestjs]",
      langName: "Nestjs",
      langImage: Images.nestjs,
      codeberg: "https://codeberg.org/anhsirk0/tendrils-backend",
      github: "https://github.com/anhsirk0/tendrils-backend",
    },
    {
      title: "TS-projects",
      about: "Some Typescript projects as NextJs pages.",
      langName: "Typescript",
      langImage: Images.typescript,
      codeberg: "https://codeberg.org/anhsirk0/ts-projects",
      link: "https://anhsirk0-ts-projects.netlify.com",
    },
    {
      title: "Gacp",
      about: "Git add, commit and push in one go.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/gacp",
      github: "https://github.com/anhsirk0/gacp",
    },
    {
      title: "Arranger",
      about: "Simple and capable Files and Directory arranger/cleaner.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/arng",
      github: "https://github.com/anhsirk0/file-arranger",
    },
    {
      title: "Pere",
      about: "Pere is a bulk file renamer written in Perl.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/pere",
    },
    {
      title: "Notes-nestjs",
      about: "Nestjs backend for simple notes management system.",
      langName: "Nestjs",
      langImage: Images.nestjs,
      codeberg: "https://codeberg.org/anhsirk0/notes-nestjs",
    },
    {
      title: "Gacp-py",
      about: "Python re-write of gacp (Git add, commit and push in one go).",
      langName: "Python",
      langImage: Images.python,
      codeberg: "https://codeberg.org/anhsirk0/gacp-py",
    },
    {
      title: "Alacritty-themes",
      about: "Port of Modus-themes and Ef-themes for alacritty.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/alacritty-themes",
      github: "https://github.com/anhsirk0/alacritty-themes",
    },
    {
      title: "Wezterm-themes",
      about: "Port of Modus-themes and Ef-themes for wezterm.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/wezterm-themes",
      github: "https://github.com/anhsirk0/wezterm-themes",
    },
    {
      title: "Kakoune-themes",
      about: "Beautiful color schemes for kakoune text editor.",
      langName: "Kakoune",
      langImage: Images.kakoune,
      codeberg: "https://codeberg.org/anhsirk0/kakoune-themes",
      github: "https://github.com/anhsirk0/kakoune-themes",
    },
    {
      title: "Awesome-config",
      about: "My config for the awesome window manager.",
      langName: "Lua",
      langImage: Images.lua,
      codeberg: "https://codeberg.org/anhsirk0/awesome-config",
      github: "https://github.com/anhsirk0/awesome-config",
    },
    {
      title: "Rofi-config",
      about: "Some cool scripts and Modus-themes & Ef-themes colors for rofi.",
      langName: "Perl",
      langImage: Images.perl,
      codeberg: "https://codeberg.org/anhsirk0/rofi-config",
      github: "https://github.com/anhsirk0/rofi-config",
    },
    {
      title: "Mosaic-rust",
      about: "Rust program to create photomosaics (image made of smaller images as mosaic tiles).",
      langName: "Rust",
      langImage: Images.rust,
      codeberg: "https://codeberg.org/anhsirk0/mosaic-rust",
    },
    {
      title: "Lyapunov",
      about: "Rust program to generate lyapunov fractals",
      langName: "Rust",
      langImage: Images.rust,
      codeberg: "https://codeberg.org/anhsirk0/lyapunov",
    },
    {
      title: "Mandelbrot",
      about: "Rust program to generate mandelbrot fractals",
      langName: "Rust",
      langImage: Images.rust,
      codeberg: "https://codeberg.org/anhsirk0/mandelbrot",
    },
    {
      title: "Cellular-Automata",
      about: "Elementary Cellular Automata implentation in Python. Print generations as graphs in the console.",
      langName: "Python",
      langImage: Images.python,
      codeberg: "https://codeberg.org/anhsirk0/cellular-automata",
    },
    {
      title: "Solus-awesome",
      about: "Simple bash script to build & install awesomewm on Solus Linux.",
      langName: "Bash",
      langImage: Images.bash,
      codeberg: "https://codeberg.org/anhsirk0/solus-awesome",
    },
    {
      title: "This website",
      about: "Source code for this website. (anhsirk0.codeberg.page)",
      langName: "Rescript",
      langImage: Images.rescript,
      codeberg: "https://codeberg.org/anhsirk0/anhsirk0-rescript",
      github: "https://github.com/anhsirk0/anhsirk0-rescript",
    },
  ]
}
