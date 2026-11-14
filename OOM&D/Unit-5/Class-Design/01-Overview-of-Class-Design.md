# Unit IV — Class Design



PYQ priority: High

Important for long answers



Class design is the process of converting the application analysis model into an implementation-ready design. It refines the classes, attributes, operations, relationships and algorithms required to build the system.

In simple words:

- Application class modelling: Identifies what classes are required in the application.
- Class design: Decides how those classes will be implemented and how they will collaborate to perform system operations.

## 1. Overview of class design

Class design bridges the gap between high-level requirements and low-level implementation.

During analysis, we identify objects such as `Customer`, `Account` and `Transaction`. During class design, we refine these classes by defining their methods, data structures, algorithms, visibility and relationships.

Objectives of class design:

1. Refine analysis classes for implementation.
2. Define attributes and operations.
3. Assign responsibilities to appropriate classes.
4. Realize use cases through class collaboration.
5. Design algorithms for operations.
6. Improve performance and maintainability.
7. Organize inheritance and class relationships.

## 2. Steps involved in class design

The following steps form a useful exam-oriented sequence.

## Class design process

1. Bridge the gap

   Refine analysis classes into implementation-ready classes.
2. Realize use cases

   Identify which classes collaborate to perform each use case.
3. Design algorithms

   Define the logic and steps for each operation.
4. Recursive downward traversal

   Use recursive traversal when an operation must process a hierarchical object structure.
5. Refactor the design

   Improve the internal structure without changing external behaviour.
6. Optimize the design

   Improve performance, memory usage and other quality attributes.
7. Reify behaviour

   Represent complex behaviour as explicit classes or objects.
8. Adjust inheritance

   Refine inheritance relationships and move responsibilities appropriately.
9. Organize class design

   Group and arrange classes into packages or subsystems.

## 3. Bridging the gap between high-level requirements and low-level services

Definition: Bridging the gap is the process of transforming analysis-level classes and requirements into detailed design elements that can be implemented using a programming language.

Analysis focuses on what the system should do, whereas design focuses on how the system will do it.

Steps:

1. Review the analysis class model.
2. Identify missing implementation details.
3. Define attributes and data types.
4. Specify methods and their parameters.
5. Assign responsibilities to classes.
6. Define interfaces and visibility.
7. Select suitable data structures.
8. Refine associations and inheritance.

Example — ATM system

| Analysis-level class | Design-level refinement                              |
| -------------------- | ---------------------------------------------------- |
| Account              | `Account` with `accountNumber`, `balance`            |
| Customer             | `Customer` with customer details                     |
| Transaction          | `Transaction` with `execute()`                       |
| ATM                  | `ATM` with `authenticateCard()` and `startSession()` |

The design-level classes contain more detailed attributes, operations and implementation responsibilities.

## 4. Realizing use cases

Definition: Realizing a use case means identifying how different classes collaborate through their operations to provide the functionality described by that use case.

A use case describes the required functionality, while its realization describes the internal interaction among objects.

Steps involved:

1. Select a use case.
2. Study its normal and alternative flows.
3. Identify participating classes.
4. Assign responsibilities to each class.
5. Define the required operations.
6. Establish message communication between objects.
7. Draw interaction diagrams, such as sequence diagrams.
8. Verify that all requirements are fulfilled.

Example — ATM cash withdrawal

Sequence of class interactions

Customer

ATM

`withdraw(amount)`

BankService

`validateTransaction()`

Account

`debit(amount)`

CashDispenser

`dispense(amount)`

Explanation:

- Customer enters the withdrawal amount.
- ATM sends the request to the bank service.
- Bank service validates the PIN, account and balance.
- Account is debited if the transaction is approved.
- Cash dispenser releases the requested amount.
- ATM displays the transaction result.

Thus, the use case is realized through collaboration between multiple classes.

## 5. Designing algorithms

Definition: Algorithm design is the process of developing a logical sequence of steps that implements the operations defined in a class.

During class design, each important operation must have a clear implementation strategy.

Steps involved:

