(: Joins Example- Get customer names with their ordered product names. :)
for $order in fn:doc("online_shop.xml")//orders/order
let $pn := $order/orderedproducts/product/productnumber
let $cn := $order/customernumber
for $c in fn:doc("online_shop.xml")//customers/customer[@customernumber = $cn]/name
for $p in fn:doc("online_shop.xml")//products/product[@productNumber = $pn]/name
return <result>
<name>
{$c/text()}
</name>
<order>{$p/text()}</order>
</result>