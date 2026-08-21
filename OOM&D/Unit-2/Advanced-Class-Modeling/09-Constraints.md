# 8. CONSTRAINTS

## 1. Definition of Constraint

A **constraint** is a condition, rule, or restriction imposed on an element of a UML model that specifies what is **permitted or not permitted** in the system.

In UML, constraints are generally represented using **curly brackets `{ }`**.

### Example

```text
+----------+                    +----------+
| Student  |--------------------| Course   |
+----------+                    +----------+
              {maximum = 6}
```

This means that a student can be associated with a maximum of 6 courses.

### Exam Definition

> **A constraint is a semantic condition or restriction applied to a UML model element that must be satisfied for the model to be valid. Constraints are generally represented within curly braces `{ }`.**

---

# 2. Need for Constraints

Constraints are required because UML diagrams alone cannot express every business rule of a system.

They are used to:

1. Specify restrictions on objects and relationships.
2. Define business rules.
3. Restrict the number of relationships.
4. Specify conditions for valid relationships.
5. Define rules for inheritance/generalization.
6. Prevent invalid states in the system.
7. Make the UML model more precise and unambiguous.

### Example

A simple association:

```text
Customer ---------------- Order
```

does not tell us how many orders a customer can place.

A constraint can specify:

```text
Customer ---------------- Order
             {maximum = 10}
```

Now the rule is explicitly represented.

---

# 3. Representation of Constraints

A constraint is generally represented as:

```text
{ constraint-expression }
```

Examples:

```text
{age >= 18}

{salary > 0}

{maximum = 5}

{unique}

{ordered}
```

The expression inside `{ }` describes the rule that must be satisfied.

---

# 4. Types of Constraints

For the SPPU syllabus and PYQs, the two most important categories are:

```text
                    CONSTRAINTS
                         |
             +-----------+-----------+
             |                       |
             ↓                       ↓
   Generalization Set             Links
      Constraints             Constraints
```

### Generalization Set Constraints

Important constraints:

1. Disjoint
2. Overlapping
3. Complete
4. Incomplete

### Link Constraints

These specify restrictions on relationships between objects.

Examples include:

* Multiplicity restrictions
* Minimum/maximum links
* Unique links
* Ordered links
* Conditional relationships

---

# 5. Constraints on Generalization Sets

## Definition

A **generalization set** is a collection of generalization relationships that connects a superclass with a set of subclasses.

Constraints can be applied to a generalization set to specify **how objects can belong to the subclasses**.

The four important constraints are:

```text
Generalization Set
        |
        +---- Disjoint
        |
        +---- Overlapping
        |
        +---- Complete
        |
        +---- Incomplete
```

---

# 6. Disjoint Constraint

## Definition

A **disjoint** constraint means that an instance of the superclass can belong to **only one subclass** in the generalization set.

In other words:

> One object cannot simultaneously belong to two or more subclasses of the same disjoint generalization set.

---

## Diagram

```text
                         +-------------+
                         |   Employee  |
                         +-------------+
                                |
                           {disjoint}
                          /           \
                         /             \
                +-------------+   +-------------+
                |   Manager   |   |  Engineer   |
                +-------------+   +-------------+
```

Here, an Employee can be either:

* Manager

OR

* Engineer

but not both simultaneously.

---

## Real-World Example

Consider a banking system:

```text
                         Account
                            |
                        {disjoint}
                       /          \
                      /            \
               Savings          Current
                Account           Account
```

A particular account is classified as either a Savings Account or Current Account.

---

## Exam Point

**Disjoint = only one subclass**

Remember:

> **Disjoint → ONE**

---

# 7. Overlapping Constraint

## Definition

An **overlapping** constraint means that an instance of the superclass can belong to **more than one subclass simultaneously**.

---

## Diagram

```text
                         +-------------+
                         |    Person   |
                         +-------------+
                                |
                         {overlapping}
                          /           \
                         /             \
                +-------------+   +-------------+
                |   Student   |   |  Employee   |
                +-------------+   +-------------+
```

A person can be both:

```text
Student + Employee
```

at the same time.

---

## Real-World Example

Suppose a university student works as a part-time employee.

```text
                         Person
                           |
                     {overlapping}
                       /       \
                      /         \
                 Student      Employee
                     \          /
                      \        /
                       Same Person
```

The same person belongs to both subclasses.

---

## Exam Point

**Overlapping = multiple subclasses**

Remember:

> **Overlapping → MANY**

