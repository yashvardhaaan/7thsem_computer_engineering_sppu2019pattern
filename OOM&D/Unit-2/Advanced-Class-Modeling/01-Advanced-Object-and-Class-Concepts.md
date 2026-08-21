# UNIT II — Advanced Class Modeling and State Modeling

# 01 — Advanced Object and Class Concepts

## 1. Introduction

In Object-Oriented Modeling, **objects and classes** are the fundamental building blocks used to represent a real-world system.

An **object** represents a specific entity, while a **class** describes the common properties and behavior of a group of objects.

Advanced class modeling extends the basic class model by introducing concepts such as:

- Analysis Classes
- Boundary Classes
- Control Classes
- Entity Classes
- Advanced Class Diagrams
- Association Ends
- N-ary Associations
- Aggregation and Composition
- Abstract Classes
- Multiple Inheritance
- Metadata
- Reification
- Constraints
- Derived Data
- Packages

---

## 2. Object

An **object** is an individual entity that has:

1. **Identity**
2. **State**
3. **Behavior**

### Example

```text
+----------------------+
|       Student        |
+----------------------+
| Roll No: 101         |
| Name: Yash           |
| Branch: Computer     |
+----------------------+
```

Here:

- **Identity** → Roll No. 101
- **State** → Name, Branch
- **Behavior** → Register course, Pay fees, Attend exam

### Definition

> An object is an instance of a class that has identity, state, and behavior.

---

## 3. Class

A **class** is a blueprint or template that defines the properties and behavior of objects.

### Example

```text
+----------------------+
|       Student        |
+----------------------+
| rollNo               |
| name                 |
| branch               |
+----------------------+
| registerCourse()     |
| payFees()            |
| attendExam()         |
+----------------------+
```

Objects can then be created from this class.

```text
Student
   |
   +----> Yash
   |
   +----> Rahul
   |
   +----> Priya
```

### Definition

> A class is a collection of objects having common attributes, operations, relationships, and semantics.

---

## 4. Object vs Class

| Object | Class |
|---|---|
| Instance of a class | Blueprint or template |
| Represents a specific entity | Represents a group of similar objects |
| Has actual values | Defines attributes |
| Exists at runtime | Defines structure and behavior |
| Example: Student Yash | Example: Student |

### Easy Memory Trick

```text
Class  → Blueprint
Object → Actual Instance
```

---

# 5. Analysis Classes

An **analysis class** is a class identified during the analysis phase of Object-Oriented Development to represent an important concept in the problem domain.

Analysis classes help identify:

- Important objects
- Responsibilities
- Relationships
- System behavior
- Information that must be stored

### Example — Hotel Management System

Possible analysis classes are:

```text
Customer
Hotel
Room
Reservation
Payment
Staff
```

---

# 6. Types of Analysis Classes

There are three major types of analysis classes:

1. **Boundary Class**
2. **Control Class**
3. **Entity Class**

```text
                 Analysis Classes
                       |
        +--------------+--------------+
        |              |              |
     Boundary       Control         Entity
```

---

# 7. Boundary Class

A **boundary class** represents the interaction between the system and external actors or users.

It is responsible for:

- Accepting user input
- Displaying output
- Providing user interfaces
- Communicating with external systems

### Examples

```text
LoginScreen
ReservationForm
PaymentPage
ATMInterface
SearchPage
```

### Example

```text
Customer
    |
    v
+------------------+
| ReservationForm  |
| Boundary Class   |
+------------------+
```

The `ReservationForm` acts as an interface between the customer and the system.

---

# 8. Control Class

A **control class** manages the flow or coordination of a particular use case or operation.

It is responsible for:

- Receiving requests from boundary classes
- Controlling the flow of operations
- Coordinating different objects
- Implementing business/process logic

### Examples

```text
ReservationController
PaymentController
LoginController
OrderController
```

### Example

```text
Customer
    |
    v
ReservationForm
    |
    v
+-----------------------+
| ReservationController |
| Control Class         |
+-----------------------+
    |
    v
Reservation
```

---

# 9. Entity Class

An **entity class** represents important business information or concepts in the system.

Entity classes generally contain data that needs to be stored or maintained.

### Examples

```text
Customer
Room
Reservation
Payment
Employee
Product
Account
```

### Example

In a Hotel Management System:

```text
Customer
Room
Reservation
Payment
```

are entity classes.

---

# 10. Boundary vs Control vs Entity

| Class Type | Main Purpose | Example |
|---|---|---|
| Boundary | User/external interaction | LoginPage |
| Control | Controls process/business flow | LoginController |
| Entity | Stores business information | Customer |

### Easy Way to Remember

```text
Boundary → INTERACTION
Control  → LOGIC
Entity   → DATA
```

---

# 11. Methods of Identifying Analysis Classes

There are several methods for identifying analysis classes.

## 11.1 Noun Phrase Approach

Identify important **nouns** from the problem statement and consider them as candidate classes.

### Example

Problem statement:

> A customer makes a reservation for a hotel room and makes payment.

