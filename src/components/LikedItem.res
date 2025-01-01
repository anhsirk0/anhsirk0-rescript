@react.component
let make = (~item: Info.Liked.t) => {
  <div className="flex gap-2 w-fit items-center mr-2 xxl:mr-4">
    <Icon.diamond className="size-4" weight="fill" />
    <p className="w-full text-center xxl:text-xl"> {item.title->React.string} </p>
  </div>
}
