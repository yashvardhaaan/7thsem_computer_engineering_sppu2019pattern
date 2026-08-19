# Test Efficiency and Defect Management

## 1. Test Efficiency

### Definition

**Test Efficiency** measures how effectively testing resources such as time, effort, people, tools, and cost are used to achieve testing objectives and identify defects.

It focuses on obtaining maximum testing value with the available resources.

### Simple Definition

> **Test Efficiency = How effectively testing resources are used to find and prevent defects.**

---

# 2. Objectives of Test Efficiency

Test efficiency aims to:

* Detect defects as early as possible.
* Reduce unnecessary testing effort.
* Use testers and resources effectively.
* Reduce testing time.
* Reduce testing cost.
* Improve test execution speed.
* Increase useful test coverage.
* Optimize automation.
* Improve the overall testing process.

---

# 3. Factors Affecting Test Efficiency

## 1. Test Case Quality

Well-designed test cases can detect more defects with less effort.

## 2. Tester Skill

Experienced testers can identify high-risk areas and design effective tests.

## 3. Test Automation

Automation is useful for repetitive and regression tests.

## 4. Test Environment

A stable environment reduces interruptions and delays.

## 5. Test Data

Proper test data allows testers to execute tests without unnecessary preparation.

## 6. Requirement Quality

Clear requirements reduce ambiguity and rework.

## 7. Defect Management

Fast identification, reporting, and resolution of defects improves testing efficiency.

## 8. Test Prioritization

High-risk and business-critical features should be tested first.

## 9. Tools

Appropriate testing and defect management tools can reduce manual effort.

---

# 4. Measuring Test Efficiency

Test efficiency can be evaluated using different measurements.

### Test Execution Productivity

```text id="t4k9x2"
Test Execution Productivity
=
Test Cases Executed
-------------------
Testing Effort
```

### Defect Detection Efficiency

```text id="h7m3p8"
Defect Detection Efficiency
=
Defects Detected
----------------
Testing Effort
```

### Example

Suppose:

* Defects detected = 40
* Testing effort = 20 tester-days

Then:

```text id="v5n8q1"
40 / 20 = 2 defects per tester-day
```

This can be used as an efficiency indicator, although organizations may define metrics differently.

---

# 5. Improving Test Efficiency

Test efficiency can be improved by:

### 1. Risk-Based Testing

Prioritize high-risk functionality.

### 2. Test Automation

Automate repetitive and frequently executed tests.

### 3. Test Case Optimization

Remove duplicate or low-value test cases while maintaining required coverage.

### 4. Early Testing

Start testing activities as early as possible.

### 5. Reusable Test Data

Create reusable datasets for repeated testing.

### 6. Continuous Integration

Execute automated tests whenever code changes are integrated.

### 7. Parallel Testing

Execute independent tests simultaneously where possible.

### 8. Good Defect Prioritization

Resolve critical defects before low-impact defects.

---

# 6. Defect

## Definition

A **Defect** is a flaw or deviation in a software product that causes the actual result to differ from the expected result or specified requirement.

### Example

Requirement:

> Password must contain at least 8 characters.

Actual behavior:

> System accepts a 5-character password.

This is a **defect** because the actual behavior does not satisfy the requirement.

---

# 7. Defect Life Cycle

The **Defect Life Cycle** describes the stages through which a defect passes from identification to closure.

```text id="2x6m9p"
New
 ↓
Assigned
 ↓
Open
 ↓
Fixed
 ↓
Retest
 ↓
Verified
 ↓
Closed
```

A defect may also move through alternative states:

```text id="d8q1w4"
New → Rejected
New → Duplicate
New → Deferred
New → Not a Bug
Fixed → Reopened
```

---

# 8. Defect Acceptance

## Definition

**Defect Acceptance** means that a reported defect is reviewed and accepted as a valid issue that requires further action.

When a tester reports a defect, the responsible team evaluates whether it is:

* Reproducible
* Valid
* Related to the application
* Within the agreed scope
* Worth fixing

