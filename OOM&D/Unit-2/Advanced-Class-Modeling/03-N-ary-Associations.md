# UNIT II — Advanced Class Modeling and State Modeling

# 03 — N-ary Associations

## 1. Introduction

An **association** represents a relationship between two or more classes.

A **binary association** involves exactly two classes.

An **N-ary association** involves **three or more classes**.

The term **N-ary** means that the association can involve `N` number of classes, where:

```text
N ≥ 3
```

### Example

A student enrolls in a particular course during a particular semester.

This relationship involves:

- Student
- Course
- Semester

Therefore, it is an **N-ary association**.

```text
             +-----------+
             |  Student  |
             +-----------+
                   |
                   |
                   v
             +-------------+
             | Enrollment  |
             +-------------+
              /           \
             /             \
            v               v
      +----------+    +-----------+
      |  Course  |    | Semester  |
      +----------+    +-----------+
```

---

# 2. Definition of N-ary Association

> An N-ary association is an association that connects three or more classes or objects simultaneously.

For example:

```text
Student + Course + Semester
```

form an N-ary association when a student's enrollment depends on both the course and the semester.

---

# 3. Binary vs N-ary Association

## Binary Association

A binary association connects **two classes**.

```text
Customer ---------------- Order
```

Example:

> A customer places an order.

---

## N-ary Association

An N-ary association connects **three or more classes**.

```text
       Student
          |
          |
          v
      Enrollment
       /      \
      /        \
     v          v
 Course      Semester
```

Example:

> A student enrolls in a course during a semester.

---

# 4. Why N-ary Associations Are Required

Sometimes a relationship cannot be properly represented using only binary associations.

Consider:

```text
Student
Course
Teacher
```

Suppose we want to represent:

> A teacher teaches a particular course to a particular student.

The relationship depends on **all three entities**.

Therefore, an N-ary association may be appropriate.

```text
             Student
                |
                |
                v
          +-----------+
          |  Teaches  |
          +-----------+
             /     \
            /       \
           v         v
       Teacher      Course
```

---

# 5. Types of N-ary Associations

N-ary associations are generally classified based on the number of participating classes.

### Ternary Association

An association involving **three classes**.

```text
A + B + C
```

Example:

```text
Student + Course + Semester
```

---

### Quaternary Association

An association involving **four classes**.

```text
A + B + C + D
```

Example:

```text
Doctor + Patient + Medicine + Hospital
```

---

### General N-ary Association

An association involving **N classes**, where:

```text
N ≥ 3
```

---

# 6. Ternary Association

A **ternary association** is the most common type of N-ary association.

It involves exactly three classes.

### Example

Consider a teaching system.

Classes:

```text
Teacher
Student
Course
```

Relationship:

> A teacher teaches a particular course to a particular student.

```text
              +----------+
              | Teacher  |
              +----------+
                    \
                     \
                      \
                   +---------+
                   | Teaches |
                   +---------+
                    /       \
                   /         \
                  /           \
        +---------+           +---------+
        | Student |           | Course  |
        +---------+           +---------+
```

The `Teaches` association connects all three classes.

---

# 7. Example — Student Enrollment

Consider a university system.

A student can enroll in many courses, and courses are offered in different semesters.

The enrollment relationship depends on:

```text
Student
Course
Semester
```

Therefore:

```text
             Student
                |
                |
                v
          +------------+
          | Enrollment |
          +------------+
             /      \
            /        \
           v          v
       Course      Semester
```

### Interpretation

The association represents:

> A particular student enrolls in a particular course in a particular semester.

---

# 8. N-ary Association Notation

In UML, an N-ary association can be represented using a **diamond-shaped association symbol**.

### Example

```text
                 Student
                    |
                    |
                    |
                 +-----+
                 |     |
                 |  ◆  |
                 |     |
                 +-----+
                  /   \
                 /     \
                /       \
          Course       Semester
```

The diamond represents the N-ary association.

---

# 9. Multiplicity in N-ary Associations

Multiplicity can be specified at each association end.

Consider:

```text
Student
   |
   | 1
   |
   ◆
  / \
 /   \
*     *
Course Semester
```

The multiplicity indicates how many instances of each class can participate in the association.

### Example

Suppose:

```text
Student → 1
Course  → *
Semester → *
```

This means the association can connect one student with multiple courses and semesters according to the defined constraints.

