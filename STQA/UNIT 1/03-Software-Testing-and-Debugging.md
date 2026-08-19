# 03 — Software Testing and Debugging

## 1. Introduction to Software Testing

### What is Software Testing?

**Software testing** is the systematic process of evaluating software to determine whether it satisfies specified requirements and to identify defects.

In simple words:

> **Testing means checking software to find defects and verify that it behaves as expected.**

Testing involves:

* Providing inputs
* Executing the software
* Observing outputs
* Comparing actual results with expected results
* Identifying failures
* Reporting defects

### Basic Testing Flow

```text
Requirements
     ↓
Test Cases
     ↓
Test Data / Inputs
     ↓
Execute Software
     ↓
Actual Result
     ↓
Compare with Expected Result
     ↓
Pass / Fail
     ↓
Defect Reporting
```

---

# 2. Example of Software Testing

Consider an ATM withdrawal system.

### Requirement

> A customer should be able to withdraw money if sufficient balance is available.

### Test Case

```text
Account Balance = ₹10,000
Withdrawal Amount = ₹2,000
```

### Expected Result

```text
₹2,000 should be withdrawn
Remaining Balance = ₹8,000
```

### Actual Result

Suppose the system deducts ₹3,000.

Then:

```text
Expected Result ≠ Actual Result
```

Therefore, the test **fails** and a defect needs to be investigated.

---

# 3. Need of Software Testing

Software testing is necessary because software may contain errors introduced during:

* Requirements
* Design
* Coding
* Integration
* Configuration
* Maintenance

Testing helps identify these problems before they cause serious failures.

---

## 3.1 To Find Defects

The primary purpose of testing is to identify defects in software.

### Example

A calculation module produces an incorrect total.

Testing can reveal the problem before the software reaches users.

---

## 3.2 To Verify Requirements

Testing verifies whether the implemented software satisfies the specified requirements.

### Example

Requirement:

> User should be able to reset the password using registered email.

Testing verifies whether this functionality actually works.

---

## 3.3 To Validate Software Behavior

Testing helps determine whether the software behaves appropriately for expected user needs.

---

## 3.4 To Improve Software Reliability

Finding and fixing defects improves the reliability of the final software.

---

## 3.5 To Reduce Risk

Defects in critical systems can cause significant damage.

Examples:

* Banking systems
* Medical systems
* Aviation systems
* Defense systems
* Industrial control systems

Testing reduces the probability of serious failures.

---

## 3.6 To Improve Customer Satisfaction

Reliable and usable software results in better customer experience.

---

## 3.7 To Reduce Cost of Failures

Defects discovered after deployment can be much more expensive to fix than defects found during development.

```text
Early Defect Detection
        ↓
Lower Cost
        ↓
Lower Risk
        ↓
Better Quality
```

---

## 3.8 To Ensure Compliance

Testing may be necessary to verify that software satisfies:

* Regulatory requirements
* Industry standards
* Security requirements
* Organizational policies

---

# 4. Objectives of Software Testing

The major objectives of testing are:

1. Detect defects.
2. Verify requirements.
3. Validate software behavior.
4. Evaluate quality.
5. Reduce risks.
6. Increase confidence in the software.
7. Prevent failures in production.
8. Provide information for decision-making.
9. Verify important quality characteristics.
10. Support compliance requirements.

### Important Principle

> **Testing can show the presence of defects, but cannot prove the complete absence of defects.**

Even if all executed test cases pass, it does not mean the software is completely defect-free.

---

# 5. Testing vs Debugging

Testing and debugging are related but they are **not the same activity**.

---

## Testing

Testing is performed to:

* Detect failures
* Identify defects
* Verify requirements
* Evaluate software behavior

The tester usually observes:

```text
Expected Result
       ↓
Compare
       ↑
Actual Result
```

If they differ, a failure is observed.

---

## Debugging

**Debugging** is the process of finding the cause of a defect and correcting it.

Debugging generally involves:

1. Reproducing the problem.
2. Locating the defect.
3. Analyzing the cause.
4. Modifying the code/configuration.
5. Retesting the fix.

---

# 6. Testing and Debugging Flow

