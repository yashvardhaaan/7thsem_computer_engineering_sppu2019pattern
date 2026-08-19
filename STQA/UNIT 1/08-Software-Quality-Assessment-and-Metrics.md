# 08 — Software Quality Assessment and Metrics

# 1. Introduction

Software quality assessment is the process of evaluating the quality of a software product or process against defined requirements, standards, characteristics, and objectives.

In simple words:

> **Software Quality Assessment = Measuring and evaluating how good the software is.**

Assessment helps organizations answer questions such as:

* Does the software satisfy requirements?
* How many defects exist?
* Is the software reliable?
* Is performance acceptable?
* Is the software maintainable?
* Are quality objectives being achieved?

---

# 2. Software Quality Assessment

Software quality assessment involves collecting information about the software and comparing the results with expected quality requirements.

A basic assessment process is:

```text id="n0o2mz"
Quality Requirements
        ↓
Quality Characteristics
        ↓
Measurements / Metrics
        ↓
Data Collection
        ↓
Analysis
        ↓
Assessment
        ↓
Quality Improvement
```

---

# 3. Objectives of Software Quality Assessment

The major objectives are:

1. Determine whether requirements are satisfied.
2. Identify defects and weaknesses.
3. Measure software quality.
4. Evaluate quality characteristics.
5. Identify areas for improvement.
6. Support management decisions.
7. Reduce software risks.
8. Monitor quality over time.
9. Compare actual performance with quality objectives.
10. Improve customer satisfaction.

---

# 4. What are Software Metrics?

A **software metric** is a quantitative measure used to evaluate an attribute of software, its development process, or project performance.

In simple words:

> **A metric converts some aspect of software or its development process into measurable information.**

### Examples

* Number of defects
* Lines of code
* Defect density
* Test coverage
* Response time
* Failure rate
* Mean Time Between Failures
* Code complexity

---

# 5. Why are Metrics Important?

Metrics help organizations make decisions based on evidence rather than assumptions.

Without metrics:

> "The software seems reliable."

With metrics:

> "The system has experienced 2 failures in 10,000 transactions."

The second statement provides measurable evidence.

---

# 6. Characteristics of Good Metrics

A useful software metric should ideally be:

* Relevant
* Measurable
* Understandable
* Consistent
* Objective
* Reliable
* Actionable

### Important

A metric should help answer a meaningful question.

Collecting data without using it for decision-making provides little value.

---

# 7. Types of Software Metrics

Software metrics can be broadly classified into:

1. Product metrics
2. Process metrics
3. Project metrics

---

# 8. Product Metrics

Product metrics measure characteristics of the software product itself.

Examples:

* Defect density
* Code complexity
* Reliability
* Performance
* Maintainability
* Size
* Test coverage

### Example

If a software product contains:

```text id="t0e9s8"
20 defects
10,000 lines of code
```

Defect density can be calculated as:

```text id="k2j4lh"
Defect Density = Number of Defects / KLOC

             = 20 / 10

             = 2 defects/KLOC
```

---

# 9. Process Metrics

Process metrics measure the effectiveness and efficiency of software development processes.

Examples:

* Defect removal efficiency
* Review effectiveness
* Test effectiveness
* Defect detection rate
* Development cycle time

### Example

If a process consistently introduces many defects, process metrics can help identify the need for improvement.

---

# 10. Project Metrics

Project metrics measure project-related factors.

Examples:

* Development effort
* Cost
* Schedule
* Productivity
* Number of completed tasks
* Resource utilization
* Schedule variance

---

# 11. Important Software Quality Metrics

## 11.1 Defect Density

Defect density measures the number of defects relative to software size.

A common formula is:

```text id="v8m1hr"
Defect Density =
Number of Defects / Size of Software
```

When size is measured in thousands of lines of code:

```text id="eq4z9w"
Defect Density =
Number of Defects / KLOC
```

### Example

Suppose:

```text id="5f9g9q"
Defects = 30
Software Size = 15 KLOC
```

Then:

```text id="a5j5u4"
Defect Density = 30 / 15
               = 2 defects/KLOC
```

---

# 12. Test Coverage

**Test coverage** measures the extent to which software elements are exercised by testing.

Depending on the type of coverage, it may measure:

* Requirements covered
* Statements executed
* Branches tested
* Functions tested

### Example

If:

```text id="1s7fzo"
100 requirements
80 requirements tested
```

Then:

```text id="h2ddp0"
Requirement Coverage =
80 / 100 × 100
= 80%
```

### Important

High test coverage does not automatically mean high software quality.

A test suite can have high coverage while still failing to test important scenarios effectively.

---

# 13. Defect Detection Rate

This measures how effectively defects are being detected during a particular period or testing activity.

For example:

```text id="u6q4j5"
Defects detected during testing = 40
```

The value can be compared over time to understand trends.

