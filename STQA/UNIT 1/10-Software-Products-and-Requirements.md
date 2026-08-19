# 10 — Software Products and Requirements

# 1. Introduction

A software product is developed to satisfy a particular set of requirements.

Before developing software, it is necessary to understand:

* What the customer needs
* What the users expect
* What the system should do
* What constraints must be followed
* What quality characteristics are required

Therefore:

```text id="g5m1x8"
Customer / User Needs
        ↓
   Requirements
        ↓
Software Product
        ↓
Development
        ↓
Testing
        ↓
Delivery
```

Requirements provide the foundation for software development and quality.

---

# 2. What is a Software Product?

A **software product** is a set of computer programs, data, documentation, and related components developed to provide specific functionality or services to users.

A software product may be:

* A mobile application
* A web application
* An operating system
* Banking software
* Hospital management software
* College management software
* Embedded software
* Enterprise software

---

# 3. Types of Software Products

Software products can broadly be classified into:

1. Generic products
2. Customized products

---

## 3.1 Generic Products

Generic software products are developed for a broad market.

The development organization determines product requirements based on:

* Market demand
* User needs
* Competition
* Business objectives
* Technology trends

### Examples

* Web browsers
* Operating systems
* Office software
* Antivirus applications

### Key Point

> **Generic product → General market → Market-driven requirements**

---

## 3.2 Customized Products

Customized products are developed for a particular customer or organization.

Requirements are mainly determined by the specific customer's needs.

### Examples

* College management system
* Hospital management system
* Banking system developed for a particular bank
* Government information system

### Key Point

> **Customized product → Specific customer → Customer-specific requirements**

---

# 4. Requirements of a Software Product

A **software requirement** describes a capability, condition, behavior, or constraint that the software must satisfy.

In simple words:

> **A requirement describes what the software should do or what conditions it should satisfy.**

### Example

For a college attendance system:

* Teacher should be able to mark attendance.
* Students should be able to view attendance.
* System should calculate attendance percentage.
* Unauthorized users should not modify attendance.

---

# 5. Importance of Requirements

Requirements are important because they:

1. Define what needs to be developed.
2. Provide direction to developers.
3. Provide a basis for testing.
4. Help estimate cost and effort.
5. Help identify customer expectations.
6. Reduce misunderstanding.
7. Provide a basis for acceptance.
8. Support project planning.

```text id="s6q3j9"
Requirements
     ↓
Development
     ↓
Testing
     ↓
Acceptance
```

---

# 6. General Requirements

## Definition

**General requirements** are broad requirements that describe the overall needs and expectations of a software product.

They provide a high-level view of what the system should achieve.

General requirements may include:

* Functional needs
* Performance
* Security
* Reliability
* Usability
* Availability
* Maintainability
* Business objectives

### Example

For an online banking system:

> The system should provide secure and reliable online banking services.

This is a general requirement.

---

# 7. Present Requirements

## Definition

**Present requirements** are requirements representing the current, immediate needs of users, customers, or the organization.

They focus on what is required by the system at the present time.

### Example

A college currently requires:

> The system should allow teachers to mark student attendance online.

This is a present requirement.

---

# 8. General Requirements vs Present Requirements

| General Requirements                  | Present Requirements                    |
| ------------------------------------- | --------------------------------------- |
| Broad/high-level needs                | Current/immediate needs                 |
| Describe overall product expectations | Describe current required functionality |
| May cover long-term product direction | Focus on present needs                  |
| More general                          | More specific/current                   |
| Example: Secure banking platform      | Example: Add OTP login                  |

### Easy Memory Trick

> **General = Overall need**

> **Present = Current need**

---

# 9. PYQ — 2025

## Question

**Explain General requirements and Present requirement.**

### Answer

Software requirements describe the needs, capabilities, conditions, and expectations that a software product must satisfy.

Requirements can be understood in terms of general requirements and present requirements.

---

## 1. General Requirements

General requirements describe the broad and overall needs of the software product.

They provide a high-level description of what the software is expected to achieve.

### Examples

For an e-commerce application:

* The system should support online shopping.
* The system should provide secure payment.
* The system should allow users to manage orders.
* The system should provide reliable service.

These describe the general needs of the system.

### Characteristics

General requirements are:

* Broad
* High-level
* Overall
* Product-oriented
* Related to overall business/user expectations

---

## 2. Present Requirements

Present requirements describe the immediate and current requirements that the software needs to satisfy.

They represent the current needs of the customer or users.

### Example

Suppose an e-commerce company currently wants to add:

> "Users should be able to track their orders in real time."

