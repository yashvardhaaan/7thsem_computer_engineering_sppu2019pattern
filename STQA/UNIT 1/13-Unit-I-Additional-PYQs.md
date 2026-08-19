# 13 — Unit-I Additional PYQs

> **Purpose:** This file contains PYQs that do not map perfectly to a single syllabus heading but are still part of **Unit-I: Introduction to Software Testing / Software Quality**.
>
> These questions should be studied separately so that no PYQ is missed simply because it does not fit neatly under one topic.

---

# 1. PYQ — 2023

## Question 1

> **Classification of different types of products.**

---

## 1.1 Meaning of Product Classification

A **software product** is a software system developed to provide specific functionality or solve a particular problem for users or organizations.

Software products can be classified according to their purpose, users, development method, criticality, and intended market.

---

# 2. Classification of Different Types of Products

A useful classification of software products is given below.

```text
                    SOFTWARE PRODUCTS
                           │
        ┌──────────────────┼──────────────────┐
        ↓                  ↓                  ↓
   Generic Products   Customized Products   Embedded
                                             Products
        │                  │                  │
        ↓                  ↓                  ↓
 Mass-market software   Developed for      Software inside
 for many users         specific customer   hardware/system
```

---

## 2.1 Generic Products

Generic products are developed for a broad market and are sold or distributed to many customers.

### Characteristics

* Developed for a large number of users.
* Requirements are determined by market needs.
* Product is designed for general use.
* Same basic product is distributed to many customers.

### Examples

* Web browsers
* Office software
* Photo-editing software
* Operating systems
* General-purpose productivity applications

### Quality Focus

Important quality characteristics include:

* Usability
* Performance
* Reliability
* Compatibility
* Security
* Maintainability

---

# 3. Customized Products

Customized products are developed specifically for a particular customer or organization.

### Characteristics

* Designed for a specific customer's requirements.
* Requirements are usually obtained directly from the customer.
* Features can be customized.
* Acceptance criteria are often customer-specific.

### Examples

* College management system
* Hospital management system
* Banking software developed for a specific organization
* Government information system

### Quality Focus

Important quality characteristics include:

* Requirement correctness
* Functional correctness
* Reliability
* Security
* Customer satisfaction
* Maintainability

---

# 4. Embedded Products

Embedded software is software built into a hardware device or physical system to control or operate it.

### Examples

* Automobile control software
* Medical devices
* Washing machines
* Aircraft systems
* Industrial control systems
* Smart appliances

### Quality Focus

Embedded software often requires:

* Reliability
* Real-time performance
* Safety
* Fault tolerance
* Resource efficiency
* Hardware compatibility

---

# 5. Critical Software Products

Some software products can additionally be classified according to their **criticality**.

## 5.1 Safety-Critical Products

Failure may cause injury, death, or serious physical damage.

### Examples

* Aircraft control systems
* Medical equipment
* Nuclear plant control systems
* Certain military systems

### Important Quality Characteristics

* Safety
* Reliability
* Fault tolerance
* Accuracy
* Availability

---

## 5.2 Mission-Critical Products

Failure may cause a mission or major operation to fail.

### Examples

* Space mission software
* Satellite control systems
* Defense systems
* Large-scale communication systems

### Important Quality Characteristics

* Reliability
* Availability
* Fault tolerance
* Performance
* Recoverability

---

## 5.3 Business-Critical Products

Failure can cause significant financial or operational losses.

### Examples

* Banking systems
* Payment systems
* E-commerce systems
* Enterprise resource planning systems

### Important Quality Characteristics

* Security
* Reliability
* Availability
* Data integrity
* Performance

---

# 6. Product Classification — Exam Table

