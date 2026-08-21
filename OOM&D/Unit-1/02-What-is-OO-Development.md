# UNIT I — INTRODUCTION TO MODELING

# 2. OBJECT-ORIENTED DEVELOPMENT

## 1. Definition of Object-Oriented Development

**Object-Oriented Development (OOD)** is a software development approach in which the system is analyzed, designed, and implemented as a collection of interacting objects and classes.

These objects represent real-world or conceptual entities and contain both **data and behavior**.

### Exam Definition

> **Object-Oriented Development is a software development methodology in which a system is analyzed, designed, and implemented using objects and classes that encapsulate data and behavior and interact with each other to achieve system requirements.**

---

# 2. Basic Idea of OO Development

Traditional development often separates data and functions.

Object-oriented development combines them into objects.

```text id="l6gq9m"
TRADITIONAL APPROACH

        Functions
       /    |    \
      ↓     ↓     ↓
    Data   Data  Data


OBJECT-ORIENTED DEVELOPMENT

       +----------------+
       |     Object     |
       +----------------+
       |     Data       |
       |       +        |
       |    Behavior    |
       +----------------+
               |
          communicates
               |
               ↓
       +----------------+
       |     Object     |
       +----------------+
```

---

# 3. Objectives of OO Development

The major objectives are:

1. Model real-world entities naturally.
2. Manage software complexity.
3. Promote reuse.
4. Improve maintainability.
5. Provide modularity.
6. Support extensibility.
7. Encapsulate data and behavior.
8. Allow objects to communicate.
9. Reduce development and maintenance effort.

---

# 4. Main Characteristics of OO Development

## 4.1 Object-Based Modeling

The system is represented as objects.

Example:

```text id="yp1l5m"
College System
     |
     +---- Student
     +---- Teacher
     +---- Course
     +---- Department
```

---

## 4.2 Encapsulation

Data and operations are grouped into a class/object.

```text id="2c4q8p"
+----------------------+
|      BankAccount     |
+----------------------+
| balance              |
| accountNumber        |
+----------------------+
| deposit()            |
| withdraw()           |
+----------------------+
```

---

## 4.3 Abstraction

Only essential characteristics are represented while unnecessary implementation details are hidden.

---

## 4.4 Inheritance

A new class can reuse properties and behavior of an existing class.

```text id="k3v7n9"
              Vehicle
                 |
          +------+------+
          |             |
         Car           Bike
```

---

## 4.5 Polymorphism

The same operation can have different implementations.

```text id="j5p8m2"
Vehicle
   |
   +---- start()
          |
       +--+--+
       |     |
      Car   Bike
       |     |
    start() start()
```

---

## 4.6 Message Passing

Objects communicate by sending messages.

```text id="q6m1x8"
Student -------- enroll() --------> Course
```

---

# 5. OO Development Process

Object-oriented development generally follows a sequence of activities or phases.

A simplified process is:

```text id="r7n3v5"
Requirements
     ↓
Object-Oriented Analysis
     ↓
Object-Oriented Design
     ↓
Implementation
     ↓
Testing
     ↓
Maintenance
```

Different OO methodologies may define the phases somewhat differently, but the fundamental idea remains the same.

---

# 6. Phases of OO Methodology

This is **directly asked in the Aug 2025 PYQ**, so learn this section carefully.

The major phases are:

1. Requirements Analysis
2. Object-Oriented Analysis
3. Object-Oriented Design
4. Implementation
5. Testing
6. Maintenance

---

# 7. Phase 1 — Requirements Analysis

## Meaning

The first phase identifies **what the system should do** and what users require from it.

The developer collects:

* Functional requirements
* Non-functional requirements
* User expectations
* System constraints
* Business rules

### Example — Library System

Requirements may include:

* Student can search books.
* Student can issue books.
* Student can return books.
* Librarian can add books.
* System tracks overdue books.

### Output

A clear understanding of system requirements.

