# Test Plan and Test Cases

## 1. Test Plan – Purpose & Contents

### Definition

A **Test Plan** is a formal document that describes the scope, objectives, approach, resources, schedule, responsibilities, risks, and activities involved in testing a software product.

It acts as a **roadmap for the testing team**.

### Purpose of a Test Plan

The main purposes are:

* Define testing objectives.
* Define the scope of testing.
* Identify what will and will not be tested.
* Define testing approach and methodology.
* Allocate testing resources.
* Define roles and responsibilities.
* Establish testing schedule.
* Identify testing environment requirements.
* Define entry and exit criteria.
* Identify testing risks.
* Define testing deliverables.
* Provide a basis for monitoring and controlling testing.

---

## Contents of a Test Plan

### 1. Test Plan Identifier

Unique name or identifier of the test plan.

**Example:**

```text
TP-ECOM-001
```

### 2. Introduction

Provides a brief description of:

* Project
* Product
* Purpose of testing

### 3. Test Objectives

Defines what testing should achieve.

Examples:

* Verify functional requirements.
* Identify defects.
* Validate performance.
* Ensure reliability.

### 4. Scope

Defines the features and functionalities that will be tested.

It also identifies items that are outside the testing scope.

### 5. Test Strategy / Approach

Defines how testing will be performed.

It may include:

* Manual testing
* Automation testing
* Functional testing
* Regression testing
* Performance testing
* Security testing

### 6. Testing Levels

Defines applicable testing levels:

* Unit Testing
* Integration Testing
* System Testing
* Acceptance Testing

### 7. Test Environment

Defines the environment required for testing.

Examples:

* Operating system
* Browser
* Database
* Server
* Network
* Hardware

### 8. Test Data

Defines the data required to execute test cases.

### 9. Roles and Responsibilities

Defines who is responsible for:

* Test planning
* Test design
* Test execution
* Defect management
* Reporting

### 10. Test Schedule

Defines:

* Start date
* End date
* Milestones
* Testing phases
* Deadlines

### 11. Entry Criteria

Conditions that must be satisfied before testing begins.

Examples:

* Build is available.
* Test environment is ready.
* Requirements are approved.
* Test data is available.

### 12. Exit Criteria

Conditions that must be satisfied before testing is completed.

Examples:

* Planned test cases are executed.
* Required coverage is achieved.
* Critical defects are resolved.
* Testing objectives are satisfied.

### 13. Risks and Mitigation

Identifies possible testing risks and corresponding solutions.

| Risk                         | Mitigation                    |
| ---------------------------- | ----------------------------- |
| Test environment unavailable | Prepare backup environment    |
| Lack of testers              | Allocate additional resources |
| Requirements change          | Update test cases             |
| Limited time                 | Prioritize high-risk tests    |

### 14. Test Deliverables

Examples:

* Test plan
* Test cases
* Test data
* Defect reports
* Test execution reports
* Test summary report

---

# 2. Test Plan Development Process

## Definition

Test plan development is the systematic process of preparing a test plan based on project requirements, scope, risks, resources, and quality objectives.

## Steps

### Step 1: Analyse Requirements

Study:

* Functional requirements
* Non-functional requirements
* Business requirements
* Technical requirements

The tester identifies what needs to be tested.

### Step 2: Define Test Objectives

Specify the goals of testing.

For example:

> Verify that all major e-commerce functions operate correctly and meet the specified requirements.

### Step 3: Define Test Scope

Identify:

**In Scope**

* Login
* Product search
* Cart
* Payment

**Out of Scope**

* Third-party payment gateway internal implementation

### Step 4: Define Test Strategy

Determine:

* Testing types
* Testing levels
* Test techniques
* Automation approach
* Tools

### Step 5: Identify Resources

Determine:

* Number of testers
* Required skills
* Hardware
* Software
* Testing tools

### Step 6: Prepare Test Schedule

Define:

* Testing start date
* Testing end date
* Milestones
* Test execution periods
* Regression testing period

### Step 7: Define Test Environment

Specify:

* Operating systems
* Browsers
* Databases
* Servers
* Networks
* Devices

### Step 8: Define Entry and Exit Criteria

Establish conditions for starting and completing testing.

### Step 9: Identify Risks

Identify risks that may affect:

* Quality
* Schedule
* Cost
* Resources
* Test execution

### Step 10: Define Deliverables

Identify documents and outputs that must be produced.

### Step 11: Review Test Plan

The Test Manager, Project Manager, developers, and other stakeholders review the plan.

### Step 12: Approve and Baseline

After approval, the test plan becomes the baseline document for testing.

---

## Test Plan Development Flow

```text
Requirement Analysis
        ↓
Define Objectives
        ↓
Define Scope
        ↓
Define Test Strategy
        ↓
Identify Resources
        ↓
Prepare Schedule
        ↓
Define Environment
        ↓
Define Entry/Exit Criteria
        ↓
Identify Risks
        ↓
Define Deliverables
        ↓
Review
        ↓
Approval
        ↓
Test Plan
```

---

