for $p in fn:doc("online_shop.xml")/onlineshops/onlineshop/products/product
let $pn := $p/[@productNumber]
let $orders := fn:doc("online_shop.xml")/onlineshops/onlineshop/orders/order/orderedproducts/product[productnumber = $pn]
let $orderNum := fn:doc("online_shop.xml")/onlineshops/onlineshop/orders/order[@orderNumber]
return <output>
{fn:concat(($p/name), ", ", $pn, ", ", ($p/brand), ", ", fn:string(fn:count($orders)))}
</output>