1. Identify the operation to be implemented.
2. Determine its input and output.
3. Identify required data structures.
4. Define the processing logic.
5. Consider exceptional conditions.
6. Analyze time and space complexity.
7. Select an efficient algorithm.
8. Test the algorithm using different inputs.

Example — ATM withdrawal algorithm

```
Algorithm: withdraw(amount)

1. Accept withdrawal amount.
2. Verify customer authentication.
3. Check whether amount is valid.
4. Check account balance.
5. Check daily withdrawal limit.
6. If all conditions are satisfied:
      Debit amount from account.
      Dispense cash.
      Generate transaction receipt.
7. Otherwise:
      Display appropriate error.
8. End.
```

A good algorithm should be correct, efficient, understandable and maintainable.

## 6. Recursive downward traversal

Definition: Recursive downward traversal is a technique in which an operation starts from a higher-level object and recursively visits its child objects until it reaches the lower-level objects.

It is useful when objects form a hierarchical or tree-like structure.

Working:

1. Start from the root object.
2. Perform the required operation on the current object.
3. Visit its child objects.
4. Apply the same operation recursively to each child.
5. Stop when a leaf object is reached.

Example — Organization hierarchy

Company

HR

IT

Finance

Employees

Employees

Employees

For example, to calculate the total number of employees, the company object can recursively visit each department and count its employees.

Advantages:

- Simplifies hierarchical processing.
- Avoids writing repetitive traversal code.
- Makes recursive structures easier to manage.

Limitation: Deep recursion may consume stack memory and can cause stack overflow.

## 7. Refactoring

Repeated PYQ topic

Definition: Refactoring is the process of restructuring an existing class design or code to improve its internal structure without changing its external behaviour.

The objective is to make the design cleaner, simpler and easier to maintain.

Common refactoring techniques:

1. Extract Method: Move a block of code into a separate method.
2. Move Method: Move a method to the class that uses it more appropriately.
3. Extract Class: Divide a large class into smaller classes.
4. Rename Method: Give a method a meaningful name.
5. Remove Duplicate Code: Eliminate repeated logic.
6. Encapsulate Field: Restrict direct access to fields through methods.

Example:

Initially, an ATM class handles authentication, withdrawal and receipt generation.

```
class ATM {
    void withdraw() {
        // Authentication logic
        // Balance checking
        // Cash dispensing
        // Receipt generation
    }
}
```

After refactoring, responsibilities are separated:

```
class ATM {
    void withdraw() {
        authenticationService.authenticate();
        accountService.debit();
        cashDispenser.dispense();
        receiptService.generate();
    }
}
```

Advantages:

- Improves code readability.
- Reduces duplication.
- Improves maintainability.
- Improves modularity.
- Makes testing easier.

Important: Refactoring should preserve the existing observable behaviour. It does not necessarily add new functionality.

## 8. Design optimization

Repeated PYQ topic

Definition: Design optimization is the process of improving a class design to achieve better performance, efficiency and quality while satisfying system requirements.

Objectives:

- Reduce execution time.
- Reduce memory consumption.
- Improve response time.
- Reduce unnecessary communication between objects.
- Improve scalability.
- Improve resource utilization.

Techniques:

1. Optimize algorithms: Select efficient algorithms with better time complexity.
2. Optimize data structures: Choose suitable collections and data structures.
3. Reduce unnecessary object creation: Reuse objects when appropriate.
4. Reduce communication overhead: Avoid unnecessary method calls and network communication.
5. Use caching: Store frequently accessed data.
6. Optimize database access: Use indexing and efficient queries.
7. Remove redundant operations: Eliminate unnecessary calculations.

Example — ATM system

Suppose the ATM application repeatedly queries the database for the same non-sensitive configuration information.

The design can be optimized by caching appropriate configuration data instead of repeatedly accessing the database.

However, sensitive and frequently changing account balances should not be treated as ordinary cached configuration data.

Advantages:

- Improves system performance.
- Reduces resource consumption.
- Improves scalability.
- Enhances user experience.

## 9. Reification of behavior

Definition: Reification of behaviour is the process of representing behaviour, an action or a process as an explicit object or class.

