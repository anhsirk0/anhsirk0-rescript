module ProjectItem = {
  @react.component
  let make = (~item: Info.Project.t) => {
    <div
      className="col-span-12 md:col-span-6 lg:col-span-3 rounded-box text-base-content"
      style={{backgroundColor: Utils.randomColor()}}>
      <div
        className="brutal-box p-4 h-full flex flex-col gap-2 xxl:gap-4 relative"
        style={{backgroundColor: Utils.randomColor()}}>
        <div className="absolute inset-0 -z-[1]" style={{backgroundColor: Utils.randomNeutral()}} />
        <p className="text-xl lg:text-2xl xxl:text-3xl font-bold -mt-2">
          {item.title->React.string}
        </p>
        <div className="flex flex-row gap-2 items-end">
          <div className="brutal-box overflow-hidden size-6 xxl:size-8">
            <img className="w-full" alt=item.title src={`/static/${item.lang}`} />
          </div>
          <p className="xxl:text-lg"> {item.lang->Utils.basename->React.string} </p>
        </div>
        <p className="lg:text-lg xxl:text-xl"> {item.about->React.string} </p>
        <div className="grow" />
        <div className="flex flex-row gap-4">
          {switch item.link {
          | Some(url) =>
            <a href=url target="_blank" className="btn btn-square rounded-box">
              <Icon.arrowSquareOut className="text-3xl" />
            </a>
          | None => React.null
          }}
          {switch item.codeberg {
          | Some(url) =>
            <a href=url target="_blank" className="btn btn-square rounded-box">
              <Icon.codeberg className="text-3xl" />
            </a>
          | None => React.null
          }}
          {switch item.github {
          | Some(url) =>
            <a href=url target="_blank" className="btn btn-square rounded-box">
              <Icon.github className="text-3xl" />
            </a>
          | None => React.null
          }}
        </div>
      </div>
    </div>
  }
}

let default = () => {
  let projects = Info.Project.all->Array.map(item => <ProjectItem item key=item.title />)

  <div className="grid grid-cols-12 size-full gap-4 xxl:gap-8 p-4 xxl:p-8 overflow-y-auto">
    <Next.Head>
      <title> {React.string("Projects • " ++ Info.title)} </title>
    </Next.Head>
    {React.array(projects)}
  </div>
}
