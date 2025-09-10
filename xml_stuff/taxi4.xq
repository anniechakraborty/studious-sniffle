(:Provide a list of trips of the available drivers. Only consider drivers with names longer than 10 characters. :)
for $d in fn:doc("taxi.xml")//drivers/driver[status="available"]
for $trips in fn:doc("taxi.xml")//trips/trip[taxi = $d/taxi]
where fn:string-length($d/name) > 10
return <res>
{$d}{$trips}
</res>