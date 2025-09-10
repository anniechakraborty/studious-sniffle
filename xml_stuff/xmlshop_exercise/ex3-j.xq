let $doc := fn:doc("xmlshop_task_2.1.xml")
for $a in fn:distinct-values($doc/Shop/DVDs/DVD/Actors/Actor)
for $d in fn:distinct-values($doc/Shop/DVDs/DVD/Director)
return <output>
{$doc/Shop/Persons/Person[@ID = $a and @ID = $d]}
</output>