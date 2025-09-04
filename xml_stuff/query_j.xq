let $person := fn:doc('xmlshop_task_2.1.xml')/Shop/Persons/Person
let $person_more_than_one := $person[fn:count(Books/Book) > 1]
let $book := fn:doc('xmlshop_task_2.1.xml')/Shop/Books/Book
for $b in $book
let $book_author := $b[Authors/Author = $person_more_than_one/@ID]
order by $book_author/Title
return <Book> {$book_author/Title} {$book_author/Price}</Book>