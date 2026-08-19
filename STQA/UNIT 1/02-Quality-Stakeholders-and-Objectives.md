# 02 — Quality Stakeholders and Objectives

## 1. Overview

Software quality is not defined by only the developer.

Different people involved in the development, delivery, purchase, and use of software may have different expectations about what "quality" means.

For example:

* A **customer** may want the software to satisfy business requirements.
* A **user** may want it to be easy to use.
* A **developer** may focus on maintainability and technical correctness.
* A **tester** may focus on defects and reliability.
* A **supplier** may focus on delivering the product according to contract and schedule.
* Management may focus on cost, productivity, quality, and business objectives.

Therefore:

> **Software quality is a multidimensional concept viewed differently by different stakeholders.**

---

# 2. Stakeholders of Software Quality

A **stakeholder** is a person, group, or organization that has an interest in the software product or is affected by it.

Important software quality stakeholders include:

1. Customers
2. Users
3. Developers
4. Testers
5. Suppliers
6. Management
7. Maintenance team
8. Regulatory authorities

---

# 3. Customers

A **customer** is the person or organization that purchases, commissions, or requests the software.

The customer's primary concern is whether the software satisfies the agreed business and functional requirements.

### Customer's Quality Expectations

A customer may expect:

* Correct functionality
* Required features
* Reasonable cost
* Delivery on time
* Reliability
* Security
* Compliance with requirements
* Good performance
* Support and maintenance

### Example

Suppose a bank hires a company to develop a banking system.

The bank expects:

* Secure transactions
* Accurate account balances
* High availability
* Fast processing
* Regulatory compliance

For the bank, these factors are important indicators of quality.

---

# 4. Users

A **user** is the person who directly interacts with and uses the software.

Users are mainly concerned with the practical experience of using the system.

### User Quality Expectations

Users generally expect:

* Ease of use
* Good performance
* Reliability
* Availability
* Clear interface
* Quick response
* Few errors

### Example

For a college attendance system, teachers may want:

* Easy attendance entry
* Fast student search
* Simple navigation
* Accurate reports

Students may want:

* Easy access to attendance
* Clear percentage calculation
* Mobile-friendly interface

---

# 5. Developers

Developers are responsible for designing and implementing the software.

Their quality concerns are often related to the internal technical characteristics of the software.

### Developer Quality Expectations

Developers may focus on:

* Clean code
* Maintainability
* Modularity
* Reusability
* Testability
* Performance
* Scalability
* Low technical debt

### Example

A developer may consider a system high quality if its modules are well separated and a new feature can be added without modifying large portions of existing code.

---

# 6. Testers

Testers evaluate whether the software meets its requirements and identify defects.

### Tester Quality Expectations

Testers focus on:

* Correctness
* Reliability
* Defect detection
* Requirement compliance
* Testability
* Risk reduction

### Example

A tester checks whether:

```text
Input → System → Expected Output
```

matches the specified requirement.

If the expected output is different from the actual output, a defect may exist.

---

# 7. Suppliers

A supplier is an organization or person providing software, services, tools, components, or infrastructure.

A supplier may be concerned with:

* Contract requirements
* Delivery schedule
* Cost
* Service-level agreements
* Product quality
* Customer satisfaction
* Support obligations

### Example

A cloud service provider may need to maintain:

* Availability
* Performance
* Security
* Service-level agreements

---

# 8. Management

Management is concerned with the overall business success of the software project.

Management may focus on:

* Cost
* Schedule
* Productivity
* Quality
* Risk
* Customer satisfaction
* Business value

### Example

Management may ask:

> "Can we deliver reliable software within the allocated budget and deadline?"

---

# 9. Maintenance Team

The maintenance team works on the software after deployment.

Their major quality concerns include:

* Maintainability
* Modifiability
* Understandability
* Testability
* Documentation
* Stability

### Example

If a software system is difficult to understand, even a small change may require significant effort.

Therefore, maintainability is an important quality characteristic from the maintenance team's perspective.

---

# 10. Regulatory Authorities

Some software must comply with laws, regulations, standards, and industry requirements.

Examples include:

* Banking
* Healthcare
* Aviation
* Defense
* Financial systems

Regulatory authorities may focus on:

* Safety
* Security
* Privacy
* Compliance
* Auditability
* Reliability

---

# 11. Quality from Different Stakeholder Perspectives

The meaning of quality changes depending on who evaluates the software.

