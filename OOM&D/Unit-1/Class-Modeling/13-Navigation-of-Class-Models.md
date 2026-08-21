# 13. Navigation of Class Models

## Definition

**Navigation** in a class model specifies **how an object can access or reach another related object through an association**.

In simple words:

> **Navigation tells us in which direction an association can be traversed.**

It is useful for determining **which object knows about or can access the other object**.

---

# Simple Example

Consider:

```text id="g7v0q2"
Student -------- enrolls -------- Course
```

If a `Student` object can access its enrolled `Course` objects, the association is navigable from `Student` to `Course`.

```text id="2x3w8v"
Student ---------------------> Course
          navigates to
```

The arrow indicates the **direction of navigation**.

---

# 1. Unidirectional Navigation

When navigation is possible in **only one direction**, it is called **unidirectional navigation**.

### Example

```text id="0d0e3m"
Student ---------------------> Course
```

This means:

```text
Student → Course
```

A `Student` can access a `Course`, but the `Course` does not necessarily have a direct reference to the `Student`.

### Real-World Example

```text id="2q3z4k"
Customer ---------------------> Order
```

A customer can access their orders.

---

# 2. Bidirectional Navigation

When objects can navigate the association **in both directions**, it is called **bidirectional navigation**.

### Example

```text id="y8xw6q"
Student <--------------------> Course
```

This means:

```text
Student → Course
Course  → Student
```

Both objects can access the other.

### Real-World Example

```text id="h8j5cq"
Teacher <--------------------> Student
```

A teacher can access students, and students can access their teacher.

---

# 3. Navigation and Association

Navigation is associated with an **association between classes**.

Example:

```text id="1q4y2j"
Customer ---------------------> Order
```

Here:

* `Customer` and `Order` are classes.
* The line represents an association.
* The arrow indicates navigation direction.

Therefore:

> **Association tells us that two classes are related, while navigation tells us how that relationship can be traversed.**

---

# 4. Navigation in UML

In UML, navigation can be shown using an **arrowhead** at the navigable end of an association.

### Unidirectional

```text id="d3zqk2"
Customer ---------------------> Order
```

### Bidirectional

```text id="v8r6tt"
Customer <---------------------> Order
```

---

# 5. Navigation with Multiplicity

Navigation can be combined with multiplicity.

Example:

```text id="a5r8m2"
Customer 1 --------------------> 0..* Order
```

This means:

* One `Customer` can navigate to multiple `Order` objects.
* A customer may have zero or more orders.

Another example:

```text id="j5y4d7"
Department 1 --------------------> 0..* Employee
```

A department can access its employees.

---

# 6. Navigation in Programming

Navigation in UML can be implemented using **object references**.

For example:

```java id="n5l0d3"
class Customer {

    List<Order> orders;

    public List<Order> getOrders() {
        return orders;
    }
}
```

Here:

```text id="f5x9pk"
Customer
   |
   ↓
orders
   |
   ↓
Order objects
```

The `Customer` object can navigate to its `Order` objects.

---

# 7. Why is Navigation Important?

### 1. Defines Accessibility

It tells us which object can access another object.

### 2. Helps Design Object Relationships

It makes the direction of relationships clear.

### 3. Helps Implementation

Developers can determine where object references should be maintained.

### 4. Reduces Unnecessary Dependencies

Not every relationship needs to be navigable in both directions.

### 5. Improves System Design

Proper navigation helps create a cleaner and more manageable object structure.

---

# Navigation vs Association

| Association                            | Navigation                                |
| -------------------------------------- | ----------------------------------------- |
| Defines a relationship between classes | Defines how the relationship is traversed |
| Does not necessarily specify direction | Specifies direction of access             |
| Example: `Customer — Order`            | Example: `Customer → Order`               |
| Describes relationship                 | Describes accessibility                   |

---

# ⭐ Exam Answer

### Question: Explain Navigation of Class Models.

> **Navigation of a class model specifies the direction in which an object can access another related object through an association.** It determines how an association is traversed between objects.
>
> Navigation can be:
>
> **1. Unidirectional:** Objects can navigate in only one direction.
>
> ```text
> Student ---------------------> Course
> ```
>
> **2. Bidirectional:** Objects can navigate in both directions.
>
> ```text
> Student <--------------------> Course
> ```
>
> Navigation is important because it defines object accessibility, helps in implementing object references, reduces unnecessary dependencies, and improves the design of the system.

---

## ⭐ Easy Memory Trick

```text id="f3k2zq"
Association
    ↓
"Are these classes related?"

Navigation
    ↓
"Who can access whom?"

Unidirectional
    ↓
A → B

Bidirectional
    ↓
A ↔ B
```

**PYQ Status: ❌ No PYQ**
