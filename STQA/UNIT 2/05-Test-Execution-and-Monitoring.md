# Test Execution and Monitoring

## 1. Test Execution Schedule

### Definition

A **Test Execution Schedule** is a planned timeline that specifies **when, in what order, and for how long test activities will be performed**.

It helps the testing team coordinate test execution with development, deployment, defect fixing, and project milestones.

### Objectives

* Organize test execution.
* Allocate testing time effectively.
* Coordinate testers and resources.
* Track testing progress.
* Identify schedule delays.
* Ensure testing is completed within the project deadline.

### Typical Test Execution Schedule

```text id="x7n0tb"
Build Available
      ↓
Smoke Testing
      ↓
Functional Testing
      ↓
Integration Testing
      ↓
System Testing
      ↓
Defect Retesting
      ↓
Regression Testing
      ↓
Performance / Security Testing
      ↓
Test Closure
```

### Factors Affecting Test Execution Schedule

* Project deadline
* Application size
* Number of test cases
* Number of testers
* Test environment availability
* Build availability
* Defect fixing time
* Testing complexity
* Automation availability
* Dependencies between modules

---

# 2. Test Execution Process

### Step 1: Verify Test Readiness

Check that:

* Build is available.
* Test environment is ready.
* Test data is available.
* Test cases are approved.
* Required tools are available.

### Step 2: Execute Test Cases

Testers execute the planned test cases according to the schedule.

### Step 3: Record Results

Each test case is marked as:

* Pass
* Fail
* Blocked
* Not Executed

### Step 4: Report Defects

If actual behavior differs from expected behavior, a defect is reported.

### Step 5: Retest Fixed Defects

After the developer fixes the defect, the tester executes the relevant test again.

### Step 6: Perform Regression Testing

Check whether the fix has affected existing functionality.

### Step 7: Monitor Progress

Track:

* Execution percentage
* Pass/fail rate
* Defect status
* Coverage
* Schedule
* Testing effort

### Step 8: Complete Testing

Testing is completed when the defined exit criteria are satisfied.

---

# 3. Use Case Testing

## Definition

**Use Case Testing** is a black-box testing technique that derives test cases from use cases describing how users interact with a system to achieve a specific goal.

It focuses on testing complete user interactions and business flows.

### Example

For an ATM:

**Use Case: Withdraw Cash**

```text id="0t3k4c"
Insert Card
    ↓
Enter PIN
    ↓
Select Withdrawal
    ↓
Enter Amount
    ↓
Validate Account
    ↓
Dispense Cash
    ↓
Update Balance
    ↓
Print Receipt
    ↓
Return Card
```

The complete flow can be tested using use case testing.

---

# 4. Components of a Use Case

A use case generally contains:

* Use Case ID
* Use Case Name
* Actor
* Preconditions
* Main Flow
* Alternative Flow
* Exception Flow
* Postconditions

### Example

**Use Case:** User Login

**Actor:** Registered User

**Precondition:** User has a valid account.

**Main Flow:**

```text id="54m1ip"
Enter Username
      ↓
Enter Password
      ↓
Click Login
      ↓
Validate Credentials
      ↓
Display Dashboard
```

**Alternative Flow:**

Invalid password → Display error message.

**Postcondition:**

User is successfully authenticated.

---

# 5. Use Case Testing Process

```text id="vqtdtq"
Identify Use Cases
       ↓
Identify Actors
       ↓
Understand Main Flow
       ↓
Identify Alternative Flows
       ↓
Identify Exception Flows
       ↓
Create Test Cases
       ↓
Execute Test Cases
       ↓
Record Results
```

### Advantages

* Tests real user behavior.
* Covers complete business workflows.
* Helps identify missing requirements.
* Useful for functional testing.
* Provides realistic testing scenarios.
* Helps improve requirement coverage.

### Limitations

* Depends on quality of use cases.
* May not cover low-level technical issues.
* Complex applications may have many use cases.
* Non-functional requirements may need separate testing.