| Stakeholder          | Main Quality Concern                    |
| -------------------- | --------------------------------------- |
| Customer             | Requirements and business value         |
| User                 | Usability and performance               |
| Developer            | Maintainability and technical quality   |
| Tester               | Correctness and defect detection        |
| Supplier             | Contract and delivery requirements      |
| Management           | Cost, schedule, risk and business value |
| Maintenance Team     | Maintainability and modifiability       |
| Regulatory Authority | Compliance, safety and security         |

### Important Idea

There is **no single definition of quality that satisfies every stakeholder in exactly the same way**.

Instead:

```text
                 SOFTWARE QUALITY
                        |
        +---------------+---------------+
        |               |               |
    Customer          User          Developer
        |               |               |
   Requirements      Usability     Maintainability
   Business Value    Performance   Technical Quality
        |
        +---------------+---------------+
                        |
                    Tester
                        |
                Correctness
                Reliability
                Defects
```

---

# 12. Quality Objectives

A **quality objective** is a specific goal that an organization wants the software and its development process to achieve.

Quality objectives should convert general expectations about quality into measurable or observable goals.

### Example

Instead of saying:

> "The system should be fast."

A better quality objective is:

> "The system should respond to 95% of user requests within 2 seconds."

The second statement is more useful because it can be measured and tested.

---

# 13. Important Quality Objectives

Common quality objectives applicable to software development and usage include:

## 13.1 Correctness

The software should perform the functions specified in the requirements.

### Example

An online examination system should calculate marks correctly.

---

## 13.2 Reliability

The system should operate consistently without failures.

### Example

A banking application should process transactions reliably.

---

## 13.3 Usability

The software should be easy to learn and operate.

### Example

A new student should be able to use the college portal without extensive training.

---

## 13.4 Performance

The system should provide acceptable response time and throughput.

### Example

A website should load within an acceptable amount of time under expected workload.

---

## 13.5 Security

The system should protect information and prevent unauthorized access.

### Example

Only authorized employees should access confidential company records.

---

## 13.6 Maintainability

The software should be easy to modify, correct, and enhance.

### Example

Developers should be able to add a new report without rewriting the complete application.

---

## 13.7 Availability

The software should be accessible when users need it.

### Example

An online banking system should be available continuously except during planned maintenance.

---

## 13.8 Scalability

The system should be able to handle increasing workloads without unacceptable degradation.

### Example

An e-commerce system should continue functioning when the number of users increases significantly during a sale.

---

## 13.9 Testability

The software should allow effective testing and defect identification.

### Example

Individual modules should be independently testable.

---

## 13.10 Compliance

The software should satisfy applicable:

* Laws
* Regulations
* Standards
* Organizational policies

### Example

A financial application may need to satisfy regulatory requirements related to transactions and data protection.

---

# 14. Quality Objectives vs Quality Characteristics

These two concepts are related but not exactly identical.

### Quality Characteristic

A quality characteristic describes an aspect or property of software quality.

Examples:

* Reliability
* Usability
* Security
* Maintainability
* Performance

### Quality Objective

A quality objective specifies what level of that characteristic should be achieved.

### Example

**Characteristic:**

> Performance

**Objective:**

> 95% of requests should receive a response within 2 seconds.

Therefore:

```text
Quality Characteristic
          ↓
      Performance
          ↓
Quality Objective
          ↓
95% requests < 2 seconds
```

---

# 15. Quality Objectives in Software Development

Quality objectives should cover both the **software product** and the **development process**.

## Product-Oriented Objectives

These focus on the final software.

Examples:

* Correct functionality
* High reliability
* Good performance
* Strong security
* High usability
* Maintainability

## Process-Oriented Objectives

These focus on how the software is developed.

Examples:

* Reduce defect introduction
* Follow coding standards
* Perform code reviews
* Perform testing activities
* Track defects
* Improve development processes
* Maintain documentation

### Diagram

```text
              QUALITY OBJECTIVES
                     |
          +----------+----------+
          |                     |
       PRODUCT                PROCESS
          |                     |
   Correctness             Code Reviews
   Reliability             Testing
   Security                Standards
   Performance             Defect Tracking
   Usability               Documentation
```

---

# 16. PYQ — 2023

## Question

**Define “Quality” as viewed by different stakeholders of software development and usage.**

### Answer

Quality is a multidimensional concept because different stakeholders judge software according to their own requirements, expectations, responsibilities, and objectives.