| Product Type      | Main Purpose               | Example           | Important Quality                  |
| ----------------- | -------------------------- | ----------------- | ---------------------------------- |
| Generic           | General market             | Office software   | Usability, compatibility           |
| Customized        | Specific customer          | College software  | Requirement correctness            |
| Embedded          | Controls hardware          | Automobile system | Reliability, real-time performance |
| Safety-critical   | Protects life/safety       | Medical system    | Safety, reliability                |
| Mission-critical  | Supports important mission | Space system      | Reliability, fault tolerance       |
| Business-critical | Supports business          | Banking system    | Security, availability             |

---

# 7. How to Answer "Classification of Different Types of Products"

For a short-answer question:

> Software products can be classified into generic, customized, embedded, safety-critical, mission-critical, and business-critical products. Generic products are developed for a broad market, whereas customized products are developed for a specific customer. Embedded products operate within hardware systems. Critical products require additional quality characteristics such as safety, reliability, security, availability, and fault tolerance.

For a longer answer, explain each type with an example and quality requirements.

---

# 8. PYQ — 2023

## Question 2

> **Green money – cost of prevention. Red money – cost of failure.**

This question is related to the **cost of software quality**.

---

# 9. Cost of Quality

The **Cost of Quality (CoQ)** is the total cost associated with achieving good quality and dealing with poor quality.

It can broadly be divided into:

```text
                    COST OF QUALITY
                           │
             ┌─────────────┴─────────────┐
             ↓                           ↓
       Cost of Conformance          Cost of Non-Conformance
             │                           │
       ┌─────┴─────┐               ┌─────┴─────┐
       ↓           ↓               ↓           ↓
 Prevention     Appraisal       Internal     External
                               Failure       Failure
```

---

# 10. Green Money — Cost of Prevention

## Definition

**Prevention cost** is the money spent to prevent defects from occurring in the first place.

In the PYQ terminology:

> **Green money = Cost of Prevention**

The basic idea is:

> Spend money early to prevent quality problems instead of spending much more money fixing failures later.

---

# 11. Examples of Prevention Costs

Examples include:

* Quality planning
* Requirements analysis
* Developer training
* Tester training
* Process improvement
* Coding standards
* Development standards
* Preventive reviews
* Process definition
* Quality planning meetings
* Tool selection
* Automated quality checks
* Preventive risk analysis

---

# 12. Example of Green Money

Suppose an organization is developing college attendance software.

Before development, the team:

* Reviews requirements.
* Defines attendance calculation rules.
* Trains developers.
* Establishes coding standards.
* Reviews database design.
* Creates quality standards.

These activities cost money, but they help prevent defects.

Therefore:

> **Money spent to prevent defects = Green Money / Prevention Cost**

---

# 13. Red Money — Cost of Failure

## Definition

**Failure costs** are costs incurred because the software contains defects or fails to satisfy requirements.

In the PYQ terminology:

> **Red money = Cost of Failure**

Failure costs can occur either before or after delivery.

---

# 14. Types of Failure Costs

## 14.1 Internal Failure Cost

Costs occur when defects are discovered **before the software reaches the customer**.

### Examples

* Rework
* Bug fixing
* Re-testing
* Debugging
* Rebuilding software
* Rejected deliverables
* Repeated development work

### Example

A developer discovers that the attendance percentage formula is wrong during system testing.

The organization spends time:

* Finding the cause.
* Fixing the formula.
* Retesting the software.
* Performing regression testing.

This is an **internal failure cost**.

---

# 15. External Failure Cost

Costs occur when defects are discovered **after the software has been delivered to the customer**.

### Examples

* Customer complaints
* Production bug fixing
* Emergency patches
* Technical support
* Compensation
* Lost customers
* Reputation damage
* Downtime
* Legal or regulatory consequences

### Example

The attendance system is deployed and incorrectly marks hundreds of students as absent.

The organization may need to:

* Investigate the issue.
* Correct the data.
* Deploy a patch.
* Provide support.
* Restore customer confidence.

These are **external failure costs**.

---

# 16. Prevention vs Failure Cost