```text id="e6q2m9"
Users
  ↓
Requirements
  ↓
System Requirements
```

---

# 8. Phase 2 — Object-Oriented Analysis

## Meaning

Object-Oriented Analysis, or **OOA**, identifies the objects/classes, relationships, and behavior required to satisfy the requirements.

The focus is:

> **What objects exist in the problem domain?**

### Example — Library

Possible objects/classes:

```text id="p8x3m6"
Library
Student
Book
Librarian
Issue
Return
```

Relationships may include:

```text id="m5q7v2"
Student -------- borrows -------- Book
```

### Main Activities

* Identify objects/classes.
* Identify attributes.
* Identify relationships.
* Identify behaviors.
* Identify system interactions.

### Output

An analysis model describing the problem domain.

---

# 9. Phase 3 — Object-Oriented Design

## Meaning

Object-Oriented Design, or **OOD**, converts the analysis model into a detailed software design.

The focus is:

> **How will the system be implemented?**

Design includes:

* Class structure
* Interfaces
* Methods
* Relationships
* Database interaction
* Components
* Architecture
* Detailed object interactions

### Example

Analysis identifies:

```text id="f8m2x7"
Student
Book
Library
```

Design specifies:

```text id="m3q9v1"
Student
-----------------
- studentId
- name
-----------------
+ issueBook()
+ returnBook()
```

---

# 10. Phase 4 — Implementation

## Meaning

In implementation, the design is converted into actual source code.

For example:

```text id="g6v1p8"
Class Design
     ↓
Java/C++/C# Code
```

Example:

```text id="3j8m4q"
class Student {

    private int studentId;
    private String name;

    public void issueBook() {
        // implementation
    }
}
```

---

# 11. Phase 5 — Testing

## Meaning

Testing verifies that the implemented system behaves according to the requirements.

Testing can include:

* Unit testing
* Integration testing
* System testing
* Acceptance testing

### Example

For `issueBook()`:

Test:

```text id="s2m8q5"
Book available?
       |
    YES → Issue book
       |
     NO → Display unavailable
```

---

# 12. Phase 6 — Maintenance

After deployment, the system may need:

* Bug fixes
* Performance improvements
* New features
* Security updates
* Requirement changes

Therefore, maintenance continues throughout the software lifecycle.

```text id="n7p3x9"
Deployment
    ↓
Maintenance
    ↓
Changes
    ↓
Updated System
```

---

# 13. Complete OO Development Process

```text id="q4m8v2"
              REQUIREMENTS
                   |
                   ↓
        +-----------------------+
        | OO ANALYSIS           |
        | Identify objects      |
        | relationships         |
        +-----------------------+
                   |
                   ↓
        +-----------------------+
        | OO DESIGN             |
        | Classes, methods,     |
        | architecture          |
        +-----------------------+
                   |
                   ↓
        +-----------------------+
        | IMPLEMENTATION        |
        | Source code           |
        +-----------------------+
                   |
                   ↓
        +-----------------------+
        | TESTING               |
        | Verify behavior       |
        +-----------------------+
                   |
                   ↓
        +-----------------------+
        | MAINTENANCE           |
        | Modify/improve        |
        +-----------------------+
```

---

# 14. Analysis vs Design

This distinction is important for exams.

| Object-Oriented Analysis                 | Object-Oriented Design                   |
| ---------------------------------------- | ---------------------------------------- |
| Focuses on **what** the system should do | Focuses on **how** the system will do it |
| Understands problem domain               | Creates software solution                |
| Identifies objects/classes               | Defines detailed class design            |
| Identifies requirements                  | Defines methods/interfaces               |
| Problem-oriented                         | Solution-oriented                        |

### Easy Memory

> **Analysis = WHAT**

> **Design = HOW**

---

# 15. OO Development Example — Online Shopping System

Consider an online shopping application.

## Requirements

Users should be able to:

