# 01 — Software Quality Basics

## 1. Definition of Software Quality

### What is Software Quality?

**Software quality** is the degree to which a software product satisfies its specified requirements, meets the expectations of its users and stakeholders, and is free from defects.

In simple words:

> **Software Quality = How well the software satisfies requirements, user needs, and expected quality characteristics.**

Software quality is not only about whether the software works or not. A good-quality software should also be:

* Correct
* Reliable
* Efficient
* Usable
* Maintainable
* Secure
* Compatible
* Easy to modify
* Satisfying to users

### Example

Consider a **college attendance management system**.

If the system correctly records attendance but:

* takes 30 seconds to load every page,
* frequently crashes,
* has poor security,
* is difficult to use,
* loses attendance records,

then the software may be functionally correct in some situations but its **overall quality is poor**.

Therefore, software quality considers both:

**Functional correctness + Quality characteristics**

---

# 2. Core Components of Quality

Software quality can be understood through several core components.

## 2.1 Requirements

The software must satisfy the requirements specified by customers, users, and other stakeholders.

### Example

For an attendance system:

* Teacher should be able to mark attendance.
* Students should be able to view attendance.
* Admin should generate attendance reports.

If these requirements are not implemented correctly, software quality is poor.

---

## 2.2 Correctness

The software should produce the expected results for the given inputs.

### Example

If a student has attended 45 out of 50 lectures:

Attendance percentage:

`45 / 50 × 100 = 90%`

If the system displays 70%, the software is incorrect.

---

## 2.3 Reliability

Reliability refers to the ability of software to operate consistently without failure for a specified period.

### Example

An online banking application should not randomly crash while a customer is transferring money.

---

## 2.4 Usability

Usability means how easily users can understand and operate the software.

A good-quality application should have:

* Simple navigation
* Clear messages
* Understandable interface
* Consistent design
* Easy-to-use controls

---

## 2.5 Efficiency

Efficiency refers to how effectively software uses resources such as:

* CPU
* Memory
* Storage
* Network bandwidth
* Processing time

### Example

Two applications provide the same functionality.

Application A uses 90% CPU.

Application B uses 20% CPU.

Application B generally demonstrates better efficiency.

---

## 2.6 Maintainability

Maintainability refers to how easily software can be modified, corrected, or enhanced.

Software should be designed so that developers can:

* Fix defects
* Add features
* Modify existing functionality
* Improve performance

without unnecessarily affecting other parts of the system.

---

## 2.7 Security

Software should protect:

* Data
* User accounts
* Authentication information
* Confidential information
* System resources

### Example

A banking application should prevent unauthorized users from accessing another customer's account.

---

## 2.8 Testability

Testability refers to how easily the software can be tested to identify defects.

A well-designed system should make it easier to:

* Create test cases
* Provide test inputs
* Observe outputs
* Detect failures
* Automate tests

---

# 3. Different Characteristics of Software

Software has several characteristics that distinguish it from physical products.

## 3.1 Software is Intangible

Software cannot be physically touched like a machine, car, or book.

It exists as:

* Programs
* Data
* Instructions
* Documentation

---

## 3.2 Software is Developed, Not Manufactured

Physical products are manufactured repeatedly.

For example:

A company manufactures 10,000 laptops.

Software is generally **developed once** and then copied/distributed to many users.

The major cost is therefore associated with:

* Analysis
* Design
* Development
* Testing
* Maintenance

rather than physical manufacturing.

---

## 3.3 Software Does Not Wear Out Physically

Hardware can physically wear out because of:

* Heat
* Friction
* Aging
* Mechanical damage

Software does not physically wear out in the same way.

However, software quality can **deteriorate due to changes**.

For example:

* New operating systems
* New hardware
* Security threats
* Requirement changes
* Poor maintenance
* Changes introduced during modification

---

## 3.4 Software is Highly Complex

Modern software may contain:

* Millions of lines of code
* Thousands of modules
* Multiple databases
* External APIs
* Distributed services
* Complex business rules

Therefore, software can have a large number of possible states and interactions.

---

## 3.5 Software is Easy to Modify

Software can generally be modified more easily than physical products.

However, modifications can introduce new defects.

This is called the **ripple effect**.

### Example

Changing the calculation logic of an attendance system may unintentionally affect:

* Reports
* Student dashboards
* Notifications
* Admin statistics

Therefore, software changes require proper testing.

---

## 3.6 Software is Invisible

The internal structure of software is not directly visible.

A developer cannot physically see:

* Control flow
* Dependencies
* Logical errors
* Data flow
* Hidden states

This makes understanding and testing software difficult.

---

## 3.7 Software is Changeable

Software requirements frequently change because:

* Business requirements change
* Customer expectations change
* Laws change
* Technology changes
* Security requirements change

Therefore, software must be designed to accommodate change.

---

## 3.8 Software is Mostly Logic-Based

Software mainly consists of:

* Algorithms
* Logic
* Data structures
* Business rules
* Instructions

Its behavior depends heavily on the correctness of this logic.

---

# 4. Classification of Different Types of Products

Products can broadly be classified based on how they are developed, delivered, and used.

## 4.1 Generic Products

A **generic product** is developed for a broad market rather than for one specific customer.

The developer or organization decides the product requirements based on:

* Market demand
* User expectations
* Competition
* Business objectives

### Examples

* Microsoft Windows
* Web browsers
* Antivirus software
* Mobile applications

### Key Point

**Developer determines the requirements.**

---

## 4.2 Customized Products

A **customized product** is developed for a particular customer or organization according to its specific requirements.

### Example

A university may hire a software company to develop a customized:

> College Management System

with features specifically required by that university.

### Key Point

**Customer-specific requirements determine the product.**

---

## 4.3 Generic vs Customized Products

| Feature              | Generic Product           | Customized Product            |
| -------------------- | ------------------------- | ----------------------------- |
| Target               | General market            | Specific customer             |
| Requirements         | Market-driven             | Customer-driven               |
| Development          | For many users            | For a particular organization |
| Example              | Web browser               | University management system  |
| Requirement decision | Developer/product company | Customer + development team   |

---

# 5. PYQs

---

# PYQ 1 — 2022

## Question

**Define software quality.**

### Answer

Software quality is the degree to which a software product satisfies its specified requirements, fulfills user and stakeholder expectations, and possesses desirable quality characteristics such as correctness, reliability, usability, efficiency, maintainability, and security.

In simple terms:

> **Software quality means developing software that correctly satisfies requirements and provides the expected level of performance and user satisfaction.**

### Important Points

1. Software must satisfy **specified requirements**.
2. It should meet **user expectations**.
3. It should operate **correctly and reliably**.
4. It should be **efficient and usable**.
5. It should be **maintainable and secure**.
6. It should have minimum defects and failures.

### Example

For an online banking system, quality means:

* Correct transaction processing
* High security
* Fast response
* High reliability
* Easy usability
* Accurate account information

Therefore, simply making the banking application functional is not sufficient. It must also satisfy other quality requirements.

### Exam Conclusion

Thus, **software quality is the overall degree of excellence of software with respect to requirements, user expectations, and quality characteristics.**

### ⭐ Exam Keywords

**Requirements + User Expectations + Correctness + Reliability + Usability + Efficiency + Maintainability + Security**

---

# PYQ 2 — 2022

## Question

**List & explain core components of quality.**

### Answer

The core components of software quality represent the major aspects that determine whether software can be considered a quality product.

The important components are:

1. Requirements
2. Correctness
3. Reliability
4. Usability
5. Efficiency
6. Maintainability
7. Security
8. Testability

---

## 1. Requirements

The software should satisfy all specified functional and non-functional requirements.

### Example

