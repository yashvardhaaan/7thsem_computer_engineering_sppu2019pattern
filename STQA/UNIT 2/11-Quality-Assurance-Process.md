# Quality Assurance Process

## 1. Quality Assurance

### Definition

**Quality Assurance (QA)** is a systematic and planned set of activities used to ensure that software development and testing processes are capable of producing a high-quality software product.

QA focuses primarily on **preventing defects by improving processes**, rather than only finding defects after the software is developed.

### Simple Definition

> **Quality Assurance = Prevent defects by improving the process.**

---

# 2. Objectives of Quality Assurance

The main objectives of QA are:

* Prevent defects.
* Ensure compliance with standards.
* Improve development and testing processes.
* Ensure requirements are properly followed.
* Identify process weaknesses.
* Improve software quality.
* Reduce development and maintenance costs.
* Establish consistent processes.
* Support continuous improvement.
* Increase customer satisfaction.

---

# 3. Quality Assurance vs Quality Control

| Quality Assurance                      | Quality Control                 |
| -------------------------------------- | ------------------------------- |
| Process-oriented                       | Product-oriented                |
| Focuses on defect prevention           | Focuses on defect detection     |
| Improves development/testing processes | Checks the developed product    |
| Proactive                              | Reactive                        |
| Includes process audits and reviews    | Includes testing and inspection |
| Example: Process audit                 | Example: Functional testing     |

### Easy Memory Trick

> **QA = Prevent**

> **QC = Detect**

---

# 4. Quality Assurance Process

The Quality Assurance process consists of systematic activities performed throughout the software development life cycle.

### Overall Process

```text id="z5k8p2"
Quality Planning
      ↓
Define Standards & Processes
      ↓
Process Implementation
      ↓
Reviews & Inspections
      ↓
Audits
      ↓
Measurement & Monitoring
      ↓
Defect / Process Analysis
      ↓
Corrective & Preventive Actions
      ↓
Continuous Improvement
```

---

# 5. Step 1 – Quality Planning

Quality planning defines how quality will be achieved and measured.

It identifies:

* Quality objectives
* Quality standards
* Quality criteria
* Processes
* Responsibilities
* Metrics
* Review activities

### Example

For an e-commerce application:

* Response time should be below a defined limit.
* Critical security requirements must be satisfied.
* Code reviews must be performed.
* All critical defects must be resolved before release.

---

# 6. Step 2 – Define Quality Standards and Processes

The organization defines standards and processes that the project must follow.

Examples:

* Coding standards
* Testing standards
* Documentation standards
* Review procedures
* Configuration management procedures
* Defect management procedures
* Security standards

### Purpose

To ensure that team members follow consistent practices.

---

# 7. Step 3 – Process Implementation

The defined processes are implemented throughout development and testing.

Examples:

```text id="j4n7q1"
Requirement Process
        ↓
Design Process
        ↓
Development Process
        ↓
Testing Process
        ↓
Release Process
```

QA ensures these processes are followed correctly.

---

# 8. Step 4 – Reviews and Inspections

Reviews and inspections are performed to identify problems early.

### Examples

* Requirement reviews
* Design reviews
* Code reviews
* Test plan reviews
* Test case reviews
* Documentation reviews

### Benefits

* Early defect detection.
* Reduced rework.
* Better requirement understanding.
* Improved consistency.
* Better software quality.

---

# 9. Step 5 – Quality Audits

A **Quality Audit** is a systematic examination of project processes and activities to determine whether they comply with defined standards and procedures.

### Audit Checks

* Are processes being followed?
* Are required documents available?
* Are reviews being conducted?
* Are defects properly managed?
* Is configuration management being followed?
* Are testing standards being followed?

---

# 10. Step 6 – Measurement and Monitoring

QA uses metrics to monitor process and product quality.

Examples:

* Defect density
* Defect detection rate
* Test coverage
* Test execution percentage
* Defect closure rate
* Review effectiveness
* Rework percentage

Metrics help identify trends and process problems.

---

# 11. Step 7 – Defect and Process Analysis

QA analyses defects and process failures to identify their root causes.

### Example

