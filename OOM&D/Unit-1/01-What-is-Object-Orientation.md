# UNIT I — INTRODUCTION TO MODELING

# 1. WHAT IS OBJECT ORIENTATION?

## 1.1 Definition of Object Orientation

**Object Orientation (OO)** is a software development approach in which a system is modeled as a collection of **objects** that contain both **data and behavior**.

In object-oriented development, real-world entities are represented as objects, and objects interact with each other to perform system operations.

### Exam Definition

> **Object orientation is a software development approach in which a system is represented as a collection of interacting objects. Each object encapsulates its data and the operations that manipulate that data.**

---

# 1.2 Basic Idea of Object Orientation

The basic idea is to model software using concepts that exist in the real world.

For example, consider a **College Management System**.

Real-world entities include:

* Student
* Teacher
* Course
* Department
* Examination

These can be represented as objects/classes in the software.

```text
                    COLLEGE MANAGEMENT SYSTEM
                              |
          +-------------------+-------------------+
          |                   |                   |
          ↓                   ↓                   ↓
       Student             Teacher             Course
        Object              Object              Object
          |                   |                   |
       Data +              Data +              Data +
      Behavior             Behavior            Behavior
```

---

# 1.3 What is an Object?

An **object** is an identifiable entity that has:

1. **Identity**
2. **State**
3. **Behavior**

### Example

Consider a student:

```text
+--------------------------------+
|          Student Object        |
+--------------------------------+
| Identity: Student101           |
|                                |
| State:                         |
| Name = Rahul                   |
| RollNo = 25                    |
| Marks = 85                      |
|                                |
| Behavior:                      |
| attendClass()                  |
| writeExam()                    |
| displayResult()                |
+--------------------------------+
```

Thus:

> **Object = Identity + State + Behavior**

---

# 1.4 Identity

**Identity** uniquely distinguishes one object from another.

For example:

```text
Student101
Student102
Student103
```

Even if two students have the same name, their objects can still have different identities.

### Example

```text
Student Object 1
ID = S101
Name = Rahul

Student Object 2
ID = S102
Name = Rahul
```

Both have the same name but are different objects because their identities are different.

---

# 1.5 State

The **state** of an object represents the values of its attributes at a particular point in time.

For a Student:

```text
Name = Rahul
RollNo = 101
Marks = 85
Attendance = 90%
```

These values represent the current state of the Student object.

---

# 1.6 Behavior

The **behavior** of an object represents the operations or actions that the object can perform.

For a Student:

```text
attendClass()
writeExam()
submitAssignment()
viewResult()
```

Therefore:

```text
Object
  |
  +---- Identity
  |
  +---- State
  |
  +---- Behavior
```

---

# 1.7 Object Orientation vs Traditional Procedural Approach

Object orientation is different from traditional procedural programming.

### Procedural Approach

The system is primarily organized around:

```text
Functions
   ↓
Data
   ↓
Functions operate on data
```

### Object-Oriented Approach

The system is organized around:

```text
Objects
   ↓
Data + Behavior
   ↓
Objects interact
```

### Diagram

```text
PROCEDURAL APPROACH

        Functions
       /    |    \
      ↓     ↓     ↓
    Data  Data   Data


OBJECT-ORIENTED APPROACH

       +----------+
       |  Object  |
       +----------+
       |   Data   |
       |    +     |
       | Behavior |
       +----------+
             |
          interacts
             |
             ↓
       +----------+
       |  Object  |
       +----------+
```

---

# 1.8 Major Principles of Object Orientation

Object orientation is based on several important principles.

The major concepts are:

1. **Abstraction**
2. **Encapsulation**
3. **Inheritance**
4. **Polymorphism**
5. **Object Identity**
6. **Message Passing**
7. **Modularity**
8. **Reusability**

---

# 1.9 Abstraction

**Abstraction** means representing only the essential characteristics of an object while hiding unnecessary implementation details.

### Example

A user driving a car interacts with:

* Start
* Stop
* Accelerate
* Brake

The user does not need to know the internal engine mechanism.

```text
              CAR
               |
       +-------+-------+
       |       |       |
     Start    Stop   Brake
       |
       ↓
Internal engine details hidden
```

### Exam Point

> **Abstraction focuses on what an object does rather than how it does it.**

---

# 1.10 Encapsulation