Instead of keeping complex behaviour inside a single method, it is represented as a separate entity.

Why is it required?

- To represent complex behaviour explicitly.
- To manage behaviour independently.
- To support reuse.
- To make the design more flexible.
- To separate responsibilities.

Example — ATM transaction

Instead of implementing every transaction directly inside the ATM class, create a separate `Transaction` class.

```
class Transaction {
    void execute() {
        // Execute transaction
    }
}

class Withdrawal extends Transaction {
    void execute() {
        // Withdrawal logic
    }
}

class Deposit extends Transaction {
    void execute() {
        // Deposit logic
    }
}
```

Here, transaction behaviour is represented as an object.

Other examples include:

- `Payment` object.
- `OrderProcessing` object.
- `Notification` object.
- `Command` object.

Advantages:

- Separates behaviour from unrelated classes.
- Improves flexibility.
- Supports polymorphism.
- Makes complex behaviour easier to manage.

## 10. Adjustment of inheritance

Repeated PYQ topic

Definition: Adjustment of inheritance is the process of refining the inheritance hierarchy to ensure that classes inherit appropriate attributes and operations from their parent classes.

The objective is to remove unnecessary inheritance, reduce duplication and improve class organization.

Common adjustments:

1. Move common attributes and methods into a superclass.
2. Move specialized methods into subclasses.
3. Remove unnecessary inheritance relationships.
4. Introduce an appropriate superclass where common behaviour exists.
5. Replace inappropriate inheritance with composition.
6. Avoid deep and complicated inheritance hierarchies.

Example — ATM transactions

Initially:

Withdrawal

and separately

Deposit

Both classes contain duplicate transaction details, such as transaction ID, date and account reference.

After adjustment:

Transaction

Withdrawal

Deposit

The common attributes and methods are moved into the `Transaction` superclass.

Advantages:

- Reduces code duplication.
- Improves reusability.
- Makes the hierarchy logical.
- Improves maintainability.
- Supports polymorphism.

Important: Inheritance should represent a genuine is-a relationship. Composition is often better when one class simply uses another class's functionality.

## 11. Organizing a class design

Definition: Organizing a class design means arranging classes into logical groups, packages and subsystems based on their responsibilities and relationships.

It makes the overall design easier to understand, implement, test and maintain.

Steps:

1. Identify related classes.
2. Group classes according to their responsibilities.
3. Divide the system into packages or subsystems.
4. Define relationships between packages.
5. Minimize unnecessary dependencies.
6. Maintain high cohesion and low coupling.
7. Document the final class structure using class diagrams.

Example — ATM system

| Package       | Classes                                   |
| ------------- | ----------------------------------------- |
| `user`        | Customer, Card                            |
| `atm`         | ATM, ATMController                        |
| `account`     | Account, BankService                      |
| `transaction` | Transaction, Withdrawal, Deposit          |
| `hardware`    | CashDispenser, CardReader, ReceiptPrinter |

Advantages:

- Improves modularity.
- Simplifies maintenance.
- Supports team development.
- Improves code reuse.
- Makes testing easier.

## 12. Complete ATM example — Class design

Consider an ATM system that supports customer authentication, cash withdrawal, deposits and balance enquiry.

A. Identify the classes

- Customer
- Card
- ATM
- Account
- BankService
- Transaction
- Withdrawal
- Deposit
- CashDispenser
- ReceiptPrinter

B. Define attributes and operations

| Class          | Important attributes   | Important operations              |
| -------------- | ---------------------- | --------------------------------- |
| Customer       | customerId, name       | getDetails()                      |
| Card           | cardNumber, expiryDate | validate()                        |
| ATM            | atmId, location        | startSession()                    |
| Account        | accountNumber, balance | debit(), credit()                 |
| BankService    | serviceId              | authenticate(), validateBalance() |
| Transaction    | transactionId, amount  | execute()                         |
| Withdrawal     | amount                 | execute()                         |
| Deposit        | amount                 | execute()                         |
| CashDispenser  | availableCash          | dispense()                        |
| ReceiptPrinter | printerStatus          | printReceipt()                    |

