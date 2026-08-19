# Test Efforts and Scheduling

## 1. Test Efforts

### Definition

**Test effort** is the amount of work, time, and resources required to perform software testing activities successfully.

It includes the effort required for:

* Test planning
* Test analysis
* Test design
* Test case preparation
* Test data preparation
* Environment setup
* Test execution
* Defect reporting
* Defect retesting
* Regression testing
* Test reporting
* Test closure

### Simple Definition

> **Test effort is the total work required to plan, prepare, execute, monitor, and complete testing.**

---

# 2. Test Effort Estimation

## Definition

**Test effort estimation** is the process of predicting how much time, work, cost, and resources will be required to complete testing.

Accurate estimation helps the Test Manager prepare:

* Testing schedule
* Resource requirements
* Budget
* Deadlines
* Team allocation

---

# 3. Components of Test Effort

```text id="n3x7q1"
                 Test Effort
                     |
       +-------------+-------------+
       |             |             |
    Planning      Design        Execution
       |             |             |
       +-------------+-------------+
                     |
             Defect Management
                     |
              Retesting/Regression
                     |
                Test Reporting
                     |
                 Test Closure
```

### 1. Test Planning Effort

Time required to:

* Analyse requirements
* Define scope
* Prepare test strategy
* Prepare test plan
* Estimate resources

### 2. Test Design Effort

Includes:

* Creating test scenarios
* Designing test cases
* Reviewing test cases
* Preparing test data

### 3. Test Environment Effort

Includes:

* Setting up environment
* Installing software
* Configuring servers
* Configuring databases
* Setting up devices and browsers

### 4. Test Execution Effort

Includes:

* Executing test cases
* Recording results
* Collecting evidence
* Reporting failures

### 5. Defect Management Effort

Includes:

* Reporting defects
* Reviewing defects
* Retesting fixes
* Performing regression testing

### 6. Test Closure Effort

Includes:

* Preparing test summary report
* Archiving test artifacts
* Collecting metrics
* Documenting lessons learned

---

# 4. Test Effort Estimation Techniques

## 1. Expert Judgment

Experienced testers or managers estimate the required effort based on previous experience.

### Advantages

* Simple
* Fast
* Useful when historical data is limited

### Limitation

* Subjective
* Depends on expert experience

---

## 2. Analogy-Based Estimation

Estimate the effort by comparing the current project with similar previous projects.

### Example

Previous project:

> 1,000 test cases required 500 tester-hours.

New project has approximately similar complexity and size.

The previous project can be used as a reference.

---

## 3. Work Breakdown Structure

Break testing work into smaller activities and estimate each activity separately.

```text id="t7k2m9"
Testing
  |
  +-- Planning
  |
  +-- Test Design
  |
  +-- Environment
  |
  +-- Execution
  |
  +-- Defect Testing
  |
  +-- Regression
  |
  +-- Reporting
```

The total estimated effort is the sum of individual activities.

---

## 4. Test Case-Based Estimation

Estimate effort based on the number and complexity of test cases.

For example:

* Simple test case = 10 minutes
* Medium test case = 20 minutes
* Complex test case = 40 minutes

Total effort can be estimated from the expected number of test cases.

---

## 5. Historical Data

Use data from previous projects to estimate:

* Test effort
* Productivity
* Defect rates
* Execution speed
* Regression effort

Historical data can improve estimation accuracy.

---

# 5. Factors Affecting Test Effort

Several factors influence the amount of testing effort required.

### 1. Application Size

Larger applications generally require more testing.

### 2. Application Complexity

Complex business logic increases test design and execution effort.

### 3. Number of Requirements

More requirements generally mean more testing conditions.

### 4. Requirement Quality

Unclear requirements increase rework and clarification effort.

### 5. Tester Experience

Experienced testers may complete tasks faster.

### 6. Automation

Automation can reduce repetitive execution effort.

### 7. Number of Test Environments

Testing across multiple environments increases effort.

### 8. Number of Supported Devices/Browsers

Testing on many platforms increases execution effort.

### 9. Defect Rate

More defects increase:

* Retesting
* Regression testing
* Communication
* Debugging coordination

### 10. Schedule Constraints

Short deadlines may require:

* Additional testers
* Automation
* Parallel testing
* Test prioritization

---

# 6. Test Efforts Biasing Factors

## Definition

**Test effort biasing factors** are factors that can cause the estimated testing effort to be higher or lower than the actual effort required.

