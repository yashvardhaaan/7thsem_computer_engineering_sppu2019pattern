# 06 — TQM and Continual Improvement

# 1. Introduction

**Total Quality Management (TQM)** is an organization-wide approach to achieving and continuously improving quality.

TQM does not consider quality to be the responsibility of only the testing or quality department.

Instead:

> **Everyone in the organization is responsible for quality.**

TQM focuses on:

* Customer satisfaction
* Employee involvement
* Process improvement
* Prevention of defects
* Continuous/continual improvement
* Data-based decision making
* Long-term quality improvement

---

# 2. What is Total Quality Management?

**Total Quality Management (TQM)** is a management approach in which the entire organization continuously works to improve products, services, processes, and customer satisfaction.

### Simple Definition

> **TQM is a company-wide approach to achieving customer satisfaction through continuous improvement and participation of everyone in the organization.**

The word **Total** is important because quality involves:

```text
Total Organization
       ↓
Management
       ↓
Developers
       ↓
Testers
       ↓
Operations
       ↓
Support
       ↓
Suppliers
       ↓
Customers
```

---

# 3. Main Objectives of TQM

The major objectives of TQM are:

1. Improve customer satisfaction.
2. Prevent defects.
3. Improve processes.
4. Reduce waste and rework.
5. Improve productivity.
6. Involve employees.
7. Improve organizational performance.
8. Reduce cost of poor quality.
9. Continuously improve products and processes.
10. Build a quality-oriented culture.

---

# 4. TQM Philosophy

TQM is based on the idea that:

> **Quality should be built into the process rather than inspected into the final product.**

Instead of:

```text
Develop
   ↓
Make Defects
   ↓
Test
   ↓
Find Problems
   ↓
Fix
```

TQM promotes:

```text
Good Requirements
       ↓
Good Processes
       ↓
Prevention
       ↓
Continuous Improvement
       ↓
Quality Product
```

---

# 5. Principles of TQM

Different organizations may describe TQM principles slightly differently, but the major principles include:

1. Customer focus
2. Leadership
3. Employee involvement
4. Process approach
5. System approach to management
6. Continual improvement
7. Fact-based decision making
8. Mutually beneficial supplier relationships

These principles are strongly related to software quality.

---

# 6. Principle 1 — Customer Focus

The organization should understand and satisfy customer needs.

### Key Ideas

* Understand customer requirements.
* Identify customer expectations.
* Measure customer satisfaction.
* Respond to customer feedback.
* Continuously improve products.

### Example

A software company collects feedback from users and improves the application based on their most important problems.

### Goal

> **Customer satisfaction**

---

# 7. Principle 2 — Leadership

Management should establish:

* Quality vision
* Quality objectives
* Policies
* Direction
* Quality culture

Leaders should provide resources and encourage quality-oriented behavior.

### Example

Project management establishes a rule that critical defects must be fixed before production release.

---

# 8. Principle 3 — Employee Involvement

Employees at all levels should participate in quality improvement.

Employees include:

* Developers
* Testers
* Managers
* Designers
* Operations engineers
* Support teams

### Example

A tester identifies a repeated defect pattern and suggests a change to the development process.

The organization uses that suggestion to prevent similar defects.

---

# 9. Principle 4 — Process Approach

Quality should be managed by understanding and improving processes.

Instead of focusing only on final results, organizations should examine:

```text
Input
  ↓
Process
  ↓
Output
```

### Example

Software development:

```text
Requirements
     ↓
Design
     ↓
Development
     ↓
Testing
     ↓
Deployment
```

Improving each stage improves the final product.

---

# 10. Principle 5 — System Approach to Management

Related processes should be managed as a complete system.

For example:

```text
Requirements
      ↓
Development
      ↓
Testing
      ↓
Deployment
      ↓
Operations
      ↓
Customer Feedback
      ↓
Improvement
      ↓
Requirements
```

A problem in one process may affect another.

---

# 11. Principle 6 — Continual Improvement

An organization should continuously seek opportunities to improve:

* Products
* Processes
* Tools
* Skills
* Quality
* Productivity

This is one of the **most important TQM principles**.

---

# 12. Principle 7 — Fact-Based Decision Making

Decisions should be based on:

* Data
* Metrics
* Evidence
* Analysis

rather than assumptions.

### Example

Instead of saying:

> "The application seems slower."

Measure:

* Response time
* CPU usage
* Memory usage
* Request throughput

Then make a decision based on the data.

---

# 13. Principle 8 — Mutually Beneficial Supplier Relationships

Organizations should develop good relationships with suppliers.

This can improve:

* Product quality
* Reliability
* Delivery
* Cost
* Long-term performance

### Example

A software organization works with a cloud provider to improve system availability and performance.

---

# 14. TQM Diagram

```text id="aqktp9"
                  TQM
                   |
       +-----------+-----------+
       |           |           |
 Customer      Leadership   Employees
   Focus       Commitment   Involvement
       |           |           |
       +-----------+-----------+
                   |
             Process Approach
                   |
          Systematic Management
                   |
          Fact-Based Decisions
                   |
        Supplier Relationships
                   |
          CONTINUAL IMPROVEMENT
                   |
           Customer Satisfaction
```

---

# 15. Continual Improvement

**Continual improvement** means an ongoing effort to improve products, services, processes, and organizational performance.

It does not necessarily mean that improvement happens every second or every day.

It means improvement is performed repeatedly over time.

### Examples

* Reducing defect rates
* Improving deployment process
* Automating repetitive testing
* Improving response time
* Reducing development effort
* Improving customer satisfaction

---

# 16. Why is Continual Improvement Important?

Continual improvement helps organizations:

* Reduce defects
* Reduce cost
* Improve productivity
* Improve quality
* Increase customer satisfaction
* Reduce waste
* Improve processes
* Respond to changing requirements
* Increase competitiveness

---

# 17. Continual Improvement Cycle

A common improvement cycle is:

```text id="0v9jz8"
        PLAN
          ↓
         DO
          ↓
       CHECK
          ↓
         ACT
          ↓
        PLAN
          ↓
         DO
          ↓
       CHECK
          ↓
         ACT
          ↓
         ...
```

This is known as the **PDCA Cycle**.

---

# 18. PDCA Cycle

PDCA stands for:

* **P — Plan**
* **D — Do**
* **C — Check**
* **A — Act**

It is a systematic method for continuous/continual improvement.

---

# 19. P — Plan

In the planning stage:

1. Identify a problem or opportunity.
2. Analyze the current situation.
3. Identify possible causes.
4. Set improvement objectives.
5. Develop an improvement plan.

### Example

Problem:

> Software releases frequently contain defects.

Analysis:

> Many defects are caused by insufficient automated testing.

Plan:

> Introduce automated regression tests for critical modules.

---

# 20. D — Do

The planned improvement is implemented, usually on a controlled or limited scale first.

### Example

The team introduces automated regression testing for one major module.

They collect data during implementation.

---

# 21. C — Check

The results are measured and compared with the expected objectives.

Questions include:

* Did quality improve?
* Did defect count decrease?
* Did testing become faster?
* Were there unexpected problems?

### Example

Before automation:

```text
Regression defects = 20
```

After automation:

```text
Regression defects = 8
```

The team evaluates whether the improvement was successful.

---

# 22. A — Act

Based on the results:

* Standardize successful improvement, or
* Modify the approach and repeat the cycle.

If the improvement works:

```text
Successful Practice
       ↓
Standardize
       ↓
Apply Across Organization
```

If it does not work:

```text
Problem
  ↓
Analyze Again
  ↓
New Plan
  ↓
Repeat PDCA
```

---

# 23. PDCA Example in Software Development

Suppose a software team has frequent production defects.

### PLAN

Identify:

> High number of defects after release.

Plan:

> Introduce mandatory code review and automated testing.

### DO

Implement the new practices for one project.

### CHECK

Measure:

* Defects before release
* Defects after release
* Review effectiveness
* Test coverage

### ACT

If results improve:

> Make code review and automated testing standard practices.

If results do not improve:

> Analyze the problem and create a new improvement plan.

---

# 24. PYQ — 2022

## Question

**Explain PDCA cycle.**

### Answer

The **PDCA cycle** is a systematic method used for continual improvement of processes and products.

PDCA stands for:

```text
P → Plan
D → Do
C → Check
A → Act
```

It is an iterative cycle, meaning that after completing one cycle, the organization starts another cycle for further improvement.

---

## 1. Plan

Identify a problem or improvement opportunity.

Then:

* Analyze the problem.
* Identify causes.
* Set objectives.
* Develop an improvement plan.

### Example

A software team observes a high number of production defects.

