# 05 — Quality Assurance and Quality Management

# 1. Introduction

Software quality cannot be achieved only by testing the final product.

Quality must be planned, managed, monitored, and improved throughout the software development lifecycle.

Two important concepts are:

* **Quality Assurance (QA)**
* **Quality Management (QM)**

They work together to ensure that software development follows appropriate processes and produces a quality product.

```text id="j3e5xr"
                SOFTWARE QUALITY
                       |
             +---------+---------+
             |                   |
      Quality Assurance   Quality Management
             |                   |
       Prevent Problems      Manage Quality
             |                   |
             +---------+---------+
                       |
                 Quality Product
```

---

# 2. What is Quality Assurance?

**Quality Assurance (QA)** is a planned and systematic set of activities used to ensure that appropriate processes are followed to produce quality software.

In simple words:

> **Quality Assurance focuses on preventing defects by improving and controlling the development process.**

QA is mainly **process-oriented**.

### Examples

* Process definition
* Coding standards
* Design reviews
* Requirement reviews
* Code reviews
* Audits
* Process monitoring
* Quality standards
* Process improvement

---

# 3. Main Objective of Quality Assurance

The primary objective of QA is:

> **To prevent defects rather than simply finding them after they occur.**

For example:

Instead of waiting for testing to discover thousands of coding problems, an organization can use:

```text id="0kw4v8"
Coding Standards
       ↓
Code Reviews
       ↓
Static Analysis
       ↓
Early Defect Detection
       ↓
Fewer Defects
```

Therefore, QA is primarily **preventive**.

---

# 4. Quality Assurance vs Testing

Testing and QA are related but different.

| Quality Assurance                   | Testing                                 |
| ----------------------------------- | --------------------------------------- |
| Process-oriented                    | Product-oriented                        |
| Mainly preventive                   | Mainly detective                        |
| Focuses on preventing defects       | Focuses on finding defects              |
| Improves development processes      | Evaluates software                      |
| Performed throughout development    | Performed at appropriate testing levels |
| Includes reviews, audits, standards | Includes test execution and evaluation  |

### Easy Memory Trick

> **QA = Prevent**

> **Testing = Detect**

---

# 5. Quality Assurance Activities

Important QA activities include:

## 5.1 Requirement Reviews

Requirements are reviewed to identify:

* Ambiguity
* Missing requirements
* Inconsistencies
* Incorrect assumptions

### Example

Requirement:

> "The application should respond quickly."

QA should question what "quickly" means and encourage a measurable requirement.

---

## 5.2 Design Reviews

The software design is examined before implementation.

The team checks:

* Architecture
* Interfaces
* Dependencies
* Security
* Performance
* Maintainability

---

## 5.3 Code Reviews

Developers inspect source code to identify:

* Logical errors
* Coding standard violations
* Security problems
* Maintainability problems

---

## 5.4 Process Audits

An audit checks whether the project is following defined processes.

Example:

If the organization requires code review before merging code, an audit can verify whether the rule is actually being followed.

---

## 5.5 Standards and Procedures

QA establishes and promotes:

* Coding standards
* Testing standards
* Documentation standards
* Review procedures
* Configuration management procedures

---

## 5.6 Metrics and Measurement

Quality metrics are collected to understand project and product quality.

Examples:

* Defect density
* Defect leakage
* Test coverage
* Failure rate
* Mean time to failure
* Mean time to repair

---

## 5.7 Training

Employees may need training in:

* Development processes
* Testing techniques
* Quality standards
* Security practices
* Tools

---

## 5.8 Continuous Improvement

QA uses project data and feedback to improve future processes.

```text id="s4p0me"
Measure
   ↓
Analyze
   ↓
Identify Problems
   ↓
Improve Process
   ↓
Measure Again
```

---

# 6. Quality Management

**Quality Management** is the overall process of planning, controlling, assuring, and improving quality within an organization.

It includes activities required to establish and maintain the desired level of quality.

A common way to understand quality management is:

```text id="3sgjrh"
             QUALITY MANAGEMENT
                     |
       +-------------+-------------+
       |             |             |
    Planning      Assurance     Control
       |             |             |
       +-------------+-------------+
                     |
               Improvement
```

---