---

# 14. Defect Leakage

Defect leakage measures defects that escape one testing stage and are discovered later.

### Example

Suppose:

```text id="h2yqz1"
System Testing → 100 defects
Production     → 5 defects
```

Those 5 defects represent defects that escaped to production.

Lower defect leakage generally indicates better defect detection before release.

---

# 15. Reliability Metrics

Reliability metrics help evaluate how consistently software operates without failure.

Important measures include:

### Mean Time Between Failures (MTBF)

MTBF represents the average operating time between failures.

A simplified formula is:

```text id="x0y9cn"
MTBF =
Total Operating Time / Number of Failures
```

### Example

If software operates for:

```text id="x2bq3m"
1,000 hours
```

and experiences:

```text id="o4u4jt"
10 failures
```

Then:

```text id="s4e6qs"
MTBF = 1000 / 10
     = 100 hours
```

---

# 16. Mean Time To Repair (MTTR)

MTTR represents the average time required to repair a failure and restore the system.

Formula:

```text id="v4c7m9"
MTTR =
Total Repair Time / Number of Repairs
```

### Example

If:

```text id="s4y2e8"
Total repair time = 20 hours
Number of failures = 5
```

Then:

```text id="f5g0u5"
MTTR = 20 / 5
     = 4 hours
```

---

# 17. Availability

Availability indicates the proportion of time a system is operational and available for use.

A commonly used simplified formula is:

```text id="u7e6y4"
Availability =
MTBF / (MTBF + MTTR)
```

### Example

If:

```text id="7w9qcr"
MTBF = 100 hours
MTTR = 5 hours
```

Then:

```text id="3z6j5b"
Availability =
100 / (100 + 5)
≈ 95.24%
```

---

# 18. Code Complexity

Code complexity measures how difficult code is to understand, test, and maintain.

One commonly discussed metric is **Cyclomatic Complexity**.

Higher complexity can indicate:

* More execution paths
* More difficult testing
* Greater maintenance effort
* Increased defect risk

### Example

```text id="2n5s3r"
if condition
    ↓
else
    ↓
another condition
    ↓
multiple possible paths
```

As the number of independent paths increases, testing becomes more difficult.

---

# 19. Software Quality Assessment Process

A systematic assessment can be performed through the following steps:

```text id="f3y7r5"
1. Define Quality Objectives
           ↓
2. Identify Quality Characteristics
           ↓
3. Select Metrics
           ↓
4. Collect Data
           ↓
5. Analyze Data
           ↓
6. Compare with Targets
           ↓
7. Identify Gaps
           ↓
8. Take Corrective Action
           ↓
9. Reassess
```

---

# 20. Example of Quality Assessment

Consider an online banking application.

Quality objectives:

* High reliability
* High security
* Fast response
* Low defect rate

Possible metrics:

| Quality Aspect  | Metric                               |
| --------------- | ------------------------------------ |
| Reliability     | MTBF                                 |
| Maintainability | MTTR                                 |
| Availability    | Availability %                       |
| Defects         | Defect density                       |
| Testing         | Test coverage                        |
| Performance     | Response time                        |
| Security        | Number/severity of security findings |

The organization collects these metrics and compares them against defined targets.

---

# 21. PYQ — 2022

## Question

**What are the constraints of software product quality assessment?**

### Answer

Software product quality assessment is difficult because software has several characteristics that make quality difficult to measure precisely.

The major constraints are explained below.

---

## 1. Software is Intangible

Unlike physical products, software cannot be physically inspected in the same way as manufactured goods.

A physical product can be measured for:

* Length
* Weight
* Dimensions
* Physical defects

Software quality involves less visible characteristics such as:

* Maintainability
* Reliability
* Usability
* Security
* Complexity

Therefore, assessment is more difficult.

---

## 2. Quality is Multi-Dimensional

Software quality consists of many characteristics.

For example:

```text id="3qdrm7"
Quality
  |
  +-- Reliability
  +-- Usability
  +-- Security
  +-- Performance
  +-- Maintainability
  +-- Testability
```

Improving one characteristic may sometimes negatively affect another.

For example:

> Increasing security controls may affect usability or performance.

Therefore, quality cannot usually be represented by one simple number.

---

## 3. Different Stakeholders Have Different Expectations

Different stakeholders may define quality differently.

For example:

```text id="k1k7nz"
Customer  → Business Requirements
User      → Usability
Developer → Maintainability
Tester    → Reliability / Defects
Manager   → Cost / Schedule
```

Therefore, there may not be one universally accepted definition of "good quality."

---

## 4. Quality is Context Dependent

The importance of quality characteristics depends on the type of software.

### Example

For a banking system:

**Security and reliability** may be extremely important.

For a gaming application:

**Performance and usability** may have greater importance.

For a medical system:

**Safety and reliability** may be critical.