* Register
* Login
* Browse products
* Add products to cart
* Place orders
* Make payments

---

## Analysis

Identify objects:

```text id="t7m2q4"
Customer
Product
Cart
Order
Payment
```

Relationships:

```text id="q5v8n1"
Customer ---- owns ----> Cart

Customer ---- places ---> Order

Order ------- contains --> Product

Order ------- uses -----> Payment
```

---

## Design

Define classes:

```text id="p4m9x2"
+----------------------+
|       Customer       |
+----------------------+
| customerId           |
| name                 |
| email                |
+----------------------+
| login()              |
| logout()             |
+----------------------+
```

```text id="d8q2m5"
+----------------------+
|        Order         |
+----------------------+
| orderId              |
| orderDate            |
| status               |
+----------------------+
| createOrder()        |
| cancelOrder()        |
+----------------------+
```

---

## Implementation

Convert the design into code:

```text id="r6x1p9"
Customer.java
Product.java
Cart.java
Order.java
Payment.java
```

---

## Testing

Test:

```text id="f2m7q4"
Login
Cart
Order
Payment
```

---

## Maintenance

Add features such as:

```text id="v9q3m1"
Coupon
Wishlist
Refund
Delivery Tracking
```

---

# 16. Advantages of OO Development

## 1. Reusability

Classes can be reused in multiple applications.

## 2. Modularity

The system is divided into independent classes/modules.

## 3. Maintainability

Changes can be localized.

## 4. Extensibility

New functionality can be added easily.

## 5. Real-World Representation

Real-world entities map naturally to objects.

## 6. Data Security

Encapsulation protects internal data.

## 7. Reduced Complexity

Abstraction hides unnecessary details.

## 8. Easier Testing

Individual classes/components can be tested independently.

---

# 17. OO Development vs Procedural Development

| Object-Oriented Development             | Procedural Development                                 |
| --------------------------------------- | ------------------------------------------------------ |
| Organized around objects                | Organized around functions                             |
| Data + behavior together                | Data and functions often separate                      |
| Supports encapsulation                  | Limited encapsulation                                  |
| Supports inheritance                    | No direct class inheritance concept                    |
| Supports polymorphism                   | Generally not a core feature                           |
| Models real-world entities naturally    | Focuses on procedures/functions                        |
| Better suited for large complex systems | Often suitable for smaller/procedure-oriented problems |

---

# PYQ 1 — SEPTEMBER 2023

## Question

> **"What is OO development? Explain the OO themes?" — 5 Marks**

This question combines:

1. Definition of OO Development
2. OO Themes

For this concept, prepare the **first part** carefully.

---

# 18. Exam Answer — OO Development

> **Object-Oriented Development is a software development approach in which a system is analyzed, designed, and implemented as a collection of interacting objects. Objects contain data representing their state and operations representing their behavior.**
>
> The major stages of OO development include:
>
> ```text
> Requirements
>      ↓
> OO Analysis
>      ↓
> OO Design
>      ↓
> Implementation
>      ↓
> Testing
>      ↓
> Maintenance
> ```
>
> During analysis, objects and their relationships are identified. During design, detailed classes, methods, interfaces, and interactions are defined. The design is then implemented and tested.
>
> OO development provides advantages such as **reusability, modularity, maintainability, extensibility, encapsulation, and better representation of real-world systems**.

---

# PYQ 2 — AUGUST 2025

## Question

> **"What is object oriented development? What are the different phases followed in OO methodology?" — 5 Marks**

This is a **direct and highly important PYQ**.

---

# 19. 5-Mark Exam-Ready Answer

