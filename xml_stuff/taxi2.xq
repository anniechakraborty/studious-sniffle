(:Provide an XQuery expression to calculate the average milage of the taxis of one Taxi company:)
for $tc in fn:doc("taxi.xml")/taxicompanies/taxicompany
let $avg := fn:avg($tc/taxis/taxi/miles)
return <result>
<company>{$tc/@name}</company>
<miles>{$avg}</miles>
</result>