# 7. Quality Management Components

## 7.1 Quality Planning

Quality planning determines:

* Quality requirements
* Quality standards
* Quality objectives
* Processes to be followed
* Metrics
* Responsibilities

### Example

A project may define:

> "All critical defects must be resolved before production release."

This becomes a quality objective.

---

## 7.2 Quality Assurance

QA ensures that appropriate processes are being followed.

Focus:

> **Are we following the right processes?**

---

## 7.3 Quality Control

Quality control focuses on evaluating the actual product or work output.

Focus:

> **Does the product meet the required quality?**

Examples:

* Testing
* Inspection
* Measurement
* Defect identification

---

## 7.4 Quality Improvement

Quality improvement focuses on continuously improving processes and products.

Examples:

* Root cause analysis
* Process optimization
* Automation
* Lessons learned
* Continuous improvement programs

---

# 8. Quality Assurance Process

The Quality Assurance Process is a systematic sequence of activities used to ensure that software development follows defined quality standards and processes.

A typical QA process can be represented as:

```text id="w4rj82"
Define Quality Requirements
          ↓
Define Quality Standards
          ↓
Plan QA Activities
          ↓
Establish Processes
          ↓
Perform Reviews & Audits
          ↓
Measure Quality
          ↓
Identify Deviations
          ↓
Corrective Action
          ↓
Verify Improvement
          ↓
Continuous Improvement
```

---

# 9. PYQ — 2024

## Question

**Describe Quality Assurance Process.**

### Answer

The **Quality Assurance Process** is a planned and systematic process used to ensure that software development activities follow defined quality standards, procedures, and requirements.

The objective is to prevent defects, identify process problems early, and continuously improve the development process.

---

## Step 1 — Define Quality Requirements

First, the organization identifies the required level of quality.

Requirements may include:

* Reliability
* Performance
* Security
* Usability
* Maintainability
* Compliance

### Example

For a banking system:

> All financial transactions must be secure and accurately recorded.

---

## Step 2 — Define Quality Standards

Applicable standards, procedures, and guidelines are identified.

Examples:

* Coding standards
* Documentation standards
* Testing standards
* Security standards
* Organizational procedures

---

## Step 3 — Quality Planning

A quality plan is created.

It specifies:

* Quality objectives
* Activities
* Responsibilities
* Metrics
* Review points
* Testing strategy
* Acceptance criteria

---

## Step 4 — Establish Processes

The development team follows defined processes.

Examples:

```text id="5zhyvh"
Requirement Review
       ↓
Design Review
       ↓
Coding Standards
       ↓
Code Review
       ↓
Testing
       ↓
Release
```

---

## Step 5 — Reviews and Audits

Reviews and audits are performed to determine whether processes are being followed correctly.

Examples:

* Requirement review
* Design review
* Code review
* Process audit
* Documentation audit

---

## Step 6 — Measurement

Quality metrics are collected.

Examples:

* Number of defects
* Defect density
* Test coverage
* Defect leakage
* Failure rate
* Rework effort

---

## Step 7 — Identify Deviations

The actual process and results are compared with expected standards.

Example:

Required:

> All critical code changes must undergo review.

If some changes were merged without review, a process deviation exists.

---

## Step 8 — Corrective Action

Corrective actions are taken to address identified problems.

Examples:

* Fix defective process
* Provide training
* Update standards
* Add automated checks
* Improve review procedures

---

## Step 9 — Verification

The organization checks whether the corrective action was effective.

Example:

If missing code reviews were a problem, the organization may introduce mandatory pull-request approval.

The process is then monitored to confirm improvement.

---

## Step 10 — Continuous Improvement

Lessons learned and quality data are used to improve future processes.

```text id="1p7x5u"
Plan
 ↓
Execute
 ↓
Measure
 ↓
Analyze
 ↓
Improve
 ↓
Repeat
```

---

## QA Process Diagram

```text id="jz6u7o"
              QUALITY REQUIREMENTS
                       ↓
                QUALITY STANDARDS
                       ↓
                 QA PLANNING
                       ↓
              PROCESS DEFINITION
                       ↓
               REVIEWS & AUDITS
                       ↓
                  MEASUREMENT
                       ↓
              IDENTIFY DEVIATIONS
                       ↓
               CORRECTIVE ACTION
                       ↓
                 VERIFICATION
                       ↓
             CONTINUAL IMPROVEMENT
```

