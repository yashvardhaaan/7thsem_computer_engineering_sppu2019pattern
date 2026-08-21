# 12. A Sample Class Model

## Introduction

A **class model** represents the **static structure of a system** by showing its classes, attributes, operations, and relationships.

A sample class model helps us understand how different classes in a real-world system are identified and connected.

---

# Example: Library Management System

Consider a simple **Library Management System**.

The main classes can be:

* `Library`
* `Book`
* `Member`
* `Librarian`

---

## 1. Book Class

The `Book` class represents books available in the library.

```text id="q2u1v7"
+---------------------------+
|          Book             |
+---------------------------+
| - bookId : int            |
| - title : String          |
| - author : String         |
| - price : double          |
+---------------------------+
| + issue() : void          |
| + returnBook() : void     |
+---------------------------+
```

### Attributes

* `bookId`
* `title`
* `author`
* `price`

### Operations

* `issue()`
* `returnBook()`

---

# 2. Member Class

The `Member` class represents a person who is registered with the library.

```text id="m9i5fy"
+---------------------------+
|         Member            |
+---------------------------+
| - memberId : int          |
| - name : String           |
| - phone : String          |
+---------------------------+
| + borrowBook() : void     |
| + returnBook() : void     |
+---------------------------+
```

---

# 3. Librarian Class

The `Librarian` class represents the librarian responsible for managing books.

```text id="1ub7uy"
+---------------------------+
|        Librarian          |
+---------------------------+
| - employeeId : int        |
| - name : String           |
+---------------------------+
| + addBook() : void        |
| + removeBook() : void     |
| + issueBook() : void      |
+---------------------------+
```

---

# 4. Library Class

The `Library` class represents the library itself.

```text id="w4y7h4"
+---------------------------+
|         Library           |
+---------------------------+
| - libraryId : int         |
| - name : String           |
| - address : String        |
+---------------------------+
| + addMember() : void      |
| + addBook() : void        |
| + searchBook() : Book     |
+---------------------------+
```

---

# 5. Relationships Between Classes

Now we identify how the classes are related.

```text id="8p8q74"
                     +-------------+
                     |   Library   |
                     +-------------+
                       /          \
                      /            \
                     /              \
                    ↓                ↓
              +----------+      +----------+
              |   Book   |      |  Member  |
              +----------+      +----------+
                    ↑                |
                    |                |
                    |    borrows     |
                    +----------------+
                    
              +-------------+
              |  Librarian  |
              +-------------+
                     |
                  manages
                     |
                     ↓
                   Book
```

---

# 6. Complete Sample Class Model

A simplified UML class model can be represented as:

```text id="n7ps0b"
                         +----------------+
                         |    Library     |
                         +----------------+
                         | libraryId      |
                         | name           |
                         | address        |
                         +----------------+
                         | addBook()      |
                         | addMember()    |
                         | searchBook()   |
                         +----------------+
                           /            \
                          /              \
                       contains        registers
                        /                  \
                       ↓                    ↓
                +------------+       +-------------+
                |    Book    |       |   Member    |
                +------------+       +-------------+
                | bookId     |       | memberId    |
                | title      |       | name        |
                | author     |       | phone       |
                +------------+       +-------------+
                | issue()    |       | borrowBook()|
                | returnBook()|      | returnBook()|
                +------------+       +-------------+
                       ↑                    |
                       |                    |
                       | borrows            |
                       +--------------------+
                       
                +---------------+
                |   Librarian   |
                +---------------+
                | employeeId    |
                | name          |
                +---------------+
                | addBook()     |
                | removeBook()  |
                | issueBook()   |
                +---------------+
                       |
                    manages
                       ↓
                     Book
```

---

# Steps to Create a Class Model

When creating a class model, follow these steps:

### Step 1 — Identify Classes

Identify important entities from the problem domain.

Example:

```text
Library
Book
Member
Librarian
```

### Step 2 — Identify Attributes

Determine the important data associated with each class.

Example:

```text
Book
----
bookId
title
author
```

### Step 3 — Identify Operations

Determine what each class can do.

Example:

```text
Book
----
issue()
returnBook()
```

### Step 4 — Identify Relationships

Determine how classes are connected.

Example:

```text
Member -------- borrows -------- Book
```

### Step 5 — Add Multiplicity

Specify how many objects can participate.

Example:

```text
Member 1 -------- 0..* Book
```

This indicates that one member may borrow zero or many books.

---

# Important UML Elements in a Class Model

| Element           | Meaning                              |
| ----------------- | ------------------------------------ |
| Class             | Represents a type of object          |
| Attribute         | Represents data/state                |
| Operation         | Represents behavior                  |
| Association       | Relationship between classes         |
| Generalization    | Inheritance relationship             |
| Multiplicity      | Number of participating objects      |
| Association Class | Class representing relationship data |

---

# ⭐ Exam Answer

### What is a Sample Class Model?

> A class model is a representation of the static structure of an object-oriented system. It identifies the classes, their attributes, operations, and relationships. For example, in a Library Management System, classes such as `Library`, `Book`, `Member`, and `Librarian` can be identified and their relationships can be represented using a UML class diagram.

### Example

```text id="a9r6zj"
Library
   |
   +------ Book
   |
   +------ Member
   |
   +------ Librarian

Member -------- borrows -------- Book
Librarian ----- manages -------- Book
```

### Conclusion

> A sample class model provides a **blueprint of the system's static structure** and helps developers understand the classes and relationships before implementation.

**PYQ Status: ❌ No direct PYQ**
