# Unit and Integration Testing

## 1. Unit Testing

### Definition

**Unit Testing** is the process of testing individual units or components of a software application independently to verify that each unit works correctly according to its requirements.

A unit is usually the smallest testable part of software, such as:

* Function
* Method
* Class
* Module
* Component

### Simple Definition

> **Unit Testing = Testing individual components independently.**

---

# 2. Objectives of Unit Testing

Unit testing aims to:

* Verify individual components.
* Detect defects early.
* Verify business logic.
* Check individual functions and methods.
* Reduce debugging effort.
* Ensure code behaves as expected.
* Support safe code changes.
* Improve code quality.

---

# 3. Characteristics of Unit Testing

* Focuses on small units.
* Usually performed early.
* Often performed by developers.
* Can be automated.
* Tests are generally fast.
* Units are tested independently.
* External dependencies are often isolated.

---

# 4. Example of Unit Testing

Consider a Java method:

```java
public int add(int a, int b) {
    return a + b;
}
```

A unit test can verify:

```text id="p5m8q2"
Input:
a = 10
b = 20

Expected:
30

Actual:
30

Result:
PASS
```

The `add()` method is tested independently.

---

# 5. Unit Testing Process

```text id="n7k3x9"
Identify Unit
     ↓
Understand Expected Behavior
     ↓
Create Test Cases
     ↓
Prepare Test Data
     ↓
Isolate Dependencies
     ↓
Execute Unit Test
     ↓
Compare Expected vs Actual
     ↓
Report / Fix Defect
     ↓
Retest
```

---

# 6. Unit Testing Example – Login Service

Suppose an application has:

```text id="x4r8m1"
LoginService
     |
     +-- validateUsername()
     |
     +-- validatePassword()
     |
     +-- authenticateUser()
```

Each method can be tested independently.

### Example

**Test:** `validatePassword()`

Input:

```text
Password = "abc"
```

Requirement:

> Password must contain at least 8 characters.

Expected result:

```text
Invalid Password
```

If the method returns the correct result, the unit test passes.

---

# 7. Unit Testing Techniques

Common approaches include:

### 1. White-Box Testing

Tests internal logic and code structure.

### 2. Black-Box Testing

Tests behavior using inputs and outputs without considering internal implementation.

### 3. Test-Driven Development

Tests are written before or alongside implementation.

### 4. Automated Unit Testing

Unit tests are executed automatically using testing frameworks.

---

# 8. Unit Testing Frameworks

Examples include:

### Java

* JUnit
* TestNG

### Python

* pytest
* unittest

### JavaScript

* Jest
* Mocha

The framework depends on the programming language and project.

---

# 9. Advantages of Unit Testing

### 1. Early Defect Detection

Defects are found close to where they are introduced.

### 2. Easier Debugging

Small units make it easier to identify the source of problems.

### 3. Faster Feedback

Automated unit tests can execute quickly.

### 4. Supports Refactoring

Developers can modify code while using tests to detect regressions.

### 5. Reduces Integration Problems

Individual components are verified before integration.

### 6. Improves Code Quality

Writing testable code encourages better design.

---

# 10. Limitations of Unit Testing

* Does not test complete workflows.
* Does not verify interactions between all components.
* May not detect integration problems.
* Requires maintenance when code changes.
* Mocking dependencies can sometimes hide real integration issues.

---

# 11. Integration Testing

## Definition

**Integration Testing** is the process of testing two or more integrated components or modules to verify that they interact and communicate correctly.

### Simple Definition

> **Integration Testing = Testing interactions between components.**

---

# 12. Objectives of Integration Testing

Integration testing aims to:

* Verify communication between modules.
* Detect interface defects.
* Verify data flow.
* Test API interactions.
* Identify integration failures.
* Verify database interactions.
* Ensure combined components work correctly.

---

# 13. Example of Integration Testing

Consider an e-commerce application:

```text id="h2k7m4"
Frontend
   ↓
REST API
   ↓
Order Service
   ↓
Database
   ↓
Payment Service
```

Integration testing checks whether these components communicate correctly.

### Example

A user places an order.

The test verifies:

