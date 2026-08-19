# 04 — Software Errors, Defects and Failures

## 1. Introduction

Software is created by humans, and humans can make mistakes.

A mistake made during:

* Requirements analysis
* Design
* Coding
* Testing
* Configuration
* Documentation
* Maintenance

can introduce an **error** into the software development process.

An error can lead to a **defect**, and when that defect is executed under suitable conditions, it can result in a **failure**.

The basic relationship is:

```text
Human Error
     ↓
   Defect
     ↓
Execution under specific conditions
     ↓
   Failure
```

Understanding the difference between **error, defect, and failure** is very important in software testing.

---

# 2. What is an Error?

An **error** is a human mistake made while developing or maintaining software.

It may occur because of:

* Misunderstanding requirements
* Incorrect assumptions
* Lack of knowledge
* Poor communication
* Calculation mistakes
* Incorrect design decisions
* Coding mistakes

### Example

A requirement states:

> "The system should allow users to log in using their registered email address."

The developer misunderstands the requirement and implements login using the user's username instead.

The developer has made an **error**.

---

# 3. What is a Defect?

A **defect** is a flaw or fault in a software work product that can cause the software to behave incorrectly.

A defect may exist in:

* Source code
* Design
* Requirements
* Database configuration
* Documentation
* Test cases
* Configuration files

### Example

Suppose the developer writes:

```text
if (enteredPassword != storedPassword)
    allowLogin();
```

The condition is logically incorrect.

This incorrect implementation is a **defect**.

---

# 4. What is a Failure?

A **failure** occurs when the software actually behaves differently from what is expected during execution.

In simple words:

> **Failure = Observable incorrect behavior of the software.**

### Example

A user enters the correct password but the system rejects the login.

The user observes incorrect behavior.

Therefore, a **failure** has occurred.

---

# 5. Error vs Defect vs Failure

| Point         | Error                                | Defect                          | Failure                             |
| ------------- | ------------------------------------ | ------------------------------- | ----------------------------------- |
| Meaning       | Human mistake                        | Flaw in software/work product   | Incorrect behavior during execution |
| Occurs        | During development/maintenance       | Exists in software/work product | During software execution           |
| Nature        | Human action                         | Static flaw                     | Observable behavior                 |
| Example       | Developer misunderstands requirement | Wrong login condition           | Valid login is rejected             |
| Discovered by | Reviews, analysis, testing           | Testing, reviews, analysis      | User/tester/system                  |
| Relationship  | Can cause defect                     | Can cause failure               | Result of defect under conditions   |

### Easy Memory Trick

```text
ERROR  = Human Mistake
DEFECT = Flaw in Software
FAILURE = Wrong Behavior
```

---

# 6. Relationship Between Error, Defect and Failure

Consider an online shopping system.

### Step 1 — Error

Developer misunderstands the requirement:

> Discount should be applied before calculating tax.

Developer assumes:

> Tax should be calculated before discount.

This is the **error**.

---

### Step 2 — Defect

The developer implements the wrong calculation order.

```text
Tax → Discount
```

instead of:

```text
Discount → Tax
```

The incorrect implementation is the **defect**.

---

### Step 3 — Failure

A customer purchases an item.

The final bill contains the wrong amount.

The incorrect bill is the **failure**.

```text
Requirement Misunderstood
          ↓
         ERROR
          ↓
Incorrect Calculation Logic
          ↓
        DEFECT
          ↓
Wrong Bill Generated
          ↓
       FAILURE
```

---

# 7. Why Does Software Have Errors?

Software errors occur because software is developed by humans and involves complex activities.

---

## 7.1 Incorrect Requirements

If requirements are misunderstood or incorrectly documented, defects may be introduced.

### Example

Customer says:

> "The system should support 100 concurrent users."

Developer understands it as:

> "The system should support 100 users."

The difference can lead to incorrect design decisions.

---

# 7.2 Ambiguous Requirements

A requirement may have multiple interpretations.

### Example

> "The system should process transactions quickly."

What does "quickly" mean?

* 1 second?
* 5 seconds?
* 10 seconds?

Without a measurable requirement, different people may interpret it differently.

---

# 7.3 Communication Problems

Miscommunication between:

* Customer
* Business analyst
* Developer
* Tester
* Management

can introduce errors.

---

# 7.4 Human Mistakes

Developers may make mistakes while writing code.

Examples:

* Wrong operator
* Incorrect condition
* Incorrect variable
* Incorrect formula
* Missing validation

---

# 7.5 Complex Software

Large systems contain:

* Many modules
* Large amounts of code
* Multiple dependencies
* Complex business rules
* External systems

Complexity increases the possibility of defects.

---

# 7.6 Incorrect Design

A poor architecture or design decision can introduce defects that are difficult to correct later.

---

# 7.7 Time and Resource Pressure

