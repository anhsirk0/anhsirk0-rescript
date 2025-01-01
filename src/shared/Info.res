// let name = "Krishna"
let name = "Aman"
let title = "Anhsirk0"
let logo = "k.png"
let about = "I'm Aman Kumar, I go by Krishna online.
I am a Computer Science student at Kurukshetra University from India.
I have been enjoying programming for about 5 years, mostly as a Web developer and messing around with GNU/Linux."
let work = "I am a Full-stack Web Developer by profession and I work on CLI tools in my free time. Ever since I started using a computer, I've always been fascinated with technology and wanted to learn about it as much as I could. I always use and promote Free/Libre Open Source software."

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
  let things: array<t> = [
    {title: "Linux"},
    {title: "Emacs / Text Editors"},
    {title: "Terminal Emulators"},
    {title: "Playing Chess"},
    {title: "Web Development"},
    {title: "Building CLI tools"},
  ]
}

module Contact = {
  type t = {
    title: string,
    link: string,
    icon: string => React.element,
  }

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
    {title: "Rescript", link: "https://rescript-lang.org", image: "rescript.png"},
    {title: "Typescript", link: "https://typescriptlang.org", image: "typescript.png"},
    {title: "Perl", link: "https://perl.org", image: "perl.png"},
    {title: "Python", link: "https://python.org", image: "python.png"},
    {
      title: "Javascript",
      link: "https://ecma-international.org/publications-and-standards/standards/ecma-262",
      image: "javascript.png",
    },
    // { title: "R", image: "r.png", link: "https://r-project.org/" },
    {title: "Rust", link: "https://rust-lang.org", image: "rust.png"},
  ]
  let tools: array<t> = [
    {title: "Linux", link: "https://linuxfoundation.org", image: "linux.png"},
    {title: "Emacs", link: "https://gnu/software/emacs", image: "emacs.png"},
    // {title: "Kakoune", link: "https://kakoune.org", image: "kakoune.png"},
    {title: "Fish", link: "https://fishshell.com", image: "fish.png"},
    {title: "Git", link: "https://git-scm.com", image: "git.png"},
    {title: "Codeberg", link: "https://codeberg.org", image: "codeberg.png"},
    {title: "Github", link: "https://github.com", image: "github.png"},
    {title: "Inkscape", link: "https://inkscape.org", image: "inkscape.png"},
  ]
  let frontend: array<t> = [
    {title: "Sveltekit", link: "https://kit.svelte.dev", image: "sveltekit.png"},
    {title: "React", link: "https://reactjs.org", image: "react.png"},
    {title: "Nextjs", link: "https://nextjs.org", image: "nextjs.png"},
    {title: "Angular", link: "https://angular.dev", image: "angular.png"},
    // { title: "Vue", image: "vue.png", link: "https://vuejs.org" },
    {
      title: "Tailwindcss",
      link: "https://tailwindcss.com",
      image: "tailwindcss.png",
    },
    {title: "Daisyui", link: "https://daisyui.com", image: "daisyui.png"},
    {title: "MUI", link: "https://mui.com", image: "mui.png"},
    // {
    //   title: "Materialize",
    //   link: "https://materializecss.com",
    //   image: "materialize.png",
    // },
  ]
  let backend: array<t> = [
    {title: "Nestjs", link: "https://nestjs.com", image: "nestjs.png"},
    {title: "Django", link: "https://djangoproject.com", image: "django.png"},
    // {title: "Express", link: "https://expressjs.com", image: "express.png"},
  ]
}

module Project = {
  type t = {
    title: string,
    about: string,
    lang: string,
    codeberg?: string,
    github?: string,
    link?: string,
  }