These factors can introduce estimation errors.

### Major Biasing Factors

---

## 1. Requirement Complexity

Complex requirements require more test cases and more analysis.

**Effect:** Increases effort.

---

## 2. Requirement Volatility

Frequent requirement changes cause:

* Test case changes
* Rework
* Additional regression testing

**Effect:** Increases effort.

---

## 3. Tester Skill and Experience

Experienced testers may complete testing more efficiently.

**Effect:** Can reduce effort.

---

## 4. Application Complexity

Highly complex systems require more testing.

**Effect:** Increases effort.

---

## 5. Test Automation

Automation can reduce repetitive execution effort.

**Effect:** May reduce long-term execution effort but requires initial setup effort.

---

## 6. Test Environment Stability

An unstable environment can cause repeated test failures unrelated to the application.

**Effect:** Increases effort.

---

## 7. Test Data Availability

Missing or incorrect test data causes delays.

**Effect:** Increases effort.

---

## 8. Defect Density

A high number of defects results in additional:

* Retesting
* Regression testing
* Defect verification

**Effect:** Increases effort.

---

## 9. Tool Availability

Appropriate tools can improve productivity.

**Effect:** Can reduce effort.

---

## 10. Team Availability

If testers are unavailable or resources are insufficient, testing may take longer.

**Effect:** Increases schedule and effort.

---

## 11. Integration Complexity

Systems with many integrations require additional interface and integration testing.

**Effect:** Increases effort.

---

## 12. Regulatory Requirements

Highly regulated systems may require additional:

* Documentation
* Compliance testing
* Evidence
* Reviews

**Effect:** Increases effort.

---

# 7. Test Effort Biasing Factors Summary

| Factor                  | Typical Effect            |
| ----------------------- | ------------------------- |
| Large application       | Increase                  |
| High complexity         | Increase                  |
| Unclear requirements    | Increase                  |
| Frequent changes        | Increase                  |
| Experienced testers     | Decrease                  |
| Automation              | Decrease long-term effort |
| Stable environment      | Decrease                  |
| Poor test data          | Increase                  |
| High defect rate        | Increase                  |
| Good tools              | Decrease                  |
| Lack of testers         | Increase                  |
| Many integrations       | Increase                  |
| Compliance requirements | Increase                  |

---

# 8. Test Schedule

## Definition

A **Test Schedule** defines the planned timing and sequence of testing activities.

It specifies:

* What testing activity will be performed.
* When it will start.
* When it will finish.
* Who will perform it.
* Dependencies between activities.

### Example

| Activity           | Start  | End    |
| ------------------ | ------ | ------ |
| Test Planning      | Week 1 | Week 1 |
| Test Design        | Week 1 | Week 2 |
| Environment Setup  | Week 2 | Week 2 |
| Test Execution     | Week 3 | Week 4 |
| Regression Testing | Week 5 | Week 5 |
| Test Closure       | Week 6 | Week 6 |

---

# 9. Test Scheduling Process

### Step 1: Identify Testing Activities

List all activities:

* Planning
* Test design
* Environment setup
* Test execution
* Defect management
* Regression
* Reporting
* Closure

### Step 2: Estimate Effort

Estimate the amount of time/work required for each activity.

### Step 3: Identify Resources

Determine:

* Number of testers
* Skills
* Tools
* Environment requirements

### Step 4: Identify Dependencies

Some activities cannot start until others are completed.

Example:

```text id="k3m7q2"
Requirements
     ↓
Test Design
     ↓
Test Cases
     ↓
Build Available
     ↓
Test Execution
```

### Step 5: Assign Activities

Assign tasks to specific testers or teams.

### Step 6: Set Start and End Dates

Create the testing timeline.

### Step 7: Identify Milestones

Examples:

* Test plan approval
* Test case completion
* Environment readiness
* Test execution completion
* Regression completion
* Test closure

### Step 8: Monitor and Update

The schedule should be updated when:

* Requirements change.
* Build delivery is delayed.
* Testing takes longer than expected.
* Critical defects are discovered.
* Resources change.

---

# 10. Schedule Variance

## Definition

**Schedule Variance** measures the difference between planned progress/schedule and actual progress/schedule.

It helps determine whether testing is:

* Ahead of schedule
* On schedule
* Behind schedule

### Basic Concept

```text id="f5r9x2"
Schedule Variance
=
Actual Schedule/Progress
-
Planned Schedule/Progress
```

