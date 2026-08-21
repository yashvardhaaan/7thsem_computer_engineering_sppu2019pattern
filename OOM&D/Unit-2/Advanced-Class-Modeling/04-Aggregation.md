# UNIT II — Advanced Class Modeling and State Modeling

# 04 — Aggregation

## 1. Introduction

**Aggregation** is a special type of association that represents a **whole-part relationship** between classes.

In aggregation, one class represents the **whole** and another class represents a **part** of that whole.

The important characteristic of aggregation is:

> The parts can exist independently of the whole.

### Example

A university contains departments.

```text
+-------------+       ◇       +------------+
| University  |---------------| Department |
+-------------+               +------------+
       Whole                       Part
```

The hollow diamond `◇` represents **aggregation**.

A department can conceptually exist independently of a particular university.

---

# 2. Definition of Aggregation

> Aggregation is a special form of association that represents a whole-part relationship in which the parts can exist independently of the whole.

### UML Symbol

Aggregation is represented by a **hollow diamond**:

```text
◇
```

The diamond is placed near the **whole** class.

### Example

```text
University ◇──────── Department
```

Here:

- `University` → Whole
- `Department` → Part
- `◇` → Aggregation

---

# 3. Whole-Part Relationship

Aggregation represents a relationship of the form:

```text
Whole
  |
  +---- Part
  |
  +---- Part
  |
  +---- Part
```

### Example

```text
Car
 |
 +---- Engine
 |
 +---- Wheel
 |
 +---- Seat
```

The car is the whole and engine, wheels, and seats are its parts.

---

# 4. Important Characteristics of Aggregation

The main characteristics are:

1. Represents a **whole-part** relationship.
2. Uses a **hollow diamond** in UML.
3. The diamond is placed near the whole.
4. Parts can exist independently of the whole.
5. A part may potentially participate in more than one whole.
6. It is weaker than composition.
7. It is a special form of association.

---

# 5. Example — University and Department

Consider a university containing departments.

```text
+-------------+       ◇       +-------------+
| University  |---------------| Department  |
+-------------+               +-------------+
```

Here:

- `University` is the whole.
- `Department` is the part.
- The hollow diamond represents aggregation.
- The department can exist independently of a particular university.

---

# 6. Example — Team and Player

A sports team consists of players.

```text
+----------+       ◇       +----------+
|   Team   |---------------|  Player  |
+----------+               +----------+
```

Here:

- `Team` → Whole
- `Player` → Part

A player can exist even if the particular team is dissolved or changed.

Therefore, this can represent aggregation.

---

# 7. Example — Library and Books

A library contains books.

```text
+----------+       ◇       +----------+
| Library  |---------------|   Book   |
+----------+               +----------+
```

Here:

- `Library` is the whole.
- `Book` is the part.
- A book can exist independently of the library.

Therefore, aggregation is appropriate.

---

# 8. Aggregation vs Normal Association

Aggregation is a special type of association.

### Normal Association

```text
Customer ---------------- Order
```

This simply represents a relationship.

### Aggregation

```text
Library ◇---------------- Book
```

This specifically represents a **whole-part** relationship.

### Difference

| Association | Aggregation |
|---|---|
| General relationship | Whole-part relationship |
| No ownership implied | Represents a whole and its parts |
| Uses normal line | Uses hollow diamond |
| Example: Customer — Order | Example: Library ◇— Book |

---

# 9. Aggregation vs Composition

Aggregation and composition are both whole-part relationships, but their ownership and lifecycle behavior are different.

## Aggregation

In aggregation:

> Parts can exist independently of the whole.

```text
Team ◇──────── Player
```

If the team is removed, players can still exist.

---

## Composition

In composition:

> Parts strongly depend on the whole for their existence.

```text
House ◆──────── Room
```

If the house is destroyed in the modeled lifecycle, its rooms do not independently exist as parts of that house.

The black diamond `◆` represents composition.

---

# 10. UML Symbols

### Aggregation

```text
◇
```

Hollow diamond.

### Composition

```text
◆
```

Filled diamond.

### Example

```text
Aggregation:

University ◇──────── Department


Composition:

House ◆──────── Room
```

---

# 11. Aggregation and Object Lifecycle

One of the most important differences between aggregation and composition is the **lifecycle of the parts**.

### Aggregation

```text
Whole destroyed
       |
       v
Part can still exist
```

Example:

```text
Team ◇──────── Player
```

If the team is dissolved:

```text
Player → Still exists
```