They identify insufficient regression testing as a possible cause.

They plan to introduce automated regression testing.

---

## 2. Do

Implement the planned solution.

Usually, the improvement can first be introduced on a limited scale to reduce risk.

### Example

Automated regression tests are introduced for critical modules.

---

## 3. Check

Measure the results and compare them with the objectives.

### Example

Before improvement:

```text
Production defects = 25
```

After improvement:

```text
Production defects = 10
```

The team checks whether the improvement produced the desired result.

---

## 4. Act

Based on the results, take appropriate action.

If successful:

> Standardize the improvement.

If unsuccessful:

> Identify what went wrong and start another improvement cycle.

---

# 25. PDCA Diagram for Exam

```text id="e9m7ak"
                 +---------+
                 |  PLAN   |
                 | Identify|
                 | Problem  |
                 +----+----+
                      |
                      ↓
                 +---------+
                 |   DO    |
                 |Implement|
                 | Solution |
                 +----+----+
                      |
                      ↓
                 +---------+
                 |  CHECK  |
                 | Measure |
                 | Results |
                 +----+----+
                      |
                      ↓
                 +---------+
                 |   ACT   |
                 |Improve /|
                 |Standardize|
                 +----+----+
                      |
                      +----------→ PLAN
```

### Exam Conclusion

The PDCA cycle provides a systematic and iterative approach to continual improvement. It helps organizations identify problems, implement solutions, measure results, and standardize successful improvements.

### ⭐ Exam Keywords

> **Plan = Identify and plan**

> **Do = Implement**

> **Check = Measure**

> **Act = Improve/Standardize**

---

# 26. PYQ — 2023

## Question

**Describe TQM principles of continual improvement.**

### Answer

Total Quality Management promotes an organization-wide culture in which quality is continuously improved through systematic processes, employee involvement, customer focus, and data-based decision making.

The principle of continual improvement means:

> **The organization should continuously seek opportunities to improve its products, services, processes, and overall performance.**

Important aspects include:

---

## 1. Customer Focus

Improvement should be based on customer needs and expectations.

### Example

User feedback reveals that the application is difficult to navigate.

The organization redesigns the interface.

---

## 2. Process Improvement

The organization should identify inefficient or error-prone processes and improve them.

### Example

Manual deployment is replaced with an automated CI/CD pipeline.

This can:

* Reduce human error
* Reduce deployment time
* Improve consistency

---

## 3. Employee Involvement

Employees should participate in identifying problems and suggesting improvements.

### Example

A tester identifies that the same defect occurs repeatedly and suggests adding an automated test.

---

## 4. Defect Prevention

TQM emphasizes preventing defects rather than only detecting them.

### Example

Instead of fixing repeated coding errors after testing, the organization introduces:

* Coding standards
* Code reviews
* Static analysis

---

## 5. Measurement

Improvement should be based on measurable information.

Examples:

* Defect rate
* Customer complaints
* Response time
* Test coverage
* Deployment failure rate

---

## 6. Root Cause Analysis

Organizations should identify the underlying cause of recurring problems.

### Example

If login defects repeatedly occur, the team should investigate whether the root cause is:

* Poor requirements
* Design problems
* Coding practices
* Inadequate testing

---

## 7. PDCA

PDCA provides a structured method for improvement:

```text
Plan → Do → Check → Act
```

---

## 8. Standardization

Successful improvements should become part of normal organizational processes.

### Example

If mandatory code review significantly reduces defects, it can become a standard development practice.

---

## 9. Continuous Learning

Organizations should learn from:

* Defects
* Failures
* Customer feedback
* Project experience
* Metrics

and apply those lessons to future projects.

---

# 27. Continual Improvement Under TQM

```text id="8b6q7y"
                    TQM
                     |
             Customer Focus
                     |
            Employee Involvement
                     |
             Process Improvement
                     |
              Defect Prevention
                     |
             Measurement & Data
                     |
             Root Cause Analysis
                     |
                  PDCA
                     |
              Standardization
                     |
             Continual Improvement
```

### Exam Conclusion

Continual improvement under TQM is an organization-wide activity. It uses customer feedback, employee involvement, process improvement, measurement, defect prevention, root cause analysis, and PDCA to continuously improve quality and organizational performance.

### ⭐ Exam Keywords

**Customer Focus + Employee Involvement + Process Improvement + Prevention + Measurement + Root Cause Analysis + PDCA**