Developers may make more mistakes when working under:

* Tight deadlines
* Limited resources
* Excessive workload
* Frequent requirement changes

---

# 7.8 Technology Changes

Changes in:

* Operating systems
* Browsers
* Databases
* APIs
* Hardware
* Libraries

can introduce compatibility problems.

---

# 7.9 Poor Testing

If software is inadequately tested, existing defects may remain undiscovered.

---

# 7.10 Frequent Changes

Every modification introduces the possibility of new defects.

This is why regression testing is important.

---

# 8. Causes of Software Defects

Major causes include:

```text
Requirements
     ↓
Communication
     ↓
Design
     ↓
Coding
     ↓
Integration
     ↓
Configuration
     ↓
Testing
     ↓
Maintenance
```

### Common Causes

1. Incorrect requirements
2. Ambiguous requirements
3. Incomplete requirements
4. Poor communication
5. Incorrect design
6. Coding mistakes
7. Complexity
8. Integration problems
9. Configuration errors
10. Inadequate testing
11. Frequent changes
12. Environmental differences

---

# 9. Effects of Software Errors and Defects

Defects can have different levels of impact.

## 9.1 Minor Effects

Examples:

* Incorrect formatting
* Typographical error
* Minor UI issue

---

## 9.2 Functional Effects

The software may produce incorrect results.

Example:

A payroll system calculates the wrong salary.

---

## 9.3 Performance Effects

The software may:

* Respond slowly
* Consume excessive memory
* Consume excessive CPU

---

## 9.4 Security Effects

A defect may allow unauthorized users to access confidential information.

---

## 9.5 Financial Effects

Defects in financial systems can cause:

* Incorrect transactions
* Revenue loss
* Incorrect billing
* Financial penalties

---

## 9.6 Safety Effects

In critical systems, software failures may affect human safety.

Examples:

* Medical systems
* Aviation systems
* Industrial control systems
* Automotive systems

---

## 9.7 Reputation Effects

Frequent software failures can reduce:

* Customer trust
* Brand reputation
* User satisfaction

---

# 10. Defect Lifecycle

The **defect lifecycle** describes the different states through which a defect passes from identification until closure.

A typical defect lifecycle is:

```text
New
 ↓
Assigned
 ↓
Open
 ↓
In Progress
 ↓
Fixed
 ↓
Retest
 ↓
Verified
 ↓
Closed
```

However, defects can also move into other states such as:

* Rejected
* Duplicate
* Deferred
* Cannot Reproduce
* Reopened
* Won't Fix

---

# 11. Defect Lifecycle States

## 11.1 New

A tester identifies a problem and creates a defect report.

The initial state is usually:

> **New**

### Example

Tester discovers that valid users cannot log in.

A defect is created.

```text
Status = NEW
```

---

# 11.2 Assigned

The defect is assigned to a developer or responsible team.

```text
Tester
  ↓
Defect
  ↓
Assigned to Developer
```

---

# 11.3 Open

The development team accepts the defect and begins analysis.

The developer investigates:

* Steps to reproduce
* Source code
* Logs
* Configuration
* Root cause

---

# 11.4 In Progress

The developer is actively working on the defect.

---

# 11.5 Fixed

The developer has implemented a correction.

Important:

> **Fixed does not always mean permanently closed.**

The tester must verify the fix.

---

# 11.6 Retest

The tester executes the relevant test case again.

### Example

Original:

```text
Valid Login → FAIL
```

After fix:

```text
Valid Login → PASS
```

---

# 11.7 Verified

If the tester confirms that the defect has been successfully corrected, the defect becomes:

> **Verified**

---

# 11.8 Closed

After successful verification, the defect is closed.

```text
FIXED
  ↓
RETEST
  ↓
VERIFIED
  ↓
CLOSED
```

---

# 12. Alternative Defect States

A defect does not always follow the simple path.

---

## Rejected

The reported issue is determined not to be a valid defect.

Possible reasons:

* Working as designed
* Requirement misunderstood
* Invalid report

```text
New → Rejected
```

---

## Duplicate

The same defect has already been reported.

```text
New → Duplicate
```

---

## Deferred

The defect is valid but will be fixed in a future release.

Possible reasons:

* Low priority
* Low severity
* Limited resources
* Release deadline

```text
Open → Deferred
```

---

## Cannot Reproduce

The developer cannot reproduce the reported problem.

The team may request:

* More information
* Logs
* Screenshots
* Test data
* Environment details

---

## Reopened

If the tester finds that the defect still exists after the developer marked it fixed:

```text
Fixed
  ↓
Retest
  ↓
FAIL
  ↓
Reopened
  ↓
Developer fixes again
```

---

# 13. PYQ — 2022

## Question

**Explain defect life cycle with the help of diagram.**

### Answer