The meaning of quality from different stakeholder perspectives is explained below.

---

## 1. Customer Perspective

For the customer, quality means that the software:

* Satisfies specified requirements
* Provides required functionality
* Provides business value
* Is delivered within agreed cost and schedule
* Is reliable and secure

### Example

A bank considers a banking application high quality if it accurately processes transactions and satisfies its business requirements.

---

## 2. User Perspective

For the user, quality mainly means:

* Ease of use
* Good performance
* Reliability
* Availability
* Convenient interface
* Correct results

### Example

A student considers a college portal high quality if it is easy to navigate and quickly displays accurate attendance information.

---

## 3. Developer Perspective

For developers, quality means that the software is:

* Well structured
* Maintainable
* Modular
* Reusable
* Testable
* Understandable
* Efficient

### Example

A developer prefers software in which a new feature can be added without causing major changes throughout the system.

---

## 4. Tester Perspective

For testers, quality means that:

* Requirements are satisfied
* Defects are minimized
* Failures can be detected
* Software behaves as expected
* The product is adequately tested

Testers are particularly concerned with finding discrepancies between expected and actual behavior.

---

## 5. Supplier Perspective

For suppliers, quality means:

* Meeting contractual requirements
* Delivering on time
* Meeting agreed specifications
* Maintaining acceptable cost
* Providing required support

---

## 6. Management Perspective

Management generally considers quality in relation to:

* Cost
* Schedule
* Productivity
* Risk
* Customer satisfaction
* Business objectives

Management wants quality to be achieved without uncontrolled increases in cost or development time.

---

## 7. Maintenance Team Perspective

For the maintenance team, quality means:

* Easy modification
* Easy defect correction
* Understandable code
* Good documentation
* Low maintenance effort

---

## 8. Regulatory Perspective

For regulated software, quality also means compliance with:

* Laws
* Regulations
* Industry standards
* Safety requirements
* Security requirements

---

## Summary Table

| Stakeholder      | Meaning of Quality                               |
| ---------------- | ------------------------------------------------ |
| Customer         | Requirements + Business Value                    |
| User             | Usability + Performance + Reliability            |
| Developer        | Maintainability + Modularity + Technical Quality |
| Tester           | Correctness + Defect Detection + Reliability     |
| Supplier         | Contract + Cost + Schedule + Delivery            |
| Management       | Cost + Schedule + Risk + Business Value          |
| Maintenance Team | Maintainability + Modifiability                  |
| Regulator        | Compliance + Safety + Security                   |

### Exam Conclusion

Therefore, software quality is not viewed identically by all stakeholders. Each stakeholder evaluates quality according to their specific needs and objectives. A successful software product must balance these different perspectives.

### ⭐ Exam Keywords

**Customer → Requirements**

**User → Usability**

**Developer → Maintainability**

**Tester → Defects/Correctness**

**Management → Cost/Schedule/Business Value**

**Regulator → Compliance/Safety**

---

# 17. PYQ — 2024

## Question

**List and explain Quality objectives applicable to software development and usage.**

### Answer

Quality objectives are specific goals established to ensure that software satisfies user requirements, stakeholder expectations, and organizational needs.

Important quality objectives applicable to software development and usage include:

---

## 1. Correctness

The software should implement the specified requirements accurately.

### Example

If a payroll system is required to calculate employee salary and tax, it should produce correct results.

---

## 2. Reliability

The software should operate correctly for a specified period without failure.

### Example

An ATM should reliably process withdrawals and deposits.

---

## 3. Usability

The system should be easy to learn and use.

### Example

An employee should be able to submit a leave request without requiring technical training.

---

## 4. Performance

The software should provide acceptable response time and resource utilization.

### Example

A search operation should return results within an acceptable response time.

---

## 5. Security

The software should protect data and resources from unauthorized access.

### Example

Only authorized users should access confidential employee information.

---

## 6. Maintainability

The software should be easy to modify, correct, and enhance.

### Example

A developer should be able to modify the tax calculation module without affecting unrelated modules.

---

## 7. Availability

The system should remain available whenever it is required.

### Example

A hospital information system should be available whenever medical staff need patient information.

---

## 8. Scalability

The software should handle increased users, transactions, or data.

### Example

An e-commerce application should continue functioning when traffic increases during a major sale.

---

## 9. Testability

The software should be easy to test and evaluate.