### Exam Conclusion

Quality Assurance is a continuous and systematic activity. It focuses on establishing appropriate processes, monitoring compliance, identifying deviations, taking corrective actions, and improving processes to prevent defects and achieve the desired software quality.

### ⭐ Exam Keywords

**Planning → Standards → Process → Reviews → Audits → Measurement → Corrective Action → Improvement**

---

# 10. Quality Control

**Quality Control (QC)** consists of operational techniques and activities used to verify whether a product satisfies specified quality requirements.

QC is mainly **product-oriented**.

Examples:

* Software testing
* Inspection
* Product measurement
* Defect detection

### QA vs QC

| QA                                    | QC                                    |
| ------------------------------------- | ------------------------------------- |
| Process-oriented                      | Product-oriented                      |
| Preventive                            | Detective                             |
| Improves process                      | Checks product                        |
| "Are we following the right process?" | "Does the product meet requirements?" |
| Reviews, audits, standards            | Testing, inspection, measurement      |

---

# 11. Quality Assurance vs Quality Management

Quality Assurance is a component of the broader quality management system.

```text id="shf4iq"
             QUALITY MANAGEMENT
                    |
       +------------+------------+
       |            |            |
    Planning       QA           QC
       |            |            |
       +------------+------------+
                    |
             Improvement
```

### Quality Management

Broad organizational approach to managing quality.

### Quality Assurance

Specific activities focused on ensuring appropriate processes and preventing defects.

---

# 12. Cost of Quality

The **Cost of Quality (CoQ)** represents the costs associated with achieving quality and the costs resulting from poor quality.

It is generally divided into:

```text id="n5ojrj"
                COST OF QUALITY
                       |
             +---------+---------+
             |                   |
        Cost of Good        Cost of Poor
          Quality             Quality
             |                   |
      Prevention +          Internal +
      Appraisal             External Failure
```

---

# 13. Prevention Cost

**Prevention cost** is the cost incurred to prevent defects from occurring.

Examples:

* Training
* Process improvement
* Requirement reviews
* Design reviews
* Code reviews
* Quality planning
* Preventive maintenance

### Example

An organization trains developers in secure coding to prevent security defects.

The training cost is a **prevention cost**.

---

# 14. Appraisal Cost

Appraisal costs are incurred to evaluate whether the software meets quality requirements.

Examples:

* Software testing
* Inspections
* Reviews
* Audits
* Quality measurements

### Example

The cost of running automated tests and maintaining the test environment is an appraisal cost.

---

# 15. Failure Cost

Failure costs occur because the software did not meet quality requirements.

They are generally divided into:

1. Internal failure cost
2. External failure cost

---

## 15.1 Internal Failure Cost

An internal failure is discovered **before the product reaches the customer**.

Examples:

* Rework
* Bug fixing
* Retesting
* Scrap/rejection
* Additional development effort

### Example

A critical defect is found during system testing before release.

The cost of fixing and retesting it is an internal failure cost.

---

## 15.2 External Failure Cost

An external failure is discovered **after the product has been delivered to the customer**.

Examples:

* Customer support
* Warranty costs
* Refunds
* Legal costs
* Compensation
* Reputation damage
* Emergency fixes

### Example

A banking application incorrectly processes customer transactions after production release.

The resulting support and compensation costs are external failure costs.

---

# 16. Green Money and Red Money

This is an important Unit I exam topic.

## Green Money

**Green money refers to money spent on prevention and activities that help achieve quality before failures occur.**

It is associated mainly with:

* Prevention
* Quality improvement
* Training
* Process improvement
* Reviews

### Example

Money spent on:

> Developer training + code reviews + process improvement

is considered **green money**.

### Simple Meaning

> **Green Money = Money spent to prevent problems.**

---

# 17. Red Money

**Red money refers to money spent because quality problems or failures have occurred.**

It is associated with failure costs.

Examples:

* Bug fixing
* Rework
* Customer complaints
* Support
* Warranty
* Compensation
* Production failure recovery

### Simple Meaning

> **Red Money = Money spent because problems happened.**