Suppose many defects are caused by unclear requirements.

Instead of fixing only individual defects, QA investigates:

> Why are requirements unclear?

Possible root causes:

* Poor requirement review.
* Lack of communication.
* Missing requirement standards.
* Inadequate stakeholder involvement.

The process can then be improved.

---

# 12. Step 8 – Corrective and Preventive Actions

## Corrective Action

Action taken to fix an identified problem.

**Example:**

A defect is found because incorrect validation logic was implemented.

Corrective action:

> Fix the validation logic.

## Preventive Action

Action taken to prevent similar problems from occurring again.

**Example:**

Introduce mandatory requirement reviews and validation checklists to prevent similar defects.

### Memory Trick

> **Corrective = Fix the current problem**

> **Preventive = Stop the problem from happening again**

---

# 13. Step 9 – Continuous Improvement

QA continuously evaluates processes and identifies ways to improve them.

Improvement may involve:

* Better testing techniques
* Automation
* Better coding standards
* Improved reviews
* Improved documentation
* Better defect management
* Training
* Process optimization

### Continuous Improvement Cycle

```text id="m8q3v6"
Plan
 ↓
Do
 ↓
Check
 ↓
Act
 ↓
Improve
 ↓
Repeat
```

This is commonly associated with the **PDCA cycle**.

---

# 14. QA Activities Throughout SDLC

QA should not begin only after coding is completed.

It should be involved throughout the software life cycle.

```text id="c7k2n9"
Requirements
     ↓
   QA Review
     ↓
Design
     ↓
   QA Review
     ↓
Development
     ↓
 Code Review
     ↓
Testing
     ↓
 Test Review
     ↓
Release
     ↓
Quality Assessment
```

### Requirement Phase

QA checks:

* Requirements are clear.
* Requirements are complete.
* Requirements are testable.
* Requirements are consistent.

### Design Phase

QA participates in:

* Design reviews.
* Architecture reviews.
* Security reviews.

### Development Phase

QA supports:

* Coding standards.
* Code reviews.
* Static analysis.
* Process compliance.

### Testing Phase

QA ensures:

* Test processes are followed.
* Test documentation is maintained.
* Defects are managed correctly.
* Testing standards are followed.

### Release Phase

QA evaluates:

* Quality metrics.
* Outstanding risks.
* Defect status.
* Release readiness.

---

# 15. QA Tools and Techniques

## 1. Reviews

Used to evaluate work products.

## 2. Inspections

Formal examination of artifacts.

## 3. Audits

Check process compliance.

## 4. Checklists

Ensure important activities are not missed.

## 5. Metrics

Measure process and product quality.

## 6. Root Cause Analysis

Identifies the underlying reason for defects.

## 7. Process Improvement

Changes processes to improve quality.

## 8. Static Analysis

Analyses source code without executing the program.

---

# 16. Root Cause Analysis

## Definition

**Root Cause Analysis (RCA)** is the process of identifying the fundamental reason behind a defect or process problem.

### Example

Problem:

> Many defects are found during system testing.

RCA:

```text id="r5m8x2"
Many defects in System Testing
            ↓
Requirements misunderstood
            ↓
Requirements were not reviewed
            ↓
No formal requirement review process
            ↓
ROOT CAUSE
```

### Common RCA Techniques

* 5 Whys
* Fishbone Diagram
* Pareto Analysis
* Cause-and-effect analysis

---

# 17. Quality Assurance Roles

### QA Manager

* Defines QA processes.
* Plans quality activities.
* Monitors quality metrics.
* Coordinates audits.
* Promotes process improvement.

### QA Engineer

* Performs process reviews.
* Conducts audits.
* Analyses quality metrics.
* Supports process compliance.
* Helps identify process improvements.

### Developers

* Follow coding standards.
* Participate in code reviews.
* Follow development processes.

### Testers

* Follow testing standards.
* Maintain test documentation.
* Report defects.
* Provide quality feedback.

---

# 18. Benefits of Quality Assurance

### 1. Defect Prevention

Problems can be prevented before they reach later stages.

### 2. Reduced Cost