---

# 10. Role Names in N-ary Associations

Role names can be specified at each association end.

Example:

```text
                 student
                    |
                    |
                    ◆
                  /   \
                 /     \
          course        semester
```

Here:

- `student` is a role
- `course` is a role
- `semester` is a role

Role names make the meaning of the relationship clearer.

---

# 11. N-ary Association Example — Hospital System

Consider a hospital system.

A doctor prescribes a medicine to a patient.

The relationship involves:

```text
Doctor
Patient
Medicine
```

Therefore, it can be modeled as an N-ary association.

```text
                Doctor
                  |
                  |
                  v
            +-----------+
            | Prescribes|
            +-----------+
               /     \
              /       \
             v         v
        Patient      Medicine
```

### Meaning

> A particular doctor prescribes a particular medicine to a particular patient.

---

# 12. N-ary Association Example — Supplier System

Consider a business system where:

> A supplier supplies a particular product to a particular warehouse.

The participating classes are:

```text
Supplier
Product
Warehouse
```

The relationship is:

```text
              Supplier
                  |
                  |
                  v
             +---------+
             | Supplies|
             +---------+
                /   \
               /     \
              v       v
         Product    Warehouse
```

---

# 13. N-ary Association vs Multiple Binary Associations

Sometimes an N-ary association can be replaced by multiple binary associations, but this may change the meaning of the model.

### N-ary Association

```text
Student
   \
    \
   Enrollment
    /      \
   /        \
Course    Semester
```

This represents one combined relationship:

> Student enrolls in Course during Semester.

### Multiple Binary Associations

```text
Student -------- Course
   |
   |
   +-------- Semester
```

This may not clearly indicate that the **same enrollment relationship** connects all three entities.

Therefore, N-ary associations should be used when the relationship itself depends on all participating classes.

---

# 14. Advantages of N-ary Associations

N-ary associations provide several advantages:

1. Represent relationships involving three or more classes.
2. Clearly represent complex relationships.
3. Preserve the meaning of relationships involving multiple entities.
4. Allow multiplicity at each association end.
5. Allow role names at each association end.
6. Make complex domain relationships easier to model.

---

# 15. Disadvantages of N-ary Associations

N-ary associations can also make a model more complex.

Disadvantages include:

1. They are harder to understand than simple binary associations.
2. They can make diagrams more complicated.
3. They may require additional explanation.
4. Sometimes they can be replaced by an association class or other modeling techniques.

---

# 16. N-ary Association and Association Class

An N-ary association can sometimes be represented using an association class when the relationship has its own attributes.

### Example

Student enrolls in Course during Semester.

The enrollment may have:

- Enrollment Date
- Grade
- Status

Therefore, `Enrollment` can be represented as an association class.

```text
+----------+                    +----------+
| Student  |                    |  Course  |
+----------+                    +----------+
      \                            /
       \                          /
        \                        /
         +----------------------+
         |      Enrollment      |
         +----------------------+
         | enrollmentDate       |
         | grade                |
         | status               |
         +----------------------+
                    |
                    |
                Semester
```

---

# 17. Real-World Examples of N-ary Associations

| System | Classes | Relationship |
|---|---|---|
| University | Student, Course, Semester | Enrollment |
| Hospital | Doctor, Patient, Medicine | Prescribes |
| Business | Supplier, Product, Warehouse | Supplies |
| Banking | Customer, Account, Branch | Maintains |
| Airline | Passenger, Flight, Seat | Reservation |

---

# 18. Steps to Identify an N-ary Association

When modeling a system, use the following steps:

```text
1. Identify the classes involved.
        ↓
2. Identify the relationship.
        ↓
3. Check whether the relationship depends
   on three or more classes.
        ↓
4. Create an N-ary association.
        ↓
5. Add role names.
        ↓
6. Add multiplicities.
        ↓
7. Add constraints if required.
```

---

# 19. Important Example for Exam

## Student-Course-Semester

### Problem

> A student enrolls in a course during a particular semester.

### Classes

```text
Student
Course
Semester
```

### N-ary Association

```text
                 Student
                    |
                    |
                    |
                  +-----+
                  | ◆   |
                  +-----+
                   /   \
                  /     \
                 /       \
            Course      Semester
```

### Explanation

This is a **ternary association** because it involves three classes:

- Student
- Course
- Semester

The association represents the enrollment relationship among these three classes.

---

# 20. PYQ — September 2023

> **"What do you mean by Association ends? Explain N-ary association in short." — 5 marks**

## Answer

### Association End

An **association end** is the endpoint of an association that connects the association to a particular class.

It describes how instances of the class participate in the association.

Important properties include:

- Role name
- Multiplicity
- Navigability
- Aggregation
- Ordering

### N-ary Association

An **N-ary association** is an association involving **three or more classes**.

The most common example is a **ternary association**, which involves three classes.

### Example

A student enrolls in a course during a semester.

```text
                 Student
                    |
                    |
                  +-----+
                  | ◆   |
                  +-----+
                   /   \
                  /     \
                 /       \
            Course      Semester
```

Here:

- `Student` is one participating class.
- `Course` is the second participating class.
- `Semester` is the third participating class.
- The diamond represents the N-ary association.
- The relationship represents enrollment.

### Conclusion

> N-ary associations are used when a relationship involves three or more classes and the relationship depends on the combined participation of those classes.

---

# 21. 5-Mark Answer Structure

If the question asks:

> **Explain N-ary association in short.**

Write the answer in this order:

### 1. Definition

An N-ary association is an association involving three or more classes.

### 2. Mention Ternary Association

A ternary association involves exactly three classes and is the most common type of N-ary association.

### 3. Diagram

```text
             Class A
                |
                |
                ◆
               / \
              /   \
          Class B  Class C
```

### 4. Example

```text
Student + Course + Semester
```

### 5. Explanation

> A student enrolls in a particular course during a particular semester. Since the relationship involves three classes, it is a ternary association.

---

# 22. Important Differences

## Binary vs N-ary Association

| Binary Association | N-ary Association |
|---|---|
| Involves exactly two classes | Involves three or more classes |
| Simpler | More complex |
| Example: Customer — Order | Example: Student — Course — Semester |
| Most common association | Used for complex relationships |

---

## Ternary vs N-ary Association

| Ternary Association | N-ary Association |
|---|---|
| Involves exactly three classes | Involves three or more classes |
| Special case of N-ary association | General concept |
| Example: Student, Course, Semester | Example: A, B, C, D... |

---

# 23. Quick Revision

## Association

```text
Relationship between classes
```

## Binary Association

```text
Two classes
```

```text
Class A ---------------- Class B
```

## N-ary Association

```text
Three or more classes
```

```text
             Class A
                |
                ◆
               / \
              /   \
          Class B  Class C
```

## Ternary Association

```text
Exactly three classes
```

## Role

```text
Describes the role of a participating class
```

## Multiplicity

```text
Specifies number of participating objects
```

---

# 24. Exam Memory Trick

Remember:

```text
Binary  → 2 classes
Ternary → 3 classes
N-ary   → 3 or more classes
```

### Example

```text
Binary:
Customer -------- Order

Ternary:
Student -------- Course -------- Semester
```

---

# 25. PYQ Priority

| Topic | Year | Marks | Priority |
|---|---|---:|---|
| Association Ends + N-ary Association | Sept 2023 | 5 | 🔥🔥🔥 |
| N-ary Association | Sept 2023 | 5 | 🔥🔥🔥 |

---

# 26. Most Important Questions

1. **What is an N-ary association?**
2. **Explain N-ary association with a suitable example.**
3. **What is a ternary association?**
4. **Differentiate between binary and N-ary associations.**
5. **Explain N-ary association along with association ends.**
6. **Draw and explain a ternary association using Student, Course and Semester.**

---

# 27. Last-Minute Revision

```text
N-ARY ASSOCIATION
An association involving three or more classes.

TERNARY ASSOCIATION
An N-ary association involving exactly three classes.

EXAMPLE
Student + Course + Semester

USE
Used when a relationship depends on three or more
participating classes.

IMPORTANT ELEMENTS
1. Participating classes
2. Association
3. Role names
4. Multiplicity
5. Constraints
```

### Most Important PYQ

> **"What do you mean by Association ends? Explain N-ary association in short." — Sept 2023 — 5 marks**

### Prepare These Points

- Definition of N-ary association
- Definition of ternary association
- Binary vs N-ary association
- N-ary association diagram
- Student-Course-Semester example
- Role names
- Multiplicity
- Advantages and uses