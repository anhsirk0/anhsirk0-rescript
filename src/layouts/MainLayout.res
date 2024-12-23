@react.component
let make = (~children) => {
  let pos = `-right-80 group-has-[#theme-btn:focus]/main:right-0 group-has-[#theme-container>*:focus]/main:right-0`
  let pathname = Next.Navigation.usePathname()
  let links = Info.NavLink.all->Array.map(item => {
    <Next.Link
      href=item.path
      key=item.path
      className={`h-full px-2 md:px-4 xxl:px-8 center border-l-2 border-black relative`}>
      {item.title->React.string}
      {item.path == pathname
        ? <Icon.sparkle
            className="size-5 absolute top-0 left-1 xxl:top-2 xxl:left-2 animate-grow"
          />
        : React.null}
    </Next.Link>
  })

  <main
    className="center h-screen min-h-0 w-screen transitional bg-base-100 flex-col relative group/main">
    <div className={`fixed top-0 ${pos} z-20 h-full flex flex-row transitional`}>
      <ThemeList />
    </div>
    <div
      className="sticky top-0 z-10 flex w-full border-b-2 border-b-black h-12 xxl:h-16 items-center bg-base-100">
      // <div className="avatar mr-4">
      //   <div className="w-10 brutal-box rounded-none">
      //     <img alt="logo" src={"/static/" ++ Info.logo} />
      //   </div>
      // </div>
      <p className="text-2xl lg:text-3xl xxl:text-5xl font-black pl-4 xxl:pl-6">
        {Info.title->React.string}
      </p>
      <div className="grow" />
      {React.array(links)}
      <button
        ariaLabel="select-theme-btn"
        id="theme-btn"
        className="h-full w-12 xxl:w-16 center bg-primary text-primary-content border-l-2 border-black">
        <Icon.palette className="resp-icon stroke-2" />
      </button>
    </div>
    children
  </main>
}
