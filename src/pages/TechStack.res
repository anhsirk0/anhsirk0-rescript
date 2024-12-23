let default = () => {
  let langs = Info.Tech.languages->Array.map(item => <TechItem item key=item.title />)
  let tools = Info.Tech.tools->Array.map(item => <TechItem item key=item.title />)
  let frontend = Info.Tech.frontend->Array.map(item => <TechItem item key=item.title />)
  let backend = Info.Tech.backend->Array.map(item => <TechItem item key=item.title />)

  <div className="flex flex-col lg:flex-row size-full">
    <Next.Head>
      <title> {React.string("Tech Stack • " ++ Info.title)} </title>
    </Next.Head>
    <div
      className="center flex-col w-full min-h-[36vh] lg:w-1/2 bg-secondary/50 text-secondary-content flex-1">
      <Box title="Languages" className="border-b-2 border-black bg-primary/40 gap-4">
        <div className="flex flex-row gap-4 xxl:gap-6 flex-wrap"> {React.array(langs)} </div>
      </Box>
      <Box title="Tools" className="bg-accent text-accent-content gap-4">
        <div className="flex flex-row gap-4 xxl:gap-6 flex-wrap"> {React.array(tools)} </div>
      </Box>
    </div>
    <div
      className="center flex-col w-full h-full lg:w-1/2 border-t-2 lg:border-l-2 lg:border-t-0 border-black bg-accent/50 flex-1">
      <Box
        title="Frontend"
        className="border-b-2 border-black bg-secondary/30 text-accent-content gap-4">
        <div className="flex flex-row gap-4 xxl:gap-6 flex-wrap"> {React.array(frontend)} </div>
      </Box>
      <Box title="Backend" className="bg-secondary text-secondary-content gap-4">
        <div className="flex flex-row gap-4 xxl:gap-6 flex-wrap"> {React.array(backend)} </div>
      </Box>
    </div>
  </div>
}