---

# 18. PYQ — 2023

## Question

**Green money – cost of prevention.**

### Answer

Green money represents the money invested by an organization to prevent defects and failures before they occur.

It is mainly associated with **prevention costs**.

The purpose of green money is to improve the development process and reduce the possibility of defects.

### Examples

1. Developer training
2. Requirement reviews
3. Design reviews
4. Code reviews
5. Quality planning
6. Process improvement
7. Preventive maintenance
8. Coding standards
9. Security training
10. Defect prevention activities

### Example

Suppose a company spends:

* ₹50,000 on developer training
* ₹20,000 on process improvement
* ₹30,000 on design and code reviews

Total prevention investment:

```text id="g5u4jd"
₹50,000 + ₹20,000 + ₹30,000
= ₹1,00,000
```

This ₹1,00,000 is an example of **green money** spent to prevent defects.

### Why is Green Money Important?

Spending money before defects occur can reduce much larger costs later.

```text id="xvznfn"
Prevention Investment
        ↓
Fewer Defects
        ↓
Less Rework
        ↓
Fewer Failures
        ↓
Lower Failure Cost
```

### Exam Conclusion

Green money is the investment made in **defect prevention and quality improvement activities**. It is generally beneficial because preventing defects early can reduce the much higher cost of correcting failures later.

### ⭐ Exam Keywords

**Green Money = Prevention Cost = Avoid Defects = Quality Improvement**

---

# 19. PYQ — 2023

## Question

**Red money – cost of failure.**

### Answer

Red money represents the money spent as a result of defects, failures, and poor quality.

It is mainly associated with **failure costs**.

Red money can be divided into:

1. Internal failure cost
2. External failure cost

---

## Internal Failure Cost

These costs occur when defects are detected before delivery.

Examples:

* Rework
* Bug fixing
* Retesting
* Rebuilding
* Additional development effort

### Example

A defect is discovered during system testing before release.

The developer spends additional time fixing the problem.

That additional cost is an **internal failure cost**.

---

## External Failure Cost

These costs occur after the software has been delivered to customers.

Examples:

* Customer support
* Emergency fixes
* Refunds
* Compensation
* Warranty
* Legal expenses
* Reputation loss

### Example

An e-commerce system crashes during a major sale after release.

The company may need to:

* Pay support staff
* Fix the production issue
* Compensate customers
* Lose revenue
* Handle complaints

These are examples of external failure costs.

---

## Red Money Diagram

```text id="v2j1ik"
                   RED MONEY
                       |
              COST OF FAILURE
                       |
              +--------+--------+
              |                 |
           INTERNAL          EXTERNAL
           FAILURE            FAILURE
              |                 |
        Before Release      After Release
              |                 |
         Rework             Customer Support
         Bug Fixing         Compensation
         Retesting          Refunds
                            Reputation Loss
```

### Exam Conclusion

Red money is the cost incurred because software quality problems have occurred. It includes both internal failure costs discovered before delivery and external failure costs discovered after delivery.

### ⭐ Exam Keywords

**Red Money = Failure Cost = Rework + Bug Fixing + Customer Impact + Production Failures**

---

# 20. Green Money vs Red Money

| Green Money                 | Red Money                       |
| --------------------------- | ------------------------------- |
| Prevention-oriented         | Failure-oriented                |
| Spent before problems occur | Spent because problems occurred |
| Prevents defects            | Corrects consequences           |
| Training                    | Bug fixing                      |
| Reviews                     | Rework                          |
| Process improvement         | Customer support                |
| Quality planning            | Compensation                    |
| Preventive activities       | Failure recovery                |

### Easy Memory Trick

```text id="v6r5uj"
GREEN
  ↓
Prevent
  ↓
Before Failure

RED
  ↓
Repair
  ↓
After Problem
```

---

# 21. Prevention vs Failure Cost

A key quality-management principle is:

> **Investing in prevention can reduce the much larger cost of failure.**

Consider:

```text id="h4s9e3"
        PREVENTION
            ↓
       Small Investment
            ↓
      Fewer Defects
            ↓
       Fewer Failures
            ↓
      Lower Total Cost
```

If prevention is ignored:

```text id="6p4pye"
No Prevention
      ↓
More Defects
      ↓
Testing / Production Failures
      ↓
Rework
      ↓
Customer Complaints
      ↓
Financial Loss
```

---

# 22. Quality Assurance in the Software Lifecycle

QA should be performed throughout the lifecycle.

```text id="k5e3p7"
Requirements
     ↓
Requirement Review
     ↓
Design
     ↓
Design Review
     ↓
Coding
     ↓
Code Review
     ↓
Testing
     ↓
Quality Measurement
     ↓
Deployment
     ↓
Monitoring
     ↓
Continuous Improvement
```

QA is therefore **not only a testing activity**.

---

# 23. Important Differences

## QA vs Testing

**QA:**

> Prevent defects by improving processes.

**Testing:**

> Detect failures and defects in software.

---

## QA vs QC

**QA:**

> Process-oriented and preventive.

**QC:**

> Product-oriented and detective.

---

## Prevention Cost vs Failure Cost

**Prevention Cost:**

Money spent to prevent defects.

**Failure Cost:**

Money spent because defects caused failures.

---

## Green Money vs Red Money

**Green Money:**

> Prevention and quality improvement.

**Red Money:**

> Failure and correction.

---

# 24. Exam-Oriented Answer Structure

## If asked: "Describe Quality Assurance Process"

Write:

1. Definition of QA
2. Objective
3. Quality requirements
4. Quality standards
5. Quality planning
6. Process definition
7. Reviews and audits
8. Measurement
9. Corrective action
10. Verification
11. Continuous improvement
12. Diagram

---

## If asked: "Green money – cost of prevention"

Write:

1. Definition
2. Relation to prevention cost
3. Examples
4. Importance
5. Diagram/conclusion

---

## If asked: "Red money – cost of failure"

Write:

1. Definition
2. Internal failure
3. External failure
4. Examples
5. Diagram
6. Conclusion

---

# 25. Quick Revision

## Quality Assurance

> **Planned and systematic activities used to ensure that appropriate processes are followed and defects are prevented.**

## Quality Management

> **Overall process of planning, assuring, controlling, and improving quality.**

## Quality Control

> **Activities used to evaluate whether the product satisfies quality requirements.**

---

## Quality Assurance Process

```text id="j6p6tt"
Requirements
     ↓
Standards
     ↓
Planning
     ↓
Process
     ↓
Reviews / Audits
     ↓
Measurement
     ↓
Corrective Action
     ↓
Verification
     ↓
Improvement
```

---

## Cost of Quality

```text id="8dy5a9"
             COST OF QUALITY
                    |
        +-----------+-----------+
        |                       |
 Prevention/Appraisal       Failure Cost
        |                       |
   Green Money          +--------+--------+
                        |                 |
                    Internal          External
                    Failure           Failure
```

---

# 26. Most Important Exam Points

| Topic                         |          Year | Priority |
| ----------------------------- | ------------: | -------: |
| Quality Assurance Process     |          2024 |    ⭐⭐⭐⭐⭐ |
| Green Money / Prevention Cost |          2023 |    ⭐⭐⭐⭐⭐ |
| Red Money / Failure Cost      |          2023 |    ⭐⭐⭐⭐⭐ |
| QA vs Testing                 | No direct PYQ |     ⭐⭐⭐⭐ |
| QA vs QC                      | No direct PYQ |     ⭐⭐⭐⭐ |
| Cost of Quality               | No direct PYQ |     ⭐⭐⭐⭐ |
| Quality Management            | No direct PYQ |      ⭐⭐⭐ |

---

# 27. One-Minute Revision

```text
                 QUALITY
                    |
          +---------+---------+
          |                   |
         QA                  QC
          |                   |
      PREVENT               DETECT
          |                   |
    Process Focus        Product Focus
          |                   |
          +---------+---------+
                    |
             QUALITY MANAGEMENT
                    |
              CONTINUOUS
              IMPROVEMENT
```

### ⭐ Golden Rules

> **QA = Prevent defects.**

> **QC = Detect defects in the product.**

> **Testing is part of quality control, not the entire quality assurance process.**

> **Green Money = Prevention Cost.**

> **Red Money = Failure Cost.**

> **Prevention is generally cheaper than failure correction.**