Therefore, the same metric or quality target may not be appropriate for every system.

---

## 5. Quality Cannot Be Completely Measured

Some quality characteristics are difficult to quantify precisely.

Examples:

* Usability
* User satisfaction
* Maintainability
* Code readability

Metrics can provide useful evidence, but they cannot always capture the complete quality of the product.

---

## 6. No Complete Testing is Possible

Software usually has a very large number of possible:

* Inputs
* States
* Paths
* Configurations
* Environments

Testing every possible combination is generally impractical.

Therefore, the absence of detected defects does not prove that the software is completely defect-free.

---

## 7. Quality Depends on Requirements

Quality assessment requires clear requirements.

If requirements are:

* Incomplete
* Ambiguous
* Incorrect
* Changing

then it becomes difficult to determine whether the software meets the required quality.

---

## 8. Requirements Change

Software requirements can change because of:

* Customer needs
* Business changes
* Laws
* Technology
* Market conditions

When requirements change, the quality criteria may also change.

---

## 9. Measurement Limitations

Not everything can be measured directly.

For example:

> "The software should be user-friendly."

This is difficult to measure directly.

It may require indirect indicators such as:

* Task completion time
* User error rate
* User surveys
* Support requests
* Usability testing

---

## 10. Metrics Can Be Misleading

A metric does not automatically represent complete quality.

### Example

A project may have:

```text id="q4h9k1"
90% test coverage
```

but still contain a serious security defect.

Therefore:

> **High metric values do not always guarantee high software quality.**

---

## 11. Cost and Time Constraints

Quality assessment requires:

* People
* Tools
* Testing environments
* Time
* Money

Projects with limited resources may not be able to perform every possible assessment activity.

---

## 12. Dynamic Nature of Software

Software changes frequently.

Changes can introduce:

* New defects
* Compatibility problems
* Performance issues
* Security problems

Therefore, quality assessment must often be repeated after significant changes.

---

## 13. Environmental Dependency

Software behavior may depend on:

* Operating system
* Hardware
* Browser
* Database
* Network
* External APIs
* Configuration

A software product may work correctly in one environment but fail in another.

---

## 14. Human Judgment

Some quality assessments require human judgment.

Examples:

* Usability
* Design quality
* Code readability
* User experience

Different evaluators may reach different conclusions.

---

# 22. Summary of Constraints

```text id="slp2x8"
        SOFTWARE QUALITY ASSESSMENT
                    |
      +-------------+-------------+
      |             |             |
  Intangible    Multi-Dimensional Stakeholder
                                Differences
      |
 Context Dependent
      |
 Incomplete Requirements
      |
 Changing Requirements
      |
 Measurement Limitations
      |
 Testing Limitations
      |
 Cost / Time Constraints
      |
 Environmental Differences
      |
 Human Judgment
```

---

# 23. PYQ Answer — Short Exam Version

If you have limited time in the examination, write the following points:

### Constraints of Software Product Quality Assessment

1. Software is intangible.
2. Quality is multidimensional.
3. Stakeholders have different expectations.
4. Quality is context dependent.
5. Complete testing is impossible.
6. Requirements may be incomplete or changing.
7. Some quality characteristics are difficult to measure.
8. Metrics may not represent complete quality.
9. Assessment requires time and resources.
10. Software changes frequently.
11. Environment can affect software behavior.
12. Human judgment may introduce subjectivity.

### Conclusion

Software quality assessment is difficult because software quality is multidimensional, context-dependent, dynamic, and partly subjective. Metrics and systematic assessment methods can reduce these difficulties, but no single measurement can completely represent software quality.

---

# 24. Quality Metrics and Quality Characteristics

It is important to understand the relationship between them.

```text id="4v4y2g"
Quality Characteristic
        ↓
    What do we care about?
        ↓
       Metric
        ↓
 How do we measure it?
```

### Example 1

```text id="9kq9fd"
Reliability
    ↓
MTBF
```

### Example 2

```text id="7p3i4q"
Maintainability
    ↓
MTTR
```

### Example 3

```text id="4n1u0c"
Testing
    ↓
Test Coverage
```

### Example 4

```text id="g2j1xw"
Defect Quality
    ↓
Defect Density
```

---

# 25. Quality Assessment vs Quality Metrics

These concepts should not be confused.

## Quality Metric

A quantitative measurement.

Example:

> Defect density = 2 defects/KLOC.

## Quality Assessment

The broader evaluation process.

Example:

> The product has acceptable defect density but requires improvement in reliability.

Therefore:

```text id="tq0u0e"
Metrics
   ↓
Data
   ↓
Analysis
   ↓
Assessment
   ↓
Decision
```

---

# 26. Important Metric Examples

