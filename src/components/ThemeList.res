@react.component
let make = () => {
  let (currentTheme, setCurrrentTheme) = React.useState(_ => Utils.getTheme())

  React.useEffect0(() => {
    currentTheme->Utils.setTheme
    None
  })

  React.useEffectOnEveryRender(() => {
    setCurrrentTheme(_ => Utils.getTheme())
    None
  })

  let onChange = theme => {
    theme->Utils.setTheme
    setCurrrentTheme(_ => theme)
  }

  let themeCards = Array.map(Themes.themes, theme =>
    <ThemeCard theme onChange key=theme>
      {theme->React.string}
      <div className="flex flex-row gap-1 rounded-btn [&>div]:h-6 [&>div]:w-2">
        <div className="bg-primary" />
        <div className="bg-accent" />
        <div className="bg-secondary" />
        <div className="bg-neutral" />
      </div>
      {currentTheme == theme
        ? <Icon.sparkle className="size-5 absolute top-0.5 left-0.5 animate-grow" />
        : React.null}
    </ThemeCard>
  )

  <ul
    id="theme-container"
    tabIndex=0
    className="flex flex-col gap-3 w-[13rem] p-3 min-h-0 overflow-y-auto bg-accent border-l-2 border-black">
    {React.array(themeCards)}
  </ul>
}