Important nouns:

```text
Customer
Reservation
Hotel
Room
Payment
```

These can be considered candidate classes.

---

## 11.2 Use-Case Analysis

Analyze each use case and identify the objects involved in performing that use case.

### Example

Use case:

> Book Hotel Room

Possible classes:

```text
Customer
Room
Reservation
Payment
```

---

## 11.3 Domain Knowledge

Use knowledge about the application domain to identify important concepts.

### Example — Banking System

```text
Customer
Account
Transaction
Loan
Bank
```

Domain experts can also help identify important classes.

---

## 11.4 Identifying Responsibilities

Determine which object is responsible for performing a particular operation.

### Example

```text
Customer      → Provides customer information
Reservation   → Stores booking information
Payment       → Records payment
Room          → Stores room information
```

This helps identify classes and assign responsibilities.

---

## 11.5 Identifying Real-World Entities

Identify physical and conceptual entities that exist in the real-world problem domain.

### Example — Library System

```text
Book
Member
Librarian
Issue
Return
Fine
```

These can become candidate analysis classes.

---

# 12. Steps for Identifying Analysis Classes

The general process can be represented as:

```text
Problem Statement
       |
       v
Identify Important Nouns
       |
       v
Find Candidate Classes
       |
       v
Remove Irrelevant Classes
       |
       v
Identify Responsibilities
       |
       v
Identify Relationships
       |
       v
Finalize Analysis Classes
```

---

# 13. Example — Hotel Management System

Consider a Hotel Management System.

### Candidate Classes

```text
Customer
Hotel
Room
Reservation
Payment
Staff
```

### Possible Relationships

```text
Customer ───── makes ───── Reservation

Reservation ───── reserves ───── Room

Customer ───── makes ───── Payment

Hotel ───── contains ───── Room

Staff ───── manages ───── Hotel
```

### Simplified Class Model

```text
+----------------+
|    Customer    |
+----------------+
| customerId     |
| name           |
+----------------+
        |
        | makes
        v
+----------------+
|  Reservation   |
+----------------+
| reservationId  |
| date           |
+----------------+
        |
        | reserves
        v
+----------------+
|      Room      |
+----------------+
| roomNo         |
| type           |
| price          |
+----------------+

Customer --------> Payment

Hotel -----------> Room
```

---

# 14. Advanced Class Diagram

An advanced class diagram provides a more detailed representation of the classes and relationships in a system.

It may contain:

- Classes
- Attributes
- Operations
- Associations
- Association names
- Multiplicity
- Generalization
- Aggregation
- Composition
- Constraints
- Abstract classes
- Packages

### General Structure

```text
+--------------------------------+
|            Class               |
+--------------------------------+
| Attributes                     |
| - attribute1                   |
| - attribute2                   |
+--------------------------------+
| Operations                     |
| + operation1()                 |
| + operation2()                 |
+--------------------------------+
```

---

# 15. Advanced Class Modeling — Important Concepts

The following concepts are commonly used in advanced class modeling:

### Association

Represents a relationship between classes.

### Association End

Represents the endpoint of an association and provides information such as role and multiplicity.

### N-ary Association

Represents an association involving three or more classes.

### Aggregation

Represents a weak whole-part relationship.

### Composition

Represents a strong whole-part relationship.

### Abstract Class

A class that cannot normally be instantiated directly.

### Multiple Inheritance

A class inherits features from more than one superclass.

### Metadata

Data that describes other data.

### Reification

Converting an association or concept into an explicit class/object.

### Constraints

Rules or restrictions that must be satisfied by the model.

### Derived Data

Data calculated from other stored data.

### Package

A mechanism for grouping related model elements.

---

# 16. PYQ — Aug 2025

> **"Draw Advance Class diagram for Hotel Management System." — 5 marks**

## Answer

For a Hotel Management System, important classes can be:

```text
Customer
Hotel
Room
Reservation
Payment
Staff
```

### Advanced Class Diagram

```text
+------------------+
|     Customer     |
+------------------+
| customerId       |
| name             |
| phone            |
+------------------+
        |
        | makes
        | 1
        v
+------------------+
|   Reservation    |
+------------------+
| reservationId    |
| bookingDate      |
| checkInDate      |
| checkOutDate     |
+------------------+
        |
        | reserves
        v
+------------------+
|       Room       |
+------------------+
| roomNo           |
| roomType         |
| price            |
| status           |
+------------------+

+------------------+
|      Hotel       |
+------------------+
| hotelId          |
| name             |
| address          |
+------------------+
        |
        | contains
        v
      Room

Customer
    |
    | makes
    v
+------------------+
|     Payment      |
+------------------+
| paymentId        |
| amount           |
| paymentDate      |
+------------------+

Hotel
    |
    | employs
    v
+------------------+
|      Staff       |
+------------------+
| staffId          |
| name             |
| role             |
+------------------+
```

### Important Points for Exam

For a 5-mark diagram:

1. Identify relevant classes.
2. Show important attributes.
3. Show relationships.
4. Mention multiplicities where possible.
5. Draw a clean and understandable UML diagram.

---

# 17. PYQ — Aug 2024

> **"Explain different methods of identifying analysis classes." — 6 marks**

## Answer

Analysis classes can be identified using the following methods:

### 1. Noun Phrase Approach

Important nouns from the problem statement are identified as candidate classes.

**Example:**

> Customer books a room and makes payment.

Candidate classes:

```text
Customer
Room
Booking
Payment
```

### 2. Use-Case Analysis

The use cases are studied to identify objects involved in performing system operations.

For the use case **Book Room**:

```text
Customer
Room
Reservation
Payment
```

### 3. Domain Knowledge

Knowledge of the application domain is used to identify important concepts.

For a banking system:

```text
Customer
Account
Transaction
Loan
```

### 4. Identifying Responsibilities

Determine which object is responsible for performing a particular operation.

Example:

```text
Customer    → Provides customer details
Account     → Maintains account balance
Transaction → Records transaction
```

### 5. Identifying Real-World Entities

Identify physical and conceptual entities from the real-world problem.

For a library:

```text
Book
Member
Librarian
Fine
Issue
```

### Conclusion

Analysis classes are identified by examining the **problem statement, use cases, domain knowledge, responsibilities, and real-world entities**.

---

# 18. PYQ — Oct 2022

> **"What are different type of analysis classes? Explain with an example." — 6 marks**

## Answer

There are three major types of analysis classes:

### 1. Boundary Class

A boundary class handles interaction between the user/external system and the application.

**Examples:**

```text
LoginScreen
ReservationForm
PaymentPage
```

### 2. Control Class

A control class controls the flow of a particular operation or use case.

**Examples:**

```text
ReservationController
PaymentController
LoginController
```

### 3. Entity Class

An entity class represents important business information or data.

**Examples:**

```text
Customer
Room
Reservation
Payment
```

### Example — Hotel Management System

```text
Customer
    |
    v
+----------------------+
|  ReservationForm     |
|  Boundary Class      |
+----------------------+
    |
    v
+-----------------------+
| ReservationController |
| Control Class         |
+-----------------------+
    |
    v
+----------------------+
|    Reservation       |
|    Entity Class      |
+----------------------+
```

### Conclusion

```text
Boundary → User Interaction
Control  → Business/Process Control
Entity   → Business Data
```

---

# 19. Important Definitions

### Object

> An object is an instance of a class having identity, state, and behavior.

### Class

> A class is a blueprint that defines the common attributes and operations of objects.

### Analysis Class

> An analysis class represents an important concept or entity identified during the analysis of a system.

### Boundary Class

> A boundary class represents interaction between the system and external actors.

### Control Class

> A control class manages the flow and coordination of a use case or system operation.

### Entity Class

> An entity class represents persistent business information or concepts in the system.

---

# 20. Exam Quick Revision

## Object

```text
Identity + State + Behavior
```

## Class

```text
Blueprint / Template of Objects
```

## Analysis Classes

```text
1. Boundary
2. Control
3. Entity
```

## Boundary

```text
Interaction
```

## Control

```text
Logic / Process
```

## Entity

```text
Data / Business Information
```

## Methods of Identifying Analysis Classes

```text
1. Noun Phrase
2. Use Case
3. Domain Knowledge
4. Responsibilities
5. Real-World Entities
```

### Mnemonic

**NUDRE**

```text
N → Noun Phrase
U → Use Case
D → Domain Knowledge
R → Responsibilities
E → Real-World Entities
```

---

# 21. PYQ Priority

| Topic | Year | Marks | Priority |
|---|---|---:|---|
| Advanced Class Diagram — Hotel Management System | Aug 2025 | 5 | 🔥🔥🔥 |
| Methods of Identifying Analysis Classes | Aug 2024 | 6 | 🔥🔥🔥 |
| Types of Analysis Classes | Oct 2022 | 6 | 🔥🔥🔥 |

---

# 22. Most Important Questions

1. **Draw an advanced class diagram for Hotel Management System.**
2. **Explain different methods of identifying analysis classes.**
3. **What are the different types of analysis classes? Explain with an example.**
4. **Explain Boundary, Control and Entity classes.**
5. **Differentiate between Boundary, Control and Entity classes.**
6. **Define object and class with suitable examples.**

---

# 23. Last-Minute Revision

If you have very little time, memorize:

```text
OBJECT
Identity + State + Behavior

CLASS
Blueprint of objects

ANALYSIS CLASSES
1. Boundary
2. Control
3. Entity

BOUNDARY
User interaction

CONTROL
Process / business logic

ENTITY
Business data

IDENTIFICATION METHODS
1. Noun Phrase
2. Use Case
3. Domain Knowledge
4. Responsibilities
5. Real-World Entities
```

## Highest Priority

- 🔥 **Hotel Management Advanced Class Diagram**
- 🔥 **Methods of Identifying Analysis Classes**
- 🔥 **Types of Analysis Classes**