An attendance system must allow teachers to mark attendance and generate reports if these are specified requirements.

---

## 2. Correctness

The software should produce correct and expected results for valid inputs.

### Example

If 80 out of 100 students are present, the system should correctly calculate the attendance percentage.

---

## 3. Reliability

The software should perform consistently without unexpected failures.

### Example

A banking application should remain operational during financial transactions.

---

## 4. Usability

The software should be easy for users to learn and operate.

### Example

A student should be able to check attendance without requiring technical knowledge.

---

## 5. Efficiency

The software should use system resources effectively.

These resources include:

* CPU
* Memory
* Storage
* Network
* Processing time

---

## 6. Maintainability

The software should be easy to:

* Correct
* Modify
* Improve
* Extend

### Example

Developers should be able to add a new attendance report without rewriting the entire system.

---

## 7. Security

The software should protect data and resources from unauthorized access.

### Example

Only authorized teachers should be allowed to modify attendance records.

---

## 8. Testability

The software should be designed so that its behavior can be tested effectively.

### Example

An application with clearly separated modules and predictable inputs/outputs is easier to test.

---

### Easy Diagram

```text
                 SOFTWARE QUALITY
                       |
       +---------------+---------------+
       |               |               |
   Requirements    Correctness     Reliability
       |
   +---+---+---------+---------+---------+
   |       |         |         |         |
Usability Efficiency Maintainability Security
                         |
                     Testability
```

### Exam Conclusion

The quality of software is determined by several components rather than a single factor. A quality product should satisfy requirements while being correct, reliable, usable, efficient, maintainable, secure, and testable.

### ⭐ Exam Keywords

**Requirements → Correctness → Reliability → Usability → Efficiency → Maintainability → Security → Testability**

---

# PYQ 3 — 2025

## Question

**Explain different characteristics of software.**

### Answer

Software has several characteristics that make it different from physical products.

### 1. Intangible

Software is not a physical product and cannot be touched.

It consists of:

* Programs
* Data
* Instructions
* Documentation

---

### 2. Developed, Not Manufactured

Software is developed through activities such as:

* Requirement analysis
* Design
* Coding
* Testing
* Deployment
* Maintenance

Unlike physical products, software does not require physical manufacturing for every copy.

---

### 3. Does Not Wear Out

Software does not physically wear out like hardware.

However, software can become difficult to maintain or unreliable because of:

* Requirement changes
* Environmental changes
* Poor modifications
* New security threats

---

### 4. Highly Complex

Software can contain a very large number of:

* Modules
* Functions
* Dependencies
* States
* Interactions

This makes software difficult to completely understand and test.

---

### 5. Easy to Modify

Software can be modified to add new features or fix defects.

However, changes can introduce new defects.

Therefore, modification should be followed by appropriate testing.

---

### 6. Invisible

The internal structure of software cannot be directly seen.

For example, a user cannot visually see:

* Program logic
* Data flow
* Control flow
* Dependencies

This makes software development and testing more challenging.

---

### 7. Changeable

Software requirements can change frequently because of:

* Customer requirements
* Business changes
* Technology changes
* Legal requirements
* Security requirements

Therefore, software should support evolution and maintenance.

---

### 8. Logic-Based

Software mainly consists of logical instructions, algorithms, and data manipulation.

A small logical error can sometimes produce a major failure.

---

### Diagram

```text
              CHARACTERISTICS
                    |
     +--------------+--------------+
     |              |              |
 Intangible     Complex        Invisible
     |
 Developed       Easy to        Changeable
 Not             Modify
 Manufactured
     |
 Does Not Wear Out
     |
 Logic-Based
```

### Exam Conclusion

Thus, software differs from physical products because it is intangible, highly complex, logic-based, changeable, and developed rather than manufactured. These characteristics make software quality assurance and testing particularly important.

### ⭐ Exam Keywords