---

# 8. Complete Constraint

## Definition

A **complete** constraint means that **every instance of the superclass must belong to at least one of the subclasses** defined in the generalization set.

In other words:

> There cannot be an instance of the superclass that does not belong to any subclass in the generalization set.

---

## Diagram

```text
                         +-------------+
                         |   Vehicle   |
                         +-------------+
                                |
                           {complete}
                          /          \
                         /            \
                        /              \
                +-------------+   +-------------+
                |     Car     |   |    Bike     |
                +-------------+   +-------------+
```

If the generalization is complete:

```text
Every Vehicle
      ↓
Must be
      ↓
Car OR Bike
```

---

## Example

Suppose a system defines Vehicle into only:

* Car
* Bike

With a **complete** constraint, every Vehicle must be either a Car or Bike.

There cannot be:

```text
Vehicle → Other type
```

outside the specified subclasses.

---

## Exam Point

**Complete = all superclass instances are covered**

Remember:

> **Complete → ALL**

---

# 9. Incomplete Constraint

## Definition

An **incomplete** constraint means that some instances of the superclass **may not belong to any of the specified subclasses**.

In other words:

> The subclasses do not necessarily represent all possible types of the superclass.

---

## Diagram

```text
                         +-------------+
                         |   Employee  |
                         +-------------+
                                |
                          {incomplete}
                          /           \
                         /             \
                +-------------+   +-------------+
                |   Manager   |   |  Engineer   |
                +-------------+   +-------------+

                         +
                         |
                  Other Employees
```

An Employee can be:

* Manager
* Engineer
* Or another type not represented by these subclasses.

---

## Example

Suppose an organization has:

```text
Employee
   |
   +---- Manager
   +---- Engineer
   +---- Accountant
   +---- HR
```

If the UML diagram only models Manager and Engineer, the generalization is **incomplete** because other types of employees may exist.

---

## Exam Point

**Incomplete = not all superclass instances are covered**

Remember:

> **Incomplete → SOME may remain**

---

# 10. Complete vs Incomplete

| Complete                                      | Incomplete                                           |
| --------------------------------------------- | ---------------------------------------------------- |
| Every superclass object belongs to a subclass | Some superclass objects may not belong to a subclass |
| All possible categories are represented       | Not all categories are represented                   |
| No unspecified type is allowed                | Unspecified types may exist                          |
| Example: Vehicle → Car/Bike                   | Example: Employee → Manager/Engineer                 |

### Easy Memory Trick

```text
COMPLETE
   ↓
ALL covered

INCOMPLETE
   ↓
SOME may remain
```

---

# 11. Disjoint vs Overlapping

| Disjoint                            | Overlapping                              |
| ----------------------------------- | ---------------------------------------- |
| Object belongs to only one subclass | Object can belong to multiple subclasses |
| Subclasses are mutually exclusive   | Subclasses can overlap                   |
| Example: Savings OR Current         | Example: Student AND Employee            |
| ONE                                 | MANY                                     |

### Easy Memory Trick

```text
DISJOINT
   ↓
ONE

OVERLAPPING
   ↓
MANY
```

---

# 12. Four Generalization Set Constraints Together

```text
                    GENERALIZATION SET
                           |
                 +---------+---------+
                 |                   |
          Membership Rule       Coverage Rule
                 |                   |
          +------+------+       +----+----+
          |             |       |         |
       Disjoint     Overlapping Complete Incomplete
          |             |       |         |
         ONE           MANY     ALL       SOME
```

This diagram is useful for **last-minute revision**.

---

# 13. Constraints on Links

## Definition

A **link** represents a connection between two objects.

A **constraint on a link** specifies a condition or restriction that controls how objects can be connected.

---

## Basic Example

```text
+----------+                    +----------+
| Student  |--------------------| Course   |
+----------+                    +----------+
```

The association only tells us that Student and Course are related.

A constraint gives additional information:

```text
+----------+                    +----------+
| Student  |--------------------| Course   |
+----------+                    +----------+
              {maximum = 6}
```

Meaning:

> A student can enroll in a maximum of six courses.

---

# 14. Types / Examples of Link Constraints

## A. Maximum Constraint

Specifies the maximum number of relationships allowed.

### Example

```text
Student ---------------- Course
             {maximum = 6}
```

Meaning:

> One student can enroll in at most six courses.

---

# 15. Minimum Constraint

Specifies the minimum number of relationships that must exist.

### Example

