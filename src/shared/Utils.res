// @send external focus: Dom.element => unit = "focus"
// @send external click: Dom.element => unit = "click"
// @send external blur: Dom.element => unit = "blur"
@send external setAttribute: (Dom.element, string, string) => unit = "setAttribute"

let querySelectAndThen = (selector, action) => {
  switch ReactDOM.querySelector(selector) {
  | Some(el) => el->action
  | None => ()
  }
}
// let getCssVar = %raw(`function (name) { return getComputedStyle(document.body).getPropertyValue(name) }`)
// let isDarkMode = () => getCssVar("color-scheme") == "dark"

let getTheme = () => {
  open Dom.Storage
  switch "anhsirk0Theme"->getItem(localStorage) {
  | Some(theme) => theme
  | None => "retro"
  }
}

let setTheme = theme => {
  "html"->querySelectAndThen(setAttribute(_, "data-theme", theme))
  open Dom.Storage
  "anhsirk0Theme"->setItem(theme, localStorage)
}

let randomNeutral = () => {
  let num = 10 * Math.Int.random(5, 9)
  let opac = Float.toString(num->Int.toFloat /. 100.0)
  `oklch(var(--n)/${opac})`
}

let randomColor = () => {
  let vars = ["--a", "--p", "--s"]
  let var = vars->Array.get(Math.Int.random(0, 3))->Option.getOr("--p")
  let num = 10 * Math.Int.random(2, 7)
  // let num = (isDarkMode() ? Math.Int.random(1, 5) : Math.Int.random(2, 7)) * 10
  let opac = Float.toString(num->Int.toFloat /. 100.0)
  `oklch(var(${var})/${opac})`
}

let basename = str => {
  let s = str->String.charAt(0)->String.toUpperCase ++ str->String.sliceToEnd(~start=1)
  s->String.split(".")->Array.get(0)->Option.getOr(str)
}