Early defect prevention is generally less expensive than fixing defects after release.

### 3. Better Processes

QA identifies weaknesses and improves processes.

### 4. Consistency

Standards ensure consistent development and testing practices.

### 5. Better Customer Satisfaction

Higher-quality software improves user experience.

### 6. Reduced Risk

Systematic QA reduces project and product risks.

### 7. Continuous Improvement

Organizations learn from defects and process problems.

---

# 19. Example – Banking Application

Consider a banking application.

### Requirement Phase

QA reviews requirements for:

* Completeness
* Consistency
* Testability
* Security requirements

### Design Phase

QA reviews:

* Architecture
* Security design
* Database design

### Development Phase

QA ensures:

* Coding standards are followed.
* Code reviews are conducted.
* Static analysis is performed.

### Testing Phase

QA monitors:

* Test process
* Test coverage
* Defect management
* Testing metrics

### Release Phase

QA reviews:

* Critical defects
* Quality metrics
* Outstanding risks
* Test summary report

Only after quality objectives are satisfied is the release recommended.

---

# 20. QA Process Example

```text id="w6n2k8"
Requirement Analysis
        ↓
Quality Planning
        ↓
Standards & Processes
        ↓
Requirement Review
        ↓
Design Review
        ↓
Code Review
        ↓
Testing Process Review
        ↓
Quality Audits
        ↓
Metrics & Monitoring
        ↓
Root Cause Analysis
        ↓
Corrective / Preventive Action
        ↓
Continuous Improvement
```

---

# 21. PYQ – 2024

**Question:** Describe Quality Assurance Process.

### Detailed Answer

Quality Assurance is a systematic process used to ensure that software development and testing activities follow defined standards and processes and are capable of producing high-quality software.

The major steps of the Quality Assurance process are:

### 1. Quality Planning

Define:

* Quality objectives
* Quality standards
* Quality criteria
* Responsibilities
* Metrics

### 2. Define Standards and Processes

Establish standards for:

* Development
* Testing
* Documentation
* Reviews
* Configuration management
* Defect management

### 3. Process Implementation

Ensure that the defined processes are followed throughout the SDLC.

### 4. Reviews and Inspections

Review:

* Requirements
* Design
* Code
* Test plans
* Test cases
* Documentation

Reviews help identify problems early.

### 5. Quality Audits

Audits verify whether project activities comply with established processes and standards.

### 6. Measurement and Monitoring

Collect and analyse quality metrics such as:

* Defect density
* Test coverage
* Defect closure rate
* Review effectiveness
* Test execution progress

### 7. Defect and Root Cause Analysis

Analyse defects to identify their underlying causes instead of only fixing individual defects.

### 8. Corrective and Preventive Actions

**Corrective actions** fix existing problems.

**Preventive actions** prevent similar problems from occurring again.

### 9. Continuous Improvement

Use lessons learned and quality data to improve development and testing processes.

### Flowchart

```text id="q9m4x7"
Quality Planning
      ↓
Standards & Processes
      ↓
Process Implementation
      ↓
Reviews & Inspections
      ↓
Quality Audits
      ↓
Measurement & Monitoring
      ↓
Root Cause Analysis
      ↓
Corrective / Preventive Actions
      ↓
Continuous Improvement
```

### Conclusion

Quality Assurance is a proactive and continuous process. It focuses on preventing defects by improving software development and testing processes throughout the entire SDLC.

---

# 22. Exam-Oriented Revision

## Quality Assurance

Remember:

> **QA = Process + Prevention + Standards + Continuous Improvement**

### QA Process

**Plan → Define → Implement → Review → Audit → Measure → Analyse → Correct/Prevent → Improve**

### QA vs QC

**QA = Prevent**

**QC = Detect**

### Corrective vs Preventive

**Corrective = Fix existing problem**

**Preventive = Avoid future occurrence**

---

# PYQ Coverage

| Syllabus Concept          | PYQ                                          |
| ------------------------- | -------------------------------------------- |
| Quality Assurance Process | **2024:** Describe Quality Assurance Process |

## Important Question

### 2024

**Describe Quality Assurance Process.**
