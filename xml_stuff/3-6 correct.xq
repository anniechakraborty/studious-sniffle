for $order in fn:doc("online_shop.xml")//orders/order[orderstatus = "waiting for shipment"]
where fn:doc("online_shop.xml")/onlineshops/onlineshop/customers/customer[@customernumber=$order/customernumber]/name = "bruce wayne"
and fn:string-length(fn:doc("online_shop.xml")//products/product[@productNumber = $order/orderedproducts/product/productnumber]/name) < 11
return
  <output>{ $order}</output>