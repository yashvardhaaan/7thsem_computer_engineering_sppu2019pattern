# 10. Link and Association Concepts

## 1. Link

A **link** is a connection between **two or more objects**.

It represents a relationship between specific object instances at a particular point in time.

### Example

Suppose:

* `s1` is a Student object.
* `b1` is a Book object.

If student `s1` has borrowed book `b1`, then a link exists between them.

```text
s1 : Student ---------------- b1 : Book
              borrows
```

Here, `s1` and `b1` are **objects**, and `borrows` is the **link** between them.

### Key Point

> **Link = Relationship between objects.**

---

# 2. Association

An **association** is a relationship between **classes** that describes how objects of those classes can be related.

### Example

```text
+-----------+       borrows       +-----------+
|  Student  | ------------------- |   Book    |
+-----------+                     +-----------+
```

Here:

* `Student` is a class.
* `Book` is a class.
* `borrows` is an association.

At runtime, specific objects form links based on this association.

```text
Class Level:
Student -------- borrows -------- Book
     Association

Object Level:
s1 : Student ---- borrows ---- b1 : Book
             Link
```

---

# 3. Link vs Association

This distinction is **extremely important** because it appeared directly in the PYQs.

| Link                                      | Association                                    |
| ----------------------------------------- | ---------------------------------------------- |
| Connects objects                          | Connects classes                               |
| Represents an instance-level relationship | Represents a class-level relationship          |
| Exists between specific objects           | Defines possible relationships between objects |
| Example: `s1` borrows `b1`                | `Student` borrows `Book`                       |
| Used in object diagrams                   | Used in class diagrams                         |

### Easy Memory Trick

```text
Association → Class ↔ Class
Link        → Object ↔ Object
```

---

# 4. Multiplicity

An association can specify **how many objects** can participate in a relationship.

Common multiplicities are:

| Multiplicity | Meaning      |
| ------------ | ------------ |
| `1`          | Exactly one  |
| `0..1`       | Zero or one  |
| `*`          | Many         |
| `1..*`       | One or more  |
| `0..*`       | Zero or more |

### Example

```text
Student 1 -------- borrows -------- 0..* Book
```

This means a student can borrow zero or many books.

---

# 5. Association Class

An **association class** is used when an association itself needs to have **attributes or operations**.

This is one of the most important concepts in this topic because it appeared in **Aug 2024 and Oct 2022**.

### Problem

Consider:

```text
Student -------- enrolls -------- Course
```

Suppose we need to store information about the enrollment itself:

* Enrollment Date
* Grade
* Semester

These details do not belong naturally to `Student` or `Course`.

They belong to the **relationship between them**.

Therefore, we create an **association class** called `Enrollment`.

```text
+-----------+                  +-----------+
|  Student  |                  |  Course   |
+-----------+                  +-----------+
      \                            /
       \        enrolls           /
        \                        /
         +----------------------+
         |      Enrollment      |
         +----------------------+
         | enrollmentDate       |
         | grade                |
         | semester             |
         +----------------------+
```

---

# Example of Association Class

Consider a college system.

```text
Student -------- Enrollment -------- Course
```

### Student

```text
Student
--------
studentId
name
```

### Course

```text
Course
--------
courseId
name
```

### Enrollment

```text
Enrollment
-----------
date
semester
grade
```

The `Enrollment` class stores information about the **association between Student and Course**.

---

# 6. When Do We Need an Association Class?

Use an association class when:

> **The relationship itself has attributes or behavior that need to be represented.**

### Without Association Class

```text
Student -------- enrolls -------- Course
```

If the relationship has no additional information, a normal association is enough.

### With Association Class

```text
Student -------- enrolls -------- Course
                  |
                  ↓
              Enrollment
              - date
              - grade
              - semester
```

---

# PYQ 1 — Sept 2023

### Question

> **Difference between link and association with suitable example.** — 5 marks

### Answer

A **link** is a relationship between specific objects, whereas an **association** is a relationship between classes.

| Link                               | Association                     |
| ---------------------------------- | ------------------------------- |
| Exists between objects             | Exists between classes          |
| Instance-level relationship        | Class-level relationship        |
| Represents a specific relationship | Defines a possible relationship |
| Shown in object diagrams           | Shown in class diagrams         |

### Example

Association:

```text
Student -------- borrows -------- Book
```

Link:

```text
s1 : Student -------- borrows -------- b1 : Book
```

Therefore:

> **Association defines the relationship between classes, while a link represents that relationship between particular objects.**

---

# PYQ 2 — Aug 2025

### Question

> **Write a short note on: i) Links and Associations ii) Generalization and Inheritance** — 5 marks

### Answer — Links and Associations

A **link** is a connection between two or more objects and represents a specific relationship between object instances.

An **association** is a relationship between two or more classes that defines how their objects can be related.

Example:

```text
Class Level:
Student -------- borrows -------- Book
             Association

Object Level:
s1 : Student ---- borrows ---- b1 : Book
                 Link
```

Thus, an association is defined at the **class level**, while a link exists at the **object level**.

---

# PYQ 3 — Aug 2024

### Question

> **Explain concept of association class with an example.** — 5 marks

### Answer

An **association class** is a class attached to an association when the relationship itself needs to store additional information.

For example, consider `Student` and `Course`.

```text
Student -------- enrolls -------- Course
                    |
                    |
               Enrollment
               ----------
               date
               grade
               semester
```

Here, `date`, `grade`, and `semester` describe the **enrollment relationship**, not simply the Student or Course.

Therefore, `Enrollment` is modeled as an **association class**.

### Conclusion

> An association class is useful when an association requires its own **attributes or operations**.

---

# PYQ 4 — Oct 2022

### Question

> **What do you mean by Association class?** — 4 marks

### Short Answer

An **association class** is a class that represents an association between two classes when the association itself has attributes or operations.

### Example

```text
Student -------- Course
     \            /
      \          /
       Enrollment
       ----------
       date
       grade
```

Here, `Enrollment` stores information about the relationship between `Student` and `Course`.

---

# ⭐ Exam Shortcut

Remember these three:

```text
Association
     ↓
Class ↔ Class

Link
     ↓
Object ↔ Object

Association Class
     ↓
Relationship + Its Own Attributes
```

### Most Important Example

```text
Student -------- Course
      \          /
       \        /
       Enrollment
       ----------
       date
       grade
```

**PYQ Status: 🔥🔥🔥 EXTREMELY IMPORTANT**
