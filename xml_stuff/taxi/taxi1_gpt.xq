xquery version "3.1";
(:Provide an XQuery expression that returns a list of all Taxi Company, Taxi Number, Vehicle Type and Number of Trips:)
<output>{
  for $company in fn:doc("taxi.xml")/taxicompanies/taxicompany
  for $taxi in $company/taxis/taxi
  let $tripCount := count($company/trips/trip[taxi = $taxi/@id])
  return
    <taxi>
      <company>{ $company/@name }</company>
      <taxinumber>{ $taxi/@id }</taxinumber>
      <vehicletype>{ $taxi/vehicletype/text() }</vehicletype>
      <numberoftrips>{ $tripCount }</numberoftrips>
    </taxi>
}</output>