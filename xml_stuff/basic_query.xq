(: Basic Selection & Projection - product name, number and price where branda is not prada :)
for $pro in fn:doc("online_shop.xml")/onlineshops/onlineshop/products/product
where $pro/brand != "prada"
return <result>
{attribute productNumber {$pro/[@productNumber]}}
{$pro/name}
{$pro/price}
<str-outout>
{fn:concat($pro/name, ", ", $pro/@productNumber, ", ", $pro/price)}
</str-outout>
</result>