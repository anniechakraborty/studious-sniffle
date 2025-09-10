for $order in fn:doc("online_shop.xml")/onlineshops/onlineshop/orders/order[orderstatus = "waiting for shipment"]
where $order/customernumber = fn:doc("online_shop.xml")/onlineshops/onlineshop/customers/customer[name = "bruce wayne"]/@customernumber
let $pnum := $order/orderedproducts/product/productnumber
let $pname := fn:string-length(fn:doc("online_shop.xml")/onlineshops/onlineshop/products/product[@productNumber = $pnum]/name)
where $pname < 11
return
  <output>{ $order}</output>