**Encapsulation** means combining data and the operations that manipulate that data into a single unit and restricting direct access to the internal data.

### Example

```text
+--------------------------+
|       BankAccount        |
+--------------------------+
| - balance                |
| - accountNumber          |
+--------------------------+
| + deposit()              |
| + withdraw()             |
| + getBalance()           |
+--------------------------+
```

The balance is protected from direct modification.

Instead:

```text
deposit()
withdraw()
```

are used to interact with it.

### Exam Point

> **Encapsulation binds data and methods together and provides controlled access to the data.**

---

# 1.11 Inheritance

**Inheritance** allows a new class to acquire properties and behavior from an existing class.

### Example

```text
                 Vehicle
                    |
             ----------------
             |              |
            Car            Bike
```

`Car` and `Bike` inherit common properties from `Vehicle`.

### Exam Point

> **Inheritance promotes code reuse by allowing subclasses to acquire properties and behavior of a superclass.**

---

# 1.12 Polymorphism

**Polymorphism** means "many forms".

It allows the same operation or message to behave differently depending on the object receiving it.

### Example

```text
Vehicle
   |
   +---- start()
           |
       +---+---+
       |       |
      Car     Bike
       |       |
    start()  start()
       |       |
Different implementations
```

For example:

```text
car.start()
bike.start()
```

Both use `start()`, but their implementations may be different.

### Exam Point

> **Polymorphism allows the same operation or interface to have different implementations for different objects.**

---

# 1.13 Message Passing

Objects communicate with each other by sending messages.

### Example

```text
+-----------+        borrowBook()        +-----------+
|  Student  | -------------------------> |  Library  |
+-----------+                             +-----------+
```

The Student object sends the `borrowBook()` message to the Library object.

---

# 1.14 Modularity

Object-oriented systems can be divided into independent classes/modules.

Example:

```text
             E-Commerce System
                    |
       +------------+------------+
       |            |            |
     User         Order       Payment
     Class        Class        Class
```

Each class handles a specific responsibility.

---

# 1.15 Reusability

Object-oriented concepts such as inheritance, classes, and components encourage reuse.

For example:

```text
                 Vehicle
                    |
          +---------+---------+
          |                   |
         Car                 Bike
```

Common properties can be defined once in `Vehicle` and reused by `Car` and `Bike`.

---

# 1.16 Object-Oriented System

An object-oriented system can be represented as:

```text
                   OBJECT-ORIENTED SYSTEM
                            |
              +-------------+-------------+
              |             |             |
              ↓             ↓             ↓
           Object A      Object B      Object C
              |             |             |
          Data +         Data +        Data +
         Behavior        Behavior      Behavior
              \             |             /
               \            |            /
                +-----------+-----------+
                            |
                       Communication
                       / Message Passing
```

Objects interact with each other to accomplish system goals.

---

# 1.17 Real-World Example — ATM

Consider an ATM system.

Possible objects:

```text
ATM
Card
Account
Customer
Transaction
```

### ATM Object

```text
+----------------------+
|         ATM          |
+----------------------+
| location             |
| status               |
+----------------------+
| insertCard()         |
| ejectCard()          |
| processTransaction() |
+----------------------+
```

### Card Object

```text
+----------------------+
|         Card         |
+----------------------+
| cardNumber           |
| expiryDate           |
+----------------------+
| validate()           |
+----------------------+
```

The objects communicate:

```text
Customer
    |
    ↓
   ATM
    |
    ↓
  Card
    |
    ↓
 Account
    |
    ↓
Transaction
```

This is an example of an object-oriented view of a real-world system.

---

# 1.18 Advantages of Object Orientation

## 1. Reusability

Existing classes and components can be reused.

## 2. Maintainability

Changes can be localized to particular classes.

## 3. Modularity

Large systems can be divided into smaller modules/classes.

## 4. Extensibility

New functionality can be added through inheritance and other OO mechanisms.

## 5. Data Security

Encapsulation controls access to internal data.

## 6. Real-World Modeling

Real-world entities can be represented naturally as objects.

## 7. Reduced Complexity

Abstraction hides unnecessary implementation details.

---

# 1.19 Object Orientation — Complete Concept Diagram