This is a present requirement because it represents a current need.

Other examples:

* Add OTP-based login.
* Add online payment.
* Add order tracking.
* Add a product search filter.

---

## 3. Difference

| General Requirement                 | Present Requirement                  |
| ----------------------------------- | ------------------------------------ |
| Broad overall requirement           | Current specific requirement         |
| High-level                          | More immediate                       |
| Describes overall product need      | Describes current functionality/need |
| Can guide product direction         | Guides current development           |
| Example: Secure e-commerce platform | Example: Add OTP login               |

---

## 4. Example

Consider a college management system.

### General Requirement

> The system should provide an integrated platform for managing college academic activities.

### Present Requirements

The college currently requires:

1. Online attendance management.
2. Student result management.
3. Faculty login.
4. Attendance report generation.

Therefore:

```text id="c7n2x4"
GENERAL REQUIREMENT
        ↓
Overall College Management System
        ↓
PRESENT REQUIREMENTS
        ↓
Attendance
Results
Faculty Login
Reports
```

### Conclusion

General requirements describe the **overall and broad needs** of the software, while present requirements describe the **current and immediate needs** that must be addressed by the system.

### ⭐ Exam Keywords

> **General Requirement = Overall / Broad Need**

> **Present Requirement = Current / Immediate Need**

---

# 10. Functional Requirements

Functional requirements specify what the system should do.

They describe:

* Functions
* Services
* Inputs
* Outputs
* System behavior

### Examples

For an attendance system:

* User should log in.
* Teacher should mark attendance.
* Student should view attendance.
* System should generate reports.

---

# 11. Non-Functional Requirements

Non-functional requirements describe quality attributes or constraints of the system.

Examples:

* Performance
* Security
* Reliability
* Usability
* Availability
* Scalability
* Maintainability

### Example

Functional:

> The system should allow users to log in.

Non-functional:

> Login should complete within 2 seconds under normal conditions.

---

# 12. Functional vs Non-Functional Requirements

| Functional                 | Non-Functional                       |
| -------------------------- | ------------------------------------ |
| Describes what system does | Describes how well it should perform |
| Functions/services         | Quality attributes/constraints       |
| Login                      | Login response time                  |
| Generate report            | Report generated within 3 seconds    |
| Make payment               | Payment must be secure               |

### Memory Trick

> **Functional = WHAT**

> **Non-functional = HOW WELL**

---

# 13. User Requirements

User requirements describe the needs of users in a form understandable to customers and users.

### Example

> "Students should be able to view their attendance percentage."

These are generally expressed in relatively simple language.

---

# 14. System Requirements

System requirements provide more detailed technical descriptions of what the system should implement.

### Example

Instead of:

> "Students should be able to view attendance."

A system-level requirement may specify:

> "The system shall calculate attendance percentage from the attendance records stored in the student database and display the result on the student's dashboard."

---

# 15. Requirements Hierarchy

Requirements can be understood as:

```text id="z4p8k1"
Business Needs
      ↓
User Requirements
      ↓
System Requirements
      ↓
Functional / Non-Functional Requirements
      ↓
Design
      ↓
Implementation
      ↓
Testing
```

---

# 16. Characteristics of Good Requirements

Good requirements should be:

## 16.1 Correct

They should represent actual stakeholder needs.

---

## 16.2 Complete

All necessary requirements should be included.

---

## 16.3 Consistent

Requirements should not contradict each other.

---

## 16.4 Unambiguous

A requirement should have only one reasonable interpretation.

Bad:

> "The application should be fast."

Better:

> "95% of requests should receive a response within 2 seconds."

---

## 16.5 Verifiable

The requirement should be testable.

Bad:

> "The system should be user-friendly."

Better:

> "A new user should be able to complete registration within 3 minutes without assistance."

---

## 16.6 Feasible

The requirement should be achievable within:

* Technology
* Budget
* Time
* Resources

---

## 16.7 Traceable

The requirement should be traceable through:

```text id="j8n4z6"
Requirement
    ↓
Design
    ↓
Implementation
    ↓
Test Case
    ↓
Test Result
```

---

# 17. Requirements and Software Quality

Requirements directly affect software quality.

Poor requirements can lead to:

* Wrong functionality
* Defects
* Rework
* Customer dissatisfaction
* Project delays

Good requirements support:

* Correct development
* Effective testing
* Better quality
* Reduced rework

```text id="w5g7k2"
Clear Requirements
       ↓
Correct Understanding
       ↓
Correct Development
       ↓
Effective Testing
       ↓
Better Quality
```

---

# 18. Requirements Changes

Software requirements often change during development.