C. Class relationship diagram

Customer

Card

ATM

BankService

Account

Transaction hierarchy

Transaction

Withdrawal

Deposit

ATM hardware

CashDispenser

ReceiptPrinter

Conceptual illustration: the arrows indicate interaction or hierarchy as labelled by the sections; they are not a complete UML relationship specification.

D. Apply class design techniques

- Realize use cases by defining interactions between ATM, BankService and Account.
- Design algorithms for authentication and withdrawal.
- Refactor the ATM class by separating transaction and hardware responsibilities.
- Optimize database access and transaction processing.
- Reify transaction behaviour using the `Transaction` class.
- Adjust inheritance by creating a common Transaction superclass.
- Organize classes into logical packages.

Conclusion: Class design converts the analysis model into an implementation-ready structure by refining classes, defining operations, designing algorithms, optimizing relationships and organizing the system into manageable components.

## 13. Important differences for exams

### A. Refactoring vs design optimization

| Refactoring                                 | Design optimization                         |
| ------------------------------------------- | ------------------------------------------- |
| Improves internal structure.                | Improves selected quality attributes.       |
| Preserves external behaviour.               | May change internal design or algorithms.   |
| Focuses on readability and maintainability. | Focuses on performance and efficiency.      |
| Example: Extract Method.                    | Example: Use caching or a better algorithm. |

### B. Fine-tuning generalizations vs adjustment of inheritance

| Fine-tuning generalizations                                                              | Adjustment of inheritance                                    |
| ---------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| Refines generalization/specialization relationships.                                     | Adjusts the inheritance hierarchy for better design.         |
| Focuses on making abstractions and classifications more accurate.                        | Focuses on correct inheritance of attributes and operations. |
| Example: Splitting an overly broad superclass into more appropriate specialized classes. | Example: Moving common transaction fields into a superclass. |

These topics overlap, but prepare their definitions and objectives separately.

### C. Realizing use cases vs use case diagrams

| Realizing use cases                       | Use case diagrams                         |
| ----------------------------------------- | ----------------------------------------- |
| Explains internal collaboration.          | Shows external functionality.             |
| Focuses on objects and operations.        | Focuses on actors and use cases.          |
| Uses sequence and collaboration diagrams. | Uses use case diagrams.                   |
| Explains how a requirement is fulfilled.  | Describes what functionality is required. |

### D. Class design vs application class model

| Application class model                       | Class design                                                  |
| --------------------------------------------- | ------------------------------------------------------------- |
| Identifies application-domain classes.        | Refines classes for implementation.                           |
| Focuses on domain concepts and relationships. | Focuses on operations, algorithms and implementation details. |
| Created during application analysis.          | Created during system design.                                 |

## 14. PYQ preparation priority

Based on the frequency information you provided:

| Topic                           | Identified frequency       | Preparation |
| ------------------------------- | -------------------------- | ----------- |
| Steps / organizing class design | 2+                         | Very high   |
| Refactoring                     | 2                          | Very high   |
| Design optimization             | 2                          | Very high   |
| Adjustment of inheritance       | 2 subquestions in Nov 2024 | Very high   |
| Finding and defining classes    | 2                          | Very high   |
| Realizing use cases             | Not specified              | High        |
| Designing algorithms            | Not specified              | High        |
| Reification of behaviour        | Not specified              | High        |
| Recursive downward traversal    | Not specified              | High        |

The frequency figures are based on the counts you supplied, not a prediction of future papers.

## 15. Quick revision checklist

Unit IV — Class design progress

# 0/12

Overview and steps of class design

Bridging analysis and implementation

Realizing use cases

Designing algorithms

Recursive downward traversal

Refactoring

Design optimization

Reification of behaviour

Adjustment of inheritance

Organizing a class design

ATM example

Four important differences

Reset checklist

Exam tip: Prepare the complete class design process and ATM example as a long answer. Also practise separate answers for refactoring, design optimization and adjustment of inheritance because they are repeated topics and can be asked independently.