  let all: array<t> = [
    {
      title: "Fetch-master-6000",
      about: "Simple Dilbert themed system information fetching tool for Linux and BSD based systems.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/fetch-master-6000",
      github: "https://github.com/anhsirk0/fetch-master-6000",
    },
    {
      title: "Undoo-Start",
      about: "Super elegant startpage",
      lang: "rescript.png",
      codeberg: "https://codeberg.org/anhsirk0/undoo-start",
      github: "https://github.com/anhsirk0/undoo-start",
      link: "https://undoo.netlify.app",
    },
    {
      title: "Panda-Notes",
      about: "Simple markdown notes",
      lang: "rescript.png",
      codeberg: "https://codeberg.org/anhsirk0/panda-notes",
      github: "https://github.com/anhsirk0/panda-notes",
      link: "https://notes-panda.netlify.app",
    },
    {
      title: "Landslides",
      about: "Collection of Landing pages redesigned using DaisyUI",
      lang: "react.png",
      link: "https://landslides.netlify.app",
      // codeberg: "https://codeberg.org/anhsirk0/landslides",
      github: "https://github.com/anhsirk0/landslides",
    },
    {
      title: "Whatsapp-svelte",
      about: "WhatsApp mockup screens using Tailwind, DaisyUI and Sveltekit.",
      lang: "sveltekit.png",
      codeberg: "https://codeberg.org/anhsirk0/whatsapp-svelte",
      github: "https://github.com/anhsirk0/whatsapp-svelte",
      link: "https://anhsirk0.codeberg.page/whatsapp-svelte",
    },
    {
      title: "Local-notes",
      about: "Sveltekit WebApp for managing notes locally without any backend.",
      lang: "sveltekit.png",
      codeberg: "https://codeberg.org/anhsirk0/local-notes",
      link: "https://anhsirk0.codeberg.page/local-notes",
    },
    {
      title: "Klip",
      about: "Sveltekit WebApp for saving text for copy-pasting (clipboard).",
      lang: "sveltekit.png",
      codeberg: "https://codeberg.org/anhsirk0/klip",
      link: "https://anhsirk0.codeberg.page/klip",
    },
    {
      title: "Silver-Searcher",
      about: "Svelte WebApp for searching same query on multiple sites.",
      lang: "sveltekit.png",
      codeberg: "https://codeberg.org/anhsirk0/silver-searcher",
      link: "https://anhsirk0.codeberg.page/silver-searcher",
    },
    {
      title: "Slider-login-signup",
      about: "Login/Signup design with a slider animation made with tailwindcss and nextjs.",
      lang: "javascript.png",
      codeberg: "https://codeberg.org/anhsirk0/slider-login-signup",
      link: "https://anhsirk0-ts-projects.netlify.com/slider",
    },
    {
      title: "Tendrils",
      about: "Markdown based social media platform. [React-Typescript]",
      lang: "react.png",
      codeberg: "https://codeberg.org/anhsirk0/tendrils-frontend",
      github: "https://github.com/anhsirk0/tendrils-frontend",
    },
    {
      title: "Tendrils-Backend",
      about: "Backend for Markdown based social media platform. [Nestjs]",
      lang: "nestjs.png",
      codeberg: "https://codeberg.org/anhsirk0/tendrils-backend",
      github: "https://github.com/anhsirk0/tendrils-backend",
    },
    // {
    //   title: "Infinite-scroll",
    //   about: "Generic React component for Infinite scrolling (react + typescript)",
    //   lang: "typescript.png",
    //   codeberg: "https://codeberg.org/anhsirk0/infinite-scroll",
    // },
    {
      title: "TS-projects",
      about: "Some Typescript projects as NextJs pages.",
      lang: "typescript.png",
      codeberg: "https://codeberg.org/anhsirk0/ts-projects",
      link: "https://anhsirk0-ts-projects.netlify.com",
    },
    {
      title: "Gacp",
      about: "Git add, commit and push in one go.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/gacp",
      github: "https://github.com/anhsirk0/gacp",
    },
    {
      title: "Arranger",
      about: "Simple and capable Files and Directory arranger/cleaner.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/arng",
      github: "https://github.com/anhsirk0/file-arranger",
    },
    {
      title: "Pere",
      about: "Pere is a bulk file renamer written in Perl.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/pere",
    },
    {
      title: "Notes-nestjs",
      about: "Nestjs backend for simple notes management system.",
      lang: "nestjs.png",
      codeberg: "https://codeberg.org/anhsirk0/notes-nestjs",
    },
    {
      title: "Gacp-py",
      about: "Python re-write of gacp (Git add, commit and push in one go).",
      lang: "python.png",
      codeberg: "https://codeberg.org/anhsirk0/gacp-py",
    },
    {
      title: "Alacritty-themes",
      about: "Port of Modus-themes and Ef-themes for alacritty.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/alacritty-themes",
      github: "https://github.com/anhsirk0/alacritty-themes",
    },
    {
      title: "Wezterm-themes",
      about: "Port of Modus-themes and Ef-themes for wezterm.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/wezterm-themes",
      github: "https://github.com/anhsirk0/wezterm-themes",
    },
    {
      title: "Kakoune-themes",
      about: "Beautiful color schemes for kakoune text editor.",
      lang: "kakounescript",
      codeberg: "https://codeberg.org/anhsirk0/kakoune-themes",
      github: "https://github.com/anhsirk0/kakoune-themes",
    },
    {
      title: "Awesome-config",
      about: "My config for the awesome window manager.",
      lang: "lua.png",
      codeberg: "https://codeberg.org/anhsirk0/awesome-config",
      github: "https://github.com/anhsirk0/awesome-config",
    },
    {
      title: "Rofi-config",
      about: "Some cool scripts and Modus-themes & Ef-themes colors for rofi.",
      lang: "perl.png",
      codeberg: "https://codeberg.org/anhsirk0/rofi-config",
      github: "https://github.com/anhsirk0/rofi-config",
    },
    {
      title: "Mosaic-rust",
      about: "Rust program to create photomosaics (image made of smaller images as mosaic tiles).",
      lang: "rust.png",
      codeberg: "https://codeberg.org/anhsirk0/mosaic-rust",
    },
    {
      title: "Lyapunov",
      about: "Rust program to generate lyapunov fractals",
      lang: "rust.png",
      codeberg: "https://codeberg.org/anhsirk0/lyapunov",
    },
    {
      title: "Mandelbrot",
      about: "Rust program to generate mandelbrot fractals",
      lang: "rust.png",
      codeberg: "https://codeberg.org/anhsirk0/mandelbrot",
    },
    {
      title: "Cellular-Automata",
      about: "Elementary Cellular Automata implentation in Python. Print generations as graphs in the console.",
      lang: "python.png",
      codeberg: "https://codeberg.org/anhsirk0/cellular-automata",
    },
    // {
    //   title: "News-cli",
    //   about: "News and article viewing utility using New-York times API.",
    //   lang: "rust.png",
    //   codeberg: "https://codeberg.org/anhsirk0/news-cli",
    // },
    {
      title: "Solus-awesome",
      about: "Simple bash script to build & install awesomewm on Solus Linux.",
      lang: "bash.png",
      codeberg: "https://codeberg.org/anhsirk0/solus-awesome",
    },
    // {
    //   title: "Quote-uploader",
    //   about: "Create slideshow of images from brainyquote and upload to dailymotion.",
    //   lang: "bash.png",
    //   codeberg: "https://codeberg.org/anhsirk0/quote-uploader",
    // },
    {
      title: "This website",
      about: "Source code for this website. (anhsirk0.codeberg.page)",
      lang: "rescript.png",
      codeberg: "https://codeberg.org/anhsirk0/anhsirk0-rescript",
      github: "https://github.com/anhsirk0/anhsirk0-rescript",
    },
  ]
}