---

### Composition

```text
Whole destroyed
       |
       v
Part is also destroyed
```

Example:

```text
House ◆──────── Room
```

The room is considered part of the house and has a dependent lifecycle.

---

# 12. Aggregation Example — Computer System

A computer system can contain components.

```text
+----------+       ◇       +----------+
| Computer |---------------| Keyboard |
+----------+               +----------+

+----------+       ◇       +----------+
| Computer |---------------|  Monitor |
+----------+               +----------+
```

The components can exist independently of a particular computer.

---

# 13. Aggregation Example — Department and Professor

A department contains professors.

```text
+------------+       ◇       +-----------+
| Department |---------------| Professor |
+------------+               +-----------+
```

A professor can exist independently of the department.

The professor may later move to another department.

---

# 14. Aggregation with Multiplicity

Aggregation can also use multiplicity.

### Example

```text
+-------------+                         +------------+
| University  |◇------------------------| Department |
+-------------+          1              +------------+
                           1..*
```

Interpretation:

> One university contains one or more departments.

Another example:

```text
Team 1 ◇──────── 0..* Player
```

Meaning:

> A team can have zero or more players.

---

# 15. Strong vs Weak Ownership

Aggregation represents **weak ownership**.

```text
Whole
  |
  | weak ownership
  v
Part
```

Composition represents **strong ownership**.

```text
Whole
  |
  | strong ownership
  v
Part
```

### Easy Memory Trick

```text
Aggregation  → Weak ownership
Composition  → Strong ownership
```

---

# 16. Important Examples

### Aggregation Examples

Common examples include:

```text
University ◇── Department

Team ◇── Player

Library ◇── Book

Company ◇── Employee

Computer ◇── Keyboard

Department ◇── Professor
```

The important point is that the part can exist independently of the whole.

---

# 17. Composition Examples

Common examples include:

```text
House ◆── Room

Order ◆── OrderItem

Document ◆── Paragraph

Car ◆── Engine
```

The parts are strongly dependent on the whole in the modeled lifecycle.

---

# 18. Aggregation vs Composition — Detailed Comparison

| Feature | Aggregation | Composition |
|---|---|---|
| Relationship | Whole-part | Whole-part |
| Diamond | Hollow `◇` | Filled `◆` |
| Ownership | Weak | Strong |
| Part independent? | Yes | Generally no |
| Lifecycle dependency | Weak/none | Strong |
| Sharing | Parts may be shared | Parts normally belong to one whole |
| Example | Team ◇— Player | House ◆— Room |

---

# 19. Aggregation vs Composition — Easy Example

Consider a **team and player**.

```text
Team ◇──────── Player
```

If the team is dissolved:

```text
Team → Destroyed
Player → Still exists
```

This is aggregation.

Now consider a **house and room**:

```text
House ◆──────── Room
```

The room is modeled as a component of the house.

This is composition.

---

# 20. When to Use Aggregation

Use aggregation when:

- There is a whole-part relationship.
- The part can exist independently.
- The whole does not completely control the lifecycle of the part.
- The relationship represents weak ownership.

### Example

```text
Library ◇──────── Book
```

A book can exist even if it is removed from the library.

---

# 21. When to Use Composition

Use composition when:

- There is a strong whole-part relationship.
- The part is dependent on the whole.
- The whole controls the lifecycle of the part.
- The part normally belongs to only one whole.

### Example

```text
Order ◆──────── OrderItem
```

An order item is normally meaningful as part of its order.

---

# 22. PYQ — October 2022

> **"Explain terms: i) Aggregation ii) Composition" — 5 marks**

## Answer

### i) Aggregation

Aggregation is a special type of association that represents a **whole-part relationship** where the parts can exist independently of the whole.

It is represented using a **hollow diamond `◇`**.

### Example

```text
University ◇──────── Department
```

Here:

- University is the whole.
- Department is the part.
- Department can exist independently of a particular university.

---

### ii) Composition

Composition is a strong form of whole-part relationship in which the parts are strongly dependent on the whole.

It is represented using a **filled diamond `◆`**.

### Example

```text
House ◆──────── Room
```

Here:

- House is the whole.
- Room is the part.
- The room is strongly dependent on the house in the modeled lifecycle.

### Main Difference

```text
Aggregation  → Weak ownership
Composition  → Strong ownership
```

---

# 23. PYQ — August 2024

> **"Differentiate between terms Aggregation & Composition." — 5 marks**

## Answer

