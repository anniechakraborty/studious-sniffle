xquery version "3.1";

<output>{
  for $order in fn:doc("online_shop.xml")/onlineshops/onlineshop[@name="MyClothingShop"]/orders/order
  where $order/shippingaddress/name = "bruce wayne"
        and $order/orderstatus = "waiting for shipment"
  return
    <Order orderNumber="{ $order/@orderNumber }">
      <CustomerNumber>{ $order/customernumber/text() }</CustomerNumber>
      {
        for $op in $order/orderedproducts/product
        let $prod := fn:doc("online_shop.xml")/onlineshops/onlineshop[@name="MyClothingShop"]/products/product[@productNumber = $op/productnumber/text()]
        where fn:string-length($prod/name) lt 10
        return
          <Product>
            <ProductNumber>{ $prod/@productNumber }</ProductNumber>
            <ProductName>{ $prod/name/text() }</ProductName>
            <Amount>{ $op/amount/text() }</Amount>
          </Product>
      }
    </Order>
}</output>