The **defect life cycle** represents the different stages through which a defect passes from the time it is identified until it is resolved and closed.

A typical defect lifecycle is:

```text
                    +--------+
                    |  NEW   |
                    +--------+
                        |
                        ↓
                  +-----------+
                  | ASSIGNED  |
                  +-----------+
                        |
                        ↓
                  +-----------+
                  |   OPEN    |
                  +-----------+
                        |
                        ↓
                +---------------+
                |  IN PROGRESS  |
                +---------------+
                        |
                        ↓
                  +-----------+
                  |   FIXED   |
                  +-----------+
                        |
                        ↓
                  +-----------+
                  |   RETEST  |
                  +-----------+
                    /       \
                   /         \
               PASS           FAIL
                ↓               ↓
           +----------+      +----------+
           | VERIFIED |      | REOPENED |
           +----------+      +----------+
                |               |
                ↓               |
           +----------+         |
           |  CLOSED  | ←-------+
           +----------+
```

---

## Detailed Explanation

### 1. New

The tester identifies a problem and creates a defect report.

The defect is marked:

> **New**

---

### 2. Assigned

The defect is assigned to the responsible developer or team.

---

### 3. Open

The developer accepts the defect and begins analyzing it.

The developer investigates:

* Problem reproduction
* Source code
* Logs
* Root cause
* Affected components

---

### 4. In Progress

The developer is actively working on the defect.

---

### 5. Fixed

The developer modifies the software to correct the problem.

The status becomes:

> **Fixed**

But the defect is not yet closed.

---

### 6. Retest

The tester executes the test case again to verify the correction.

---

### 7. Verified

If the tester confirms that the defect has been successfully fixed, it is marked:

> **Verified**

---

### 8. Closed

The defect is finally closed after successful verification.

---

### 9. Reopened

If the tester finds that the problem still exists:

```text
Fixed
  ↓
Retest
  ↓
Failed
  ↓
Reopened
```

The developer must investigate and fix it again.

---

# 14. Defect Lifecycle with Alternative Paths

A more realistic defect lifecycle can be represented as:

```text
                         NEW
                          |
                          ↓
                       ASSIGNED
                          |
                          ↓
                         OPEN
                          |
                          ↓
                     IN PROGRESS
                          |
                          ↓
                        FIXED
                          |
                          ↓
                        RETEST
                     /          \
                   PASS          FAIL
                    |             |
                    ↓             ↓
                VERIFIED       REOPENED
                    |             |
                    ↓             |
                 CLOSED ←---------+
                    
Other possible paths:

NEW → REJECTED
NEW → DUPLICATE
OPEN → DEFERRED
OPEN → CANNOT REPRODUCE
```

---

# 15. Example of Defect Lifecycle

Consider a **college attendance system**.

### Step 1 — New

Tester finds:

> Attendance percentage is calculated incorrectly.

Defect is created.

```text
Status = New
```

### Step 2 — Assigned

Defect is assigned to the developer.

```text
Status = Assigned
```

### Step 3 — Open

Developer accepts the issue.

```text
Status = Open
```

### Step 4 — In Progress

Developer investigates the calculation logic.

### Step 5 — Fixed

Developer corrects the formula.

### Step 6 — Retest

Tester executes the attendance calculation again.

### Step 7 — Verified

The percentage is now correct.

### Step 8 — Closed

The defect is closed.

---

# 16. Defect Severity vs Priority

These concepts are important when discussing defect management.

## Severity

Severity indicates the **impact of a defect on the software**.

Examples:

* Critical
* High
* Medium
* Low

### Example

A banking application allows unauthorized transactions.

This has very high severity.

---

## Priority

Priority indicates **how urgently the defect should be fixed**.

### Example

A spelling mistake on the company's homepage may have low severity but high priority because the page is publicly visible.

---

## Difference

| Severity                              | Priority                     |
| ------------------------------------- | ---------------------------- |
| Measures impact                       | Measures urgency             |
| Technical/business damage             | Fix order                    |
| Usually assessed by QA/technical team | Often influenced by business |
| "How serious is it?"                  | "How soon should we fix it?" |

### Memory Trick

> **Severity = How bad?**

> **Priority = How soon?**

---

# 17. Defect Prevention

Finding defects is important, but preventing them is even better.

Defect prevention includes:

* Clear requirements
* Requirement reviews
* Design reviews
* Code reviews
* Coding standards
* Static analysis
* Developer training
* Automated testing
* Continuous integration
* Root cause analysis

```text
Prevention
    ↓
Fewer Defects
    ↓
Less Rework
    ↓
Lower Cost
    ↓
Better Quality
```

---

# 18. Defect Detection vs Defect Prevention

| Defect Detection          | Defect Prevention                          |
| ------------------------- | ------------------------------------------ |
| Finds existing defects    | Prevents defects from occurring            |
| Testing is important      | Reviews, standards, training are important |
| Reactive                  | Proactive                                  |
| Fixes discovered problems | Reduces introduction of problems           |

