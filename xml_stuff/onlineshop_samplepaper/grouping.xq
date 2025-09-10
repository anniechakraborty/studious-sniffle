(: Example: Count how many orders each customer has.:)
for $c in fn:doc("online_shop.xml")//customers/customer
let $o := fn:count(fn:doc("online_shop.xml")//orders/order[customernumber/text() = $c/[@customernumber]])
return <result>
<cust>{$c/name/text()}</cust>
<ord>{$o}</ord>
</result>