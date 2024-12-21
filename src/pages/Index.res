let default = () => {
  let likedThings = Info.Liked.things->Array.map(item => <LikedItem item key=item.title />)
  let contacts = Info.Contact.all->Array.map(item => <ContactItem item key=item.title />)

  <div className="flex flex-col lg:flex-row size-full">
    <Next.Head>
      <title> {Info.title->React.string} </title>
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
      className="center flex-col w-full h-full lg:w-1/2 xxl:border-l-2 xxl:border-black bg-secondary text-secondary-content">
      <Box title="About me" className="border-b-2 border-black">
        <p className="text-base xxl:text-xl"> {Info.about->React.string} </p>
        <button className="btn btn-primary resp-btn w-fit mt-4 xxl:mt-8">
          {"Download CV"->React.string}
          <Icon.download className="resp-icon" />
        </button>
      </Box>
      <Box title="What I do" className="border-b-2 border-black">
        <p className="xxl:text-xl"> {Info.work->React.string} </p>
      </Box>
      <Box title="Things I enjoy" className="border-b-2 border-black">
        <div className="flex gap-2 xxl:gap-4 flex-wrap mt-1"> {React.array(likedThings)} </div>
      </Box>
      <Box title="Contact">
        <div className="flex gap-4 xxl:gap-8 mt-1"> {React.array(contacts)} </div>
      </Box>
    </div>
  </div>
}
