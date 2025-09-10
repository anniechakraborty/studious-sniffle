(:Provide an XQuery expression that returns a list of all Taxi Company, Taxi Number, Vehicle Type and Number of Trips:)

for $tc in fn:doc("taxi.xml")/taxicompanies/taxicompany
for $taxi in $tc/taxis/taxi
let $trip := fn:count($tc/trips/trip[taxi = $taxi/@id])
return <result>
<company>{$tc/@name}</company>
<taxi>
{$taxi/@id}
</taxi>
<vehicletype>{ $taxi/vehicletype/text() }</vehicletype>
<numberoftrips>{ $trip }</numberoftrips>
</result>