```text
                 SOFTWARE
                     ↓
                  TESTING
                     ↓
             Failure Detected
                     ↓
              Defect Reported
                     ↓
                 DEBUGGING
                     ↓
             Find Root Cause
                     ↓
              Fix the Defect
                     ↓
                  RETEST
                     ↓
              Regression Test
                     ↓
              Software Quality
```

---

# 7. PYQ — 2024

## Question

**What is the difference between Testing & Debugging?**

### Answer

Testing and debugging are two different activities performed during software development.

**Testing** is primarily concerned with finding failures and identifying defects, whereas **debugging** is concerned with locating the cause of a defect and correcting it.

---

## Difference Between Testing and Debugging

| Point             | Testing                                      | Debugging                                                   |
| ----------------- | -------------------------------------------- | ----------------------------------------------------------- |
| Meaning           | Evaluating software to find failures/defects | Finding and correcting the cause of a defect                |
| Main purpose      | Detect problems                              | Fix problems                                                |
| Performed by      | Mainly testers, but developers can also test | Mainly developers                                           |
| Starting point    | Test case / expected behavior                | Reported or reproduced failure                              |
| Main activity     | Execute and evaluate                         | Analyze, locate and fix                                     |
| Output            | Failure/defect information                   | Corrected software                                          |
| Code modification | Normally no                                  | Usually yes                                                 |
| Focus             | What went wrong?                             | Why did it go wrong and how to fix it?                      |
| Example           | Login fails for valid credentials            | Developer finds incorrect authentication logic and fixes it |

---

## Simple Example

Suppose a user enters the correct password but the application displays:

> "Invalid password."

### Testing

A tester executes the login test case.

```text
Expected → Login successful
Actual   → Login failed
```

The tester reports a defect.

This is **testing**.

### Debugging

The developer investigates the defect and discovers:

```text
Password comparison logic is incorrect.
```

The developer corrects the code.

This is **debugging**.

---

## Easy Diagram

```text
              TESTING
                 ↓
          Failure Detected
                 ↓
          Defect Report
                 ↓
             DEBUGGING
                 ↓
          Root Cause Found
                 ↓
             Fix Applied
                 ↓
              RETEST
```

### Exam Conclusion

Testing and debugging are complementary activities. **Testing identifies failures and provides information about defects, while debugging determines the root cause and fixes those defects.**

### ⭐ Exam Keywords

> **Testing = Detect**

> **Debugging = Locate + Analyze + Fix**

---

# 8. Testing Process

A basic testing process can be represented as:

```text
1. Requirement Analysis
          ↓
2. Test Planning
          ↓
3. Test Case Design
          ↓
4. Test Environment Setup
          ↓
5. Test Execution
          ↓
6. Compare Expected vs Actual
          ↓
7. Defect Reporting
          ↓
8. Retesting
          ↓
9. Regression Testing
          ↓
10. Test Closure
```

---

# 9. Requirement Analysis

Before testing begins, testers need to understand what the software is supposed to do.

Testers study:

* Functional requirements
* Non-functional requirements
* Business rules
* User requirements
* Acceptance criteria

### Example

Requirement:

> User must enter a valid email address during registration.

Possible test conditions:

* Valid email
* Invalid email
* Empty email
* Duplicate email
* Special characters

---

# 10. Test Planning

Test planning determines:

* What will be tested?
* How will it be tested?
* Who will test it?
* When will testing happen?
* What tools will be used?
* What resources are required?
* What risks exist?

---

# 11. Test Case Design

A test case defines the conditions and steps used to verify a particular requirement.

Typical test case components include:

* Test case ID
* Description
* Preconditions
* Input
* Steps
* Expected result
* Actual result
* Status

### Example

```text
Test Case ID: TC_LOGIN_01

Requirement:
Valid user should be able to log in.

Input:
Username = yash
Password = correct_password

Expected:
User successfully logs in.

Actual:
User successfully logs in.

Status:
PASS
```

---

# 12. Test Execution

During test execution:

```text
Test Input
    ↓
Software
    ↓
Actual Output
    ↓
Compare with Expected Output
```

If the actual result matches the expected result:

```text
PASS
```

Otherwise:

```text
FAIL
```

---

# 13. Defect Reporting

When a test fails, the problem is documented in a defect report.