Both are necessary for software quality.

---

# 19. Defect Leakage

A **defect leakage** occurs when a defect is not detected in one testing phase and is discovered in a later phase or after release.

### Example

A defect is missed during system testing and discovered by the customer after deployment.

```text
Development
     ↓
Testing
     ↓
Defect Missed
     ↓
Production
     ↓
Customer Finds Defect
```

This is undesirable because late defect detection usually results in greater:

* Cost
* Risk
* Rework
* Customer dissatisfaction

---

# 20. Root Cause Analysis

When a defect is found, simply fixing the immediate problem may not be enough.

The team should ask:

> **Why did this defect occur?**

Root Cause Analysis identifies the underlying reason for the defect.

### Example

Problem:

> Attendance percentage is incorrect.

Possible root cause:

```text
Incorrect Percentage
        ↓
Wrong Formula
        ↓
Developer Misunderstood Requirement
        ↓
Requirement Was Ambiguous
```

The actual root cause may be the ambiguous requirement rather than simply the coding error.

---

# 21. Important Differences

## Error vs Defect

**Error:**

Human mistake.

**Defect:**

Flaw introduced into a work product because of an error.

---

## Defect vs Failure

**Defect:**

The flaw exists in the software.

**Failure:**

The flaw produces incorrect observable behavior during execution.

---

## Testing vs Debugging

**Testing:**

Finds failures/defects.

**Debugging:**

Finds the cause and fixes the defect.

---

# 22. Complete Relationship

```text
       HUMAN
      MISTAKE
         |
         ↓
       ERROR
         |
         ↓
       DEFECT
         |
         ↓
Software Executed
under Certain Conditions
         |
         ↓
      FAILURE
         |
         ↓
      TESTING
         |
         ↓
   DEFECT REPORT
         |
         ↓
     DEBUGGING
         |
         ↓
    ROOT CAUSE
         |
         ↓
       FIX
         |
         ↓
      RETEST
         |
         ↓
    VERIFICATION
         |
         ↓
      CLOSURE
```

---

# 23. Exam-Oriented Answer Structure

If asked:

> **"Explain defect life cycle with diagram."**

Use this order:

### 1. Definition

Define defect lifecycle.

### 2. Diagram

Draw:

```text
New
 ↓
Assigned
 ↓
Open
 ↓
In Progress
 ↓
Fixed
 ↓
Retest
 ↓
Verified
 ↓
Closed
```

Also show:

```text
Retest → Fail → Reopened
```

### 3. Explain Each State

Briefly explain:

* New
* Assigned
* Open
* In Progress
* Fixed
* Retest
* Verified
* Closed
* Reopened

### 4. Conclusion

State that the lifecycle ensures systematic tracking and resolution of defects.

---

# 24. Quick Revision

## Error

> Human mistake.

## Defect

> Flaw in a software work product.

## Failure

> Observable incorrect behavior during execution.

---

## Main Causes of Errors

**Requirements + Communication + Design + Coding + Complexity + Changes + Testing**

---

## Defect Lifecycle

```text
NEW
 ↓
ASSIGNED
 ↓
OPEN
 ↓
IN PROGRESS
 ↓
FIXED
 ↓
RETEST
 ↓
VERIFIED
 ↓
CLOSED
```

Failed retest:

```text
RETEST
   ↓
FAIL
   ↓
REOPENED
   ↓
FIXED
```

---

# 25. Most Important Exam Points

| Topic                      |           PYQ | Priority |
| -------------------------- | ------------: | -------: |
| Defect Life Cycle          |          2022 |    ⭐⭐⭐⭐⭐ |
| Error vs Defect vs Failure | No direct PYQ |    ⭐⭐⭐⭐⭐ |
| Causes of Software Errors  | No direct PYQ |     ⭐⭐⭐⭐ |
| Effects of Defects         | No direct PYQ |     ⭐⭐⭐⭐ |
| Defect Prevention          | No direct PYQ |      ⭐⭐⭐ |
| Severity vs Priority       | No direct PYQ |      ⭐⭐⭐ |
| Defect Leakage             | No direct PYQ |      ⭐⭐⭐ |

---

# 26. One-Minute Revision

```text
ERROR
Human mistake
      ↓
DEFECT
Flaw in software
      ↓
FAILURE
Wrong behavior
      ↓
DETECT
Testing
      ↓
FIX
Debugging
      ↓
VERIFY
Retesting
      ↓
CLOSE
Defect lifecycle completed
```

### ⭐ Golden Rule

> **Error is made by a human.**

> **Defect exists in the software/work product.**

> **Failure is observed when the software executes incorrectly.**

> **Testing detects the problem.**

> **Debugging finds and fixes its cause.**
