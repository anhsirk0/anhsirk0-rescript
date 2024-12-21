@send external focus: Dom.element => unit = "focus"
@send external click: Dom.element => unit = "click"
@send external blur: Dom.element => unit = "blur"
@send external setAttribute: (Dom.element, string, string) => unit = "setAttribute"

let querySelectAndThen = (selector, action) => {
  switch ReactDOM.querySelector(selector) {
  | Some(el) => el->action
  | None => ()
  }
}

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