---

# PYQ – 2022, 2024

**Question:** Explain use case testing with one example.

### Detailed Answer

Use case testing is a black-box testing technique in which test cases are derived from the interactions between an actor and a system to achieve a specific goal.

It focuses on testing complete business workflows rather than individual program statements.

### Steps

1. Identify the use case.
2. Identify the actor.
3. Identify preconditions.
4. Identify the main success flow.
5. Identify alternative flows.
6. Identify exception flows.
7. Create test cases.
8. Execute the test cases.
9. Record and evaluate results.

### Example – ATM Cash Withdrawal

**Use Case:** Withdraw Cash

**Actor:** Bank Customer

**Precondition:** Customer has a valid ATM card and sufficient account balance.

### Main Flow

```text id="9a8d09"
Insert ATM Card
      ↓
Enter PIN
      ↓
Validate PIN
      ↓
Select Cash Withdrawal
      ↓
Enter Amount
      ↓
Check Balance
      ↓
Dispense Cash
      ↓
Update Account Balance
      ↓
Print Receipt
      ↓
Return Card
```

### Alternative / Exception Scenarios

1. Invalid PIN → Display error message.
2. Insufficient balance → Reject transaction.
3. Amount exceeds daily limit → Reject transaction.
4. ATM has insufficient cash → Inform customer.
5. User cancels transaction → Cancel transaction.
6. Invalid/expired card → Reject card.

### Conclusion

Use case testing verifies complete user workflows and ensures that the system behaves correctly under normal, alternative, and exceptional conditions.

---

# 6. Scenario Testing

## Definition

**Scenario Testing** is a testing technique in which realistic scenarios are created to verify how the system behaves under particular real-world conditions.

A scenario represents a situation or sequence of events that a user may encounter.

### Example – E-Commerce

**Scenario:**

> A customer logs into an e-commerce website, searches for a product, adds it to the cart, applies a coupon, makes payment, and tracks the order.

This entire business scenario can be tested from beginning to end.

---

# 7. Use Case Testing vs Scenario Testing

| Basis     | Use Case Testing                        | Scenario Testing                      |
| --------- | --------------------------------------- | ------------------------------------- |
| Focus     | Use cases and actor-system interactions | Real-world situations                 |
| Source    | Use case specifications                 | User/business scenarios               |
| Structure | Usually formally documented             | Can be more flexible                  |
| Coverage  | Main, alternative, exception flows      | Complete realistic situations         |
| Example   | Withdraw cash from ATM                  | Customer completes an ATM transaction |
| Purpose   | Validate specified use cases            | Validate realistic user behavior      |

### Simple Memory Trick

> **Use Case = What interaction is specified?**

> **Scenario = What realistic situation can happen?**

---

# 8. Test Monitoring

## Definition

**Test Monitoring** is the continuous process of collecting, measuring, and reviewing information about testing activities to determine whether testing is progressing according to the plan.

The Test Manager or Test Lead uses monitoring to compare **actual progress with planned progress**.

### What is Monitored?

* Test case execution
* Test case pass/fail rate
* Test coverage
* Defect count
* Defect severity
* Defect resolution
* Test effort
* Schedule
* Resource utilization
* Testing risks
* Environment availability

---

# 9. Test Control

## Definition

**Test Control** is the process of taking corrective or preventive actions when actual testing progress differs from the planned testing objectives.

### Example

Suppose the plan says:

> 80% of test cases should be executed by Friday.

Actual progress:

> Only 55% executed.

The Test Manager may:

* Add more testers.
* Prioritize critical test cases.
* Increase automation.
* Extend testing hours.
* Reduce low-risk testing.
* Adjust the testing schedule.

This is **test control**.

---

# 10. Test Monitoring vs Test Control

| Test Monitoring                           | Test Control                                |
| ----------------------------------------- | ------------------------------------------- |
| Collects and observes testing information | Takes corrective action                     |
| Measures actual progress                  | Changes the testing approach when necessary |
| Identifies deviations                     | Corrects deviations                         |
| Answers "What is happening?"              | Answers "What should we do about it?"       |
| Continuous measurement                    | Action based on monitoring                  |

