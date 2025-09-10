for $order in fn:doc("online_shop.xml")//orders/order
let $pn := $order/orderedproducts/product/productnumber
where fn:doc("online_shop.xml")//products/product[@productNumber = $pn]/brand = "prada"
order by $order/shippingaddress/streetandnumber descending
return <list>
<order>{$order/@orderNumber}</order>
{$order/shippingaddress}
</list>