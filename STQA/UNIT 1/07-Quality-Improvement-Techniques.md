# 07 — Quality Improvement Techniques

## 1. Introduction

Quality improvement is the systematic effort to improve software processes, products, and organizational practices.

The major techniques covered in this topic are:

* Statistical Process Control (SPC)
* Cultural changes
* Benchmarking
* Problem-solving techniques
* Quality-related software tools
* Tools and techniques for quality improvement

The main objective is:

> **Identify quality problems → analyze their causes → improve the process → measure the results → maintain the improvement.**

```text id="q8h1bz"
Identify Problem
      ↓
Collect Data
      ↓
Analyze Causes
      ↓
Apply Improvement Technique
      ↓
Measure Results
      ↓
Standardize Improvement
      ↓
Continual Improvement
```

---

# 2. Statistical Process Control (SPC)

## What is SPC?

**Statistical Process Control (SPC)** is a quality-management technique that uses statistical methods to monitor, control, and improve a process.

In simple words:

> **SPC uses data and statistical techniques to determine whether a process is stable and behaving as expected.**

SPC focuses on the **process**, not just the final product.

---

# 3. Objectives of SPC

SPC is used to:

1. Monitor process performance.
2. Detect abnormal variation.
3. Identify problems early.
4. Determine whether a process is stable.
5. Reduce process variation.
6. Improve process capability.
7. Prevent defects.
8. Support data-driven decisions.

---

# 4. Variation in Software Processes

Every process has some variation.

Variation may be caused by:

* Human factors
* Tools
* Environment
* Requirements
* Technology
* Process differences

SPC attempts to distinguish between two major types of variation.

---

## 4.1 Common Cause Variation

Common causes are natural sources of variation that are inherent in the process.

### Example

A development team's build time normally varies between:

```text
8 minutes – 12 minutes
```

This may be normal process variation.

---

## 4.2 Special Cause Variation

Special causes are unusual factors that cause unexpected variation.

### Example

Normally:

```text
Build time = 8–12 minutes
```

Suddenly:

```text
Build time = 45 minutes
```

Possible special cause:

* Infrastructure problem
* Network issue
* Build server failure
* Configuration change

---

# 5. SPC Control Chart

A **control chart** is commonly used to monitor process behavior.

It typically contains:

* Upper Control Limit (UCL)
* Central Line (CL)
* Lower Control Limit (LCL)

```text id="bgr5b3"
Process Measurement
      ↑

UCL ─────────────────────────────
           ●
      ●        ●
          ●
CL  ─────────────────────────────
       ●    ●      ●
           ●
LCL ─────────────────────────────

      → Time
```

If process measurements remain within expected control limits and show stable behavior, the process may be considered statistically controlled.

---

# 6. SPC Example in Software

Suppose a company monitors the number of defects found during code review each week.

```text id="0s5x5k"
Week 1 → 8 defects
Week 2 → 10 defects
Week 3 → 7 defects
Week 4 → 9 defects
Week 5 → 8 defects
```

These values may represent normal variation.

Suppose suddenly:

```text id="x0ctgy"
Week 6 → 35 defects
```

The organization investigates the reason.

Possible causes:

* New developer team
* Major requirement change
* Poor code quality
* New technology
* Inadequate review process

SPC helps identify such unusual behavior.

---

# 7. Benefits of SPC

SPC helps organizations:

* Detect process instability
* Reduce variation
* Identify abnormal conditions
* Prevent defects
* Improve predictability
* Improve process quality
* Make data-based decisions

---

# 8. Benchmarking

## What is Benchmarking?

**Benchmarking** is the process of comparing an organization's processes, performance, or practices with those of other organizations or recognized best practices to identify areas for improvement.

In simple words:

> **Benchmarking means learning by comparing your performance with a better-performing reference.**

---

# 9. Objectives of Benchmarking

Benchmarking helps organizations:

1. Identify performance gaps.
2. Learn best practices.
3. Set realistic improvement targets.
4. Improve processes.
5. Improve productivity.
6. Reduce costs.
7. Improve quality.
8. Increase competitiveness.

---

# 10. Types of Benchmarking

## 10.1 Internal Benchmarking

Comparison is performed between different departments, teams, or projects within the same organization.

### Example

Team A has:

```text
Defect rate = 2%
```

