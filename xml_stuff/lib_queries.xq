for $book in doc("lib.xml")/library/book
where $book/price > 30
return $book/title