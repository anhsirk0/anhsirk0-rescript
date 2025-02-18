@react.component
let make = (~item: Info.Tech.t) => {
  <a
    href={item.link}
    target="_blank"
    className="btn btn-square rounded-box size-20 md:size-24 xxl:size-36 overflow-hidden p-0 relative group">
    // <img className="w-full" alt=item.title src={`/static/${item.image}`} />
    <img className="w-full" alt=item.title src={item.image} />
    <p
      className="text-xs xxl:text-sm absolute transitional -bottom-10 group-hover:bottom-4 -left-[10%] w-[120%] bg-primary text-primary-content center -rotate-[8deg] border-y-2 border-black">
      {item.title->React.string}
    </p>
  </a>
}
