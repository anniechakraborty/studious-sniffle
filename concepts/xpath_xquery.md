# **1. XPath (XML Path Language)**

### **What is XPath?**

* XPath is a **query language for XML**.
* Used to **navigate through elements and attributes** in an XML document.
* Think of it like “file paths” but for XML nodes.

---

## **1.1 XPath Basics**

Consider this XML:

```xml
<library>
    <book id="b1">
        <title>XML Basics</title>
        <author>John Doe</author>
        <price>29.99</price>
    </book>
    <book id="b2">
        <title>XQuery Guide</title>
        <author>Jane Smith</author>
        <price>39.99</price>
    </book>
</library>
```

### **Node Selection Syntax**

| Expression | Meaning                    |
| ---------- | -------------------------- |
| `/`        | Selects from the **root**  |
| `//`       | Selects nodes **anywhere** |
| `.`        | Current node               |
| `..`       | Parent node                |
| `@attr`    | Selects an attribute       |

### **Examples**

* `/library/book` → all `<book>` elements under root `<library>`.
* `//title` → all `<title>` elements anywhere.
* `/library/book[1]` → first `<book>`.
* `/library/book[@id='b2']` → book where `id="b2"`.
* `/library/book[price>30]/title` → titles of books with price > 30.

---

## **1.2 Predicates**

Predicates (`[]`) filter nodes.

* `/library/book[2]` → second book.
* `/library/book[last()]` → last book.
* `/library/book[author='Jane Smith']` → book with Jane Smith.

---

## **1.3 XPath Axes**

Axes specify the “direction” of navigation.

| Axis                  | Meaning                      |
| --------------------- | ---------------------------- |
| `child::`             | children of node             |
| `parent::`            | parent node                  |
| `descendant::`        | all descendants              |
| `ancestor::`          | all ancestors                |
| `following-sibling::` | siblings after current node  |
| `preceding-sibling::` | siblings before current node |
| `attribute::`         | attributes                   |

Example:
`//book/child::title` → select `<title>` that is a child of `<book>`.

---

## **1.4 XPath Functions**

* `count(//book)` → number of books.
* `string-length(/library/book/title)` → length of first title.
* `concat(author, ' wrote ', title)` → combine strings.
* `contains(title, 'XML')` → checks if title contains "XML".

---

✅ **XPath Summary**

* Think of XPath as a **navigation and selection language** for XML.
* It finds **nodes, attributes, and values**.
* Super important because XQuery builds on top of XPath.

---

# **2. XQuery (XML Query Language)**

### **What is XQuery?**

* XQuery is like **SQL for XML**.
* Built on **XPath**.
* Can **query, transform, and extract** XML data.
* Used in databases (e.g., BaseX, eXistDB, MarkLogic).

---

## **2.1 XQuery Basics**

### **Structure**

```xquery
xquery version "1.0";

for $book in doc("library.xml")/library/book
where $book/price > 30
return $book/title
```

### **Explanation**

* `doc("library.xml")` → loads the XML file.
* `for` → loops through each `<book>`.
* `where` → filter condition.
* `return` → output result.

**Result:**

```xml
<title>XQuery Guide</title>
```

---

## **2.2 FLWOR Expressions**

The heart of XQuery: **F**or, **L**et, **W**here, **O**rder by, **R**eturn.

Example:

```xquery
for $b in doc("library.xml")/library/book
let $a := $b/author
where $b/price < 35
order by $b/title
return <cheapBook>{ $b/title, $a }</cheapBook>
```

Result:

```xml
<cheapBook>
  <title>XML Basics</title>
  <author>John Doe</author>
</cheapBook>
```

---

## **2.3 Functions in XQuery**

Like XPath, but more powerful:

* `count()` → count items.
* `avg()` → average.
* `distinct-values()` → unique values.
* `upper-case()`, `lower-case()`.

Example:

```xquery
count(doc("library.xml")//book)
```

---

## **2.4 Constructing New XML**

XQuery can **generate XML**:

```xquery
<summary>
{
  for $b in doc("library.xml")/library/book
  return <bookTitle>{ $b/title/text() }</bookTitle>
}
</summary>
```

Result:

```xml
<summary>
  <bookTitle>XML Basics</bookTitle>
  <bookTitle>XQuery Guide</bookTitle>
</summary>
```

---

## **2.5 Combining Multiple Sources**

XQuery can combine multiple XML documents:

```xquery
for $b in doc("books.xml")//book,
    $a in doc("authors.xml")//author
where $b/@authorId = $a/@id
return <bookWithAuthor>
           { $b/title }
           { $a/name }
       </bookWithAuthor>
```

---

✅ **XQuery Summary**

* **XPath** = navigation + selection.
* **XQuery** = querying + transformation (like SQL).
* Uses **FLWOR** expressions (for, let, where, order, return).
* Can **filter, join, sort, aggregate, and build new XML**.

---

# **3. When to Use XPath vs XQuery**

* **XPath** → Quick navigation/extraction (like locating nodes).
* **XQuery** → Complex queries, filtering, aggregation, joins, building new XML.

---

