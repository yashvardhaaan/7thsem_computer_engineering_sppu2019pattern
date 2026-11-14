# Unit VI — Design Pattern Fundamentals



PYQ priority: Very high

Prepare first



Design Pattern Fundamentals is the foundation of Unit VI. Understand the definition, characteristics, categories and elements of patterns before studying individual patterns such as Forwarder–Receiver, Client–Dispatcher–Server, Publisher–Subscriber and Command Processor.

## 1. What is a design pattern?

Definition: A design pattern is a general, reusable solution to a commonly occurring problem in software design. It provides a proven approach to solving a design problem in a particular context.

A design pattern is not a complete program or ready-made code. It is a template that describes how classes and objects should be organized and interact to solve a recurring problem.

Example:

Suppose multiple parts of an application need access to a single configuration object.

Instead of creating multiple configuration objects, the Singleton pattern ensures that only one instance of the class is created and provides a common access point.

Need for design patterns:

1. Provide reusable solutions to common problems.
2. Improve software design quality.
3. Reduce development time.
4. Improve code maintainability.
5. Promote loose coupling.
6. Improve communication between developers.
7. Provide proven design approaches.
8. Make software easier to understand and extend.

Real-world examples:

| Problem                                              | Design pattern |
| ---------------------------------------------------- | -------------- |
| Only one instance of a class is required             | Singleton      |
| Create objects without exposing construction details | Factory Method |
| Convert one interface into another                   | Adapter        |
| Add functionality dynamically                        | Decorator      |
| Notify multiple objects about changes                | Observer       |
| Encapsulate a request as an object                   | Command        |

## 2. What makes a pattern?

Not every programming solution is a design pattern.

A pattern must describe a recurring problem and a reusable solution that works in a particular context.

Characteristics of a good design pattern:

1. Recurring problem: It addresses a problem that occurs repeatedly.
2. Proven solution: It provides a solution that has been successfully used.
3. Reusability: The solution can be applied in different software systems.
4. Context: It describes the situation in which the solution is useful.
5. Flexibility: It can be adapted to different requirements.
6. Relationships: It explains how classes and objects collaborate.
7. Trade-offs: It describes the benefits and limitations of the solution.

Example — Observer pattern

Problem: When the stock price changes, multiple applications need to receive the updated information.

Solution: The Observer pattern allows multiple dependent objects to automatically receive notifications when the subject changes.

Here:

- The recurring problem is notifying multiple dependent objects.
- The solution is maintaining subscribers and notifying them when data changes.
- The context is a system where multiple objects depend on another object's state.

### Important components of a pattern

A pattern generally describes:

- The problem being solved.
- The context in which the problem occurs.
- The proposed solution.
- The consequences of applying the solution.

These components explain why a pattern is more than simply a piece of reusable code.

## 3. Pattern categories

Repeated PYQ topic

Design patterns are commonly classified into three major categories based on their purpose.

## Three categories of design patterns

1\. Creational patterns

Deal with object creation mechanisms.

Examples: Singleton, Factory Method, Abstract Factory, Builder, Prototype.

2\. Structural patterns

Deal with the composition of classes and objects.

Examples: Adapter, Bridge, Composite, Decorator, Facade, Proxy, Flyweight.

3\. Behavioural patterns

Deal with communication and responsibility among objects.

Examples: Observer, Strategy, Command, Iterator, State, Mediator, Template Method.

### 3.1 Creational design patterns

Definition: Creational patterns deal with the process of creating objects. They provide flexible ways to create objects without exposing unnecessary object-creation details to the client.

Purpose:

- Control object creation.
- Hide complex construction logic.
- Reduce dependency on concrete classes.
- Improve flexibility and reusability.

Types of creational patterns:

| Pattern          | Purpose                                     | Example                      |
| ---------------- | ------------------------------------------- | ---------------------------- |
| Singleton        | Ensures one instance of a class             | Configuration manager        |
| Factory Method   | Creates objects through a factory method    | Notification factory         |
| Abstract Factory | Creates families of related objects         | Windows/Linux UI components  |
| Builder          | Constructs complex objects step by step     | Computer configuration       |
| Prototype        | Creates objects by cloning existing objects | Cloning predefined templates |

Example — Singleton pattern

A database configuration manager may need a single shared instance.

```
class DatabaseConfig {
    private static DatabaseConfig instance;

    private DatabaseConfig() {
    }

    public static DatabaseConfig getInstance() {
        if (instance == null) {
            instance = new DatabaseConfig();
        }
        return instance;
    }
}
```

Advantages:

- Controls object creation.
- Avoids unnecessary object creation.
- Hides construction details.
- Promotes flexible object creation.

Limitation: A poorly implemented Singleton can create concurrency problems and introduce global shared state.

### 3.2 Structural design patterns

Definition: Structural patterns deal with how classes and objects are combined to form larger and more flexible structures.

They help organize relationships between different components.

Purpose:

- Simplify complex class structures.
- Improve code reusability.
- Reduce coupling.
- Allow incompatible interfaces to work together.
- Make system structures flexible.

Types of structural patterns:

| Pattern   | Purpose                                   | Example                               |
| --------- | ----------------------------------------- | ------------------------------------- |
| Adapter   | Converts one interface into another       | Integrating a third-party payment API |
| Bridge    | Separates abstraction from implementation | Remote control with different devices |
| Composite | Organizes objects into tree structures    | File and folder system                |
| Decorator | Adds functionality dynamically            | Adding features to a notification     |
| Facade    | Provides a simplified interface           | One service for multiple subsystems   |
| Flyweight | Shares common object data                 | Reusing character objects             |
| Proxy     | Controls access to another object         | Access-control proxy                  |

Example — Adapter pattern

Suppose an application expects a payment interface, but an external payment gateway provides a different interface.

An adapter converts the application's expected method call into the method supported by the payment gateway.

Client Application

Payment Adapter

External Payment Gateway

Advantages:

- Supports integration of incompatible interfaces.
- Improves modularity.
- Makes components reusable.
- Simplifies complex structures.

### 3.3 Behavioural design patterns

Definition: Behavioural patterns deal with communication, interaction and the distribution of responsibilities among objects.

They define how objects cooperate to perform tasks.

Purpose:

- Improve communication between objects.
- Distribute responsibilities.
- Reduce dependencies.
- Make behaviour flexible.
- Simplify complex interactions.

Types of behavioural patterns:

| Pattern                 | Purpose                                                | Example                  |
| ----------------------- | ------------------------------------------------------ | ------------------------ |
| Chain of Responsibility | Passes requests through handlers                       | Approval workflow        |
| Command                 | Encapsulates a request as an object                    | Undo/redo operation      |
| Interpreter             | Defines grammar interpretation                         | Expression evaluation    |
| Iterator                | Sequentially accesses collection elements              | Traversing a list        |
| Mediator                | Centralizes object communication                       | Chat room                |
| Memento                 | Saves and restores object state                        | Undo feature             |
| Observer                | Notifies dependent objects about changes               | Stock-price notification |
| State                   | Changes behaviour according to object state            | Order status             |
| Strategy                | Selects an algorithm dynamically                       | Payment methods          |
| Template Method         | Defines an algorithm structure with customizable steps | Data-processing workflow |
| Visitor                 | Adds operations to object structures                   | Document processing      |

Example — Observer pattern

Suppose a user subscribes to notifications about an order.

Whenever the order status changes, the registered observers receive notifications.

Order (Subject)

Status changes

Notify observers

Email

SMS

App

Advantages:

- Supports flexible object communication.
- Reduces tight coupling.
- Makes behaviour easier to change.
- Improves maintainability.

## 4. Elements or entities of a design pattern

Very important — 5 identified questions

A design pattern is generally described using four fundamental elements.

According to the well-known Gang of Four (GoF) pattern description, these are:

1. Pattern name.
2. Problem.
3. Solution.
4. Consequences.

### 4.1 Pattern name

The pattern name provides a common and meaningful identity for a design solution.

It helps developers communicate using a shared vocabulary.

Example: Singleton, Observer, Factory Method.

### 4.2 Problem

The problem describes the situation in which the pattern can be applied.

It explains:

- What problem occurs?
- Under what conditions does it occur?
- What design difficulties need to be solved?

Example: Multiple objects need to receive notifications whenever another object changes its state.

### 4.3 Solution

The solution describes the general arrangement of classes, objects and their responsibilities to solve the problem.

It explains:

- Which classes are required?
- What responsibilities do they have?
- How do they interact?
- How is the problem solved?

Example: In the Observer pattern, a subject maintains a list of observers and notifies them when its state changes.

### 4.4 Consequences

Consequences describe the results of applying the pattern, including its advantages and disadvantages.

They may include:

- Performance.
- Flexibility.
- Maintainability.
- Reusability.
- Complexity.
- Memory consumption.

Example: Observer reduces direct coupling between the subject and observers, but managing many observers may introduce additional complexity.

### Diagram — Four elements of a design pattern

Design Pattern

1\. Name

Identifies the pattern

2\. Problem

Describes the issue

3\. Solution

Describes the design

4\. Consequences

Explains the results

Important distinction: Some textbooks use a fuller pattern template that also includes intent, motivation, applicability, structure, participants, collaborations, implementation and sample code. If the exam asks for the four fundamental elements, write Name, Problem, Solution and Consequences first.

## 5. Relationships between patterns

Identified PYQ frequency: 1

Definition: Relationships between patterns describe how different design patterns are connected, complement each other or can be used together to solve larger software design problems.

A single design pattern may solve a specific problem, but complex systems may require multiple patterns working together.

Types of relationships:

### 5.1 Patterns can complement each other

Two patterns may be used together to solve related problems.

Example:

- Factory Method creates an object.
- Strategy uses an interchangeable algorithm.

A factory can create the appropriate strategy object based on the user's selection.

### 5.2 One pattern can use another pattern

A pattern may internally depend on another pattern.

Example:

The Composite pattern may use the Iterator pattern to traverse a tree of objects.

### 5.3 Patterns can be alternatives

Different patterns may solve similar problems, but their suitability depends on the context.