> **Object-Oriented Development (OOD)** is a software development methodology in which the system is analyzed, designed, and implemented using objects and classes. Objects combine data and behavior and interact with each other to fulfill system requirements.
>
> The major phases of OO methodology are:
>
> ### 1. Requirements Analysis
>
> System requirements, user needs, constraints, and business rules are identified.
>
> ### 2. Object-Oriented Analysis
>
> Objects, classes, attributes, behaviors, and relationships in the problem domain are identified.
>
> ### 3. Object-Oriented Design
>
> The analysis model is converted into a detailed software design including classes, methods, interfaces, and architecture.
>
> ### 4. Implementation
>
> The design is converted into source code using an object-oriented programming language.
>
> ### 5. Testing
>
> The implemented system is tested to verify that it satisfies the specified requirements.
>
> ### 6. Maintenance
>
> After deployment, bugs are fixed and new requirements, features, and improvements are incorporated.
>
> The overall process can be represented as:
>
> ```text
> Requirements
>      ↓
> OO Analysis
>      ↓
> OO Design
>      ↓
> Implementation
>      ↓
> Testing
>      ↓
> Maintenance
> ```
>
> Thus, OO methodology provides a systematic approach for developing modular, reusable, maintainable, and extensible software.

---

# 20. Marks-Oriented Breakdown

For the **Aug 2025 5-mark question**, structure your answer like this:

```text
Definition of OO Development        → 1 mark
Requirements Analysis               → 0.5 mark
OO Analysis                         → 0.75 mark
OO Design                           → 0.75 mark
Implementation                      → 0.5 mark
Testing                             → 0.5 mark
Maintenance                         → 0.5 mark
Process diagram / conclusion        → 0.5 mark
```

The exact marking scheme may differ, but this structure ensures that every major point is covered.

---

# 21. Important Difference: OO Analysis, Design and Programming

This is frequently useful when explaining the phases.

```text id="b1q5n8"
                 OO DEVELOPMENT
                       |
          +------------+------------+
          |            |            |
          ↓            ↓            ↓
        OOA           OOD          OOP
          |            |            |
        WHAT          HOW         CODE
```

### OOA

> What objects and requirements exist?

### OOD

> How should those objects/classes be designed?

### OOP

> How will the design be implemented in code?

---

# 22. One-Minute Revision

## Definition

> **OOD = Development of software using interacting objects and classes.**

## Process

```text id="k7m2x4"
Requirements
     ↓
Analysis
     ↓
Design
     ↓
Implementation
     ↓
Testing
     ↓
Maintenance
```

## Easy Memory

> **R → A → D → I → T → M**

**Requirements → Analysis → Design → Implementation → Testing → Maintenance**

---

# 23. Exam Keywords

Use these words in your answer:

* Objects
* Classes
* State
* Behavior
* Encapsulation
* Analysis
* Design
* Implementation
* Testing
* Maintenance
* Reusability
* Modularity
* Maintainability
* Extensibility
* Real-world modeling

---

# 24. PYQ Priority

| Exam          | Question                                  | Priority   |
| ------------- | ----------------------------------------- | ---------- |
| **Sept 2023** | OO Development + OO Themes                | 🔥🔥🔥🔥🔥 |
| **Aug 2025**  | OO Development + Phases of OO Methodology | 🔥🔥🔥🔥🔥 |
| Aug 2024      | No direct PYQ                             | —          |
| Oct 2022      | No direct PYQ                             | —          |

### Frequency

**2 times**

### Status

🔥 **IMPORTANT**

---

# ⭐ Final Memory Formula

```text
OO DEVELOPMENT

Real World
    ↓
Requirements
    ↓
OO Analysis
    ↓
OO Design
    ↓
Object-Oriented Code
    ↓
Testing
    ↓
Maintenance
```

### Most important line to memorize:

> **Object-Oriented Development is the process of analyzing, designing, implementing, testing, and maintaining a software system as a collection of interacting objects and classes.**

### Most important distinction:

> **Analysis = WHAT**

> **Design = HOW**

> **Implementation = CODE**

---

# PYQ STATUS

**Asked twice:**

* Sept 2023
* Aug 2025

🔥 **HIGH PRIORITY — Prepare completely.**