| Prevention Cost — Green Money | Failure Cost — Red Money       |
| ----------------------------- | ------------------------------ |
| Spent to prevent defects      | Spent because defects occurred |
| Proactive                     | Reactive                       |
| Usually occurs before failure | Occurs after a defect/failure  |
| Quality planning              | Bug fixing                     |
| Training                      | Rework                         |
| Process improvement           | Customer support               |
| Requirement reviews           | Production failures            |
| Standards                     | Emergency patches              |
| Risk prevention               | Reputation damage              |

---

# 17. Green Money vs Red Money — Easy Example

Imagine a team is developing banking software.

### Green Money

The organization spends ₹50,000 on:

* Security training
* Code reviews
* Security testing
* Requirement analysis
* Secure coding practices

This reduces the probability of defects.

### Red Money

Suppose a serious security defect reaches production.

The organization may spend:

* Emergency development effort
* Incident response costs
* Customer support costs
* Data recovery costs
* Compensation
* Reputation recovery

The cost may be much higher than the original prevention cost.

### Key Principle

> **Prevention is generally cheaper than failure correction.**

---

# 18. Cost of Quality — Complete Structure

```text
                         COST OF QUALITY
                               │
              ┌────────────────┴────────────────┐
              ↓                                 ↓
      COST OF CONFORMANCE              COST OF NON-CONFORMANCE
              │                                 │
       ┌──────┴──────┐                   ┌──────┴──────┐
       ↓             ↓                   ↓             ↓
 Prevention       Appraisal          Internal       External
   Costs            Costs             Failure        Failure
                                       Costs          Costs
```

---

## 18.1 Prevention Costs

Money spent to prevent defects.

Examples:

* Training
* Planning
* Process improvement
* Standards
* Requirement reviews

---

## 18.2 Appraisal Costs

Money spent to evaluate whether the product meets quality requirements.

Examples:

* Testing
* Inspections
* Audits
* Reviews
* Quality measurements

---

## 18.3 Internal Failure Costs

Money spent because defects are discovered before delivery.

Examples:

* Rework
* Debugging
* Retesting
* Rejected work

---

## 18.4 External Failure Costs

Money spent because defects are discovered after delivery.

Examples:

* Customer support
* Warranty work
* Production fixes
* Compensation
* Reputation loss

---

# 19. Important Exam Point

The phrase:

> **"Green money – cost of prevention. Red money – cost of failure."**

should be understood as a **quality-cost concept**, not as a separate type of software quality.

### Remember:

```text
GREEN → PREVENT
RED   → FAILURE
```

---

# 20. PYQ — 2025

## Question

> **Different characteristics of software**

---

# 21. Characteristics of Software

Software has several characteristics that make it fundamentally different from physical products.

Important characteristics include:

1. Intangible
2. Developed rather than manufactured
3. Does not physically wear out
4. Highly complex
5. Easy to modify but difficult to maintain correctly
6. Mostly human-created
7. Often customized
8. Dependent on requirements
9. Can be copied at very low cost
10. Invisible in structure
11. Evolutionary in nature
12. Quality is difficult to measure directly

---

# 22. 1 — Software is Intangible

Software is not a physical object.

We cannot physically touch a software program in the same way that we can touch hardware.

### Example

A mobile application consists of:

* Source code
* Data
* Configuration
* Executable files

But the software itself is not a physical object.

### Quality Implication

Software quality must be evaluated through:

* Behavior
* Performance
* Reliability
* Usability
* Maintainability
* Other measurable characteristics

---

# 23. 2 — Software is Developed, Not Manufactured

Physical products are manufactured through production processes.

Software is primarily **engineered/developed** through activities such as:

```text
Requirements
     ↓
Design
     ↓
Coding
     ↓
Testing
     ↓
Deployment
```

Once software has been developed, making another copy usually costs very little compared with manufacturing another physical product.

---

# 24. 3 — Software Does Not Physically Wear Out

