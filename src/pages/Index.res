let default = () => {
  let liked = Info.Liked.all->Array.map(item => <LikedItem item key=item.title />)
  let contacts = Info.Contact.all->Array.map(item => <ContactItem item key=item.title />)

  <div className="flex flex-col lg:flex-row size-full">
    <Next.Head>
      <title> {React.string("Home • " ++ Info.title)} </title>
    </Next.Head>
    <div className="center flex-col w-full min-h-[40vh] lg:w-1/2 bg-accent text-accent-content">
      <p
        className="text-5xl md:text-6xl lg:text-7xl xxl:text-9xl font-black px-2 md:px-0 md:mx-auto mb-6">
        {"Hello! "->React.string}
        <WavingHand />
        <br />
        {"I'm"->React.string}
        <span
          className="px-4 ml-4 inline-block bg-primary text-primary-content brutal-box brutal-shadow">
          {Info.name->React.string}
        </span>
      </p>
    </div>
    <div
      className="flex flex-col w-full h-full lg:w-1/2 border-t-2 lg:border-l-2 lg:border-t-0 bg-secondary text-secondary-content border-black">
      <Box title="About me" className="border-b-2 border-black">
        <p className="text-base xxl:text-xl"> {Info.about->React.string} </p>
        <a
          href="/static/resume.pdf"
          download={Info.name->String.replace(" ", "_") ++ "_Resume"}
          className="btn btn-primary xxl:btn-lg w-fit mt-4 xxl:mt-8">
          {"Download Resume"->React.string}
          <Icon.download className="resp-icon" />
        </a>
      </Box>
      <Box title="What I do" className="border-b-2 border-black">
        <p className="xxl:text-xl"> {Info.work->React.string} </p>
      </Box>
      <Box title="Things I enjoy" className="border-b-2 border-black">
        <div className="flex gap-2 xxl:gap-4 flex-wrap mt-1"> {React.array(liked)} </div>
      </Box>
      <Box title="Contact">
        <div className="flex gap-4 xxl:gap-8 mt-1"> {React.array(contacts)} </div>
      </Box>
    </div>
  </div>
}