```text
Employee ---------------- Department
              {minimum = 1}
```

Meaning:

> Every employee must be associated with at least one department.

---

# 16. Unique Constraint

A **unique** constraint ensures that a particular relationship/value does not contain duplicate occurrences.

### Example

```text
Student ---------------- StudentID
             {unique}
```

This means every Student must have a unique Student ID.

---

# 17. Ordered Constraint

An **ordered** constraint indicates that associated objects must be maintained in a particular order.

### Example

Consider a playlist:

```text
Playlist ---------------- Song
             {ordered}
```

The songs have a specific order:

```text
1 → Song A
2 → Song B
3 → Song C
```

The order of associated objects is significant.

---

# 18. Conditional Constraint

A conditional constraint specifies that a relationship is allowed only when a particular condition is satisfied.

### Example

```text
Customer ---------------- Order
          {account = active}
```

Meaning:

> A customer can place an order only if the customer's account is active.

---

# 19. Link Constraint — Practical Example

Consider a college library.

A student can borrow books.

```text
+----------+                  +--------+
| Student  |------------------|  Book  |
+----------+                  +--------+
             {maximum = 3}
```

This means:

> A student can borrow a maximum of 3 books at a time.

If the student already has three books:

```text
Book 1
Book 2
Book 3
  ↓
Maximum reached
  ↓
Cannot borrow another book
```

Thus, the constraint represents an actual business rule of the system.

---

# 20. Difference: Generalization Set vs Link Constraints

| Generalization Set                 | Link                          |
| ---------------------------------- | ----------------------------- |
| Applied to inheritance hierarchy   | Applied to relationships      |
| Controls subclass membership       | Controls object connections   |
| Deals with superclass/subclasses   | Deals with associated objects |
| Disjoint                           | Minimum/maximum               |
| Overlapping                        | Unique                        |
| Complete                           | Ordered                       |
| Incomplete                         | Conditional                   |
| Example: Person → Student/Employee | Example: Student → Course     |

---

# PYQ 1 — SEPT 2023

## Question

> **“Write a short note on: Package, Derived data, Constraints.” — 5 Marks**

### What to Write for Constraints

Because this is a short-note question, focus on:

1. Definition
2. Purpose
3. UML notation
4. Types
5. One example

---

## Exam Answer

> **Constraint** is a condition or restriction applied to a UML model element that specifies rules that must be satisfied. It is generally represented using curly brackets `{ }`.
>
> Constraints are used to make the model more precise, specify business rules, restrict relationships, and prevent invalid states.
>
> Important constraints include constraints on **generalization sets** and **links**. Generalization constraints include **disjoint, overlapping, complete, and incomplete**. Link constraints specify restrictions such as minimum, maximum, unique, ordered, or conditional relationships.
>
> For example, if a student can enroll in a maximum of six courses:
>
> ```text
> Student ---------------- Course
>              {maximum = 6}
> ```
>
> Thus, constraints provide additional rules and restrictions that cannot be completely represented by the basic UML diagram.

### Marks Distribution — Approximate

```text
Definition                  → 1 mark
Purpose                     → 1 mark
Types                       → 1 mark
Notation                    → 0.5 mark
Example                     → 1 mark
Explanation/conclusion      → 0.5 mark
```

---

# PYQ 2 — AUG 2025

## Question

> **“Elaborate the following concepts of constraints:
> i) Constraints on Generalization Sets
> ii) Constraints on Links” — 5 Marks**

This is the **most important PYQ for this concept**.

---

# Exam-Oriented Answer

## i) Constraints on Generalization Sets

A generalization set represents a group of subclasses derived from a common superclass. Constraints on a generalization set specify how instances of the superclass can be distributed among its subclasses.

The four important constraints are:

### 1. Disjoint

An instance can belong to only one subclass.

```text
              Employee
                  |
             {disjoint}
              /       \
         Manager    Engineer
```

**Example:** An employee is either a Manager or Engineer, but not both.

---

### 2. Overlapping

An instance can belong to more than one subclass.

```text
               Person
                  |
            {overlapping}
              /       \
         Student     Employee
```

**Example:** A person can be both a Student and an Employee.

---

### 3. Complete

Every instance of the superclass must belong to at least one subclass.

```text
               Vehicle
                  |
             {complete}
              /       \
            Car       Bike
```

**Example:** Every Vehicle must be classified as either Car or Bike.

---

### 4. Incomplete

Some instances of the superclass may not belong to the specified subclasses.