| Aggregation | Composition |
|---|---|
| Represents a weak whole-part relationship | Represents a strong whole-part relationship |
| Uses hollow diamond `◇` | Uses filled diamond `◆` |
| Parts can exist independently | Parts are strongly dependent on the whole |
| Weak ownership | Strong ownership |
| Lifecycle of part is independent | Lifecycle of part depends strongly on whole |
| Parts may be shared | Parts normally belong to one whole |
| Example: Team ◇— Player | Example: House ◆— Room |

### Example

```text
Aggregation:

Team ◇──────── Player


Composition:

House ◆──────── Room
```

### Conclusion

> Aggregation represents weak ownership where parts can exist independently, whereas composition represents strong ownership where parts have a dependent lifecycle.

---

# 24. 5-Mark Answer Structure

If asked:

> **Explain Aggregation and Composition.**

Use this structure:

### Aggregation

1. Definition
2. Hollow diamond symbol
3. Whole-part relationship
4. Independent lifecycle
5. Example

```text
Team ◇──────── Player
```

### Composition

1. Definition
2. Filled diamond symbol
3. Strong whole-part relationship
4. Dependent lifecycle
5. Example

```text
House ◆──────── Room
```

### Finally

Write the difference:

```text
Aggregation → Weak ownership + Independent part
Composition → Strong ownership + Dependent part
```

---

# 25. Common Mistakes in Exam

### Mistake 1: Reversing the diamond

The diamond is placed near the **whole**, not the part.

Correct:

```text
University ◇──────── Department
```

Incorrect:

```text
University ────────◇ Department
```

if `Department` is intended to be the whole.

---

### Mistake 2: Confusing Aggregation and Composition

Remember:

```text
◇ → Aggregation
◆ → Composition
```

---

### Mistake 3: Saying aggregation means inheritance

Aggregation is **not inheritance**.

```text
Aggregation:
Whole ◇──── Part

Inheritance:
Child ─────|> Parent
```

---

# 26. Aggregation vs Inheritance

| Aggregation | Inheritance |
|---|---|
| Whole-part relationship | Is-a relationship |
| Uses diamond | Uses triangle arrow |
| Represents ownership/containment | Represents specialization |
| Example: Library ◇— Book | Example: Car —|> Vehicle |

### Memory Trick

```text
Aggregation → HAS-A
Inheritance → IS-A
```

---

# 27. Quick Revision

## Aggregation

```text
Special type of association
Whole-part relationship
Weak ownership
Independent parts
Hollow diamond
◇
```

## Composition

```text
Strong whole-part relationship
Strong ownership
Dependent parts
Filled diamond
◆
```

---

# 28. Exam Memory Trick

Remember:

```text
◇ Aggregation
  → Weak
  → Independent
  → HAS-A

◆ Composition
  → Strong
  → Dependent
  → Strong HAS-A
```

---

# 29. Important Definitions

### Aggregation

> Aggregation is a special form of association representing a whole-part relationship where the parts can exist independently of the whole.

### Composition

> Composition is a strong form of aggregation where the parts are strongly dependent on the whole and have a dependent lifecycle.

---

# 30. PYQ Priority

| Topic | Year | Marks | Priority |
|---|---|---:|---|
| Aggregation and Composition | Oct 2022 | 5 | 🔥🔥🔥 |
| Aggregation vs Composition | Aug 2024 | 5 | 🔥🔥🔥 |

---

# 31. Most Important Questions

1. **Explain the term Aggregation.**
2. **Explain the term Composition.**
3. **Differentiate between Aggregation and Composition.**
4. **Explain Aggregation and Composition with suitable examples.**
5. **Draw UML notation for Aggregation and Composition.**
6. **What is the difference between weak and strong ownership?**

---

# 32. Last-Minute Revision

```text
AGGREGATION
- Whole-part relationship
- Weak ownership
- Hollow diamond ◇
- Parts can exist independently
- Example: Team ◇── Player

COMPOSITION
- Strong whole-part relationship
- Strong ownership
- Filled diamond ◆
- Parts are strongly dependent on whole
- Example: House ◆── Room
```

## Most Important PYQs

### October 2022

> **"Explain terms: i) Aggregation ii) Composition" — 5 marks**

### August 2024

> **"Differentiate between terms Aggregation & Composition." — 5 marks**

## Must Memorize

```text
◇ = Aggregation
◆ = Composition

Aggregation  → Weak ownership → Independent part
Composition  → Strong ownership → Dependent part
```