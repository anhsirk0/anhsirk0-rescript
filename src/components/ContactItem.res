@react.component
let make = (~item: Info.Contact.t) => {
  <a href={item.link} target="_blank" className="btn btn-primary xxl:btn-lg flex-1 justify-between">
    <span className="hidden lg:block"> {item.title->React.string} </span>
    <span className="mx-auto lg:mx-0"> {item.icon} </span>
  </a>
}