```text
              Employee
                  |
             {incomplete}
              /       \
         Manager    Engineer

          Other employee
             types
              ↓
            allowed
```

**Example:** An Employee can be Manager, Engineer, or another type not shown in the diagram.

---

# ii) Constraints on Links

A link represents a relationship between two objects. Constraints on links specify restrictions or conditions that must be satisfied by the relationship.

### Example

```text
Student ---------------- Course
             {maximum = 6}
```

This specifies that a student can enroll in a maximum of six courses.

Other examples include:

```text
{minimum = 1}
{maximum = 5}
{unique}
{ordered}
{account = active}
```

Therefore, link constraints are used to represent business rules and restrictions on relationships between objects.

---

# Complete 5-Mark Answer

> **Constraints** are conditions or restrictions imposed on UML model elements to specify rules that must be satisfied. They are generally represented using curly brackets `{ }`.
>
> **i) Constraints on Generalization Sets:**
> A generalization set represents a collection of subclasses derived from a common superclass. The important constraints are:
>
> **Disjoint:** An object can belong to only one subclass.
>
> ```text
>             Employee
>                 |
>            {disjoint}
>             /       \
>        Manager     Engineer
> ```
>
> **Overlapping:** An object can belong to more than one subclass.
>
> ```text
>              Person
>                 |
>           {overlapping}
>             /       \
>        Student     Employee
> ```
>
> **Complete:** Every superclass object must belong to at least one subclass.
>
> **Incomplete:** Some superclass objects may not belong to the specified subclasses.
>
> **ii) Constraints on Links:**
> A link represents a relationship between objects. Constraints on links specify restrictions such as minimum, maximum, uniqueness, ordering, or conditions on the relationship.
>
> Example:
>
> ```text
> Student ---------------- Course
>              {maximum = 6}
> ```
>
> This means that a student can enroll in a maximum of six courses.
>
> Hence, constraints make UML models precise by representing rules and restrictions of the system.

---

# 21. How to Draw the Diagrams in the Exam

For the **Aug 2025 PYQ**, don't waste time drawing four large diagrams.

Use this compact representation:

```text
GENERALIZATION SET CONSTRAINTS

                 Employee
                    |
             {disjoint}
              /       \
          Manager    Engineer


                  Person
                    |
             {overlapping}
              /       \
          Student    Employee


                  Vehicle
                    |
               {complete}
               /        \
             Car        Bike


                 Employee
                    |
              {incomplete}
               /        \
           Manager     Engineer
```

Then draw one link example:

```text
+----------+                    +----------+
| Student  |--------------------| Course   |
+----------+                    +----------+
             {maximum = 6}
```

This is **more than enough diagram support for a 5-mark answer**.

---

# 22. Most Important Things to Memorize

### Definition

> Constraint = condition/rule/restriction on a UML model element.

### Generalization Set

```text
Disjoint     → ONE
Overlapping  → MANY
Complete     → ALL
Incomplete   → SOME
```

### Link

```text
Link constraint
       ↓
Restriction on relationship
       ↓
Minimum / Maximum / Unique /
Ordered / Conditional
```

### Most Important Example

```text
Student -------- Course
          {maximum = 6}
```

### PYQ Priority

| PYQ                                        | Importance |
| ------------------------------------------ | ---------- |
| **Aug 2025 — Generalization Sets + Links** | 🔥🔥🔥🔥🔥 |
| **Sept 2023 — Short note on Constraints**  | 🔥🔥🔥     |

---

# 23. One-Minute Revision

> **Constraints are rules or restrictions applied to UML elements.**

```text
                     CONSTRAINTS
                          |
              +-----------+-----------+
              |                       |
       Generalization                Links
              |                       |
       +------+------+          Relationship
       |      |      |           restrictions
    Disjoint Overlap  Complete
                 \       /
                 Incomplete
```

### Remember:

**D → ONE**
**O → MANY**
**C → ALL**
**I → SOME**

**D-O-C-I = Disjoint, Overlapping, Complete, Incomplete**

---

## Final Exam Strategy

For a **5-mark constraint question**, structure your answer as:

1. **Definition — 2–3 lines**
2. **Purpose — 3–4 points**
3. **Types — headings**
4. **Explain each type**
5. **Draw UML diagram**
6. **Give one real-world example**
7. **Conclude in 1 line**

This structure makes the answer **theory-heavy, diagram-supported, and easy for the examiner to award marks**.