Hardware can physically wear out due to:

* Friction
* Heat
* Aging
* Mechanical damage

Software does not physically wear out.

However, software can **deteriorate in practical quality** because of:

* Changes
* New requirements
* Environment changes
* Poor maintenance
* Introduction of new defects
* Increasing complexity

### Important

> Software does not physically wear out, but its quality can degrade because of modifications and maintenance.

---

# 25. 4 — Software is Highly Complex

Software systems may contain:

* Millions of lines of code
* Large numbers of components
* Complex dependencies
* Multiple interfaces
* Distributed services
* Complex business rules

### Example

A banking system may involve:

```text
Mobile App
    ↓
API Gateway
    ↓
Authentication
    ↓
Banking Services
    ↓
Database
    ↓
Payment Network
```

A small change in one component can affect several other components.

---

# 26. 5 — Software is Mostly Human-Created

Software development depends heavily on:

* Human reasoning
* Requirements interpretation
* Design decisions
* Programming
* Testing
* Problem solving

Therefore, human mistakes can introduce defects.

Examples:

* Incorrect requirement interpretation
* Logic error
* Incorrect formula
* Missing validation
* Incorrect assumption

---

# 27. 6 — Software is Easy to Modify

Software can often be modified much more easily than physical products.

Examples:

* Adding a feature
* Changing a calculation
* Updating a user interface
* Modifying business rules

However:

> Easy modification does not mean risk-free modification.

A small change can introduce defects elsewhere.

---

# 28. 7 — Software is Difficult to Maintain Correctly

Although software can be modified easily, maintaining a large system can become difficult because of:

* Dependencies
* Legacy code
* Poor documentation
* Increasing complexity
* Technical debt
* Changing requirements

This is why maintainability is an important software quality characteristic.

---

# 29. 8 — Software is Often Customized

Many software systems are developed or configured according to specific customer requirements.

Examples:

* Banking applications
* Hospital systems
* Government systems
* College management systems
* Enterprise applications

Customized requirements increase the importance of:

* Requirement analysis
* Customer communication
* Validation
* Acceptance testing

---

# 30. 9 — Software Requirements Frequently Change

Software requirements may change because of:

* Customer needs
* Business changes
* New regulations
* Technology changes
* Security threats
* Market changes

Therefore, software development processes must support controlled changes.

---

# 31. 10 — Software is Invisible

Software cannot be directly observed like a physical product.

Its structure is represented through:

* Source code
* Architecture diagrams
* Models
* Documentation
* Interfaces
* Execution behavior

This makes software visualization and quality assessment more difficult.

---

# 32. 11 — Software Can Be Replicated Easily

Once software has been developed, copies can usually be created at very low cost.

For example:

A software application can be distributed to thousands of users without manufacturing a new physical product for each user.

---

# 33. 12 — Software Quality is Difficult to Measure Directly

Software quality is multidimensional.

It includes:

* Functionality
* Reliability
* Usability
* Performance
* Security
* Maintainability
* Portability
* Compatibility

Therefore, a single measurement cannot completely represent software quality.

---

# 34. Characteristics of Software — Exam Table

| Characteristic              | Explanation                                   |
| --------------------------- | --------------------------------------------- |
| Intangible                  | Cannot be physically touched                  |
| Developed, not manufactured | Created through engineering activities        |
| No physical wear            | Does not deteriorate physically               |
| Highly complex              | Contains many interacting components          |
| Human-created               | Human decisions and coding introduce defects  |
| Modifiable                  | Requirements and code can be changed          |
| Maintenance-intensive       | Changes can increase complexity               |
| Often customized            | Many systems satisfy specific customer needs  |
| Requirements change         | Software evolves over time                    |
| Invisible                   | Internal structure is not directly observable |
| Easily replicated           | Copies can be produced at low cost            |
| Multidimensional quality    | Quality has several characteristics           |

---

