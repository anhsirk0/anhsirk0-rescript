@react.component
let make = (~title, ~className=?, ~children) => {
  let classes = className->Option.getOr("")
  <div className={`flex flex-col flex-1 w-full p-4 xxl:p-8 ${classes}`}>
    <p className="text-xl xxl:text-3xl font-bold xxl:mb-4 -mt-2"> {title->React.string} </p>
    children
  </div>
}
