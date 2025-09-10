let $shops := fn:doc("online_shop.xml")/onlineshops/onlineshop
let $bruce_ID := $shops/customers/customer[name="bruce wayne"]/[@customernumber]
for $order in $shops/orders/order[customernumber = $bruce_ID and orderstatus = "waiting for shipment"]
where some $op in $order/orderedproducts/product
      satisfies fn:string-length(
           ($shops/products/product[@productNumber = $op/productnumber]/name )
         ) lt 10
return <output>
{$order}
</output>