## PYQ – 2025

**Question:** Explain test plan development process.

### Detailed Answer

The test plan development process is a systematic procedure used to prepare a detailed plan for software testing.

The major steps are:

1. **Requirement Analysis:** Study functional, non-functional, business, and technical requirements.
2. **Define Test Objectives:** Establish what testing needs to achieve.
3. **Define Scope:** Identify features that are in scope and out of scope.
4. **Define Test Strategy:** Select testing levels, types, techniques, tools, and automation approach.
5. **Identify Resources:** Determine testers, tools, hardware, software, and other resources.
6. **Prepare Schedule:** Define testing phases, milestones, start dates, and completion dates.
7. **Define Test Environment:** Specify required operating systems, browsers, databases, servers, and networks.
8. **Define Entry and Exit Criteria:** Specify conditions for starting and completing testing.
9. **Identify Risks:** Identify possible risks and define mitigation measures.
10. **Define Deliverables:** Specify test cases, test reports, defect reports, and other testing documents.
11. **Review:** Have stakeholders review the test plan.
12. **Approval:** Obtain approval and baseline the test plan.

### Conclusion

A properly developed test plan provides a clear roadmap for testing and helps the testing team control scope, resources, schedule, risks, and quality.

---

# 3. Test Cases

## Definition

A **Test Case** is a documented set of preconditions, inputs, actions, and expected results used to verify a specific functionality of a software application.

### Purpose of Test Cases

* Verify requirements.
* Detect defects.
* Provide repeatable testing.
* Ensure test coverage.
* Maintain testing consistency.
* Provide testing evidence.
* Support regression testing.

---

# Components of a Test Case

A typical test case contains:

| Field           | Description                          |
| --------------- | ------------------------------------ |
| Test Case ID    | Unique identifier                    |
| Test Case Title | Short description                    |
| Requirement ID  | Related requirement                  |
| Preconditions   | Conditions required before execution |
| Test Data       | Input data                           |
| Test Steps      | Actions to perform                   |
| Expected Result | Expected system behavior             |
| Actual Result   | Actual system behavior               |
| Status          | Pass/Fail/Blocked                    |
| Priority        | Importance of test                   |
| Remarks         | Additional information               |

---

# Example Test Case Format

| Test Case ID    | TC-LOGIN-001                                  |
| --------------- | --------------------------------------------- |
| Title           | Login with valid credentials                  |
| Preconditions   | User is registered                            |
| Test Data       | Valid username and password                   |
| Steps           | Enter username → Enter password → Click Login |
| Expected Result | User successfully logs in                     |
| Actual Result   | User successfully logs in                     |
| Status          | Pass                                          |

---

# 4. Test Cases for Login Validation

## Login Test Scenarios

A login page should be tested with:

* Valid username and password.
* Invalid username.
* Invalid password.
* Both username and password invalid.
* Empty username.
* Empty password.
* Both fields empty.
* Password masking.
* Account lockout.
* Case sensitivity.
* Forgot password.
* SQL injection attempts.
* Session handling.

---

## PYQ – 2022

**Question:** Write test cases for login validation.

### Detailed Answer

The following test cases can be used to validate a login functionality.

| TC ID | Test Condition              | Test Data                           | Expected Result                        |
| ----- | --------------------------- | ----------------------------------- | -------------------------------------- |
| TC01  | Valid username and password | Valid credentials                   | User logs in successfully              |
| TC02  | Invalid username            | Invalid username + valid password   | Error message displayed                |
| TC03  | Invalid password            | Valid username + invalid password   | Error message displayed                |
| TC04  | Both invalid                | Invalid username + invalid password | Login fails                            |
| TC05  | Empty username              | Blank username + valid password     | Validation message displayed           |
| TC06  | Empty password              | Valid username + blank password     | Validation message displayed           |
| TC07  | Both fields empty           | Blank username + blank password     | Required-field messages displayed      |
| TC08  | Password masking            | Enter password                      | Password is hidden/masked              |
| TC09  | Case sensitivity            | Different username/password case    | System follows defined case rules      |
| TC10  | Account lockout             | Multiple incorrect passwords        | Account is locked according to policy  |
| TC11  | Forgot password             | Registered email                    | Password recovery process starts       |
| TC12  | Session creation            | Valid credentials                   | Valid authenticated session is created |
| TC13  | SQL injection input         | Malicious input                     | Input is rejected/safely handled       |
| TC14  | Logout after login          | Valid login → Logout                | User session is terminated             |

### Conclusion

Login validation should cover positive, negative, boundary, security, validation, and session-related scenarios.

---

# 5. Test Case for Bank ATM

## ATM Functionalities

An ATM generally provides:

* Card insertion
* PIN validation
* Balance enquiry
* Cash withdrawal
* Cash deposit
* Fund transfer
* Mini statement
* PIN change
* Receipt generation
* Card ejection

---

## PYQ – 2025

**Question:** Write test case for Bank ATM.

### Detailed Answer

