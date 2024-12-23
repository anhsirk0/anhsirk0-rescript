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
    {title: "Typescript", link: "https://typescriptlang.org", image: "ts.png"},
    {title: "Perl", link: "https://perl.org", image: "perl.png"},
    {title: "Python", link: "https://python.org", image: "python.png"},
    {
      title: "Javascript",
      link: "https://ecma-international.org/publications-and-standards/standards/ecma-262",
      image: "js.png",
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