| Metric                | What It Measures                          |
| --------------------- | ----------------------------------------- |
| Defect Density        | Defects relative to software size         |
| Test Coverage         | Extent of software exercised by tests     |
| MTBF                  | Average time between failures             |
| MTTR                  | Average repair time                       |
| Availability          | Percentage/proportion of operational time |
| Response Time         | Speed of system response                  |
| Cyclomatic Complexity | Code/control-flow complexity              |
| Defect Leakage        | Defects escaping to later stages          |
| Failure Rate          | Frequency of failures                     |

---

# 27. Metrics Example

Suppose a software product has:

```text id="a7k7rh"
Software Size = 20 KLOC
Defects = 40
```

### Defect Density

```text id="9y8x7a"
40 / 20 = 2 defects/KLOC
```

Suppose:

```text id="3f2x7e"
Total Operating Time = 2,000 hours
Failures = 20
```

### MTBF

```text id="c0k2q4"
2000 / 20 = 100 hours
```

Suppose:

```text id="e9w8x4"
Total Repair Time = 40 hours
Failures = 20
```

### MTTR

```text id="v9r3d0"
40 / 20 = 2 hours
```

These measurements provide quantitative information for quality assessment.

---

# 28. Limitations of Metrics

Metrics are useful but should be interpreted carefully.

## 28.1 Metrics Need Context

A defect density of 2 defects/KLOC may be acceptable in one project but unacceptable in another.

---

## 28.2 Metrics Can Be Manipulated

If teams are rewarded only for reducing defect counts, they may under-report defects.

Therefore, metrics should be used carefully.

---

## 28.3 One Metric Is Not Enough

Software quality should be evaluated using multiple indicators.

```text id="5y2x7u"
Reliability
    +
Security
    +
Performance
    +
Usability
    +
Maintainability
    +
Defect Metrics
    ↓
Overall Quality Assessment
```

---

# 29. Exam-Oriented Answer Structure

## If asked: "What are the constraints of software product quality assessment?"

Write:

1. Define software quality assessment.
2. Explain why it is difficult.
3. Write 8–12 constraints.
4. Give examples where appropriate.
5. Draw a small summary diagram.
6. Conclude that no single metric can completely represent quality.

---

# 30. Quick Revision

## Software Quality Assessment

> **Systematic evaluation of software quality using requirements, characteristics, metrics, and evidence.**

## Software Metric

> **Quantitative measure of software, process, or project characteristics.**

## Product Metrics

Measure the software product.

Examples:

**Defect density, reliability, complexity, test coverage**

## Process Metrics

Measure development processes.

Examples:

**Defect removal efficiency, review effectiveness, cycle time**

## Project Metrics

Measure project performance.

Examples:

**Cost, effort, schedule, productivity**

---

# 31. Important Formulas

### Defect Density

```text id="0d2j5f"
Defect Density =
Number of Defects / KLOC
```

### MTBF

```text id="n2q9fz"
MTBF =
Total Operating Time / Number of Failures
```

### MTTR

```text id="q8m7r1"
MTTR =
Total Repair Time / Number of Repairs
```

### Availability

```text id="z7k4b5"
Availability =
MTBF / (MTBF + MTTR)
```

### Requirement Coverage

```text id="a3d2h8"
Requirement Coverage =
Requirements Tested / Total Requirements × 100
```

---

# 32. Most Important Exam Points

| Topic                                              |          Year | Priority |
| -------------------------------------------------- | ------------: | -------: |
| Constraints of Software Product Quality Assessment |          2022 |    ⭐⭐⭐⭐⭐ |
| Software Quality Assessment                        | No direct PYQ |     ⭐⭐⭐⭐ |
| Software Metrics                                   | No direct PYQ |     ⭐⭐⭐⭐ |
| Defect Density                                     | No direct PYQ |      ⭐⭐⭐ |
| Test Coverage                                      | No direct PYQ |      ⭐⭐⭐ |
| MTBF / MTTR                                        | No direct PYQ |      ⭐⭐⭐ |
| Quality Measurement Limitations                    | No direct PYQ |     ⭐⭐⭐⭐ |

---

# 33. One-Minute Revision

```text id="q2p8r9"
             SOFTWARE QUALITY
                    ↓
          QUALITY CHARACTERISTICS
                    ↓
             SELECT METRICS
                    ↓
              COLLECT DATA
                    ↓
               ANALYZE
                    ↓
              ASSESS QUALITY
                    ↓
          IDENTIFY QUALITY GAPS
                    ↓
             IMPROVEMENT
```

### ⭐ Golden Rules

> **Metric = Measurement.**

> **Assessment = Evaluation using measurements and evidence.**

> **Quality cannot usually be represented by one metric.**

> **Software quality is multidimensional and context-dependent.**

> **High test coverage does not guarantee defect-free software.**

> **MTBF measures average operating time between failures.**

> **MTTR measures average time required to repair failures.**

> **Defect density measures defects relative to software size.**
