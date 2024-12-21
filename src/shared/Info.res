// let name = "Krishna"
let name = "Aman"
let title = "Anhsirk0"
let logo = "k.png"
let about = "I'm Aman Kumar, I go by Krishna online.
I am a Computer Science student at Kurukshetra University from India. I have been enjoying programming for about 5 years, mostly as a Web developer and messing around with GNU/Linux."
let work = "I am a Full-stack Web Developer by profession and I work on CLI tools in my free time. Ever since I started using a computer, I've always been fascinated with technology and wanted to learn about it as much as I could. I always use and promote Free/Libre Open Source software."

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
    icon: React.element,
  }

  let all: array<t> = [
    {
      title: "Mail",
      link: "mailto:krishna404@yandex.com",
      icon: <Icon.mail className="resp-icon" />,
    },
    {
      title: "LinkedIn",
      link: "https://linkedin.com/in/anhsirk0",
      icon: <Icon.linkedin className="resp-icon" />,
    },
    {
      title: "Codeberg",
      link: "https://codeberg.org/anhsirk0",
      icon: <Icon.codeberg className="resp-icon" />,
    },
    {
      title: "Github",
      link: "https://github.com/anhsirk0",
      icon: <Icon.github className="resp-icon" />,
    },
  ]
}
