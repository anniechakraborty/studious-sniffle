(: Example: Total stock value (sum of price × instock). :)
let $val :=fn:sum(
  for $p in fn:doc("online_shop.xml")//products/product
  return $p/price *$p/instock
)
return <totalStockValue>
{$val}
</totalStockValue>
