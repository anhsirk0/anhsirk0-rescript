type props = {className?: string, weight?: string}
type t = React.component<props>

@module("@phosphor-icons/react") external palette: t = "Palette"
@module("@phosphor-icons/react") external sparkle: t = "Sparkle"
@module("@phosphor-icons/react") external mail: t = "EnvelopeSimple"
@module("@phosphor-icons/react") external linkedin: t = "LinkedinLogo"
@module("@phosphor-icons/react") external codeberg: t = "Mountains"
@module("@phosphor-icons/react") external github: t = "GithubLogo"
@module("@phosphor-icons/react") external diamond: t = "Diamond"
@module("@phosphor-icons/react") external download: t = "DownloadSimple"
@module("@phosphor-icons/react") external arrowSquareOut: t = "ArrowSquareOut"

let emacs: t = props => {
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width="1em"
    height="1em"
    viewBox="0 0 24 24"
    className=?props.className>
    <path
      d="M7.044 23.97s1.394.098 3.188-.06c.727-.064 3.485-.335 5.548-.787 0 0 2.515-.538 3.86-1.034 1.407-.519 2.172-.96 2.517-1.583-.015-.128.106-.581-.543-.854-1.66-.695-3.584-.57-7.393-.651-4.223-.146-5.629-.853-6.376-1.422-.717-.577-.356-2.176 2.72-3.583 1.547-.75 7.62-2.133 7.62-2.133-2.045-1.01-5.859-2.787-6.643-3.17-.687-.337-1.788-.843-2.026-1.457-.27-.588.639-1.095 1.146-1.24 1.636-.472 3.944-.764 6.046-.798 1.056-.018 1.228-.085 1.228-.085 1.457-.242 2.416-1.239 2.016-2.817-.36-1.611-2.252-2.56-4.05-2.231-1.694.309-5.774 1.494-5.774 1.494 5.046-.044 5.89.04 6.266.567.223.311-.101.739-1.447.958-1.464.24-4.51.528-4.51.528-2.921.174-4.979.185-5.596 1.491-.404.854.43 1.61.795 2.082C7.18 8.902 9.41 9.827 10.844 10.51c.54.256 2.124.741 2.124.741-4.655-.257-8.012 1.174-9.982 2.819-2.227 2.06-1.242 4.517 3.322 6.028 2.696.893 4.032 1.313 8.053.951 2.368-.128 2.742-.051 2.765.143.032.274-2.631.954-3.358 1.163-1.85.534-6.7 1.61-6.724 1.616"
      style={{strokeWidth: "1.42582"}}
    />
  </svg>
}