### Example

Individual modules should be independently testable.

---

## 10. Compliance

The software should follow applicable laws, regulations, standards, and organizational policies.

### Example

Financial software must follow applicable regulatory requirements.

---

## 11. Customer Satisfaction

The final product should satisfy the expectations and needs of customers and users.

Customer satisfaction can depend on:

* Functionality
* Usability
* Performance
* Reliability
* Support
* Cost

---

# 18. Quality Objectives Diagram

```text
                    QUALITY OBJECTIVES
                           |
      +--------------------+--------------------+
      |                    |                    |
   PRODUCT              USAGE              PROCESS
      |                    |                    |
 Correctness            Usability          Defect Reduction
 Reliability            Performance        Standards
 Security               Availability       Testing
 Maintainability        Satisfaction       Reviews
 Scalability
 Testability
 Compliance
```

---

# 19. Difference Between Stakeholder Perspective and Quality Objective

These concepts are commonly confused.

## Stakeholder Perspective

Answers:

> **"Who defines or evaluates quality, and what do they consider important?"**

Example:

**User → Usability**

---

## Quality Objective

Answers:

> **"What specific quality goal should the software achieve?"**

Example:

**Usability → 90% of new users should complete a task without assistance.**

### Easy Memory Trick

```text
STAKEHOLDER = WHO?
OBJECTIVE   = WHAT GOAL?
```

---

# 20. Real-Life Example

Consider an **Online Banking System**.

Different stakeholders may define quality differently.

### Customer / Bank

Wants:

* Accurate transactions
* Security
* Regulatory compliance
* Business value

### User

Wants:

* Easy interface
* Fast transactions
* Availability

### Developer

Wants:

* Maintainable architecture
* Clean code
* Modular design

### Tester

Wants:

* Correct behavior
* Low defect rate
* Adequate test coverage

### Management

Wants:

* Delivery within budget
* Delivery on schedule
* Customer satisfaction

Therefore:

```text
                     ONLINE BANKING
                           |
       +-------------------+-------------------+
       |                   |                   |
    CUSTOMER              USER             DEVELOPER
       |                   |                   |
   Security            Usability          Maintainability
   Accuracy            Performance        Modularity
       |
    MANAGEMENT
       |
 Cost + Schedule + Business Value
       |
     TESTER
       |
 Correctness + Defects + Reliability
```

---

# 21. Exam-Oriented Short Notes

## Customer

**Quality = Requirements + Business Value + Cost + Schedule**

## User

**Quality = Usability + Performance + Reliability**

## Developer

**Quality = Maintainability + Modularity + Testability**

## Tester

**Quality = Correctness + Reliability + Defect Detection**

## Management

**Quality = Cost + Schedule + Risk + Business Value**

## Supplier

**Quality = Contract + Delivery + Cost + Support**

## Regulator

**Quality = Compliance + Safety + Security**

---

# 22. Quick Revision

### Stakeholders

```text
Customer
   ↓
User
   ↓
Developer
   ↓
Tester
   ↓
Supplier
   ↓
Management
   ↓
Maintenance Team
   ↓
Regulator
```

### Quality Objectives

```text
Correctness
Reliability
Usability
Performance
Security
Maintainability
Availability
Scalability
Testability
Compliance
Customer Satisfaction
```

---

# 23. Most Important Exam Points

### PYQ 2023

**"Define Quality as viewed by different stakeholders..."**

Remember:

> Quality does not have exactly the same meaning for everyone.

Main mapping:

```text
Customer     → Requirements
User         → Usability
Developer    → Maintainability
Tester       → Correctness / Defects
Management   → Cost / Schedule
Supplier     → Contract / Delivery
Regulator    → Compliance
```

### PYQ 2024

**"List and explain Quality objectives..."**

Remember:

> Quality objectives are specific goals used to achieve the desired level of software quality.

Most important:

**Correctness + Reliability + Usability + Performance + Security + Maintainability + Availability + Scalability + Testability + Compliance**

---

# 24. One-Minute Revision

> **Stakeholders tell us WHO cares about quality and WHAT they expect.**

> **Quality objectives tell us WHAT measurable or achievable quality goals the software should satisfy.**

```text
STAKEHOLDERS
     ↓
Expectations
     ↓
QUALITY REQUIREMENTS
     ↓
QUALITY OBJECTIVES
     ↓
QUALITY SOFTWARE
```
