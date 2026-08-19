# Test Data and Test Criteria

## 1. Test Data

### Definition

**Test Data** is the set of input values, files, records, configurations, or other information used to execute test cases and verify the behavior of a software application.

Test data can be **valid, invalid, boundary, normal, abnormal, or specially created** depending on the testing objective.

### Example

For a login system:

```text
Username: yash123
Password: Test@123
```

This is test data used to verify the login functionality.

---

## Purpose of Test Data

Test data is required to:

* Execute test cases.
* Verify expected system behavior.
* Test positive scenarios.
* Test negative scenarios.
* Test boundary conditions.
* Test error handling.
* Test security.
* Validate business rules.
* Perform regression testing.
* Achieve adequate test coverage.

---

# 2. Types of Test Data

## 1. Valid Test Data

Data that satisfies the application's requirements.

**Example:**

```text
Age = 25
```

If the system accepts ages from 18 to 60, 25 is valid test data.

---

## 2. Invalid Test Data

Data that violates specified requirements.

**Example:**

```text
Age = 15
```

If the minimum allowed age is 18, this is invalid.

---

## 3. Boundary Test Data

Data at or around the limits of an accepted range.

If the valid range is:

```text
18 to 60
```

Useful boundary values are:

```text
17 → Invalid
18 → Valid
19 → Valid
59 → Valid
60 → Valid
61 → Invalid
```

---

## 4. Normal Test Data

Represents typical values expected during normal system usage.

**Example:**

```text
Quantity = 5
```

---

## 5. Abnormal Test Data

Represents unusual or unexpected input.

Examples:

* Extremely large values
* Special characters
* Unexpected formats
* Unsupported values

---

## 6. Null or Empty Data

Used to verify how the application handles missing input.

**Example:**

```text
Username = ""
Password = ""
```

Expected result:

> Appropriate validation messages should be displayed.

---

## 7. Duplicate Test Data

Used to verify how the system handles duplicate records.

**Example:**

Registering two users using the same email address.

---

## 8. Production-Like Test Data

Data that closely resembles real-world data while being safe for testing.

Example:

```text
Customer Name: Rahul Sharma
Account Type: Savings
Balance: ₹50,000
```

---

# 3. Characteristics of Good Test Data

Good test data should be:

* Relevant to requirements.
* Accurate.
* Complete.
* Consistent.
* Reusable where appropriate.
* Secure.
* Representative of real-world conditions.
* Easy to maintain.
* Suitable for the intended test scenario.

---

# 4. Test Data Preparation Process

```text
Analyse Requirements
        ↓
Identify Test Conditions
        ↓
Identify Required Data
        ↓
Create / Collect Data
        ↓
Validate Data
        ↓
Prepare Test Environment
        ↓
Execute Tests
        ↓
Maintain / Refresh Data
```

### Step 1: Analyse Requirements

Understand the data requirements of the application.

### Step 2: Identify Test Conditions

Determine what inputs are required for positive, negative, boundary, and other tests.

### Step 3: Create or Collect Data

Data may be:

* Manually created
* Generated automatically
* Extracted from a test database
* Created using scripts

### Step 4: Validate Data

Ensure that the data is correct and suitable for testing.

### Step 5: Load Data

Insert or configure the data in the test environment.

### Step 6: Execute Tests

Use the prepared data during test execution.

### Step 7: Maintain Data

Reset, refresh, or update data when required.

---

# 5. Test Data Example – Banking Application

Suppose a banking application allows withdrawals between ₹100 and ₹50,000.

### Test Data

| Type                |   Value | Expected |
| ------------------- | ------: | -------- |
| Valid               |    ₹500 | Accepted |
| Valid               | ₹10,000 | Accepted |
| Lower boundary      |    ₹100 | Accepted |
| Just below boundary |     ₹99 | Rejected |
| Upper boundary      | ₹50,000 | Accepted |
| Above boundary      | ₹50,001 | Rejected |
| Zero                |      ₹0 | Rejected |
| Negative            |   -₹500 | Rejected |
| Non-numeric         |     ABC | Rejected |