---

# 28. PYQ — 2025

## Question

**Describe Total Quality Management Principle of Continual Improvement.**

### Answer

The principle of continual improvement in Total Quality Management states that an organization should continuously improve its products, services, processes, and overall performance.

It is not a one-time activity.

Instead:

```text
Improve
  ↓
Measure
  ↓
Learn
  ↓
Improve Again
  ↓
Repeat
```

---

## Major Elements

### 1. Customer Feedback

Customer feedback helps identify areas that require improvement.

---

### 2. Employee Participation

Employees at all levels should participate in quality improvement.

---

### 3. Process Improvement

Processes should be regularly examined and improved.

---

### 4. Defect Prevention

The organization should identify the causes of defects and prevent them from recurring.

---

### 5. Data-Based Decisions

Improvement decisions should be based on metrics and evidence.

---

### 6. PDCA

The organization can use:

```text
PLAN
 ↓
DO
 ↓
CHECK
 ↓
ACT
 ↓
Repeat
```

---

### 7. Root Cause Analysis

The organization should identify why a problem occurs rather than repeatedly fixing only its symptoms.

---

### 8. Standardization

Successful improvements should be incorporated into standard processes.

---

### Example

Suppose a software company experiences frequent deployment failures.

### Plan

Identify causes and plan automated deployment.

### Do

Implement CI/CD automation.

### Check

Measure deployment failure rate.

### Act

If successful, make automated deployment the standard.

Then continue looking for further improvements.

---

### Exam Conclusion

Continual improvement is a core principle of TQM. It creates a culture where every employee and every process is continuously evaluated and improved using customer feedback, data, root cause analysis, and systematic methods such as PDCA.

---

# 29. PYQ — 2025

## Question

**Differentiate between continuous improvement and continual improvement.**

### Answer

Although the terms are often used interchangeably, **continuous improvement** and **continual improvement** have slightly different meanings.

---

## Continuous Improvement

Continuous improvement literally suggests:

> **Improvement occurring continuously without interruption.**

It gives the idea of a constant, uninterrupted process.

### Example

A system is continuously monitored and optimized without stopping the improvement activity.

---

## Continual Improvement

Continual improvement means:

> **Improvement occurring repeatedly over time through a series of improvement activities or cycles.**

There may be periods between individual improvements.

### Example

A software team:

```text
January → Improve Testing
March   → Improve Deployment
June    → Improve Performance
September → Improve Security
```

The improvements are not happening every second, but improvement continues over time.

---

# 30. Continuous vs Continual Improvement

| Continuous Improvement            | Continual Improvement                           |
| --------------------------------- | ----------------------------------------------- |
| Implies uninterrupted improvement | Implies repeated improvement over time          |
| No breaks implied                 | Individual improvement activities may have gaps |
| More literal interpretation       | Common management/quality usage                 |
| "Always happening"                | "Repeatedly happening"                          |

### Easy Example

Imagine improving a software system.

### Continuous

```text
Improve → Improve → Improve → Improve
(without interruption)
```

### Continual

```text
Improve
   ↓
Time passes
   ↓
Improve
   ↓
Time passes
   ↓
Improve
```

---

# 31. Which Term is Preferred in TQM?

In formal quality-management terminology, **continual improvement** is commonly preferred because improvement is generally achieved through repeated cycles rather than an uninterrupted process.

A common approach is:

```text
PLAN
  ↓
DO
  ↓
CHECK
  ↓
ACT
  ↓
Continual Improvement
  ↓
PLAN AGAIN
```

### Exam Conclusion

Continuous improvement implies uninterrupted improvement, whereas continual improvement means repeated improvement over time. In quality management, **continual improvement** is commonly used to describe an ongoing sequence of improvement activities.

### ⭐ Exam Keywords

> **Continuous = Uninterrupted**

> **Continual = Repeated over time**

---

# 32. TQM and PDCA Relationship

This relationship is extremely important for the exam.

```text id="c0jq7r"
                    TQM
                     ↓
            Quality Principles
                     ↓
            Continual Improvement
                     ↓
                   PDCA
                     ↓
        +------------+------------+
        |            |            |
       PLAN          DO          CHECK
                                  ↓
                                 ACT
                                  ↓
                         Further Improvement
                                  ↓
                                 PDCA
```

TQM provides the **organizational philosophy**.

Continual improvement provides the **ongoing improvement approach**.