The exact formula can vary depending on the project scheduling method.

### Example

Suppose:

**Planned:**

> 80% testing completed by Friday.

**Actual:**

> 70% completed by Friday.

There is a **10 percentage-point negative schedule variance** relative to the plan.

This indicates that testing is behind schedule.

---

# 11. Schedule Variance Example

Suppose a test project has:

* Planned test cases = 1,000
* Planned execution by Week 2 = 600
* Actual execution = 500

### Planned Progress

```text id="y6q1w8"
600 / 1000 × 100 = 60%
```

### Actual Progress

```text id="z4p7m3"
500 / 1000 × 100 = 50%
```

### Variance

```text id="c9n2v5"
50% - 60% = -10 percentage points
```

Therefore, testing is **10 percentage points behind the planned progress**.

---

# 12. Causes of Schedule Variance

### Positive Variance / Ahead of Schedule

Possible reasons:

* Experienced testers
* Stable requirements
* Good automation
* Fewer defects
* Stable environment
* Additional resources

### Negative Variance / Behind Schedule

Possible reasons:

* Requirement changes
* Build delays
* Environment problems
* High defect rate
* Lack of testers
* Complex functionality
* Poor test data
* Underestimated effort

---

# 13. Controlling Schedule Variance

If testing falls behind schedule, the Test Manager can:

* Add testing resources.
* Prioritize high-risk test cases.
* Increase automation.
* Execute tests in parallel.
* Resolve environment issues.
* Coordinate faster defect resolution.
* Reduce unnecessary rework.
* Re-estimate remaining effort.
* Adjust the schedule when justified.

---

# 14. Relationship Between Effort and Schedule

**Effort** and **schedule** are related but different.

### Effort

Measures the amount of work required.

Example:

> 200 tester-hours.

### Schedule

Measures the calendar time required.

Example:

> 10 working days.

The same effort can be completed in different schedules depending on the number of people working.

### Example

```text id="m8k4p2"
200 tester-hours

1 tester  → approximately 25 working days
2 testers → approximately 12.5 working days
4 testers → approximately 6.25 working days
```

However, adding testers does not always reduce schedule proportionally because of communication, training, dependencies, and task parallelization limits.

---

# 15. Test Effort vs Test Schedule

| Test Effort                            | Test Schedule                               |
| -------------------------------------- | ------------------------------------------- |
| Amount of work required                | Calendar timeline                           |
| Measured in hours/days/person-days     | Measured using dates/weeks                  |
| Focuses on workload                    | Focuses on timing                           |
| Affected by complexity and test volume | Affected by effort, resources, dependencies |
| Example: 400 tester-hours              | Example: 4 weeks                            |

---

# 16. Example – Complete Test Planning

Suppose an application requires:

* 1,000 test cases
* 3 testers
* 20 working days
* Functional testing
* Regression testing

### Estimated Activities

```text id="q5w8n1"
Test Planning       → 2 days
Test Design         → 5 days
Environment Setup   → 2 days
Test Execution      → 8 days
Regression Testing  → 2 days
Test Closure        → 1 day
```

The Test Manager can then compare actual progress against this schedule.

If execution takes 12 days instead of 8 days, the Test Manager investigates the reason and takes corrective action.

---

# 17. Exam-Oriented Revision

## Test Effort

Remember:

**How much work is required?**

Includes:

* Planning
* Design
* Environment
* Execution
* Defect management
* Regression
* Reporting
* Closure

## Biasing Factors

Remember:

**Complexity + Requirements + People + Environment + Tools + Defects + Data**

## Schedule

Remember:

**What + Who + When + Dependencies**

## Schedule Variance

Remember:

**Actual − Planned**

Negative variance generally indicates that actual progress is behind the plan.

---

# PYQ Coverage

| Syllabus Concept              | PYQ    |
| ----------------------------- | ------ |
| Efforts and Schedule Variance | No PYQ |
| Test Efforts Biasing Factors  | No PYQ |

## Important Note

There is **no direct PYQ** listed for either concept, but both are syllabus topics and should be prepared.

### Possible Exam Questions

1. Define test effort.
2. Explain test effort estimation.
3. Explain factors affecting test effort.
4. What are test effort biasing factors?
5. Explain test scheduling.
6. What is schedule variance?
7. Differentiate test effort and test schedule.
8. Explain the relationship between test effort and schedule.
