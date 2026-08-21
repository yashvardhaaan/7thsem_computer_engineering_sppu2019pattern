# UNIT II — Advanced Class Modeling and State Modeling

# 06 — Multiple Inheritance

## 1. Introduction

**Inheritance** is an Object-Oriented concept in which a subclass acquires properties and behavior from one or more parent classes.

When a class inherits features from **more than one superclass**, it is called **multiple inheritance**.

### Example

Suppose a `SmartPhone` has features of both:

- `Phone`
- `Camera`

Then:

```text
       +----------+       +----------+
       |  Phone   |       |  Camera  |
       +----------+       +----------+
             \                 /
              \               /
               \             /
                v           v
                +-----------+
                | SmartPhone|
                +-----------+
```

`SmartPhone` inherits features from both `Phone` and `Camera`.

---

# 2. Definition of Multiple Inheritance

> Multiple inheritance is an inheritance mechanism in which a single subclass inherits attributes and operations from two or more superclasses.

### General Structure

```text
Superclass A       Superclass B
      |                  |
      |                  |
      +--------+---------+
               |
               v
          Subclass C
```

Here, `Subclass C` inherits from both `Superclass A` and `Superclass B`.

---

# 3. Single Inheritance vs Multiple Inheritance

## Single Inheritance

A subclass has only one direct superclass.

```text
       Animal
          △
          |
          Dog
```

`Dog` inherits from `Animal`.

---

## Multiple Inheritance

A subclass has more than one direct superclass.

```text
       Animal          Pet
          \             /
           \           /
            \         /
             \       /
               Dog
```

`Dog` inherits from both `Animal` and `Pet`.

---

# 4. UML Representation

In UML, inheritance/generalization is represented using a **solid line with a hollow triangular arrowhead** pointing toward the superclass.

### Example

```text
          +----------+       +----------+
          |  Person  |       | Employee |
          +----------+       +----------+
                \              /
                 \            /
                  \          /
                   \        /
                 +------------+
                 |  Manager   |
                 +------------+
```

The hollow triangle points toward the parent classes.

---

# 5. Example — Smartphone

Consider a smartphone.

A smartphone can have features of both:

```text
Phone
Camera
```

Therefore:

```text
          +----------+       +----------+
          |  Phone   |       |  Camera  |
          +----------+       +----------+
                \              /
                 \            /
                  \          /
                   \        /
                 +------------+
                 | Smartphone |
                 +------------+
```

### Phone may provide

```text
makeCall()
receiveCall()
sendMessage()
```

### Camera may provide

```text
takePhoto()
recordVideo()
zoom()
```

### Smartphone provides

```text
makeCall()
receiveCall()
takePhoto()
recordVideo()
```

---

# 6. Example — Teaching Assistant

Consider a university system.

A teaching assistant can have characteristics of both:

- Student
- Employee

```text
       +----------+       +----------+
       | Student  |       | Employee |
       +----------+       +----------+
             \                 /
              \               /
               \             /
                v           v
            +----------------+
            | Teaching       |
            | Assistant      |
            +----------------+
```

The `TeachingAssistant` inherits features from both classes.

### Student Features

```text
studentId
course
attendExam()
```

### Employee Features

```text
employeeId
salary
work()
```

### Teaching Assistant

```text
studentId
course
employeeId
salary
attendExam()
work()
```

---

# 7. Why Multiple Inheritance is Used

Multiple inheritance can be useful when a class naturally combines characteristics from multiple independent concepts.

It can provide:

1. **Code reuse**
2. **Combining multiple behaviors**
3. **Modeling complex real-world entities**
4. **Reducing duplication**
5. **Representing multiple roles**

### Example

```text
Student + Employee → TeachingAssistant
```

The teaching assistant has characteristics of both roles.

---

# 8. Advantages of Multiple Inheritance

## 8.1 Code Reusability

A subclass can reuse attributes and operations from multiple superclasses.

```text
Class A
   |
   +------\
           \
            Class C
           /
Class B ---/
```

---

## 8.2 Combining Behaviors

Different parent classes can provide different functionalities.

Example:

```text
Phone → Calling
Camera → Photography
SmartPhone → Both
```

---

## 8.3 Represents Multiple Roles

A real-world entity may perform multiple roles.

Example:

```text
Student + Employee
        ↓
TeachingAssistant
```