```text id="q6p3v9"
Create Order
     ↓
Order Service
     ↓
Save Order in Database
     ↓
Payment Service
     ↓
Payment Success
     ↓
Update Order Status
```

This is integration testing because multiple components interact.

---

# 14. Integration Testing Process

```text id="w8n2k5"
Identify Components
       ↓
Identify Interfaces
       ↓
Define Integration Scenarios
       ↓
Prepare Test Environment
       ↓
Integrate Components
       ↓
Execute Tests
       ↓
Verify Data Flow
       ↓
Report Defects
       ↓
Retest
```

---

# 15. Types of Integration Testing

## 1. Big Bang Integration

All components are integrated at once and then tested.

```text id="j5r8q2"
A + B + C + D
      ↓
Integration Testing
```

### Advantages

* Simple concept.
* Useful for small systems.

### Disadvantages

* Defects are difficult to isolate.
* Integration problems are discovered late.
* Debugging can be difficult.

---

# 16. Incremental Integration Testing

Components are integrated gradually.

```text id="m7x3p9"
A + B
 ↓
Test
 ↓
A + B + C
 ↓
Test
 ↓
A + B + C + D
 ↓
Test
```

### Advantages

* Easier defect isolation.
* Problems are identified earlier.
* Integration can be controlled.

### Disadvantages

* Requires more planning.
* Additional integration steps are required.

---

# 17. Top-Down Integration Testing

Testing begins with higher-level modules and gradually integrates lower-level modules.

```text id="c4n8q1"
       A
      / \
     B   C
    / \
   D   E
```

Testing begins with **A**, then integrates lower modules.

### Stubs

**Stubs** are temporary components used to simulate lower-level modules that are not yet available.

---

# 18. Bottom-Up Integration Testing

Testing begins with lower-level modules and gradually integrates higher-level modules.

```text id="r6k2m8"
   D   E
    \ /
     B
      \
       A
```

### Drivers

**Drivers** are temporary programs used to call and test lower-level modules when higher-level modules are not yet available.

---

# 19. Sandwich / Hybrid Integration Testing

Combines:

* Top-down integration
* Bottom-up integration

Testing can proceed from both higher and lower levels toward the middle.

```text id="t3p7x5"
Top Modules
     ↓
   Middle
     ↑
Bottom Modules
```

---

# 20. Stubs vs Drivers

| Stubs                           | Drivers                       |
| ------------------------------- | ----------------------------- |
| Used in top-down testing        | Used in bottom-up testing     |
| Simulate lower-level modules    | Simulate higher-level modules |
| Called by the module under test | Call the module under test    |
| Help test higher-level modules  | Help test lower-level modules |

### Memory Trick

> **Stub = Stands in for lower module**

> **Driver = Drives lower module**

---

# 21. Unit Testing vs Integration Testing

| Unit Testing                      | Integration Testing                    |
| --------------------------------- | -------------------------------------- |
| Tests individual units            | Tests combined components              |
| Focuses on individual logic       | Focuses on interactions                |
| Usually performed earlier         | Performed after/alongside unit testing |
| Often developer-focused           | Usually tester/developer collaboration |
| Dependencies often mocked/stubbed | Real interfaces are commonly exercised |
| Faster                            | Generally slower                       |
| Easier debugging                  | More complex debugging                 |
| Example: Test login method        | Example: Login service + database      |

---

# 22. Unit Testing and Integration Testing Relationship

```text id="b8m3q6"
Individual Components
       ↓
  Unit Testing
       ↓
Verified Components
       ↓
Integration
       ↓
Integration Testing
       ↓
Verified Combined System
       ↓
System Testing
```

Unit testing verifies individual pieces before integration testing verifies their interactions.

---

# 23. Example – Banking Application

Consider a banking application containing:

* Login Service
* Account Service
* Transaction Service
* Database

### Unit Testing

Test:

```text id="n4k7p2"
validateLogin()
calculateBalance()
validateTransferAmount()
```

Each function or component is tested independently.

### Integration Testing

Test:

```text id="x9m5r3"
Login Service
      ↓
Account Service
      ↓
Database
```

Then test:

```text id="k2p8v6"
Transaction Service
      ↓
Account Database
      ↓
Balance Update
```

The purpose is to verify that the components communicate and exchange data correctly.

---

# 24. Example – Spring Boot Application

Suppose a Spring Boot application contains:

```text id="w6n3q8"
Controller
    ↓
Service
    ↓
Repository
    ↓
PostgreSQL
```

### Unit Test

Test the service independently:

```text id="s5k9m2"
OrderService
    ↓
Mock Repository
```

The repository is mocked so that the service logic can be tested independently.

### Integration Test

Test:

```text id="v3r7x1"
HTTP Request
    ↓
Controller
    ↓
Service
    ↓
Repository
    ↓
Database
```

This verifies that the application layers work together correctly.

---

# 25. Defects Found by Unit Testing

Unit testing can detect:

* Incorrect calculations
* Logic errors
* Incorrect conditions
* Invalid return values
* Boundary errors
* Null handling problems

---

# 26. Defects Found by Integration Testing

Integration testing can detect:

* Incorrect API communication
* Data format mismatches
* Database integration problems
* Interface errors
* Incorrect service communication
* Authentication integration issues
* Transaction problems

---

# 27. PYQ – 2025

**Question:** Discuss Unit Testing & Integration Testing.

### Detailed Answer

Unit testing and integration testing are important testing levels used to verify software quality.

## Unit Testing

Unit testing is the testing of individual software units such as functions, methods, classes, or modules.

### Objectives

* Verify individual components.
* Detect defects early.
* Verify business logic.
* Simplify debugging.
* Support code changes and refactoring.

### Example

For an ATM application, a method:

```text id="e7m2q4"
calculateWithdrawalBalance()
```

can be tested independently.

If:

```text
Balance = ₹10,000
Withdrawal = ₹2,000
```

Expected result:

```text
₹8,000
```

The method is tested without involving the complete ATM system.

---

## Integration Testing

Integration testing verifies that multiple components work correctly when combined.

### Objectives

* Verify module interactions.
* Check interfaces.
* Verify data flow.
* Identify communication errors.
* Test database/API integrations.

### Example

For an ATM application:

```text id="u5n8p3"
ATM Interface
      ↓
Transaction Service
      ↓
Account Service
      ↓
Bank Database
```

Integration testing verifies that a withdrawal request correctly passes through these components and that the account balance is updated.

---

## Comparison

| Unit Testing                      | Integration Testing                    |
| --------------------------------- | -------------------------------------- |
| Tests individual units            | Tests integrated components            |
| Focuses on internal logic         | Focuses on interaction                 |
| Usually performed earlier         | Performed after/alongside unit testing |
| Dependencies often isolated       | Interfaces are actually exercised      |
| Faster                            | More time-consuming                    |
| Easier debugging                  | More complex debugging                 |
| Example: Test balance calculation | Example: Withdrawal service + database |

### Integration Testing Approaches

1. **Big Bang**
2. **Top-Down**
3. **Bottom-Up**
4. **Incremental**
5. **Sandwich/Hybrid**

### Conclusion

Unit testing verifies individual software components, while integration testing verifies communication and interaction between integrated components. Both are essential for detecting defects before complete system testing.

---

# 28. Exam-Oriented Revision

## Unit Testing

Remember:

> **One Component → Independent Test**

Key points:

* Individual unit
* Early testing
* Fast
* Often automated
* Logic verification
* Dependencies isolated

## Integration Testing

Remember:

> **Multiple Components → Interaction Test**

Key points:

* Interfaces
* Data flow
* APIs
* Database
* Service communication
* Integration defects

### Integration Types

**Big Bang → Top-Down → Bottom-Up → Incremental → Sandwich**

### Stubs and Drivers

**Top-Down → Stubs**

**Bottom-Up → Drivers**

---

# PYQ Coverage

| Syllabus Concept    | PYQ                                                  |
| ------------------- | ---------------------------------------------------- |
| Unit Testing        | **2025:** Discuss Unit Testing & Integration Testing |
| Integration Testing | **2025:** Discuss Unit Testing & Integration Testing |

## Important Question

### 2025

**Discuss Unit Testing & Integration Testing.**
