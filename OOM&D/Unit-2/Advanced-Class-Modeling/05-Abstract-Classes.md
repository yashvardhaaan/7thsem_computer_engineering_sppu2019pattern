# UNIT II — Advanced Class Modeling and State Modeling

# 05 — Abstract Classes

## 1. Introduction

An **abstract class** is a class that is used as a general or incomplete class and cannot normally be instantiated directly.

It is mainly used to provide common:

- Attributes
- Operations
- Structure
- Behavior

for its subclasses.

An abstract class is useful when several classes share common properties or behavior, but the general class itself does not represent a complete object.

---

# 2. Definition of Abstract Class

> An abstract class is a class that cannot be directly instantiated and is intended to be inherited by other classes.

An abstract class may contain:

- Concrete attributes
- Concrete methods/operations
- Abstract operations
- Common behavior for subclasses

### Example

Consider different types of vehicles:

```text
              Vehicle
            <<abstract>>
                 |
        +--------+--------+
        |                 |
       Car              Bike
```

`Vehicle` is an abstract class because we normally create specific vehicles such as `Car` or `Bike`, rather than a generic `Vehicle`.

---

# 3. Why Use Abstract Classes?

Abstract classes are used when:

1. Several classes share common properties.
2. Several classes share common operations.
3. The parent class is too general to create objects directly.
4. Common behavior should be defined in one place.
5. Subclasses should provide specific implementations.

### Example

```text
Vehicle
   |
   +---- Car
   |
   +---- Bike
   |
   +---- Bus
```

All vehicles may have:

```text
speed
color
start()
stop()
```

But each vehicle may have different implementations of:

```text
move()
```

Therefore, `Vehicle` can be abstract.

---

# 4. Abstract Class in UML

In UML, an abstract class is commonly represented by writing the class name in **italic form**.

It may also be explicitly marked with:

```text
<<abstract>>
```

### Example

```text
+----------------------+
|     <<abstract>>     |
|       Vehicle        |
+----------------------+
| speed                |
| color                |
+----------------------+
| start()              |
| stop()               |
| move()               |
+----------------------+
          △
          |
      +---+---+
      |       |
     Car     Bike
```

---

# 5. Abstract Operation

An **abstract operation** is an operation declared in an abstract class but without a complete implementation.

It specifies what the subclass must provide.

### Example

```text
Vehicle
<<abstract>>
------------------
move()
```

Subclasses can implement it differently:

```text
Car
------------------
move()

Bike
------------------
move()
```

---

# 6. Abstract Class vs Concrete Class

| Abstract Class | Concrete Class |
|---|---|
| Cannot normally be instantiated directly | Can be instantiated |
| Used as a general/base class | Used to create actual objects |
| May contain abstract operations | Contains implemented operations |
| Provides common structure | Represents a complete class |
| Example: Vehicle | Example: Car |

### Example

```text
Vehicle
<<abstract>>
       |
       +---- Car
       |
       +---- Bike
```

You create:

```text
Car
Bike
```

rather than a direct object of:

```text
Vehicle
```

---

# 7. Example — Shape

A common example is a shape hierarchy.

```text
              Shape
           <<abstract>>
                |
       +--------+--------+
       |        |        |
    Circle   Rectangle  Triangle
```

The abstract class `Shape` can contain common operations:

```text
area()
display()
```

Each subclass can provide its own implementation of `area()`.

### UML Representation

```text
+------------------------+
|      <<abstract>>      |
|         Shape          |
+------------------------+
| color                  |
+------------------------+
| area()                 |
| display()              |
+------------------------+
           △
           |
    +------+-------+
    |      |       |
    |      |       |
 Circle Rectangle Triangle
```

---

# 8. Example — Employee

Consider an employee management system.

There may be different types of employees:

```text
Employee
   |
   +---- Manager
   |
   +---- Developer
   |
   +---- Tester
```

The `Employee` class may contain common attributes:

```text
employeeId
name
salary
```

and common operations:

```text
login()
logout()
```

However, the specific work performed by each employee may be different.

Therefore, `Employee` can be modeled as an abstract class.

```text
+--------------------------+
|       <<abstract>>       |
|         Employee         |
+--------------------------+
| employeeId               |
| name                     |
| salary                   |
+--------------------------+
| login()                  |
| logout()                 |
| work()                   |
+--------------------------+
            △
            |
      +-----+-----+
      |           |
   Manager     Developer
```

---

# 9. Features of Abstract Classes