A defect report may contain:

* Defect ID
* Title
* Description
* Steps to reproduce
* Expected result
* Actual result
* Severity
* Priority
* Environment
* Screenshots/logs

---

# 14. Retesting

After a developer fixes a defect, the tester executes the same test again.

This is called **retesting** or **confirmation testing**.

### Example

Original result:

```text
Login with valid credentials → FAIL
```

Developer fixes the authentication logic.

Tester executes the same test:

```text
Login with valid credentials → PASS
```

The defect is considered fixed if the confirmation test succeeds.

---

# 15. Regression Testing

After a change is made, existing functionality may be unintentionally affected.

**Regression testing** checks whether previously working functionality still works after modifications.

### Example

A developer fixes the login module.

The fix might accidentally affect:

* Registration
* Password reset
* Session management

Regression testing checks those related areas.

### Difference

```text
Retesting
    ↓
Checks whether the specific defect was fixed.

Regression Testing
    ↓
Checks whether existing functionality still works after changes.
```

---

# 16. Historical Perspective of Software Testing

Software testing has evolved significantly as software development has matured.

---

## Early Software Development

In the early days of computing, software systems were relatively small and testing was often informal.

Developers primarily focused on:

* Writing code
* Running programs
* Correcting observed errors

Testing and debugging were often closely connected.

---

## Growth of Software Complexity

As software systems became larger and more complex:

* More defects appeared.
* Testing became more systematic.
* Dedicated testers became common.
* Test planning became important.

---

## Structured Testing

Testing gradually became an organized activity involving:

* Test planning
* Test design
* Test execution
* Defect reporting
* Retesting

---

## Modern Software Testing

Modern software development uses many testing approaches, including:

* Unit testing
* Integration testing
* System testing
* Acceptance testing
* Regression testing
* Performance testing
* Security testing
* Automation testing
* Continuous testing

Testing is now integrated throughout the software development lifecycle rather than being treated only as a final activity.

---

# 17. Evolution of Testing

```text
Informal Testing
       ↓
Debugging-Oriented Approach
       ↓
Systematic Testing
       ↓
Dedicated Testing Activities
       ↓
Test Automation
       ↓
Continuous Testing
       ↓
DevOps / CI-CD Testing
```

### Key Idea

Modern testing emphasizes:

> **Early and continuous defect detection rather than waiting until the end of development.**

---

# 18. Testing and Quality

Testing is an important part of software quality assurance, but:

> **Testing alone cannot create quality.**

Quality must be built throughout the software development process.

```text
Good Requirements
       ↓
Good Design
       ↓
Good Development Practices
       ↓
Testing
       ↓
Defect Prevention + Detection
       ↓
Higher Software Quality
```

---

# 19. Verification and Validation Connection

Testing is commonly associated with verification and validation.

### Verification

Asks:

> **"Are we building the product right?"**

It checks whether software conforms to specified requirements and design.

Examples:

* Reviews
* Inspections
* Static analysis

---

### Validation

Asks:

> **"Are we building the right product?"**

It checks whether the software satisfies actual user needs.

Examples:

* System testing
* Acceptance testing
* User evaluation

### Easy Memory Trick

```text
Verification → Product built RIGHT
Validation   → RIGHT product
```

---

# 20. Important Testing Principles

## Principle 1 — Testing Shows Presence of Defects

Testing can demonstrate that defects exist.

It cannot prove that no defects exist.

---

## Principle 2 — Exhaustive Testing is Usually Impossible

Testing every possible:

* Input
* Path
* Combination
* Environment
* State

is generally impractical.

Therefore, testing uses techniques to prioritize important cases.

---

## Principle 3 — Early Testing Saves Time and Cost

Defects found early are generally easier and cheaper to correct.

```text
Requirements → Design → Coding → Testing → Production

   Low Cost                              High Cost
     ↑                                      ↑
Early Defect Detection              Late Defect Detection
```

---

## Principle 4 — Defects Cluster

A relatively small number of modules may contain a large proportion of defects.

Therefore, testing effort should be risk-based.

---

## Principle 5 — Pesticide Paradox

Repeatedly executing the same test cases may eventually stop finding new defects.

Therefore, test cases should be regularly reviewed and updated.