Reasons include:

* Customer feedback
* Business changes
* New regulations
* Market changes
* Technology changes
* New user expectations

Changes must be managed carefully.

```text id="r4m8q2"
Requirement Change
       ↓
Impact Analysis
       ↓
Update Requirements
       ↓
Update Design
       ↓
Update Code
       ↓
Update Tests
       ↓
Regression Testing
```

---

# 19. Types of Changes

## 19.1 Addition

A new requirement is introduced.

Example:

> Add two-factor authentication.

---

## 19.2 Modification

An existing requirement changes.

Example:

Old:

> Password must contain 8 characters.

New:

> Password must contain 12 characters.

---

## 19.3 Removal

An existing requirement is removed.

---

# 20. Requirements Traceability

Requirements traceability ensures that each requirement can be tracked through the software lifecycle.

A simple traceability relationship is:

```text id="d2h8r5"
Requirement
     ↓
Design Component
     ↓
Code
     ↓
Test Case
     ↓
Test Result
```

### Why is it important?

It helps ensure:

* No requirement is forgotten.
* Every requirement is implemented.
* Every requirement is tested.
* Changes can be tracked.

---

# 21. Product Characteristics

Software has characteristics that distinguish it from physical products.

Important characteristics include:

1. Intangible
2. Developed rather than manufactured
3. Does not physically wear out
4. Highly complex
5. Invisible
6. Easy to modify
7. Changeable
8. Logic-based

These characteristics were covered in detail in:

**01 — Software-Quality-Basics.md**

---

# 22. PYQ — 2025

## Question

**Explain different characteristics of software.**

### Answer

Software has several characteristics that make it different from physical products.

---

## 1. Intangible

Software cannot be physically touched.

It exists as:

* Programs
* Data
* Instructions
* Documentation

---

## 2. Developed, Not Manufactured

Software is created through:

* Requirement analysis
* Design
* Coding
* Testing
* Deployment
* Maintenance

Once developed, software can generally be copied and distributed without manufacturing another physical product.

---

## 3. Does Not Wear Out Physically

Software does not physically wear out like hardware.

However, its reliability or maintainability may deteriorate because of:

* Changes
* Poor modifications
* New environments
* Security threats
* Increasing complexity

---

## 4. Highly Complex

Large software systems may contain:

* Millions of lines of code
* Numerous modules
* Many dependencies
* Complex business rules

This makes software difficult to understand and test completely.

---

## 5. Invisible

The internal structure of software cannot be directly observed physically.

Developers cannot simply look at the software and see:

* Control flow
* Data flow
* Dependencies
* Logical states

---

## 6. Easy to Modify

Software can be modified relatively easily compared with physical products.

However, modifications can introduce new defects.

---

## 7. Changeable

Software requirements frequently change because of:

* Business requirements
* Technology
* User expectations
* Laws
* Security requirements

---

## 8. Logic-Based

Software mainly consists of:

* Logic
* Algorithms
* Instructions
* Data structures

A small logical mistake can cause a major failure.

---

### Conclusion

Software is intangible, complex, invisible, changeable, logic-based, and developed rather than manufactured. These characteristics make software development, testing, maintenance, and quality management different from physical product manufacturing.

### ⭐ Exam Keywords

**Intangible + Developed not Manufactured + Does not Wear Out + Complex + Invisible + Modifiable + Changeable + Logic-Based**

---

# 23. PYQ — 2023

## Question

**Classification of different types of products.**

### Answer

Software products can broadly be classified into:

1. Generic products
2. Customized products

---

## Generic Products

Generic products are developed for a broad market.

Requirements are mainly determined by:

* Market demand
* User needs
* Competition
* Product strategy

### Examples

* Operating systems
* Web browsers
* Office software
* Antivirus software

---

## Customized Products

Customized products are developed for a specific customer according to their requirements.

### Examples

* College management system
* Hospital management system
* Bank-specific software
* Government systems

---

## Comparison

| Generic Product      | Customized Product                 |
| -------------------- | ---------------------------------- |
| General market       | Specific customer                  |
| Market-driven        | Customer-driven                    |
| Many users/customers | Specific organization              |
| Standard features    | Customer-specific features         |
| Example: Web browser | Example: College management system |

---

# 24. Requirements and Product Classification

The source of requirements differs between generic and customized products.

```text id="b9x3v5"
                  SOFTWARE PRODUCT
                         |
                +--------+--------+
                |                 |
             GENERIC          CUSTOMIZED
                |                 |
          Market Needs      Customer Needs
                |                 |
          Product Strategy  Customer Requirements
```

### Generic Product

