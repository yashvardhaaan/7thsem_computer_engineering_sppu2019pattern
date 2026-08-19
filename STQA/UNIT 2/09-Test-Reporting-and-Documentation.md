# Test Report and Documentation

## 1. Test Report

### Definition

A **Test Report** is a document that communicates the status, progress, results, defects, coverage, risks, and overall outcome of software testing activities.

It provides stakeholders with information about the quality and readiness of the software.

### Purpose of Test Report

A test report is used to:

* Communicate testing progress.
* Present test execution results.
* Report defects.
* Show test coverage.
* Identify testing risks.
* Support release decisions.
* Provide evidence of testing.
* Document the overall quality status.

---

# 2. Types of Test Reports

## 1. Test Status Report

A **Test Status Report** provides the current status of testing during the project.

It may contain:

* Tests planned
* Tests executed
* Tests passed
* Tests failed
* Defects identified
* Defects closed
* Risks
* Blockers
* Schedule status

### Example

```text id="q4n7x2"
TEST STATUS REPORT

Planned Tests     : 1000
Executed Tests    : 800
Passed Tests      : 720
Failed Tests      : 80
Open Defects      : 25
Closed Defects    : 75
Coverage          : 90%
```

---

## 2. Test Execution Report

Shows the results of executed test cases.

Typical statuses:

* Pass
* Fail
* Blocked
* Not Executed

---

## 3. Test Summary Report

A **Test Summary Report** is prepared at the end of a testing phase or project.

It summarizes:

* Testing performed
* Test results
* Defects
* Coverage
* Risks
* Deviations
* Outstanding issues
* Recommendations
* Final testing conclusion

---

# 3. Contents of a Test Report

A test report may contain:

### 1. Project Information

* Project name
* Release/build number
* Testing phase
* Reporting period

### 2. Testing Scope

Features and functionality covered by testing.

### 3. Test Execution Summary

* Planned tests
* Executed tests
* Passed tests
* Failed tests
* Blocked tests

### 4. Test Coverage

Shows the extent of testing performed.

### 5. Defect Summary

Contains:

* Total defects
* Open defects
* Closed defects
* Severity distribution
* Priority distribution

### 6. Environment Information

Documents the environment in which testing was performed.

### 7. Risks and Issues

Identifies unresolved risks and issues affecting testing or release.

### 8. Schedule Status

Shows whether testing was:

* On schedule
* Ahead of schedule
* Behind schedule

### 9. Recommendations

Provides suggestions regarding:

* Release
* Additional testing
* Defect resolution
* Risk mitigation

### 10. Conclusion

Provides the overall testing assessment.

---

# 4. Example Test Summary Report

```text id="h8p2m5"
PROJECT: E-Commerce Application
BUILD: v2.5

Testing Scope:
Login, Search, Cart, Payment and Orders

Test Cases Planned : 500
Test Cases Executed: 480
Passed             : 450
Failed             : 30

Critical Defects   : 0
High Defects       : 2
Medium Defects     : 8
Low Defects        : 10

Requirement Coverage: 95%

Overall Status:
Testing completed with minor outstanding risks.

Recommendation:
Release may proceed subject to acceptance of
remaining high-priority defects.
```

---

# 5. Test Report Benefits

### 1. Better Communication

Provides stakeholders with a clear testing status.

### 2. Decision Support

Helps management decide whether the software is ready for release.

### 3. Traceability

Provides evidence of what was tested and what results were obtained.

### 4. Risk Visibility

Highlights unresolved defects and testing risks.

### 5. Historical Reference

Reports can be used for future projects and audits.

### 6. Quality Assessment

Provides measurable information about software quality.

---

# 6. Documentation

## Definition

**Test Documentation** refers to the collection of documents and records created and maintained throughout the testing process.

It ensures that testing activities are properly planned, performed, recorded, and communicated.

### Common Test Documents

```text id="f7k3m1"
Test Policy
    ↓
Test Strategy
    ↓
Test Plan
    ↓
Test Scenarios
    ↓
Test Cases
    ↓
Test Data
    ↓
Test Execution Results
    ↓
Defect Reports
    ↓
Test Status Reports
    ↓
Test Summary Report
```

---

# 7. Importance of Test Documentation

Test documentation helps to:

* Maintain testing records.
* Improve communication.
* Provide traceability.
* Support audits.
* Reduce dependency on individual testers.
* Enable repeatable testing.
* Track defects.
* Measure testing progress.
* Support future maintenance.
* Provide evidence of compliance.

---

# 8. Documentation Risk

## Definition

**Documentation Risk** is the risk of inaccurate, incomplete, outdated, ambiguous, or missing testing documentation affecting the testing process or software quality.

### Examples

* Missing test cases.
* Outdated requirements.
* Incorrect expected results.
* Missing defect information.
* Incomplete test reports.
* Incorrect test data documentation.
* Poor version control.

---

# 9. Types of Documentation Risks

## 1. Incomplete Documentation

Important information is missing.

**Example:**

A test case contains steps but does not specify the expected result.

### Risk

Tester cannot determine whether the test passed or failed correctly.

---

## 2. Outdated Documentation

Documents do not reflect the current system.

**Example:**

The login process changed, but old login test cases are still being used.

### Risk

Tests may produce incorrect results or miss new functionality.

---

## 3. Inconsistent Documentation

Different documents contain conflicting information.

**Example:**

Requirement says password must contain 8 characters, while the test case expects 6 characters.

### Risk

Testing becomes unreliable.

---

## 4. Ambiguous Documentation

Documentation can be interpreted in multiple ways.

**Example:**

> "System should respond quickly."

"Quickly" is not measurable.