Important features include:

### 1. Cannot be directly instantiated

An abstract class is not normally used to create direct objects.

```text
Vehicle → Cannot directly create generic Vehicle object
```

Instead:

```text
Car
Bike
Bus
```

objects are created.

---

### 2. Can contain common attributes

Example:

```text
Vehicle
----------------
speed
color
brand
```

These attributes can be inherited by subclasses.

---

### 3. Can contain concrete operations

Example:

```text
start()
stop()
```

The common implementation can be provided by the abstract class.

---

### 4. Can contain abstract operations

Example:

```text
move()
```

The subclasses can provide their own implementation.

---

### 5. Supports inheritance

Abstract classes are generally used as base classes.

```text
Abstract Class
      |
      +---- Subclass 1
      |
      +---- Subclass 2
```

---

# 10. Abstract Class and Inheritance

Abstract classes are closely related to inheritance.

### Example

```text
              Animal
           <<abstract>>
                 △
                 |
        +--------+--------+
        |                 |
       Dog               Cat
```

Common behavior:

```text
eat()
sleep()
```

Specific behavior:

```text
Dog → bark()
Cat → meow()
```

The subclasses inherit common features from `Animal`.

---

# 11. Advantages of Abstract Classes

Abstract classes provide several benefits:

1. **Code Reusability**

Common attributes and operations can be defined once.

2. **Common Interface**

Subclasses follow a common structure.

3. **Avoids Duplicate Code**

Shared functionality does not need to be repeated.

4. **Supports Polymorphism**

Different subclasses can provide different implementations of common operations.

5. **Improves Modeling**

General concepts can be represented clearly.

6. **Enforces Common Behavior**

Subclasses can be required to implement specific operations.

---

# 12. Disadvantages of Abstract Classes

Some limitations are:

1. They cannot normally be instantiated directly.
2. They can increase model complexity.
3. Deep inheritance hierarchies can become difficult to maintain.
4. Changes in the abstract class can affect many subclasses.

---

# 13. Abstract Class vs Interface

Although an abstract class and an interface are different concepts, they are sometimes compared.

| Abstract Class | Interface |
|---|---|
| Represents a general/base class | Represents a contract |
| Can contain attributes | Mainly specifies behavior/contract |
| Can contain implemented operations | Defines operations that implementing classes provide |
| Used through inheritance | Used through implementation |
| Can provide common state and behavior | Primarily defines common behavior |

For this syllabus, focus mainly on the concept of the **abstract class in UML class modeling**.

---

# 14. Real-World Example — Payment

Consider a payment system.

Different types of payment may exist:

```text
                 Payment
              <<abstract>>
                    |
          +---------+---------+
          |         |         |
        Card      UPI       Cash
```

Common operations:

```text
pay()
refund()
```

Each payment type can implement these operations differently.

---

# 15. Real-World Example — Vehicle

```text
                 Vehicle
              <<abstract>>
                    |
        +-----------+-----------+
        |           |           |
       Car         Bike        Bus
```

Common attributes:

```text
vehicleNo
brand
speed
```

Common operations:

```text
start()
stop()
```

Specific operation:

```text
move()
```

can be implemented differently by each subclass.

---

# 16. Abstract Class Example for Exam

### Question

> Explain abstract class with an example.

### Answer

An abstract class is a class that cannot normally be instantiated directly. It is used as a base class for other classes and defines common attributes and operations.

For example, `Vehicle` can be an abstract class:

```text
+----------------------+
|    <<abstract>>      |
|       Vehicle        |
+----------------------+
| vehicleNo            |
| brand                |
| speed                |
+----------------------+
| start()              |
| stop()               |
| move()               |
+----------------------+
          △
          |
      +---+---+
      |       |
     Car     Bike
```

Here, `Vehicle` provides common properties and behavior, while `Car` and `Bike` provide specific implementations.

The abstract class improves **code reuse, abstraction, and consistency** among subclasses.

---

# 17. PYQ — August 2024

> **"What do you mean by abstract class? Explain with example." — 4 marks**

## Answer

### Definition

> An abstract class is a class that cannot normally be instantiated directly and is used as a base class for its subclasses.

It contains common attributes and operations that can be shared by its subclasses.

### Example

Consider a vehicle system:

```text
                 Vehicle
              <<abstract>>
                    △
                    |
            +-------+-------+
            |               |
           Car             Bike
```

The `Vehicle` class may contain:

```text
vehicleNo
brand
speed
start()
stop()
```

`Car` and `Bike` inherit these common features and can provide their own implementation of specific operations such as `move()`.

### UML Representation

```text
+----------------------+
|    <<abstract>>      |
|       Vehicle        |
+----------------------+
| vehicleNo            |
| brand                |
| speed                |
+----------------------+
| start()              |
| stop()               |
| move()               |
+----------------------+
          △
          |
      +---+---+
      |       |
     Car     Bike
```

### Advantages

- Provides common structure.
- Promotes code reuse.
- Avoids duplication.
- Supports inheritance and polymorphism.
- Allows subclasses to provide specific behavior.

---

# 18. 4-Mark Answer Structure

For a 4-mark question, write:

### 1. Definition

An abstract class is a class that cannot normally be instantiated directly.

### 2. Purpose

It provides common attributes and operations for subclasses.

### 3. UML Diagram

```text
              Vehicle
           <<abstract>>
                 △
                 |
          +------+------+
          |             |
         Car           Bike
```

### 4. Example Explanation

`Vehicle` contains common features such as `speed`, `start()` and `stop()`, while `Car` and `Bike` provide specific behavior.

---

# 19. Important Difference — Abstract vs Concrete Class

```text
Abstract Class
      |
      | inherited by
      v
Concrete Class
      |
      | creates
      v
    Object
```

Example:

```text
Vehicle
<<abstract>>
      |
      v
Car
      |
      v
Car Object
```

---

# 20. Abstract Class — UML Notation

Remember:

```text
<<abstract>>
```

or the class name can be shown in **italic style** in UML.

### Example

```text
+----------------------+
|    <<abstract>>      |
|       Vehicle        |
+----------------------+
```

---

# 21. Quick Revision

## Abstract Class

```text
General / incomplete class
Cannot normally be instantiated
Used as a base class
Provides common attributes and operations
May contain abstract operations
```

## Example

```text
              Vehicle
           <<abstract>>
                 △
                 |
          +------+------+
          |             |
         Car           Bike
```

## Key Benefits

```text
Code Reuse
Common Structure
Abstraction
Polymorphism
Less Duplication
```

---

# 22. Exam Memory Trick

Remember:

```text
ABSTRACT CLASS
        ↓
General Class
        ↓
Cannot directly create object
        ↓
Inherited by subclasses
        ↓
Subclasses provide specific behavior
```

### Example

```text
Vehicle → Car, Bike, Bus

Shape → Circle, Rectangle, Triangle

Employee → Manager, Developer, Tester
```

---

# 23. Common Mistakes

### Mistake 1

Saying an abstract class cannot contain any implementation.

This is incorrect.

An abstract class can contain:

- Concrete attributes
- Concrete operations
- Abstract operations

---

### Mistake 2

Confusing abstract class with a normal parent class.

An abstract class is specifically intended to represent a general concept that is not normally instantiated directly.

---

### Mistake 3

Forgetting UML notation.

Remember:

```text
<<abstract>>
```

or italic class name.

---

# 24. Important Definitions

### Abstract Class

> A class that cannot normally be instantiated directly and is intended to be inherited by subclasses.

### Abstract Operation

> An operation declared without a complete implementation that must be provided by appropriate subclasses.

### Concrete Class

> A class that can be instantiated to create actual objects.

---

# 25. PYQ Priority

| Topic | Year | Marks | Priority |
|---|---|---:|---|
| Abstract Class | Aug 2024 | 4 | 🔥🔥🔥 |

---

# 26. Most Important Questions

1. **What do you mean by abstract class?**
2. **Explain abstract class with an example.**
3. **Explain abstract class using UML notation.**
4. **Differentiate between abstract and concrete classes.**
5. **What is an abstract operation?**
6. **Explain the advantages of abstract classes.**

---

# 27. Last-Minute Revision

```text
ABSTRACT CLASS
→ General/base class
→ Cannot normally be instantiated
→ Used by subclasses
→ Contains common attributes/operations
→ Can contain abstract operations
→ Supports inheritance
→ Promotes reuse and abstraction

UML:
<<abstract>>

Example:

              Vehicle
           <<abstract>>
                 △
                 |
          +------+------+
          |             |
         Car           Bike
```

## Most Important PYQ

> **"What do you mean by abstract class? Explain with example." — Aug 2024 — 4 marks**

## Must Memorize

```text
Definition
+
UML notation
+
Vehicle example
+
Advantages
```