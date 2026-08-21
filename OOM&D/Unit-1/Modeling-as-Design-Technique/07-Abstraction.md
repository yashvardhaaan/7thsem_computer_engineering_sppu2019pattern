# 7. Abstraction

## Definition

**Abstraction** is the process of **showing only the essential features of an object while hiding unnecessary implementation details**.

In object-oriented methodology, abstraction focuses on **what an object does** rather than **how it does it**.

### Simple Example

Consider a **Car**.

A driver needs to know:

* Start the car
* Accelerate
* Brake
* Turn the steering wheel

The driver does **not** need to know the internal details of:

* Engine combustion
* Fuel injection
* Gear mechanism
* Electronic control system

Therefore:

```text
What the car does → Visible
How the car does it → Hidden
```

This is **abstraction**.

---

## Why is Abstraction Important?

### 1. Reduces Complexity

Abstraction hides unnecessary details and allows us to focus only on important features.

### 2. Improves Understandability

Users and developers can work with a simple interface without understanding the complete internal implementation.

### 3. Provides Security

Internal implementation details can be hidden from the outside world.

### 4. Improves Maintainability

The internal implementation can be changed without affecting the code that uses the abstraction.

### 5. Supports Modularity

Large systems can be divided into smaller components with clearly defined responsibilities.

---

# Abstraction in Java

Java provides abstraction mainly through:

1. **Abstract classes**
2. **Interfaces**

---

## Abstract Class

An **abstract class** is a class declared using the `abstract` keyword.

It can contain:

* Abstract methods
* Concrete methods
* Variables
* Constructors

An **abstract method** has a declaration but no implementation.

### Example

```java
abstract class Vehicle {

    abstract void start();

    void stop() {
        System.out.println("Vehicle stopped");
    }
}

class Car extends Vehicle {

    @Override
    void start() {
        System.out.println("Car starts using engine");
    }
}
```

Here:

```text
Vehicle
   ↓
abstract start()
   ↓
Car provides implementation
```

The `Vehicle` class tells us **what operation is required** (`start()`), while `Car` defines **how it is performed**.

---

# Abstract Class vs Abstraction

These two terms are related but **not identical**.

| Abstraction                                           | Abstract Class                            |
| ----------------------------------------------------- | ----------------------------------------- |
| An OOP concept                                        | A programming construct                   |
| Hides unnecessary implementation details              | Used to implement abstraction             |
| Focuses on what an object does                        | Can contain abstract and concrete methods |
| Can be achieved using interfaces and abstract classes | Declared using `abstract` keyword         |

**Remember:**

> **Abstraction is the concept; an abstract class is one way to implement it.**

---

# PYQ 1 — Sept 2023

### Question

> **Explain the following terms with respect to object oriented methodology: i) Abstraction ii) Encapsulation iii) Sharing** — 5 marks

### i) Abstraction

Abstraction is the process of **hiding unnecessary implementation details and showing only the essential features** of an object.

For example, while using an ATM, the user performs operations such as withdrawal and balance checking without knowing the internal implementation of the banking system.

---

### ii) Encapsulation

Encapsulation is the process of **combining data and the methods that operate on that data into a single unit**, usually a class, while controlling access to the data.

For example:

```java
class Account {

    private double balance;

    public void deposit(double amount) {
        balance += amount;
    }

    public double getBalance() {
        return balance;
    }
}
```

Here, `balance` is hidden using `private`, and it is accessed through methods.

---

### iii) Sharing

**Sharing** means allowing objects or classes to **reuse common features or functionality**.

Inheritance is an important mechanism for sharing common behavior.

Example:

```text
        Vehicle
        /     \
      Car     Bike
```

Both `Car` and `Bike` can share common features inherited from `Vehicle`.

---

# PYQ 2 — Aug 2024

### Question

> **What do you mean by abstract class? Explain with example.** — 4 marks

### Answer

An **abstract class** is a class declared using the `abstract` keyword that cannot normally be instantiated directly. It may contain one or more abstract methods as well as concrete methods.

### Example

```java
abstract class Animal {

    abstract void sound();

    void eat() {
        System.out.println("Animal eats");
    }
}

class Dog extends Animal {

    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}
```

Here, `Animal` is an abstract class. The method `sound()` is abstract and its implementation is provided by the `Dog` class.

### Key Points

* Declared using `abstract`.
* Cannot be directly instantiated.
* Can contain abstract methods.
* Can contain concrete methods.
* Can contain variables and constructors.
* Subclasses provide implementations for abstract methods.

---

# ⭐ Exam Shortcut

If the question is simply **"Explain Abstraction"**, write:

> **Abstraction is the process of hiding unnecessary implementation details and showing only the essential features of an object. It focuses on what an object does rather than how it does it. In Java, abstraction can be achieved using abstract classes and interfaces.**

If the question asks **"Abstract class"**, specifically explain the `abstract` class and give the Java example above.