### Relationship

```text id="8j4k9n"
Testing Plan
     ↓
Test Execution
     ↓
Test Monitoring
     ↓
Compare Actual vs Planned
     ↓
Deviation?
   /     \
 Yes      No
 ↓         ↓
Control    Continue
Action
 ↓
Updated Testing Approach
```

---

# 11. Test Monitoring Metrics

Important measurements include:

### 1. Test Execution Progress

Percentage of planned test cases executed.

**Formula:**

```text id="7w5y1j"
Test Execution %
=
Executed Test Cases
------------------- × 100
Planned Test Cases
```

### 2. Pass Percentage

```text id="iyk2m6"
Pass %
=
Passed Test Cases
----------------- × 100
Executed Test Cases
```

### 3. Fail Percentage

```text id="n4s9bq"
Fail %
=
Failed Test Cases
----------------- × 100
Executed Test Cases
```

### 4. Defect Count

Number of defects identified during testing.

### 5. Defect Closure

Measures how many reported defects have been resolved.

### 6. Test Coverage

Measures how much of the specified functionality or requirements has been tested.

---

# 12. Example of Test Monitoring

Suppose a project has:

* Planned test cases = 500
* Executed = 400
* Passed = 360
* Failed = 40

### Execution Percentage

```text id="u3h1k2"
400 / 500 × 100 = 80%
```

### Pass Percentage

```text id="s9i5qn"
360 / 400 × 100 = 90%
```

### Fail Percentage

```text id="5l4c5w"
40 / 400 × 100 = 10%
```

The Test Manager can use these metrics to determine whether testing is progressing as planned.

---

# 13. Test Monitoring and Control Cycle

```text id="v3tr2g"
        Test Plan
           ↓
      Test Execution
           ↓
       Monitoring
           ↓
    Collect Metrics
           ↓
 Compare With Plan
           ↓
      Identify Gap
           ↓
      Take Action
           ↓
    Continue Testing
```

---

# 14. Example – E-Commerce Project

Suppose an e-commerce application has 1,000 test cases.

The testing plan requires:

> 500 test cases to be completed by the end of Week 1.

Actual execution:

> 350 test cases completed.

### Monitoring

The Test Manager identifies that only 70% of the planned execution has been achieved.

### Possible Causes

* Test environment was unavailable.
* Too many defects blocked testing.
* Test data was not ready.
* Fewer testers were available.
* Test cases were more complex than expected.

### Control Actions

The Test Manager may:

* Add additional testers.
* Fix environment problems.
* Prioritize critical test cases.
* Automate repetitive tests.
* Coordinate with developers for faster defect resolution.
* Revise the schedule if necessary.

---

# 15. Exam-Oriented Points

## Test Execution

Remember:

**Prepare → Execute → Record → Report → Retest → Regression**

## Use Case Testing

Remember:

**Actor + Use Case + Main Flow + Alternative Flow + Exception Flow**

## Scenario Testing

Remember:

**Realistic User Situation → Execute Complete Flow → Verify Expected Behavior**

## Test Monitoring

Remember:

**Measure → Compare → Identify Deviation**

## Test Control

Remember:

**Identify Problem → Take Corrective Action → Continue Testing**

---

# PYQ Coverage

| Syllabus Concept          | PYQ                                                       |
| ------------------------- | --------------------------------------------------------- |
| Test Execution Schedule   | No PYQ                                                    |
| Use Case Testing          | **2022, 2024:** Explain use case testing with one example |
| Scenario Testing          | No PYQ directly                                           |
| Test Monitoring & Control | No PYQ directly                                           |

## Important Question

### 2022, 2024

**Explain use case testing with one example.**

### No Direct PYQ

* Explain Test Execution Schedule.
* Explain Scenario Testing.
* Explain Test Monitoring and Control.