Example:

- Strategy changes an algorithm dynamically.
- State changes object behaviour based on its internal state.

Both can use polymorphism, but they address different design intentions.

### 5.4 Patterns can be combined

Multiple patterns can be combined to design a complete subsystem.

Example — E-commerce application:

| Requirement                            | Pattern        |
| -------------------------------------- | -------------- |
| Create payment objects                 | Factory Method |
| Select payment algorithm               | Strategy       |
| Notify customer about order updates    | Observer       |
| Encapsulate order cancellation request | Command        |
| Provide a simple checkout interface    | Facade         |

### Pattern relationship illustration

Factory Method

Creates an appropriate object

Strategy

Executes the selected algorithm

Observer

Notifies users about the result

This is one possible combination, not a mandatory sequence or a fixed relationship defined by the patterns.

Advantages of pattern relationships:

1. Helps solve complex design problems.
2. Encourages reuse of proven solutions.
3. Improves system flexibility.
4. Helps developers design larger architectures.
5. Improves communication and consistency.

## 6. Important differences for exams

### A. Pattern elements vs pattern categories

| Pattern elements                                  | Pattern categories                              |
| ------------------------------------------------- | ----------------------------------------------- |
| Describe the structure of a pattern description.  | Classify patterns according to their purpose.   |
| Include name, problem, solution and consequences. | Include creational, structural and behavioural. |
| Explain what information a pattern contains.      | Explain what kind of problem a pattern solves.  |

### B. Architectural styles vs design patterns

| Architectural styles                             | Design patterns                                           |
| ------------------------------------------------ | --------------------------------------------------------- |
| Describe the overall organization of a system.   | Solve recurring design problems.                          |
| Operate at a higher architectural level.         | Usually operate at a more specific design level.          |
| Define major components and their relationships. | Define reusable class/object structures and interactions. |
| Examples: Layered, Client–Server, MVC.           | Examples: Singleton, Adapter, Observer.                   |

Example: An e-commerce application can use a layered architectural style and apply the Factory Method pattern to create payment objects inside its service layer.

### C. Design patterns vs idioms

| Design patterns                                    | Idioms                                               |
| -------------------------------------------------- | ---------------------------------------------------- |
| General reusable design solutions.                 | Language-specific implementation techniques.         |
| Can often be applied across programming languages. | Usually depend on language features and conventions. |
| Focus on design structure and collaboration.       | Focus on implementation details.                     |
| Example: Observer pattern.                         | Example: Java try-with-resources idiom.              |

## 7. Complete example — Applying design patterns to an ATM

Consider an ATM system that supports withdrawal, deposits, authentication and notifications.

| Requirement                              | Suitable pattern | Reason                               |
| ---------------------------------------- | ---------------- | ------------------------------------ |
| Single shared configuration object       | Singleton        | Controls instance creation           |
| Different transaction types              | Factory Method   | Creates suitable transaction objects |
| Different authentication algorithms      | Strategy         | Allows interchangeable algorithms    |
| Notify customer about transaction status | Observer         | Notifies registered observers        |
| Integrate an external bank interface     | Adapter          | Converts incompatible interfaces     |
| Simplify ATM subsystem access            | Facade           | Provides a unified interface         |

Explanation:

1. The Singleton pattern can manage a shared configuration instance.
2. Factory Method can create a withdrawal or deposit transaction.
3. Strategy can select an appropriate authentication mechanism.
4. Observer can notify the customer about transaction status.
5. Adapter can connect the ATM software with an external banking interface.
6. Facade can provide a simple interface to the transaction subsystem.

This demonstrates how different design patterns can work together in a real software system.

## 8. PYQ preparation priority

Based on the frequencies you supplied:

| Topic                                             | Identified frequency | Preparation priority |
| ------------------------------------------------- | -------------------- | -------------------- |
| Definition and types of design patterns           | 6 papers             | Extremely high       |
| Elements/entities of design patterns              | 5                    | Extremely high       |
| Creational, structural and behavioural categories | 4                    | Very high            |
| Relationships between patterns                    | 1                    | High                 |

Suggested exam preparation:

- First prepare the definition and characteristics of design patterns.
- Memorize the three categories and at least five examples from each.
- Prepare the four fundamental pattern elements with an Observer example.
- Prepare pattern relationships with an e-commerce or ATM example.
- Practise the three difference tables.

## 9. Quick revision checklist

Design pattern fundamentals

# 0/12

Definition of design pattern

What makes a pattern?

Need and characteristics of design patterns

Creational patterns and five examples

Structural patterns and seven examples

Behavioural patterns and eleven examples

Four elements: Name, Problem, Solution, Consequences

Relationships between patterns

Pattern elements vs pattern categories

Architectural styles vs design patterns

Design patterns vs idioms

ATM application example

Reset checklist

Exam tip: The definition/types and four elements are especially important based on your supplied papers. Do not simply memorize pattern names: be able to explain the problem each pattern solves and give one practical example.

Next topic: Communication Patterns — Forwarder–Receiver, Client–Dispatcher–Server, Publisher–Subscriber, Command Processor and View Handler.