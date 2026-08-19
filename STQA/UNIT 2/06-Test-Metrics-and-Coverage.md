# Test Metrics and Coverage

## 1. Test Metrics

### Definition

**Test Metrics** are quantitative measurements used to evaluate the progress, effectiveness, efficiency, quality, and status of software testing activities.

They help the testing team understand:

* How much testing has been completed.
* How many defects have been found.
* How effective testing is.
* Whether testing is progressing according to schedule.
* Whether the software is ready for release.

### Objectives of Test Metrics

* Measure testing progress.
* Measure test effectiveness.
* Measure test efficiency.
* Identify risks and problems.
* Support management decisions.
* Monitor quality.
* Compare actual performance with planned performance.
* Support continuous improvement.

---

# 2. Types of Test Metrics

## 1. Test Execution Metrics

Measure the progress of test execution.

Examples:

* Number of test cases planned.
* Number of test cases executed.
* Number of passed test cases.
* Number of failed test cases.
* Number of blocked test cases.

### Test Execution Percentage

```text id="v4e1q8"
Test Execution %
=
Executed Test Cases
------------------- × 100
Planned Test Cases
```

### Example

Planned test cases = 500

Executed test cases = 400

```text id="w5b9ks"
400 / 500 × 100 = 80%
```

Therefore, **80% of the planned test cases have been executed**.

---

# 3. Pass Percentage

Measures the percentage of executed test cases that passed.

### Formula

```text id="8y5y2c"
Pass %
=
Passed Test Cases
----------------- × 100
Executed Test Cases
```

### Example

Executed = 400

Passed = 360

```text id="q8z0v1"
360 / 400 × 100 = 90%
```

Therefore, the pass percentage is **90%**.

---

# 4. Fail Percentage

Measures the percentage of executed test cases that failed.

### Formula

```text id="9g2p1h"
Fail %
=
Failed Test Cases
----------------- × 100
Executed Test Cases
```

### Example

Executed = 400

Failed = 40

```text id="m7t5c2"
40 / 400 × 100 = 10%
```

---

# 5. Test Coverage

## Definition

**Test Coverage** measures the extent to which the software requirements, functionality, code, or other testable elements have been tested.

It answers:

> **"How much of the system has been tested?"**

### Importance

Test coverage helps to:

* Identify untested areas.
* Measure completeness of testing.
* Identify testing gaps.
* Improve confidence in software quality.
* Support release decisions.
* Ensure important requirements are tested.

---

# 6. Types of Test Coverage

## 1. Requirement Coverage

Measures the percentage of requirements that have corresponding test cases.

### Formula

```text id="j8u3xm"
Requirement Coverage %
=
Requirements Tested
------------------- × 100
Total Requirements
```

### Example

Total requirements = 100

Requirements tested = 90

```text id="t4k8e2"
90 / 100 × 100 = 90%
```

Requirement coverage = **90%**.

---

## 2. Functional Coverage

Measures how much of the application's functionality has been tested.

**Example:**

An e-commerce application has:

* Login
* Search
* Cart
* Payment
* Order tracking

If 4 out of 5 functionalities are tested:

```text id="r2y5n7"
4 / 5 × 100 = 80%
```

Functional coverage = **80%**.

---

## 3. Code Coverage

Measures how much of the source code has been executed by tests.

Common code coverage measurements include:

* Statement coverage
* Branch coverage
* Condition coverage
* Path coverage
* Function/method coverage

---

# 7. Statement Coverage

Measures the percentage of executable statements executed during testing.

### Formula

```text id="f7w9x1"
Statement Coverage %
=
Executed Statements
------------------- × 100
Total Statements
```

### Example

Total statements = 100

Executed statements = 85

Coverage = **85%**.

---

# 8. Branch Coverage

Measures the percentage of decision branches executed by tests.

For example:

```text id="p3h6d9"
       Condition
       /       \
    True       False
```

A good branch coverage test should execute both paths.

### Example

If there are 20 branches and 18 are executed:

```text id="k4n7s2"
18 / 20 × 100 = 90%
```

Branch coverage = **90%**.

---

# 9. Condition Coverage

Measures whether the individual conditions within decision statements have been evaluated as both true and false.

Example:

```text id="q5x8m3"
if (age >= 18 && citizen == true)
```

Both conditions should be tested with appropriate true and false values.

---

# 10. Test Case Productivity

## Definition

**Test Case Productivity** measures the efficiency of a tester or testing team in designing, executing, or completing test cases within a given period.

It helps evaluate how effectively testing resources are being utilized.

### Basic Formula

```text id="u9p3k6"
Test Case Productivity
=
Number of Test Cases Completed
------------------------------ 
Time / Effort Used
```

Depending on the organization, productivity may be measured using:

* Test cases designed per hour.
* Test cases executed per hour.
* Test cases completed per tester-day.
* Test cases reviewed per day.

### Example

A tester executes 80 test cases in 8 hours.

```text id="e5r2w8"
Productivity = 80 / 8
             = 10 test cases/hour
```

Therefore, the tester's execution productivity is **10 test cases per hour**.

---

# 11. Factors Affecting Test Case Productivity

Productivity can be influenced by:

### 1. Test Case Complexity

Complex test cases require more time.

### 2. Tester Skill

Experienced testers may design and execute tests more efficiently.