**Intangible + Developed not Manufactured + Does not Wear Out + Complex + Invisible + Changeable + Logic-Based**

---

# PYQ 4 — 2023

## Question

**Classification of different types of products.**

### Answer

Software products can mainly be classified into:

1. Generic Products
2. Customized Products

---

## 1. Generic Products

Generic products are developed for a large number of customers or the general market.

The product organization decides the requirements based on:

* Market requirements
* Customer demand
* Competition
* Business objectives

### Examples

* Operating systems
* Web browsers
* Antivirus software
* Office applications

### Characteristics

* Developed for a broad market
* Requirements are mainly determined by the developer/product organization
* Can be sold to many customers
* Features are designed for common user needs

---

## 2. Customized Products

Customized products are developed for a particular customer according to specific requirements.

The customer generally provides detailed requirements, and the development organization builds the system accordingly.

### Examples

* Banking software developed for a particular bank
* College management system
* Hospital management system
* Government-specific applications

### Characteristics

* Developed for a specific customer
* Requirements are customer-specific
* Customer participates strongly in requirements definition
* Usually designed around a particular organization's processes

---

## Comparison

| Point        | Generic Product | Customized Product               |
| ------------ | --------------- | -------------------------------- |
| Target       | General market  | Specific customer                |
| Requirements | Market-driven   | Customer-driven                  |
| Users        | Many customers  | Particular organization/customer |
| Development  | Standardized    | Customer-specific                |
| Example      | Web browser     | College management system        |

---

## Easy Diagram

```text
                  SOFTWARE PRODUCTS
                         |
              +----------+----------+
              |                     |
          GENERIC              CUSTOMIZED
          PRODUCT                PRODUCT
              |                     |
       General Market       Specific Customer
              |                     |
       Market Requirements   Customer Requirements
```

### Exam Conclusion

Therefore, software products can be broadly classified as **generic products**, developed for the general market, and **customized products**, developed according to the specific requirements of an individual customer or organization.

### ⭐ Exam Keywords

**Generic → General Market → Market Requirements**

**Customized → Specific Customer → Customer Requirements**

---

# 6. Quick Revision

## Software Quality

> Degree to which software satisfies requirements, user expectations, and desired quality characteristics.

---

## Core Components

```text
Requirements
     ↓
Correctness
     ↓
Reliability
     ↓
Usability
     ↓
Efficiency
     ↓
Maintainability
     ↓
Security
     ↓
Testability
```

---

## Characteristics of Software

Remember:

**I-D-W-C-I-M-C-L**

* **I** — Intangible
* **D** — Developed, not manufactured
* **W** — Does not wear out
* **C** — Complex
* **I** — Invisible
* **M** — Modifiable
* **C** — Changeable
* **L** — Logic-based

---

## Types of Products

```text
Software Products
       |
   +---+---+
   |       |
Generic  Customized
   |       |
Market   Specific
   |       |
Many     Particular
Users    Customer
```

---

# 7. Exam Priority

| Topic                          | PYQ Frequency | Priority |
| ------------------------------ | ------------: | -------- |
| Definition of Software Quality |          2022 | ⭐⭐⭐⭐     |
| Core Components of Quality     |          2022 | ⭐⭐⭐⭐⭐    |
| Characteristics of Software    |          2025 | ⭐⭐⭐⭐⭐    |
| Classification of Products     |          2023 | ⭐⭐⭐⭐     |

### Most Important for Exam

**1. Core Components of Quality**

**2. Characteristics of Software**

**3. Definition of Software Quality**

**4. Classification of Products**

---

# 8. Questions You Should Be Able to Answer After This File

1. Define software quality.
2. List and explain the core components of quality.
3. Explain different characteristics of software.
4. Classify different types of software products.
5. Differentiate between generic and customized products.
6. Explain why software does not wear out like hardware.
7. Explain why software is considered intangible.
8. Explain why software is developed rather than manufactured.
