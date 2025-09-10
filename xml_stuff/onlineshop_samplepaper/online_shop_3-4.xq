for $shop in fn:doc("online_shop.xml")/onlineshops/onlineshop
let $price := fn:avg($shop/products/product/price)
return <output>
{fn:concat(
  ($shop/[@name]), ", ", fn:string($price)
)}
</output>