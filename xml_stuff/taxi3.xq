(: Use XQuery to list all Trips of Cars of type Peugeot with the number of the trip and the destionation element sorted by destination descending:)
let $taxi := fn:doc("taxi.xml")//taxi[brand="peugeot"]
for $trips in fn:doc("taxi.xml")//trips/trip[taxi = $taxi/@id]
order by $trips/destination descending
return <result>
<trip>{$trips/@id}</trip>
<destination>{$trips/destination}</destination>
</result>