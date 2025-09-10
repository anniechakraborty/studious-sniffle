for $shops in fn:doc("online_shop.xml")/onlineshops/onlineshop
let $prada_pn := $shops/products/product[brand="prada"]/[@productNumber]
for $order in $shops/orders/order[
   orderedproducts/product/productnumber = $prada_pn
]
order by $order/shippingaddress/streetandnumber descending

return<output>
{ attribute orderNumber { $order/@orderNumber } }
    { $order/shippingaddress }
</output>
