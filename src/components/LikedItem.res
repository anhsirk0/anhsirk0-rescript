@react.component
let make = (~item: Info.Liked.t) => {
  <div className="flex gap-2 w-fit items-center mr-2 xxl:mr-4">
    <Icon.diamond className="size-4" weight="fill" />
    <p className="w-full text-center xxl:text-xl"> {item.title->React.string} </p>
  </div>
}

/*
  <div
    className="size-16 xxl:size-28 flex flex-col brutal-box bg-primary text-accent-content p-2 relative overflow-hidden">
    {item.icon}
    <div className="flex absolute left-0 bottom-0  border-t-2 border-black w-full bg-accent">
      <p className="w-full text-sm text-center uppercase font-bold"> {item.title->React.string} </p>
    </div>
  </div>
 */