Team B has:

```text
Defect rate = 5%
```

The organization studies Team A's practices to improve Team B.

---

## 10.2 Competitive Benchmarking

The organization compares its performance with competitors.

### Example

Two software companies compare:

* Product reliability
* Customer satisfaction
* Release frequency
* Application performance

---

## 10.3 Functional Benchmarking

An organization compares a specific function with another organization that performs that function very well, even if it is not a direct competitor.

---

## 10.4 Generic Benchmarking

Comparison is made against widely recognized best practices.

---

# 11. Benchmarking Process

```text id="f8n2gp"
Identify Area to Improve
          ↓
Select Benchmark
          ↓
Collect Data
          ↓
Compare Performance
          ↓
Identify Performance Gap
          ↓
Study Best Practices
          ↓
Implement Improvements
          ↓
Measure Results
```

---

# 12. Example of Benchmarking

Suppose:

### Company A

```text
Average deployment time = 2 hours
```

### Industry Best Practice

```text
Average deployment time = 15 minutes
```

The company identifies a large performance gap.

It studies practices such as:

* CI/CD
* Automated testing
* Infrastructure automation
* Automated deployment

and implements suitable improvements.

---

# 13. Problem-Solving Techniques

Problem-solving techniques provide systematic methods for identifying and resolving quality problems.

Important techniques include:

* Root Cause Analysis
* 5 Whys
* Fishbone Diagram
* Pareto Analysis
* Brainstorming
* Check Sheets
* Flowcharts
* Cause-and-effect analysis

---

# 14. Root Cause Analysis

**Root Cause Analysis (RCA)** is a systematic method used to identify the underlying cause of a problem.

The goal is not merely to fix the visible symptom.

### Example

Problem:

> Production application crashes frequently.

Instead of simply restarting the application, the team investigates:

```text id="dy1w1x"
Crash
 ↓
Memory exhaustion
 ↓
Memory leak
 ↓
Incorrect resource handling
 ↓
Design / coding problem
```

The deeper cause should be addressed.

---

# 15. 5 Whys Technique

The **5 Whys** technique repeatedly asks:

> **Why did this problem occur?**

The number five is not mandatory. The question is repeated until the underlying cause is identified.

### Example

### Problem

Production deployment failed.

### Why 1?

Why did deployment fail?

> Configuration was incorrect.

### Why 2?

Why was configuration incorrect?

> Configuration was manually entered.

### Why 3?

Why was it manually entered?

> There was no automated configuration process.

### Why 4?

Why was there no automation?

> The deployment process was never automated.

### Why 5?

Why was it never automated?

> Automation was not included in the original process design.

Potential root cause:

> Inadequate deployment-process design.

---

# 16. Fishbone Diagram

The **Fishbone Diagram**, also called the **Ishikawa Diagram** or **Cause-and-Effect Diagram**, is used to identify possible causes of a problem.

```text id="8k4l8c"
People --------\
Process ---------\
Tools ------------> PROBLEM
Technology -------/
Environment ------/
Requirements ----/
```

Possible categories in software may include:

* People
* Process
* Technology
* Tools
* Requirements
* Environment
* Management

---

# 17. Pareto Analysis

Pareto Analysis is based on the idea that a relatively small number of causes may account for a large proportion of problems.

Often described using the:

> **80/20 principle**

### Example

Suppose a software application has 100 defects.

Analysis shows:

```text id="3ih2eq"
20% of defect categories
        ↓
Cause 80% of defects
```

The organization should prioritize those major causes.

### Pareto Diagram

```text id="w5f2b3"
Defects
  ↑
  | ███████████
  | █████████
  | ███████
  | ████
  | ██
  +----------------------→ Causes
     A    B    C   D   E
```

---

# 18. Brainstorming

Brainstorming is a group technique used to generate possible ideas and causes.

### Rules

* Encourage many ideas.
* Avoid immediate criticism.
* Record ideas.
* Evaluate ideas afterward.

### Example

A team has frequent production failures.

Team members suggest:

* Poor testing
* Incorrect configuration
* Network problems
* Database issues
* Deployment mistakes
* Inadequate monitoring

These ideas can then be analyzed systematically.

---

# 19. Check Sheet

A check sheet is a structured form used to collect and record data.

### Example

Suppose a team records defect types:

| Defect Type    | Count |
| -------------- | ----: |
| UI             |    12 |
| Database       |     7 |
| Authentication |    15 |
| Performance    |     5 |
| Validation     |     9 |

This data can later be analyzed using techniques such as Pareto analysis.

---

# 20. Flowchart

A flowchart visually represents a process.

It helps identify:

* Unnecessary steps
* Bottlenecks
* Repeated activities
* Decision points
* Process failures

### Example

```text id="j3k0eh"
Requirement
    ↓
Development
    ↓
Code Review
    ↓
Testing
    ↓
Pass? ── No ──→ Fix
  |
 Yes
  ↓
Deployment
```

---

# 21. Software Tools Related to Quality

Software tools can support quality improvement throughout the software lifecycle.

Important categories include:

## 21.1 Version Control Tools

Examples:

* Git
* GitHub
* GitLab

Used for:

* Change tracking
* Collaboration
* Version management
* Code history

---

## 21.2 Issue and Defect Tracking Tools

Used to manage:

* Defects
* Tasks
* Priorities
* Assignments
* Status

Examples include tools such as Jira and similar issue-tracking systems.

---

## 21.3 Test Management Tools

Used to manage:

* Test cases
* Test execution
* Test results
* Test plans
* Defects

---

## 21.4 Test Automation Tools

Used to automatically execute tests.

Examples:

* Selenium
* JUnit
* TestNG
* Cypress
* Playwright

---

## 21.5 Static Analysis Tools

Static analysis examines code without executing it.

They can identify:

* Code smells
* Bugs
* Security issues
* Complexity
* Maintainability problems

Examples:

* SonarQube
* ESLint
* Checkstyle

---

## 21.6 CI/CD Tools

CI/CD tools automate parts of:

* Build
* Testing
* Deployment

Examples:

* Jenkins
* GitHub Actions
* GitLab CI/CD

---

# 22. Tools vs Techniques

This distinction is important because it directly relates to the 2023 PYQ.

## Tool

A **tool** is an instrument or software used to perform or support a task.

Examples:

* Git
* Selenium
* SonarQube
* Jira
* Jenkins

---

## Technique

A **technique** is a method or approach used to solve a problem or improve quality.

Examples:

* 5 Whys
* Pareto Analysis
* Benchmarking
* Brainstorming
* Root Cause Analysis
* SPC

### Easy Memory Trick

> **Tool = With what?**

> **Technique = How?**

Example:

```text
How to find root cause?
        ↓
5 Whys / Fishbone
        ↓
Technique

What software can help track defects?
        ↓
Jira
        ↓
Tool
```

---

# 23. PYQ — 2024

## Question

**Describe cultural changes requirement for Quality improvement.**

### Answer

Quality improvement cannot be achieved only by introducing tools, testing techniques, or quality processes.

The organization must also develop a **quality-oriented culture**.

A cultural change means changing the attitudes, behaviors, values, and practices of people so that quality becomes a shared responsibility.

---

# 24. Why Cultural Change is Required

Traditional organizations may think:

> "Quality is the responsibility of the testing department."

A quality-oriented organization believes:

> **"Quality is everyone's responsibility."**

Therefore, cultural change is necessary to create long-term quality improvement.

---

# 25. Important Cultural Changes

## 25.1 Quality as Everyone's Responsibility

Developers, testers, managers, operations teams, and other employees should participate in quality.

```text id="6y3x7m"
Management
    |
Developers
    |
Testers
    |
Operations
    |
Support
    |
Everyone → Responsible for Quality
```

---

## 25.2 Customer Focus

Employees should understand that quality ultimately exists to satisfy customer needs.

The organization should:

* Collect feedback
* Understand customer expectations
* Measure satisfaction
* Improve based on feedback

---

## 25.3 Prevention Instead of Detection

The organization should move from:

> Find defects after they occur

towards:

> Prevent defects from occurring.

Examples:

* Reviews
* Coding standards
* Automated checks
* Training
* Root cause analysis

---

## 25.4 Employee Empowerment

Employees should be encouraged to:

* Identify problems
* Suggest improvements
* Stop poor-quality processes
* Participate in decision making

Employees should not fear reporting problems.

---

## 25.5 Open Communication

Quality problems should be communicated openly.

A culture where people hide defects can increase risk.

Instead:

```text id="c1d4p6"
Problem Identified
       ↓
Report Openly
       ↓
Analyze
       ↓
Fix
       ↓
Learn
       ↓
Prevent Recurrence
```

---

## 25.6 Continuous Learning

Employees should continuously improve their:

* Technical skills
* Testing knowledge
* Process knowledge
* Quality awareness

---

## 25.7 Data-Based Decision Making

Decisions should be based on evidence rather than assumptions.

Examples:

* Defect metrics
* Customer complaints
* Test results
* Performance measurements

---

## 25.8 Teamwork

Quality requires collaboration between:

* Developers
* Testers
* Business analysts
* Operations
* Management
* Customers

---

## 25.9 Recognition and Motivation

Organizations should recognize employees who:

* Identify important problems
* Suggest improvements
* Improve processes
* Help prevent defects

This encourages quality-oriented behavior.

---

## 25.10 Management Commitment

Management must actively support quality through:

* Resources
* Training
* Policies
* Quality objectives
* Time for reviews/testing
* Improvement programs

Without management commitment, cultural change is difficult.

---

# 26. Cultural Change Diagram

```text id="r6r3jz"
              MANAGEMENT SUPPORT
                     ↓
              Quality Culture
                     ↓
       +-------------+-------------+
       |             |             |
 Customer       Employee       Open
 Focus          Involvement   Communication
       |             |             |
       +-------------+-------------+
                     ↓
              Defect Prevention
                     ↓
             Process Improvement
                     ↓
              Continual Improvement
                     ↓
               Better Quality
```

---

# 27. PYQ — 2023

## Question

**Compare between tools and techniques.**

### Answer

Tools and techniques are both used for quality improvement, but they are different concepts.

A **tool** is an instrument, often software or a utility, used to support a particular activity.

A **technique** is a systematic method or approach used to perform an activity, analyze a problem, or improve quality.

---

## Difference Between Tools and Techniques

| Tool                                      | Technique                             |
| ----------------------------------------- | ------------------------------------- |
| Instrument used to perform/support a task | Method used to perform/analyze a task |
| Often a software application              | Usually a method or procedure         |
| Provides practical support                | Provides an approach                  |
| Can automate activities                   | Guides how an activity is performed   |
| Example: Git                              | Example: Root Cause Analysis          |
| Example: Selenium                         | Example: Boundary Value Analysis      |
| Example: Jira                             | Example: Pareto Analysis              |
| Example: SonarQube                        | Example: 5 Whys                       |

---

# 28. Examples

## Example 1 — Defect Management

### Tool

A defect tracking system can be used to record and manage defects.

### Technique

Root Cause Analysis can be used to identify why the defect occurred.

```text id="sgb1xq"
Tool:
Defect Tracking System
       +
Technique:
Root Cause Analysis
       ↓
Better Defect Management
```

---

## Example 2 — Testing

### Tool

Selenium can automate browser testing.

### Technique

Boundary Value Analysis can determine which input values should be tested.

```text id="g2b1n3"
Selenium → Tool
Boundary Value Analysis → Technique
```

---

## Example 3 — Code Quality

### Tool

SonarQube can analyze source code.

### Technique

Code review is a technique/process used to identify problems through human inspection.

---

# 29. Quality Improvement Tools and Techniques Together

```text id="9p0s9p"
              QUALITY IMPROVEMENT
                      |
          +-----------+-----------+
          |                       |
        TOOLS                  TECHNIQUES
          |                       |
     Git / Jira               5 Whys
     Selenium                Pareto
     SonarQube               Fishbone
     Jenkins                 Benchmarking
                              SPC
                              Brainstorming
```

The two can work together.

For example:

```text id="9n2gfr"
Jira
 ↓
Collect Defect Data
 ↓
Pareto Analysis
 ↓
Identify Major Defect Causes
 ↓
5 Whys
 ↓
Root Cause
 ↓
Process Improvement
```

---

# 30. Benchmarking vs SPC

| SPC                          | Benchmarking                         |
| ---------------------------- | ------------------------------------ |
| Monitors process variation   | Compares performance                 |
| Uses statistical data        | Uses comparison data                 |
| Focuses on process stability | Focuses on performance gaps          |
| Detects unusual variation    | Identifies better practices          |
| Control charts are common    | Benchmarks/best practices are common |