The company asks:

> "What does the market need?"

### Customized Product

The company asks:

> "What does this particular customer need?"

This difference is important when discussing software requirements.

---

# 25. Product Quality and Requirements

Software quality depends strongly on whether requirements are correctly understood and implemented.

```text id="k4m7n2"
Stakeholder Needs
       ↓
Requirements
       ↓
Design
       ↓
Implementation
       ↓
Testing
       ↓
Software Product
       ↓
Quality Assessment
```

If requirements are incorrect:

```text id="h2p8r6"
Incorrect Requirement
       ↓
Incorrect Design
       ↓
Incorrect Implementation
       ↓
Defects
       ↓
Customer Dissatisfaction
```

Therefore:

> **Good software quality begins with good requirements.**

---

# 26. Requirement Example — College Attendance System

Consider a college attendance application.

## General Requirement

> The system should provide an online platform for managing student attendance.

## Present Requirements

* Teacher login
* Student login
* Mark attendance
* View attendance
* Generate attendance reports

## Functional Requirements

* Teacher can mark attendance.
* Student can view attendance.

## Non-Functional Requirements

* Attendance page should load within 2 seconds.
* Only authorized teachers can modify attendance.
* System should be available during college working hours.

This shows how different levels of requirements work together.

---

# 27. Exam-Oriented Answer Structure

## If asked: "Explain General requirements and Present requirement."

Write:

1. Define requirement.
2. Define general requirement.
3. Give characteristics.
4. Give example.
5. Define present requirement.
6. Give characteristics.
7. Give example.
8. Difference table.
9. Conclusion.

---

## If asked: "Classification of different types of products."

Write:

1. Define software product.
2. Generic product.
3. Example.
4. Customized product.
5. Example.
6. Comparison table.
7. Diagram.

---

## If asked: "Characteristics of Software."

Write:

1. Intangible
2. Developed, not manufactured
3. Does not wear out physically
4. Complex
5. Invisible
6. Modifiable
7. Changeable
8. Logic-based

---

# 28. Quick Revision

## Software Product

> Set of software, data, documentation, and related components developed to provide specific functionality or services.

## General Requirement

> Broad, high-level requirement describing overall product needs.

## Present Requirement

> Current and immediate requirement of users or customers.

## Functional Requirement

> Describes **WHAT** the system should do.

## Non-Functional Requirement

> Describes **HOW WELL** the system should perform.

---

# 29. Requirement Hierarchy

```text id="v6q3r9"
Business Need
     ↓
User Requirement
     ↓
System Requirement
     ↓
Functional / Non-Functional
     ↓
Design
     ↓
Code
     ↓
Test
```

---

# 30. Product Classification

```text id="h7k2m5"
Software Products
       |
   +---+---+
   |       |
Generic  Customized
   |       |
Market   Customer
   |       |
Many     Specific
Users    Organization
```

---

# 31. Most Important Exam Points

| Topic                                     |          Year | Priority |
| ----------------------------------------- | ------------: | -------: |
| General & Present Requirements            |          2025 |    ⭐⭐⭐⭐⭐ |
| Classification of Products                |          2023 |    ⭐⭐⭐⭐⭐ |
| Characteristics of Software               |          2025 |    ⭐⭐⭐⭐⭐ |
| Functional vs Non-Functional Requirements | No direct PYQ |     ⭐⭐⭐⭐ |
| Good Requirement Characteristics          | No direct PYQ |     ⭐⭐⭐⭐ |
| Requirement Traceability                  | No direct PYQ |      ⭐⭐⭐ |
| Requirement Changes                       | No direct PYQ |     ⭐⭐⭐⭐ |

---

# 32. One-Minute Revision

```text id="p8r4w6"
             SOFTWARE PRODUCT
                    ↓
              REQUIREMENTS
                    |
        +-----------+-----------+
        |                       |
     GENERAL                  PRESENT
     Overall                  Current
     Broad                    Immediate
        |                       |
        +-----------+-----------+
                    ↓
             FUNCTIONAL
                    +
            NON-FUNCTIONAL
                    ↓
               DEVELOPMENT
                    ↓
                 TESTING
                    ↓
               QUALITY
```

### ⭐ Golden Rules

> **General requirement = Overall/broad need.**

> **Present requirement = Current/immediate need.**

> **Functional requirement = What the system does.**

> **Non-functional requirement = How well it does it.**

> **Generic product = General market.**

> **Customized product = Specific customer.**

> **Good requirements should be clear, complete, consistent, unambiguous, feasible, verifiable, and traceable.**

> **Good requirements are the foundation of good software quality.**