| TC ID | Test Scenario              | Test Steps / Input                                   | Expected Result                                                      |
| ----- | -------------------------- | ---------------------------------------------------- | -------------------------------------------------------------------- |
| ATM01 | Valid card insertion       | Insert valid ATM card                                | Card is accepted                                                     |
| ATM02 | Invalid card               | Insert invalid/expired card                          | Card is rejected                                                     |
| ATM03 | Valid PIN                  | Enter correct PIN                                    | User is authenticated                                                |
| ATM04 | Invalid PIN                | Enter incorrect PIN                                  | Error message displayed                                              |
| ATM05 | Multiple invalid PINs      | Enter wrong PIN repeatedly                           | Card/account is blocked according to policy                          |
| ATM06 | Balance enquiry            | Select Balance Enquiry                               | Correct balance is displayed                                         |
| ATM07 | Valid withdrawal           | Enter valid withdrawal amount                        | Cash is dispensed and balance updated                                |
| ATM08 | Insufficient balance       | Request amount greater than balance                  | Transaction is rejected                                              |
| ATM09 | Invalid withdrawal amount  | Enter unsupported amount                             | Appropriate validation message displayed                             |
| ATM10 | Daily withdrawal limit     | Withdraw amount above daily limit                    | Transaction is rejected                                              |
| ATM11 | ATM has insufficient cash  | Request available account balance but ATM lacks cash | Transaction is rejected/informed appropriately                       |
| ATM12 | Cancel transaction         | Press Cancel                                         | Transaction is cancelled                                             |
| ATM13 | Receipt generation         | Complete transaction and request receipt             | Receipt is generated                                                 |
| ATM14 | Card ejection              | Complete/cancel transaction                          | Card is returned                                                     |
| ATM15 | Session timeout            | Remain inactive                                      | Session terminates securely                                          |
| ATM16 | Cash dispensing failure    | Withdrawal with dispenser failure                    | Transaction is handled safely and account is not incorrectly debited |
| ATM17 | Logout/session termination | Complete transaction                                 | Session ends and next user cannot access previous session            |

---

# 6. Good Test Case Characteristics

A good test case should be:

### 1. Clear

Steps should be easy to understand.

### 2. Specific

Each test case should test a particular condition or behavior.

### 3. Repeatable

Different testers should obtain consistent results.

### 4. Traceable

It should be linked to a requirement.

### 5. Measurable

Expected results should be clearly defined.

### 6. Independent

Where possible, test cases should not unnecessarily depend on one another.

### 7. Maintainable

Test cases should be easy to update when requirements change.

---

# 7. Positive and Negative Test Cases

## Positive Testing

Checks whether the system works correctly with valid inputs.

**Example:**

```text
Valid Username
       +
Valid Password
       ↓
Successful Login
```

## Negative Testing

Checks how the system behaves with invalid or unexpected inputs.

**Example:**

```text
Invalid Password
       ↓
Login Rejected
       ↓
Error Message
```

Both types are important for complete test coverage.

---

# 8. Test Case vs Test Scenario

| Test Scenario                | Test Case                             |
| ---------------------------- | ------------------------------------- |
| High-level testing condition | Detailed testing procedure            |
| Describes what to test       | Describes how to test                 |
| Less detailed                | More detailed                         |
| Usually broader              | Usually specific                      |
| Example: Test Login          | Example: Login with valid credentials |

### Example

**Scenario:**

> Verify login functionality.

**Test Case:**

> Enter valid username → Enter valid password → Click Login → Verify user is redirected to dashboard.

---

# 9. Test Plan vs Test Case

| Test Plan                                  | Test Case                                |
| ------------------------------------------ | ---------------------------------------- |
| High-level testing document                | Detailed testing document                |
| Defines overall testing activities         | Defines a specific test                  |
| Contains scope, schedule, resources, risks | Contains steps, inputs, expected results |
| Created during test planning               | Created during test design               |
| Guides testing activities                  | Used during test execution               |
| Covers the project/testing effort          | Covers a particular condition            |

---

# 10. Exam-Oriented Revision

### Test Plan

Remember:

**Scope + Objective + Strategy + Resources + Schedule + Environment + Criteria + Risks + Deliverables**

### Test Plan Development

Remember:

**Requirements → Objectives → Scope → Strategy → Resources → Schedule → Environment → Criteria → Risks → Deliverables → Review → Approval**

### Test Case

Remember:

**ID → Preconditions → Data → Steps → Expected Result → Actual Result → Status**

---

# PYQ Coverage

| Syllabus Concept               | PYQ                                             |
| ------------------------------ | ----------------------------------------------- |
| Test Plan – Purpose & Contents | No direct PYQ                                   |
| Test Plan Development Process  | **2025:** Explain test plan development process |
| Test Cases                     | **2022:** Write test cases for login validation |
| Test Cases                     | **2025:** Write test case for Bank ATM          |

## Important Questions

### 2025

**Explain test plan development process.**

### 2022

**Write test cases for login validation.**

### 2025

**Write test case for Bank ATM.**

### No Direct PYQ

**Explain the purpose and contents of a test plan.**