If the defect satisfies the acceptance conditions, it is accepted for resolution.

### Example

Tester reports:

> Clicking "Pay Now" causes the application to crash.

The developer/test lead reproduces the issue.

The defect is confirmed as valid.

Therefore:

**Defect Status → Accepted / Open**

---

# 9. Defect Rejection

## Definition

**Defect Rejection** occurs when a reported issue is reviewed and determined not to be a valid defect requiring a fix.

A defect may be rejected because:

* It cannot be reproduced.
* It is not a software defect.
* The behavior is according to requirements.
* It is a duplicate defect.
* It is outside the project scope.
* It is caused by an incorrect test setup.
* It is already fixed.
* It is an environment issue.

---

# 10. Common Reasons for Defect Rejection

## 1. Not a Bug

The reported behavior is actually expected behavior.

**Example:**

Tester expects a field to accept letters, but the requirement specifies numbers only.

---

## 2. Duplicate

The same defect has already been reported.

```text id="f3k8v5"
DEF-102 → Login crashes
DEF-145 → Login crashes
```

If DEF-145 describes the same problem as DEF-102, DEF-145 may be marked **Duplicate**.

---

## 3. Cannot Reproduce

The developer or tester cannot reproduce the reported issue using the provided steps and environment.

---

## 4. Invalid Test Data

The defect occurred because incorrect or invalid test data was used.

---

## 5. Environment Issue

The problem is caused by:

* Network
* Server
* Database
* Configuration
* Hardware
* Browser

rather than the application itself.

---

## 6. Requirement Clarification

The behavior is unclear because the requirement does not clearly define the expected behavior.

The issue may be rejected or placed on hold until the requirement is clarified.

---

# 11. Defect Rejection Process

```text id="k4m7s2"
Tester Reports Defect
        ↓
Defect Review
        ↓
Is It Valid?
      /     \
    Yes      No
     ↓        ↓
  Accept    Reject
     ↓        ↓
 Assign      Reason
     ↓       Recorded
 Fix
```

---

# 12. Defect Acceptance vs Defect Rejection

| Defect Acceptance                      | Defect Rejection                            |
| -------------------------------------- | ------------------------------------------- |
| Defect is considered valid             | Defect is considered invalid/not actionable |
| Requires further action                | Usually does not require a code fix         |
| Assigned to responsible team           | Closed/rejected with reason                 |
| Reproducible or sufficiently supported | Cannot be reproduced or is not a bug        |
| May proceed to fixing                  | Does not proceed to normal fixing           |

---

# 13. Defect Severity and Priority

Defect management often uses two important classifications.

## Severity

**Severity** indicates the impact of a defect on the system.

Typical levels:

* Critical
* High
* Medium
* Low

### Example

Application crashes whenever payment is attempted.

**Severity:** Critical/High

---

## Priority

**Priority** indicates how urgently the defect should be fixed.

Typical levels:

* High
* Medium
* Low

### Example

A spelling mistake on the homepage may have:

**Severity:** Low

But if the homepage is being shown during a major launch, its:

**Priority:** High

---

# 14. Severity vs Priority

| Severity                              | Priority                                      |
| ------------------------------------- | --------------------------------------------- |
| Measures impact                       | Measures urgency                              |
| Technical/business impact             | Fixing importance                             |
| Usually assigned based on effect      | Often influenced by business needs            |
| Example: System crash = High severity | Example: Launch-critical typo = High priority |

### Memory Trick

> **Severity = How bad is it?**

> **Priority = How soon should we fix it?**

---

# 15. Defect Report

A good defect report should contain:

* Defect ID
* Title
* Description
* Environment
* Preconditions
* Steps to reproduce
* Expected result
* Actual result
* Severity
* Priority
* Attachments
* Screenshots/logs
* Reporter
* Assignee
* Status

### Example

```text id="n6p2r9"
Defect ID: BUG-101

Title:
Payment page crashes after clicking Pay Now

Steps:
1. Login
2. Add product to cart
3. Proceed to checkout
4. Click Pay Now

Expected:
Payment should be processed.

Actual:
Application crashes.

Severity: Critical
Priority: High
Status: New
```