This demonstrates how different types of test data can be used to test a single requirement.

---

# 6. Entry Criteria

## Definition

**Entry Criteria** are the predefined conditions that must be satisfied before a particular testing activity can begin.

They answer:

> **"Are we ready to start testing?"**

### Examples of Entry Criteria

* Requirements are available and approved.
* Test plan is approved.
* Test cases are prepared.
* Test environment is ready.
* Required software build is available.
* Test data is available.
* Required tools are configured.
* Test resources are available.
* Major blocking issues are resolved.
* Dependencies are available.

---

# 7. Importance of Entry Criteria

Entry criteria help to:

* Prevent premature testing.
* Ensure test readiness.
* Avoid wasting testing resources.
* Reduce test execution failures caused by missing prerequisites.
* Improve testing efficiency.
* Establish a clear starting point.

---

# 8. Example of Entry Criteria

For testing an online banking application:

Before system testing starts:

```text
✓ Requirements approved
✓ Test plan approved
✓ Test cases prepared
✓ Test environment ready
✓ Database available
✓ Test data available
✓ Application build deployed
✓ Testers assigned
✓ Critical environment issues resolved
```

Only after these conditions are satisfied should system testing begin.

---

# 9. Exit Criteria

## Definition

**Exit Criteria** are predefined conditions that must be satisfied before a testing activity or testing phase can be considered complete.

They answer:

> **"Are we ready to stop testing?"**

### Examples of Exit Criteria

* Planned test cases have been executed.
* Required test coverage has been achieved.
* Critical and high-severity defects are resolved or accepted.
* Required pass percentage is achieved.
* No unacceptable blocking defects remain.
* Test objectives have been achieved.
* Test reports are completed.
* Stakeholders approve testing completion.

---

# 10. Importance of Exit Criteria

Exit criteria help to:

* Prevent premature test closure.
* Provide an objective basis for stopping testing.
* Ensure required testing has been completed.
* Control project risks.
* Support release decisions.
* Improve quality assurance.

---

# 11. Example of Exit Criteria

For an e-commerce application:

```text
✓ 95% of planned test cases executed
✓ 98% pass rate achieved
✓ All critical defects fixed
✓ No unresolved release-blocking defects
✓ Regression testing completed
✓ Required test coverage achieved
✓ Test summary report prepared
✓ Test Manager approves closure
```

Once these conditions are satisfied, testing can be formally closed.

---

# 12. Entry Criteria vs Exit Criteria

| Basis         | Entry Criteria                       | Exit Criteria                                |
| ------------- | ------------------------------------ | -------------------------------------------- |
| Meaning       | Conditions required to start testing | Conditions required to finish testing        |
| Main Question | Are we ready to start?               | Are we ready to stop?                        |
| Applied       | Before testing                       | During/at the end of testing                 |
| Purpose       | Ensure readiness                     | Ensure completion                            |
| Examples      | Build available, environment ready   | Coverage achieved, critical defects resolved |
| Prevents      | Premature testing                    | Premature test closure                       |

### Easy Memory Trick

> **Entry = Enter testing**

> **Exit = Exit testing**

---

# 13. Entry and Exit Criteria Relationship

```text
              ENTRY CRITERIA
                    ↓
             Testing Starts
                    ↓
             Test Execution
                    ↓
          Monitoring & Control
                    ↓
             Test Evaluation
                    ↓
               EXIT CRITERIA
                    ↓
             Testing Ends
```

---

# 14. Entry and Exit Criteria at Different Levels

Entry and exit criteria may be defined for different testing levels.

### Unit Testing

**Entry:**

* Code is implemented.
* Unit test environment is available.

**Exit:**

* Unit tests executed.
* Required coverage achieved.
* Critical unit defects resolved.

### Integration Testing

**Entry:**

* Individual modules are tested.
* Modules are integrated.
* Integration environment is ready.

**Exit:**

* Integration scenarios executed.
* Integration defects addressed.
* Required integration coverage achieved.

### System Testing