PDCA provides a **structured cycle for implementing improvement**.

---

# 33. TQM vs Traditional Quality Approach

| Traditional Approach                                | TQM                                  |
| --------------------------------------------------- | ------------------------------------ |
| Quality may be responsibility of quality department | Quality is everyone's responsibility |
| Detect defects                                      | Prevent defects                      |
| Focus on final product                              | Focus on entire process              |
| Reactive                                            | Proactive                            |
| Limited improvement                                 | Continual improvement                |
| Less employee involvement                           | Strong employee involvement          |
| Inspection-focused                                  | Process/customer-focused             |

---

# 34. Real-Life Software Example

Consider an e-commerce company.

The company observes:

> Customers frequently complain that checkout is slow.

### Traditional Approach

```text
Customer Complaint
       ↓
Fix Current Problem
       ↓
Continue Development
```

### TQM Approach

```text
Customer Feedback
       ↓
Measure Response Time
       ↓
Identify Root Cause
       ↓
Improve Checkout Process
       ↓
Test Improvement
       ↓
Measure Again
       ↓
Standardize Successful Solution
       ↓
Continue Improvement
```

This demonstrates **TQM + Continual Improvement + PDCA**.

---

# 35. Exam-Oriented Answer Structure

## If asked: "Explain PDCA Cycle"

Write:

1. Definition
2. Full form
3. Plan
4. Do
5. Check
6. Act
7. Diagram
8. Example
9. Conclusion

---

## If asked: "Describe TQM Principle of Continual Improvement"

Write:

1. Definition of TQM
2. Definition of continual improvement
3. Customer focus
4. Employee involvement
5. Process improvement
6. Defect prevention
7. Measurement
8. Root cause analysis
9. PDCA
10. Standardization
11. Conclusion

---

## If asked: "Continuous vs Continual Improvement"

Write:

1. Definition of continuous
2. Definition of continual
3. Comparison table
4. Example
5. Mention that continual improvement is commonly used in quality-management terminology

---

# 36. Quick Revision

## TQM

> **Organization-wide approach to achieving customer satisfaction and improving quality continuously.**

---

## TQM Principles

```text
Customer Focus
      ↓
Leadership
      ↓
Employee Involvement
      ↓
Process Approach
      ↓
System Approach
      ↓
Continual Improvement
      ↓
Fact-Based Decisions
      ↓
Supplier Relationships
```

---

## PDCA

```text
P → PLAN
D → DO
C → CHECK
A → ACT
```

### Meaning

```text
PLAN  → Decide what to improve
DO    → Implement improvement
CHECK → Measure results
ACT   → Standardize or improve again
```

---

## Continuous vs Continual

```text
Continuous = Without interruption

Continual = Repeated over time
```

---

# 37. PYQ Priority

| Topic                                   |                     Year | Priority |
| --------------------------------------- | -----------------------: | -------: |
| PDCA Cycle                              |                     2022 |    ⭐⭐⭐⭐⭐ |
| TQM Principles of Continual Improvement |                     2023 |    ⭐⭐⭐⭐⭐ |
| TQM Principle of Continual Improvement  |                     2025 |    ⭐⭐⭐⭐⭐ |
| Continuous vs Continual Improvement     |                     2025 |    ⭐⭐⭐⭐⭐ |
| TQM Principles                          | No direct standalone PYQ |     ⭐⭐⭐⭐ |

---

# 38. One-Minute Revision

```text
                         TQM
                          ↓
              Everyone Responsible
                 for Quality
                          ↓
                  Customer Focus
                          ↓
               Employee Involvement
                          ↓
                 Process Improvement
                          ↓
                  Defect Prevention
                          ↓
                Data-Based Decisions
                          ↓
                CONTINUAL IMPROVEMENT
                          ↓
                       PDCA
                          ↓
              PLAN → DO → CHECK → ACT
                          ↓
                  Improve Again
                          ↓
                       Repeat
```

### ⭐ Golden Rules

> **TQM = Organization-wide quality management.**

> **Quality is everyone's responsibility.**

> **Continual improvement = Repeated improvement over time.**

> **PDCA = Plan → Do → Check → Act.**

> **Plan = Decide what to improve.**

> **Do = Implement it.**

> **Check = Measure the result.**

> **Act = Standardize successful improvement or try again.**

> **Continuous = uninterrupted; Continual = repeated over time.**