---

## 8.4 Reduces Duplicate Code

Common functionality can be inherited rather than rewritten.

---

# 9. Problems with Multiple Inheritance

Multiple inheritance can introduce ambiguity and complexity.

The most important problem is the **Diamond Problem**.

---

# 10. Diamond Problem

The **diamond problem** occurs when a class inherits from two classes that both inherit from the same superclass.

### Example

```text
             +--------+
             | Person |
             +--------+
               /    \
              /      \
             v        v
      +----------+  +----------+
      | Student  |  | Employee |
      +----------+  +----------+
              \       /
               \     /
                v   v
             +--------+
             |  TA    |
             +--------+
```

Here:

- `Student` inherits from `Person`.
- `Employee` inherits from `Person`.
- `TeachingAssistant` inherits from both `Student` and `Employee`.

Therefore, `TeachingAssistant` may receive the same features from `Person` through two paths.

This creates ambiguity.

---

# 11. Diamond Problem Example

Suppose `Person` contains:

```text
name
display()
```

Then:

```text
Person
 /   \
/     \
Student Employee
 \     /
  \   /
   TA
```

`TA` receives `display()` through:

```text
Person → Student → TA
```

and:

```text
Person → Employee → TA
```

The system must determine which inherited implementation should be used.

This is called the **diamond problem**.

---

# 12. How to Resolve Ambiguity

Different programming languages use different mechanisms to handle multiple inheritance.

Common approaches include:

- Explicit method selection
- Virtual inheritance
- Interfaces
- Composition
- Method overriding

For UML modeling, the ambiguity should be clearly identified and resolved through appropriate design decisions.

---

# 13. Multiple Inheritance in UML

Multiple inheritance can be represented using multiple generalization relationships.

### Example

```text
+-------------+        +-------------+
|  Class A    |        |  Class B    |
+-------------+        +-------------+
       △                     △
        \                   /
         \                 /
          \               /
           +-------------+
           |   Class C   |
           +-------------+
```

`Class C` inherits from both `Class A` and `Class B`.

---

# 14. Multiple Inheritance vs Multilevel Inheritance

These concepts are different.

## Multiple Inheritance

One subclass has multiple parent classes.

```text
      A       B
       \     /
        \   /
          C
```

---

## Multilevel Inheritance

Inheritance occurs across multiple levels.

```text
A
|
B
|
C
```

Here:

- `B` inherits from `A`.
- `C` inherits from `B`.

---

# 15. Multiple Inheritance vs Hierarchical Inheritance

## Multiple Inheritance

One child has multiple parents.

```text
A       B
 \     /
   C
```

## Hierarchical Inheritance

Multiple children have the same parent.

```text
      A
    / | \
   B  C  D
```

---

# 16. Comparison of Inheritance Types

| Type | Structure | Example |
|---|---|---|
| Single | One parent → one child | A → B |
| Multilevel | Chain of inheritance | A → B → C |
| Hierarchical | One parent → many children | A → B, C, D |
| Multiple | Many parents → one child | A + B → C |
| Hybrid | Combination of inheritance types | Multiple forms combined |

---

# 17. Example — Multiple Roles

Consider a `SmartDevice`.

It may inherit behavior from:

```text
Computer
Phone
Camera
```

```text
        Computer
            \
             \
              \
               SmartDevice
              /
             /
         Phone

Camera
   \
    \
     SmartDevice
```

This represents a class combining multiple functionalities.

---

# 18. Multiple Inheritance and Composition

Sometimes multiple inheritance can be replaced by **composition**.

### Multiple Inheritance

```text
Phone       Camera
   \         /
    \       /
    Smartphone
```

### Composition

```text
+-------------+
| Smartphone  |
+-------------+
| phone       |
| camera      |
+-------------+
```

The smartphone contains separate `Phone` and `Camera` components.

Composition can sometimes reduce the complexity associated with multiple inheritance.

---

# 19. When to Use Multiple Inheritance

Multiple inheritance can be considered when:

- A class genuinely represents multiple independent roles.
- The parent classes provide meaningful reusable behavior.
- The relationship is an **is-a** relationship with both parents.
- The resulting model remains understandable.
- Ambiguities can be avoided or resolved.

---

# 20. When to Avoid Multiple Inheritance

Avoid it when:

- It creates ambiguity.
- The inheritance hierarchy becomes too complicated.
- Composition provides a simpler design.
- Parent classes are not conceptually related.
- The diamond problem becomes difficult to resolve.

---

# 21. Important Example for Exam

### Problem

> A Teaching Assistant is both a Student and an Employee. Represent this using multiple inheritance.

### Answer

```text
          +-----------+       +-----------+
          |  Student  |       | Employee  |
          +-----------+       +-----------+
                 \               /
                  \             /
                   \           /
                    \         /
              +-------------------+
              | TeachingAssistant  |
              +-------------------+
```

### Explanation

`TeachingAssistant` inherits properties and operations from both `Student` and `Employee`.

Therefore, it demonstrates **multiple inheritance**.

---

# 22. Advantages vs Disadvantages

| Advantages | Disadvantages |
|---|---|
| Code reuse | Increased complexity |
| Combines behaviors | Possible ambiguity |
| Represents multiple roles | Diamond problem |
| Reduces duplication | Difficult maintenance |
| Flexible modeling | More complex hierarchy |

---

# 23. PYQ Status

### Direct PYQ

> **No direct PYQ**

### Status

**❌ No direct PYQ**

However, the concept is part of the Unit II syllabus and can be asked as a short theoretical question.

---

# 24. Possible Exam Questions

Even though there is no direct PYQ, prepare:

1. **What is multiple inheritance?**
2. **Explain multiple inheritance with an example.**
3. **Draw UML representation of multiple inheritance.**
4. **Explain the diamond problem.**
5. **Differentiate between single and multiple inheritance.**
6. **Differentiate between multiple and multilevel inheritance.**
7. **Explain advantages and disadvantages of multiple inheritance.**

---

# 25. Important Definitions

### Inheritance

> Inheritance is a mechanism in which a subclass acquires properties and behavior from a superclass.

### Multiple Inheritance

> Multiple inheritance is an inheritance mechanism in which one subclass inherits from two or more superclasses.

### Diamond Problem

> The diamond problem is an ambiguity that occurs when a subclass inherits from two classes that share a common superclass.

---

# 26. Quick Revision

## Multiple Inheritance

```text
More than one parent
        ↓
One child
```

### Structure

```text
      Parent A       Parent B
          \             /
           \           /
            \         /
             Child
```

### Example

```text
Student + Employee
        ↓
TeachingAssistant
```

---

# 27. Diamond Problem

```text
          Person
         /      \
        /        \
   Student      Employee
        \        /
         \      /
      TeachingAssistant
```

Problem:

```text
Person's features
       ↓
Two inheritance paths
       ↓
Possible ambiguity
```

---

# 28. Memory Trick

Remember:

```text
MULTIPLE INHERITANCE
        ↓
Multiple Parents
        ↓
One Child
```

```text
MULTIPLE
A       B
 \     /
   \ /
    C
```

### Diamond Problem

```text
       A
      / \
     B   C
      \ /
       D
```

---

# 29. Last-Minute Revision

```text
MULTIPLE INHERITANCE
→ One class inherits from two or more classes.

EXAMPLE
Student + Employee → TeachingAssistant

ADVANTAGES
→ Code reuse
→ Multiple behaviors
→ Multiple roles
→ Less duplication

DISADVANTAGES
→ Complexity
→ Ambiguity
→ Diamond problem
→ Difficult maintenance

DIAMOND PROBLEM
→ A class receives the same superclass features
  through multiple inheritance paths.

UML
→ Multiple generalization relationships
  pointing from the child toward multiple parents.
```

---

# 30. Exam Priority

| Topic | PYQ | Priority |
|---|---|---|
| Multiple Inheritance | No direct PYQ | ❌ No PYQ |
| Diamond Problem | No direct PYQ | ⭐ Understand |
| Inheritance Types | No direct PYQ | ⭐ Understand |

---

# 31. Final Exam Note

Since **Multiple Inheritance has no direct PYQ**, do not spend excessive time on it if you are short on preparation time.

At minimum, remember:

```text
Definition
+
UML Diagram
+
TeachingAssistant Example
+
Advantages
+
Disadvantages
+
Diamond Problem
```

### One-Line Answer

> **Multiple inheritance occurs when one subclass inherits attributes and operations from two or more superclasses.**