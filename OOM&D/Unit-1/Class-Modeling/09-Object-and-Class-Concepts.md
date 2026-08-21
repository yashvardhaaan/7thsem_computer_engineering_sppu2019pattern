# 8. The Three Models

## Introduction

In **Object-Oriented Modeling**, a complex system is described using three complementary models:

1. **Object Model**
2. **Dynamic Model**
3. **Functional Model**

These models describe different aspects of the same system.

```text
                 Object-Oriented Model
                         |
          ┌──────────────┼──────────────┐
          ↓              ↓              ↓
     Object Model   Dynamic Model   Functional Model
          |              |              |
       Structure      Behavior        Functions
```

---

# 1. Object Model

The **Object Model** describes the **static structure** of a system.

It represents:

* Objects
* Classes
* Attributes
* Operations
* Relationships between objects/classes

It answers:

> **"What objects exist in the system and how are they related?"**

### Example

For a Library Management System:

```text
+-------------+        borrows        +-------------+
|   Student   | --------------------> |    Book     |
+-------------+                       +-------------+
| name        |                       | title       |
| rollNo      |                       | author      |
+-------------+                       +-------------+
```

Here, `Student` and `Book` are classes and **borrows** represents their relationship.

### UML Used

The object model is mainly represented using:

* Class diagrams
* Object diagrams

---

# 2. Dynamic Model

The **Dynamic Model** describes the **behavior of the system over time**.

It focuses on:

* Events
* States
* State transitions
* Object interactions
* Sequence of operations

It answers:

> **"How does the system behave when events occur?"**

### Example

Consider an online order:

```text
Order Placed
     ↓
Payment Confirmed
     ↓
Order Shipped
     ↓
Order Delivered
```

Each stage represents a **state**, and events cause the object to move from one state to another.

### UML Used

The dynamic model is commonly represented using:

* State diagrams
* Sequence diagrams
* Activity diagrams

---

# 3. Functional Model

The **Functional Model** describes **what the system does**.

It focuses on:

* Inputs
* Outputs
* Processing
* Data transformation
* Functions performed by the system

It answers:

> **"What operations or functions does the system perform?"**

### Example

For an ATM:

```text
Input
  ↓
Card + PIN
  ↓
Validate Account
  ↓
Process Withdrawal
  ↓
Output
  ↓
Cash + Receipt
```

The functional model explains how input is transformed into output through system functions.

### UML Used

The functional aspects can be represented using:

* Activity diagrams
* Use-case diagrams
* Data-flow representations

---

# Difference Between the Three Models

| Model                | Focus     | Main Question       | Example        |
| -------------------- | --------- | ------------------- | -------------- |
| **Object Model**     | Structure | What exists?        | Student, Book  |
| **Dynamic Model**    | Behavior  | How does it behave? | Order states   |
| **Functional Model** | Functions | What does it do?    | Withdraw money |

---

# Easy Way to Remember

```text
Object Model   → WHAT exists?
Dynamic Model  → HOW does it behave?
Functional Model → WHAT does it DO?
```

### Example: ATM

**Object Model:**

```text
Customer
Account
ATM
Transaction
```

**Dynamic Model:**

```text
Card Inserted
      ↓
PIN Entered
      ↓
PIN Verified
      ↓
Transaction Processed
      ↓
Card Ejected
```

**Functional Model:**

```text
Input
  ↓
Validate PIN
  ↓
Check Balance
  ↓
Withdraw Amount
  ↓
Update Account
  ↓
Give Cash
```

---

## ⭐ Exam Answer

> **The three models used in object-oriented modeling are Object Model, Dynamic Model, and Functional Model.**
>
> **1. Object Model:** It represents the static structure of the system, including objects, classes, attributes, operations, and relationships. Class and object diagrams are commonly used.
>
> **2. Dynamic Model:** It represents the behavior of objects and the system over time. It describes events, states, state transitions, and interactions. State and sequence diagrams are commonly used.
>
> **3. Functional Model:** It represents the functions performed by the system and how inputs are transformed into outputs. It focuses on system operations and data processing.
>
> Thus, the **Object Model describes structure, the Dynamic Model describes behavior, and the Functional Model describes functions**.
