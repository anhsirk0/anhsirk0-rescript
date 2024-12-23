@react.component
let make = (~item: Info.Contact.t) => {
  let {title, link, icon} = item
  <a href={link} target="_blank" className="btn btn-primary xxl:btn-lg flex-1 justify-between">
    <span className="hidden lg:block"> {title->React.string} </span>
    <span className="mx-auto lg:mx-0"> {"text-2xl"->icon} </span>
  </a>
}