```text
                    OBJECT ORIENTATION
                           |
          +----------------+----------------+
          |                |                |
          ↓                ↓                ↓
       Objects          Classes          Messages
          |                |                |
      +---+---+       +----+----+      Communication
      |       |       |         |
    State  Behavior  Data    Operations
          |
          ↓
   Major OO Principles
          |
   +------+------+------+------+
   |      |      |      |      |
Abstraction  Encapsulation  Inheritance
                    |
               Polymorphism
```

---

# 1.20 Important Definitions for Exam

### Object

> An object is an identifiable entity having identity, state, and behavior.

### Class

> A class is a blueprint or description that defines the attributes and operations common to a group of objects.

### Abstraction

> Abstraction represents essential features while hiding unnecessary details.

### Encapsulation

> Encapsulation combines data and operations into a single unit and controls access to the data.

### Inheritance

> Inheritance allows a subclass to acquire properties and behavior from a superclass.

### Polymorphism

> Polymorphism allows the same operation or interface to have different implementations.

### Message Passing

> Message passing is the mechanism through which objects communicate by sending requests or messages.

---

# 1.21 Important Difference: Object Orientation vs Object-Oriented Programming

These terms should not be confused.

### Object Orientation

A broader **analysis, modeling, design, and development philosophy** based on objects.

### Object-Oriented Programming

The programming implementation of object-oriented concepts using languages such as:

* Java
* C++
* C#
* Python

```text
Object Orientation
       ↓
Analysis
       ↓
Design
       ↓
Modeling
       ↓
Implementation
       ↓
Object-Oriented Programming
```

---

# 1.22 Exam-Oriented Answer

Although **there is no direct PYQ for "What is Object Orientation?"** in the four papers checked, this concept is foundational for the Unit I questions that follow.

If asked:

> **What is Object Orientation?**

Write:

> **Object Orientation is a software development approach in which a system is modeled as a collection of interacting objects. An object represents a real-world or conceptual entity and contains data representing its state and operations representing its behavior.**
>
> Object-oriented systems are based on concepts such as **abstraction, encapsulation, inheritance, polymorphism, object identity, message passing, modularity, and reusability**.
>
> For example, in a college management system, `Student`, `Teacher`, `Course`, and `Department` can be represented as objects/classes that communicate with each other.
>
> ```text
>             College System
>                    |
>       +------------+------------+
>       |            |            |
>    Student       Teacher      Course
>       |            |            |
>    Data +       Data +       Data +
>   Behavior      Behavior     Behavior
> ```
>
> Thus, object orientation provides a natural way to model real-world entities and their interactions.

---

# 1.23 5-Mark Answer Structure

If this concept appears as a short theory question, use:

### 1. Definition

2 marks

### 2. Basic characteristics

Write:

* Objects
* State
* Behavior
* Identity
* Communication

### 3. OO principles

Write:

* Abstraction
* Encapsulation
* Inheritance
* Polymorphism

### 4. Diagram

Draw interacting objects.

### 5. Example

Use:

**Student–Course**, **ATM**, or **Bank Account**.

---

# 1.24 Last-Minute Revision

## Object Orientation

> **System = Collection of interacting objects**

## Object

```text
Object = Identity + State + Behavior
```

## Major Principles

```text
             OBJECT ORIENTATION
                    |
       +------------+------------+
       |            |            |
 Abstraction   Encapsulation  Inheritance
                                  |
                           Polymorphism
```

## Communication

```text
Object A ---- Message ----> Object B
```

## Main Advantages

```text
Reusability
Maintainability
Modularity
Extensibility
Data Security
Real-world Modeling
```

---

# ⭐ Exam Memory Line

> **"Object orientation models a system as interacting objects that encapsulate data and behavior."**

Remember:

**Object = Identity + State + Behavior**

**OO = Objects + Encapsulation + Abstraction + Inheritance + Polymorphism + Message Passing**

---

# PYQ STATUS

| Exam      | PYQ      |
| --------- | -------- |
| Aug 2024  | ❌ No PYQ |
| Aug 2025  | ❌ No PYQ |
| Sept 2023 | ❌ No PYQ |
| Oct 2022  | ❌ No PYQ |

### Priority

**❌ No direct PYQ**

However, it is a **foundation concept** for:

* OO Development
* OO Themes
* Abstraction
* Encapsulation
* Class/Object Modeling
* Inheritance
* Polymorphism

Therefore, learn the **definition + Object = Identity/State/Behavior + major OO principles**, but don't spend as much exam time on it as the repeated PYQ topics.