---

# 31. Root Cause Analysis vs Problem Fixing

Simply fixing a defect is not always enough.

### Problem Fix

> Correct the immediate issue.

### Root Cause Analysis

> Identify why the problem occurred and prevent recurrence.

Example:

```text id="9k11hf"
Bug Fix
   ↓
Immediate Problem Solved

Root Cause Analysis
   ↓
Why did bug occur?
   ↓
Prevent Similar Bugs
```

---

# 32. Quality Improvement Cycle

All these techniques can work together.

```text id="i7xv9n"
              IDENTIFY PROBLEM
                     ↓
                COLLECT DATA
                     ↓
                SPC / METRICS
                     ↓
               ROOT CAUSE
                     ↓
           5 WHYS / FISHBONE
                     ↓
             BENCHMARKING
                     ↓
             APPLY SOLUTION
                     ↓
               MEASURE AGAIN
                     ↓
             STANDARDIZE
                     ↓
          CONTINUAL IMPROVEMENT
```

---

# 33. Exam-Oriented Answer Structure

## If asked: "Describe cultural changes requirement for Quality improvement."

Write:

1. Define quality culture.
2. Explain why cultural change is required.
3. Quality as everyone's responsibility.
4. Customer focus.
5. Prevention rather than detection.
6. Employee empowerment.
7. Open communication.
8. Continuous learning.
9. Data-based decisions.
10. Teamwork.
11. Management commitment.
12. Diagram.
13. Conclusion.

---

## If asked: "Compare tools and techniques."

Write:

1. Define tool.
2. Define technique.
3. Comparison table.
4. Give 4–5 examples.
5. Explain how they work together.

---

# 34. Quick Revision

## SPC

> **Uses statistical methods to monitor and control process variation.**

Remember:

**UCL + CL + LCL**

---

## Benchmarking

> **Comparing performance with another reference or best practice to identify improvement opportunities.**

---

## 5 Whys

> **Repeatedly asking "Why?" to identify the root cause.**

---

## Fishbone Diagram

> **Cause-and-effect diagram used to identify possible causes of a problem.**

---

## Pareto Analysis

> **Prioritizes major causes that contribute to a large proportion of problems.**

---

## Brainstorming

> **Group technique for generating possible ideas or causes.**

---

## Tool

> **Instrument used to perform/support a task.**

Examples:

**Git, Jira, Selenium, SonarQube, Jenkins**

---

## Technique

> **Method used to perform or analyze a task.**

Examples:

**SPC, Benchmarking, 5 Whys, Pareto, Fishbone, RCA**

---

# 35. Most Important Exam Points

| Topic                                    |          Year | Priority |
| ---------------------------------------- | ------------: | -------: |
| Cultural Changes for Quality Improvement |          2024 |    ⭐⭐⭐⭐⭐ |
| Tools vs Techniques                      |          2023 |    ⭐⭐⭐⭐⭐ |
| Statistical Process Control              | No direct PYQ |     ⭐⭐⭐⭐ |
| Benchmarking                             | No direct PYQ |     ⭐⭐⭐⭐ |
| Problem Solving Techniques               | No direct PYQ |     ⭐⭐⭐⭐ |
| Quality Software Tools                   | No direct PYQ |      ⭐⭐⭐ |
| Root Cause Analysis                      | No direct PYQ |     ⭐⭐⭐⭐ |

---

# 36. One-Minute Revision

```text
                 QUALITY IMPROVEMENT
                         |
       +-----------------+-----------------+
       |                 |                 |
      SPC           BENCHMARKING      PROBLEM SOLVING
       |                 |                 |
 Process Control    Compare with       5 Whys
 Control Charts     Best Practices     Fishbone
 Variation                              Pareto
       |                 |              RCA
       +-----------------+-----------------+
                         |
                  CONTINUAL IMPROVEMENT
```

### ⭐ Golden Rules

> **SPC = Control process variation using statistics.**

> **Benchmarking = Compare with better performance/best practices.**

> **5 Whys = Find root cause by repeatedly asking why.**

> **Fishbone = Identify possible causes of a problem.**

> **Pareto = Prioritize the major causes.**

> **Tool = What you use.**

> **Technique = How you approach the problem.**

> **Quality culture = Everyone takes responsibility for quality.**