---

# 16. Defect Rejection Example

### Scenario

A tester reports:

> "Login button does not work when username is blank."

The developer checks the requirement and finds:

> Username is mandatory.

Therefore, the button not proceeding with login is expected behavior.

### Result

The defect may be rejected as:

**Reason: Not a Bug / Expected Behavior**

---

# 17. Test Efficiency and Defect Management Relationship

Effective defect management improves test efficiency.

```text id="p9v5k3"
Efficient Testing
       ↓
Early Defect Detection
       ↓
Clear Defect Reports
       ↓
Fast Defect Review
       ↓
Correct Prioritization
       ↓
Faster Resolution
       ↓
Effective Retesting
       ↓
Better Quality
```

Poor defect management can cause:

* Repeated testing
* Wasted effort
* Delayed releases
* Confusion
* Increased cost
* Incorrect quality reporting

---

# 18. PYQ – 2024

**Question:** Explain test efficiency and defect rejection.

### Detailed Answer

### Test Efficiency

Test efficiency refers to how effectively testing resources such as time, people, tools, effort, and cost are utilized to achieve testing objectives and identify defects.

The main objectives of test efficiency are:

1. Detect defects early.
2. Reduce testing time.
3. Reduce testing cost.
4. Optimize tester effort.
5. Improve test execution productivity.
6. Achieve effective test coverage.
7. Use automation where appropriate.
8. Prioritize high-risk functionality.

Test efficiency can be improved using:

* Risk-based testing
* Test automation
* Test case optimization
* Early testing
* Parallel execution
* Reusable test data
* Continuous integration
* Effective defect prioritization

### Defect Rejection

Defect rejection occurs when a reported defect is reviewed and determined not to be a valid defect requiring a software fix.

### Reasons for Defect Rejection

1. **Not a Bug:** The observed behavior is according to the requirement.
2. **Duplicate:** The same defect has already been reported.
3. **Cannot Reproduce:** The issue cannot be reproduced using the provided information.
4. **Invalid Test Data:** Incorrect test data caused the problem.
5. **Environment Issue:** The issue is caused by the test environment.
6. **Out of Scope:** The issue is outside the agreed project scope.
7. **Requirement Clarification:** The expected behavior is unclear and requires clarification.

### Defect Rejection Flow

```text id="x2j8q6"
Defect Reported
      ↓
Defect Reviewed
      ↓
Valid Defect?
    /     \
  Yes      No
   ↓        ↓
Accepted  Rejected
   ↓        ↓
Assigned  Reason Recorded
   ↓
Fixed
   ↓
Retested
```

### Conclusion

Test efficiency ensures that testing resources are used effectively, while proper defect rejection prevents invalid, duplicate, or non-actionable issues from consuming development and testing resources.

---

# 19. Exam-Oriented Revision

## Test Efficiency

Remember:

**Less Waste + Better Coverage + Faster Defect Detection + Effective Resource Usage**

### Key Points

* Optimize testing effort.
* Prioritize high-risk areas.
* Automate repetitive testing.
* Start testing early.
* Use effective test cases.
* Monitor testing productivity.

---

## Defect Acceptance

Remember:

**Valid + Reproducible + Within Scope → Accept**

## Defect Rejection

Remember:

**Duplicate / Not a Bug / Cannot Reproduce / Environment Issue / Invalid Data / Out of Scope → Reject**

---

# PYQ Coverage

| Syllabus Concept              | PYQ                                                    |
| ----------------------------- | ------------------------------------------------------ |
| Defect Acceptance & Rejection | **2024:** Explain test efficiency and defect rejection |
| Test Efficiency               | **2024:** Explain test efficiency and defect rejection |

> **Note:** The same 2024 PYQ covers both syllabus concepts. It should be written once in the notes rather than duplicated.

## Important Question

### 2024

**Explain test efficiency and defect rejection.**