---

## Principle 6 — Testing is Context Dependent

Testing strategies depend on the type of software.

For example:

* Banking → Security + Reliability
* Game → Usability + Performance
* Medical system → Safety + Reliability
* E-commerce → Performance + Security + Usability

---

## Principle 7 — Absence-of-Errors Fallacy

A system may have very few known defects but still fail to satisfy user requirements.

Therefore:

> **Low defect count does not automatically mean high quality.**

---

# 21. Testing vs Debugging — Quick Revision

```text
TESTING
   ↓
Execute software
   ↓
Find failure
   ↓
Report defect

DEBUGGING
   ↓
Reproduce problem
   ↓
Find root cause
   ↓
Fix defect
   ↓
Retest
```

### One-Line Difference

> **Testing finds that something is wrong; debugging finds why it is wrong and fixes it.**

---

# 22. Important Terms

## Error

A human mistake made during software development.

Example:

A developer misunderstands a requirement.

---

## Defect

A flaw in a software work product caused by an error.

Example:

Incorrect condition written in the source code.

---

## Failure

The incorrect behavior observed when software executes.

Example:

The application crashes when the user clicks "Submit."

Relationship:

```text
Human Error
     ↓
Defect
     ↓
Execution
     ↓
Failure
```

---

# 23. Exam-Oriented Points

### If asked: "What is Software Testing?"

Write:

1. Definition
2. Purpose
3. Basic process
4. Example
5. Conclusion

---

### If asked: "Why is Testing Needed?"

Write:

1. Detect defects
2. Verify requirements
3. Validate behavior
4. Improve reliability
5. Reduce risk
6. Reduce cost
7. Improve customer satisfaction
8. Ensure compliance

---

### If asked: "Testing vs Debugging"

Remember:

| Testing                 | Debugging                  |
| ----------------------- | -------------------------- |
| Finds failure           | Finds root cause           |
| Identifies defect       | Fixes defect               |
| Evaluates software      | Modifies software          |
| Usually tester activity | Usually developer activity |
| Expected vs actual      | Root-cause analysis        |

---

# 24. Quick Revision Sheet

## Software Testing

> Systematic evaluation of software to identify defects and determine whether requirements are satisfied.

## Testing Objective

> **Detect defects + verify requirements + reduce risk + increase confidence**

## Debugging

> Process of locating, analyzing, and correcting the cause of a defect.

## Testing vs Debugging

> **Testing = Find**

> **Debugging = Fix**

## Retesting

> Checks whether a particular defect has been fixed.

## Regression Testing

> Checks whether existing functionality still works after changes.

## Verification

> Are we building the product right?

## Validation

> Are we building the right product?

---

# 25. PYQ Priority

| Topic                   |          Year | Priority |
| ----------------------- | ------------: | -------: |
| Testing vs Debugging    |          2024 |    ⭐⭐⭐⭐⭐ |
| Need of Testing         | No direct PYQ |     ⭐⭐⭐⭐ |
| Introduction to Testing | No direct PYQ |      ⭐⭐⭐ |
| Objectives of Testing   | No direct PYQ |     ⭐⭐⭐⭐ |
| Historical Perspective  | No direct PYQ |       ⭐⭐ |
| Testing Process         | No direct PYQ |      ⭐⭐⭐ |
| Retesting vs Regression | No direct PYQ |      ⭐⭐⭐ |
| Testing Principles      | No direct PYQ |      ⭐⭐⭐ |

---

# 26. One-Minute Revision

```text
                SOFTWARE TESTING
                       |
        +--------------+--------------+
        |              |              |
     Detect          Verify         Validate
     Defects       Requirements     Behavior
        |
        ↓
    Failure Found
        |
        ↓
   Defect Report
        |
        ↓
     DEBUGGING
        |
        ↓
   Find Root Cause
        |
        ↓
     Fix Defect
        |
        ↓
      RETEST
        |
        ↓
 REGRESSION TEST
```

### ⭐ Remember

> **Testing tells us that a problem exists.**

> **Debugging determines why the problem exists and corrects it.**

> **Testing cannot prove that software is completely defect-free.**

> **Good software quality requires quality throughout the development lifecycle, not testing alone.**