### Risk

Testers may interpret expected behavior differently.

---

## 5. Poor Version Control

Old and new versions of documents are mixed.

### Risk

Testers may execute outdated test cases.

---

## 6. Missing Traceability

Test cases are not linked to requirements.

### Risk

Some requirements may remain untested.

---

# 10. Causes of Documentation Risk

* Frequent requirement changes.
* Poor document maintenance.
* Lack of version control.
* Poor communication.
* Incomplete requirements.
* Lack of review.
* Incorrect updates.
* Poor documentation standards.
* Multiple teams maintaining different versions.

---

# 11. Impact of Documentation Risk

Documentation problems can cause:

* Missed test scenarios.
* Incorrect testing.
* Duplicate testing.
* Increased testing effort.
* Defect leakage.
* Wrong test results.
* Release risks.
* Compliance problems.
* Communication problems.

---

# 12. Managing Documentation Risk

Documentation risk can be reduced by:

### 1. Version Control

Maintain proper versions of documents.

### 2. Regular Reviews

Review requirements, test cases, and reports regularly.

### 3. Traceability

Link:

```text id="c6m9x3"
Requirement
     ↓
Test Scenario
     ↓
Test Case
     ↓
Execution Result
     ↓
Defect
```

### 4. Change Management

Update test documentation whenever requirements change.

### 5. Standard Templates

Use consistent templates for:

* Test cases
* Defect reports
* Test plans
* Test reports

### 6. Document Ownership

Assign responsibility for maintaining documents.

### 7. Access Control

Ensure only authorized people can modify important documents.

---

# 13. Issues

## Definition

A **Test Issue** is a problem, obstacle, or situation that prevents or affects planned testing activities.

An issue may not necessarily be a software defect.

### Examples

* Test environment unavailable.
* Build not delivered.
* Test data unavailable.
* Required tester unavailable.
* Third-party service unavailable.
* Network failure.
* Requirement unclear.
* Testing tool not working.

---

# 14. Defect vs Issue

| Defect                                         | Issue                                                               |
| ---------------------------------------------- | ------------------------------------------------------------------- |
| Problem in the software/product                | Any problem affecting project/testing                               |
| Usually related to incorrect software behavior | May be technical, organizational, environmental, or process-related |
| Found through testing                          | Can be discovered during any project activity                       |
| Example: Payment calculation incorrect         | Example: Test server unavailable                                    |

### Important Point

> **Every defect can be an issue, but every issue is not necessarily a software defect.**

---

# 15. Issue Management Process

```text id="v2k8m4"
Identify Issue
      ↓
Record Issue
      ↓
Analyse Impact
      ↓
Assign Owner
      ↓
Define Action
      ↓
Track Progress
      ↓
Resolve Issue
      ↓
Verify Resolution
      ↓
Close Issue
```

---

# 16. Issue Report

An issue report may contain:

* Issue ID
* Issue title
* Description
* Date identified
* Impact
* Priority
* Owner
* Status
* Action required
* Target resolution date
* Resolution
* Closure date

### Example

```text id="j5r8n2"
Issue ID: ISS-015

Title:
Test Environment Unavailable

Description:
System testing cannot continue because the
test server is unavailable.

Impact:
Testing execution is delayed.

Priority:
High

Owner:
Environment Team

Status:
Open
```

---

# 17. Test Report vs Test Documentation

| Test Report                    | Test Documentation                                      |
| ------------------------------ | ------------------------------------------------------- |
| Specific reporting document    | Collection of testing documents                         |
| Communicates status/results    | Records the complete testing process                    |
| Often summarizes testing       | Includes plans, cases, data, reports, defects, etc.     |
| Used heavily for communication | Used for planning, execution, traceability and evidence |

---

# 18. Test Report vs Test Summary Report

| Test Report                      | Test Summary Report                            |
| -------------------------------- | ---------------------------------------------- |
| General term for testing reports | Specific report prepared at the end of testing |
| Can be periodic/status-based     | Usually summarizes completed testing           |
| May be produced during testing   | Usually produced at phase/project closure      |
| Focus varies                     | Focuses on overall final results               |

---

# 19. Example – Documentation Risk in E-Commerce

Suppose an e-commerce application changes its payment process.

The requirement is updated:

> Users must now verify an OTP before payment.

However, the existing test documentation still contains:

```text
Cart → Checkout → Enter Card → Payment Successful
```

The OTP step is missing.

### Risk

The new security requirement may not be tested.

### Consequences

* Requirement coverage decreases.
* Security defects may escape.
* Test results become inaccurate.
* Release risk increases.

### Solution

Update:

* Requirements
* Test scenarios
* Test cases
* Test data
* Automation scripts
* Traceability matrix

---

# 20. Exam-Oriented Revision

## Test Report

Remember:

**Status + Execution + Coverage + Defects + Risks + Recommendation**

## Documentation Risk

Remember:

**Missing + Outdated + Inconsistent + Ambiguous + Uncontrolled**

## Issues

Remember:

**Any obstacle that affects testing**

---

# PYQ Coverage

| Syllabus Concept   | PYQ             |
| ------------------ | --------------- |
| Test Report        | No PYQ          |
| Documentation Risk | No PYQ          |
| Issues             | No PYQ directly |

## Important Note

There is **no direct PYQ** listed for these three concepts, but they remain important syllabus topics.

### Possible Exam Questions

1. Define Test Report and explain its contents.
2. Explain the importance of test documentation.
3. What is documentation risk?
4. Explain different types of documentation risks.
5. How can documentation risks be managed?
6. What are test issues?
7. Differentiate between defect and issue.
8. Explain the issue management process.
