for $p in fn:doc('xmlshop_task_2.1.xml')//Persons/Person
let $pro := fn:count($p/*/*)
return <output>
<name>{$p/Surname/text()}</name>
<products>{$pro}</products>
</output>