**Entry:**

* Stable build available.
* Test environment ready.
* System test cases prepared.

**Exit:**

* Planned system tests completed.
* Required coverage achieved.
* Critical defects resolved.

### Acceptance Testing

**Entry:**

* System testing completed.
* Acceptance environment available.
* Acceptance criteria defined.

**Exit:**

* Acceptance tests completed.
* Business requirements satisfied.
* Customer/business approval received.

---

# 15. Difference Between Entry Criteria and Preconditions

These concepts are related but not identical.

### Entry Criteria

Conditions required before a **testing phase/activity** starts.

**Example:**

> Application build must be deployed before system testing starts.

### Preconditions

Conditions required before executing a **specific test case**.

**Example:**

> User must already be registered before executing the login test case.

### Difference

| Entry Criteria                       | Preconditions                                    |
| ------------------------------------ | ------------------------------------------------ |
| Applies to testing phase/activity    | Applies to individual test case                  |
| Broader                              | More specific                                    |
| Determines whether testing can begin | Determines whether a particular test can execute |

---

# 16. PYQ – 2022, 2023, 2024

**Question:** What are the entry & exit criteria of testing?

### Detailed Answer

**Entry criteria** are predefined conditions that must be satisfied before testing begins, whereas **exit criteria** are predefined conditions that must be satisfied before testing can be considered complete.

### Entry Criteria

Typical entry criteria include:

1. Requirements are approved and available.
2. Test plan is completed and approved.
3. Test cases are prepared.
4. Test environment is ready.
5. Required application build is available.
6. Test data is available.
7. Required testing tools are configured.
8. Test resources are available.
9. Major blocking issues are resolved.

### Exit Criteria

Typical exit criteria include:

1. Planned test cases have been executed.
2. Required test coverage is achieved.
3. Required pass percentage is achieved.
4. Critical defects are resolved.
5. No unacceptable release-blocking defects remain.
6. Regression testing is completed.
7. Test objectives are achieved.
8. Test summary report is prepared.
9. Testing is approved for closure.

### Comparison

| Entry Criteria                        | Exit Criteria                                |
| ------------------------------------- | -------------------------------------------- |
| Required to start testing             | Required to finish testing                   |
| Ensures readiness                     | Ensures completion                           |
| Build and environment should be ready | Required tests should be completed           |
| Test data should be available         | Required coverage should be achieved         |
| Test resources should be available    | Critical defects should be resolved/accepted |

### Example

For an online shopping application:

**Entry:**

* Application build deployed.
* Test environment ready.
* Test cases available.
* Test data available.

**Exit:**

* All critical test cases executed.
* Required coverage achieved.
* Critical defects resolved.
* Test summary report completed.

### Conclusion

Entry and exit criteria provide objective checkpoints for controlling the testing process. Entry criteria prevent testing from starting before the necessary conditions are available, while exit criteria prevent testing from being stopped prematurely.

---

# 17. Exam-Oriented Revision

## Test Data

Remember:

**Input → Execute → Verify**

Types:

**Valid + Invalid + Boundary + Normal + Abnormal + Null + Duplicate**

## Entry Criteria

Remember:

**Ready to START**

Main points:

* Requirements ready
* Build available
* Environment ready
* Test cases ready
* Test data ready
* Resources available

## Exit Criteria

Remember:

**Ready to STOP**

Main points:

* Tests completed
* Coverage achieved
* Required pass rate achieved
* Critical defects resolved/accepted
* Objectives achieved
* Reports completed

---

# PYQ Coverage

| Syllabus Concept | PYQ                                                                  |
| ---------------- | -------------------------------------------------------------------- |
| Test Data        | No direct PYQ                                                        |
| Entry Criteria   | **2022, 2023, 2024:** What are the entry & exit criteria of testing? |
| Exit Criteria    | **2022, 2023, 2024:** What are the entry & exit criteria of testing? |

## Important Question

### 2022, 2023, 2024

**What are the entry & exit criteria of testing?**

### No Direct PYQ

**Explain Test Data and its types.**
