# 11. Generalization and Inheritance

## 1. Generalization

**Generalization** is the process of identifying common characteristics of multiple classes and placing those common characteristics into a **more general superclass**.

It represents an **"is-a" relationship**.

### Example

Suppose we have:

* `Car`
* `Bike`
* `Truck`

All of them are types of `Vehicle`.

Instead of repeating common properties in every class, we create a general class `Vehicle`.

```text
                 Vehicle
                    △
             ┌──────┼──────┐
             │      │      │
            Car    Bike   Truck
```

Common features such as:

```text
Vehicle
--------
speed
color
start()
stop()
```

can be placed in the superclass.

---

# 2. Inheritance

**Inheritance** is the mechanism by which a subclass **acquires or reuses properties and behaviors of a superclass**.

For example:

```java
class Vehicle {

    void start() {
        System.out.println("Vehicle starts");
    }
}

class Car extends Vehicle {

    void drive() {
        System.out.println("Car is driving");
    }
}
```

Here:

```text
Vehicle
   ↑
   |
  Car
```

`Car` inherits the `start()` method from `Vehicle`.

Therefore:

```text
Car
 ↓
start()     ← inherited
drive()     ← own method
```

---

# 3. Generalization vs Inheritance

These terms are closely related but should not be treated as exactly identical.

| Generalization                             | Inheritance                                  |
| ------------------------------------------ | -------------------------------------------- |
| Modeling/design concept                    | Programming mechanism                        |
| Identifies common characteristics          | Reuses superclass features                   |
| Creates a superclass-subclass relationship | Implements that relationship in code         |
| Used in UML                                | Commonly implemented using `extends` in Java |
| Example: Car is a Vehicle                  | `class Car extends Vehicle`                  |

### Easy Memory Trick

```text
Generalization → UML / Design
Inheritance    → Code / Reuse
```

---

# 4. Generalization Relationship in UML

In UML, generalization is represented using a **solid line with a hollow triangular arrowhead** pointing toward the superclass.

```text
          Vehicle
             △
             |
            Car
```

The triangle points toward the **more general class**.

### Example

```text
             Vehicle
                △
                |
              Car
```

Meaning:

> **Car is a Vehicle.**

---

# 5. Why Use Generalization?

### 1. Avoids Duplication

Common attributes and operations can be defined once in the superclass.

### 2. Promotes Reusability

Subclasses can reuse the features of the superclass.

### 3. Improves Maintainability

Changes to common functionality can be made in the superclass.

### 4. Represents Real-World Relationships

It naturally represents **is-a relationships**.

Example:

```text
Dog is an Animal
Car is a Vehicle
Manager is an Employee
```

### 5. Supports Polymorphism

A superclass reference can refer to objects of its subclasses.

```java
Vehicle v = new Car();
```

---

# 6. Generalization Example

Consider an employee management system.

```text
                    Employee
                       △
              ┌────────┴────────┐
              │                 │
            Manager          Developer
```

### Employee

```text
Employee
--------
name
id
salary
work()
```

### Manager

```text
Manager
--------
manageTeam()
```

### Developer

```text
Developer
---------
writeCode()
```

`Manager` and `Developer` inherit common features from `Employee`.

---

# 7. Generalization Hierarchy

A system may have multiple levels of generalization.

```text
                    Vehicle
                       △
                       |
                    Automobile
                       △
                       |
                      Car
                       △
                       |
                   SportsCar
```

This is called a **generalization hierarchy**.

Each lower-level class becomes more specialized.

```text
General
  ↓
More Specific
  ↓
More Specialized
```

---

# PYQ — Aug 2025

### Question

> **Write a short note on: i) Links and Associations ii) Generalization and Inheritance** — 5 marks

## Answer — Generalization and Inheritance

**Generalization** is the process of identifying common characteristics of multiple classes and placing them in a common superclass. It represents an **is-a relationship**.

Example:

```text
              Vehicle
                 △
              ┌──┴──┐
             Car   Bike
```

Here, `Car` and `Bike` are specialized forms of `Vehicle`.

**Inheritance** is the mechanism through which a subclass acquires the properties and behaviors of its superclass.

Example:

```java
class Vehicle {
    void start() {
        System.out.println("Start");
    }
}

class Car extends Vehicle {
    void drive() {
        System.out.println("Drive");
    }
}
```

Here, `Car` inherits `start()` from `Vehicle`.

### Benefits

* Code reusability
* Avoids duplication
* Easier maintenance
* Represents real-world **is-a** relationships
* Supports polymorphism

### Conclusion

> **Generalization is primarily a modeling concept used to create a superclass from common features, while inheritance is the implementation mechanism used to reuse those features in subclasses.**

---

# ⭐ Exam Shortcut

Remember:

```text
GENERALIZATION
       ↓
Find common features
       ↓
Create Superclass
       ↓
       Vehicle
          △
        ┌─┴─┐
       Car Bike


INHERITANCE
       ↓
Subclass gets superclass features
       ↓
class Car extends Vehicle
```

### One-Line Difference

> **Generalization is the process of forming a general superclass from specialized classes, whereas inheritance allows specialized classes to reuse the superclass's properties and methods.**

**PYQ Status: 🔥 IMPORTANT**
