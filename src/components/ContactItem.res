@react.component
let make = (~item: Info.Contact.t) => {
  <a href={item.link} target="_blank" className="btn btn-primary flex-1 justify-between">
    {item.title->React.string}
    {item.icon}
  </a>
}
