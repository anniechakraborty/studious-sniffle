let $prod := fn:doc("online_shop.xml")//products/product
let $pr := $prod/price
let $qty := $prod/instock
let $total := fn:sum($pr * $qty)

return <totalStockValue>
{ $pr }
{$qty}
</totalStockValue>