# 35. Software vs Hardware — Important Difference

| Software                                | Hardware                                               |
| --------------------------------------- | ------------------------------------------------------ |
| Intangible                              | Physical                                               |
| Developed                               | Manufactured                                           |
| Does not physically wear out            | Physically wears out                                   |
| Easily modified                         | Modification may require physical changes              |
| Copying is inexpensive                  | Manufacturing copies has material cost                 |
| Defects are mainly design/logic related | Defects may arise from manufacturing/materials         |
| Maintenance changes the software        | Maintenance often involves physical repair/replacement |

---

# 36. How Software Characteristics Affect Quality

The characteristics of software directly influence software quality.

### High Complexity

→ More possible interactions
→ More possibility of defects
→ Greater testing requirement

### Frequent Changes

→ More regression testing
→ Configuration management becomes important

### Intangibility

→ Quality must be evaluated through measurable behavior and attributes

### Human Development

→ Reviews, standards, training, and testing become important

### Easy Modification

→ Change control and regression testing become important

---

# 37. Combined Exam Perspective

The three PYQ areas in this file are connected.

```text
       SOFTWARE
          │
          ├──────────────→ Has Different Characteristics
          │
          ↓
     Software Product
          │
          ├──────────────→ Can Be Classified
          │
          ↓
      Development
          │
          ↓
     Quality Activities
          │
          ↓
    Quality Management
          │
          ↓
    Cost of Quality
          │
      ┌───┴────┐
      ↓        ↓
   Prevent   Failure
   (Green)    (Red)
```

---

# 38. Important Exam-Oriented Questions

## PYQ 2023

### Q1.

> Classification of different types of products.

**Study:**

* Generic products
* Customized products
* Embedded products
* Safety-critical products
* Mission-critical products
* Business-critical products

---

### Q2.

> Green money – cost of prevention. Red money – cost of failure.

**Study:**

* Cost of Quality
* Prevention cost
* Appraisal cost
* Internal failure cost
* External failure cost
* Green money
* Red money
* Prevention vs failure

---

## PYQ 2025

### Q3.

> Different characteristics of software.

**Study:**

* Intangible
* Developed, not manufactured
* Does not physically wear out
* Complex
* Human-created
* Modifiable
* Maintenance-intensive
* Customized
* Requirements change
* Invisible
* Easily replicated
* Multidimensional quality

---

# 39. Last-Minute Revision

## Product Classification

```text
Generic
Customized
Embedded
Safety-Critical
Mission-Critical
Business-Critical
```

## Cost of Quality

```text
Cost of Conformance
       │
       ├── Prevention
       └── Appraisal

Cost of Non-Conformance
       │
       ├── Internal Failure
       └── External Failure
```

### PYQ Shortcut

> **Green Money → Prevention → Avoid defects**

> **Red Money → Failure → Deal with defects**

---

## Software Characteristics

Remember:

> **Software is intangible, developed rather than manufactured, highly complex, does not physically wear out, is human-created, easily modified, maintenance-intensive, often customized, continuously evolving, invisible, easily replicated, and has multidimensional quality.**

---

# 40. Final Exam Strategy for These Additional PYQs

These questions should not be ignored simply because they do not fit perfectly into one syllabus heading.

### If asked "Classify products"

Use:

> **Type → Meaning → Example → Quality concern**

### If asked "Green money / Red money"

Use:

> **Cost of Quality → Prevention → Appraisal → Internal Failure → External Failure → Green vs Red**

### If asked "Characteristics of software"

Use:

> **Characteristic → Explanation → Example/quality implication**

### Most Important Rule

For a **5-mark answer**, do not merely list points.

Write:

1. Definition/introduction
2. Classification or concept
3. Explanation of each major point
4. Examples
5. Small diagram/table where useful
6. Short conclusion

This file acts as the **catch-all PYQ file for Unit-I topics that do not map cleanly to the main syllabus-topic files.**