### 3. Test Environment

Unstable environments reduce productivity.

### 4. Test Data Availability

Missing or incorrect test data causes delays.

### 5. Automation

Automation can increase execution productivity for repetitive tests.

### 6. Requirement Quality

Clear requirements make test design easier.

### 7. Defect Rate

A large number of defects may increase retesting and regression effort.

### 8. Tools

Good test management and automation tools can improve productivity.

---

# 12. Test Metrics vs Test Coverage

| Test Metrics                                   | Test Coverage                   |
| ---------------------------------------------- | ------------------------------- |
| General measurements of testing                | Measures extent of testing      |
| Includes progress, defects, productivity, etc. | Focuses on what has been tested |
| Broader concept                                | Specific measurement area       |
| Helps measure testing performance              | Helps identify testing gaps     |
| Example: Pass percentage                       | Example: Requirement coverage   |

---

# 13. Important Test Metrics

## 1. Test Execution Progress

Shows how many planned tests have been executed.

## 2. Pass Percentage

Shows the percentage of successful test cases.

## 3. Fail Percentage

Shows the percentage of failed test cases.

## 4. Defect Density

Measures the number of defects relative to software size.

A commonly used formula is:

```text id="d6v1p8"
Defect Density
=
Number of Defects
-----------------
Software Size
```

Software size may be measured using:

* KLOC
* Function Points

---

## 5. Defect Detection Percentage

Measures defects detected during a particular testing phase.

## 6. Defect Closure Rate

Measures the rate at which reported defects are resolved.

```text id="a2m7z5"
Defect Closure Rate
=
Closed Defects
-------------- × 100
Total Defects
```

---

## 7. Test Case Effectiveness

Indicates how effectively test cases identify defects.

One possible measurement is:

```text id="c8f4n2"
Test Case Effectiveness
=
Defects Found by Test Cases
---------------------------
Test Cases Executed
```

The exact metric definition can vary between organizations.

---

# 14. Example – Complete Test Metrics

Suppose a project has:

* Planned test cases = 1,000
* Executed = 800
* Passed = 720
* Failed = 80
* Requirements = 100
* Requirements tested = 90
* Total defects = 50
* Closed defects = 40

### Execution Percentage

```text id="r5t9q1"
800 / 1000 × 100 = 80%
```

### Pass Percentage

```text id="n3k7p2"
720 / 800 × 100 = 90%
```

### Fail Percentage

```text id="h8x4v6"
80 / 800 × 100 = 10%
```

### Requirement Coverage

```text id="z2m5c8"
90 / 100 × 100 = 90%
```

### Defect Closure Rate

```text id="y6w3q9"
40 / 50 × 100 = 80%
```

These metrics provide a snapshot of the current testing status.

---

# 15. Test Metrics Dashboard

A simple testing dashboard can show:

```text id="e7p2s4"
+--------------------------------+
|       TESTING DASHBOARD        |
+--------------------------------+
| Execution        : 80%         |
| Pass Rate        : 90%         |
| Fail Rate        : 10%         |
| Requirement Cov. : 90%         |
| Defect Closure   : 80%         |
+--------------------------------+
```

This allows the Test Manager to quickly understand project status.

---

# 16. Benefits of Test Metrics

### 1. Better Decision Making

Management can make release decisions based on measurable information.

### 2. Progress Tracking

Testing progress can be compared against the project schedule.

### 3. Risk Identification

Poor coverage or high failure rates can indicate quality risks.

### 4. Resource Planning

Metrics help identify whether additional testers or tools are required.

### 5. Quality Improvement

Historical metrics can be used to identify recurring problems.

### 6. Transparency

Metrics provide stakeholders with clear information about testing status.

---

# 17. Limitations of Test Metrics

Metrics should be interpreted carefully.

* High test coverage does not guarantee defect-free software.
* High test case productivity does not necessarily mean high-quality testing.
* Number of defects alone does not indicate software quality.
* Metrics can be misleading if measured incorrectly.
* Teams may optimize for the metric rather than actual quality.

### Important Point

> **Metrics support testing decisions; they do not replace tester judgment.**

---

# 18. Exam-Oriented Revision

## Test Metrics

Remember:

**Progress + Quality + Defects + Productivity + Coverage**

Important examples:

* Test execution percentage
* Pass percentage
* Fail percentage
* Defect density
* Defect closure rate
* Test case productivity
* Test coverage

## Test Case Productivity

Remember:

**Test Cases Completed ÷ Time/Effort**

## Test Coverage

Remember:

**Tested Portion ÷ Total Testable Portion × 100**

---

# PYQ Coverage

| Syllabus Concept       | PYQ             |
| ---------------------- | --------------- |
| Test Metrics           | No PYQ directly |
| Test Case Productivity | No PYQ          |
| Test Case Coverage     | No PYQ          |

## Important Note

There is **no direct PYQ** listed for these three concepts, but all three are syllabus topics and should be prepared for short-answer or indirect questions.

### Possible Exam Questions

1. Define Test Metrics.
2. Explain different types of Test Metrics.
3. What is Test Case Productivity?
4. Explain Test Case Coverage.
5. Explain different types of Test Coverage.
6. Differentiate Requirement Coverage and Code Coverage.
7. Explain the importance of Test Metrics in software testing.
