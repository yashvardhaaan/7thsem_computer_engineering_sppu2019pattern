# Test Planning and Test Strategy

## 1. Test Planning – Artifacts

### Concept

**Test artifacts** are documents and work products created, maintained, and used during the software testing process. They provide information about what will be tested, how testing will be performed, what data will be used, and the results obtained.

### Types of Test Artifacts

#### 1. Test Plan

Defines the overall scope, objectives, resources, schedule, responsibilities, and approach for testing.

**Contains:**

* Test objectives
* Scope of testing
* Testing approach
* Resources and responsibilities
* Test environment
* Schedule
* Entry and exit criteria
* Risks and mitigation

#### 2. Test Strategy

Defines the high-level approach and methodology that will be followed for testing.

It describes:

* Testing objectives
* Testing levels
* Testing types
* Test techniques
* Automation approach
* Tools
* Risk-based testing approach

#### 3. Test Scenarios

High-level conditions or functionalities that need to be tested.

**Example:**
For an online banking system:

* Login
* Fund transfer
* Balance enquiry
* Logout

#### 4. Test Cases

Detailed steps used to verify a particular functionality.

A test case generally contains:

* Test Case ID
* Test Case Description
* Preconditions
* Test Steps
* Test Data
* Expected Result
* Actual Result
* Pass/Fail Status

#### 5. Test Data

Data required for executing test cases.

**Example:**
For login testing:

* Valid username/password
* Invalid username/password
* Empty username
* Empty password

#### 6. Test Scripts

Automated or manual scripts containing instructions for executing test cases.

#### 7. Defect/Bug Reports

Documents used to record defects found during testing.

Typical information:

* Defect ID
* Description
* Steps to reproduce
* Severity
* Priority
* Environment
* Status
* Assigned developer

#### 8. Test Execution Results

Records showing the outcome of executed test cases.

Examples:

* Passed
* Failed
* Blocked
* Not Executed

#### 9. Test Summary Report

Final document summarizing testing activities and results.

It may contain:

* Tests executed
* Tests passed/failed
* Defects identified
* Defects resolved
* Test coverage
* Risks
* Overall quality assessment

### Exam-Oriented Points

* Test artifacts provide evidence and documentation of testing activities.
* They improve traceability and communication.
* Different artifacts are produced at different stages of testing.
* Test plans and strategies define how testing will be performed.
* Test cases and test data support actual test execution.
* Defect reports record problems discovered during testing.
* Test summary reports communicate the final testing status.

### PYQ – 2023

**Question:** Explain types of test Artifacts.

### Detailed Answer

Test artifacts are documents and work products generated during the software testing life cycle. They help testers plan, execute, monitor, and report testing activities.

The major types of test artifacts are:

1. **Test Plan:** Defines testing scope, objectives, resources, schedule, responsibilities, risks, and approach.
2. **Test Strategy:** Defines the high-level testing methodology, techniques, tools, and testing levels.
3. **Test Scenarios:** Identify high-level functionalities or conditions that must be tested.
4. **Test Cases:** Provide detailed steps, test data, expected results, and execution conditions.
5. **Test Data:** Contains input data required for executing test cases.
6. **Test Scripts:** Provide instructions for automated or manual test execution.
7. **Defect Reports:** Record defects found during testing along with their severity, priority, and reproduction steps.
8. **Test Execution Results:** Record whether test cases passed, failed, or were blocked.
9. **Test Summary Report:** Provides the overall testing status, defect information, coverage, risks, and quality assessment.

**Conclusion:** Test artifacts ensure that testing is properly planned, documented, traceable, and measurable throughout the testing life cycle.

---

# 2. Test Planning – Strategy

## Concept

Test planning strategy defines **how testing will be organized and performed** for a particular software project.

It converts testing objectives into a practical approach.

### Major Elements of Test Planning Strategy

1. **Testing Scope**

   * Defines what will and will not be tested.

2. **Testing Objectives**

   * Defines what testing should achieve.

3. **Testing Levels**

   * Unit Testing
   * Integration Testing
   * System Testing
   * Acceptance Testing

4. **Testing Types**

   * Functional Testing
   * Performance Testing
   * Security Testing
   * Usability Testing
   * Regression Testing

5. **Test Techniques**

   * Equivalence Partitioning
   * Boundary Value Analysis
   * Decision Table Testing
   * State Transition Testing
   * Use Case Testing

6. **Automation Strategy**

   * Identifies which tests should be automated.
   * Selects automation tools and frameworks.

7. **Test Environment**

   * Defines hardware, software, database, network, and configuration requirements.

8. **Test Data Strategy**

   * Defines how test data will be created, maintained, protected, and reused.

9. **Risk Management**

   * Identifies testing risks and defines mitigation plans.

10. **Defect Management**

* Defines defect reporting, tracking, prioritization, and resolution processes.

---

# 3. Test Strategy

## Definition

A **Test Strategy** is a high-level document that defines the overall approach, objectives, techniques, resources, and methods that will be used to perform software testing.

It provides a common direction for the entire testing process.

### Objectives of Test Strategy

* Define the overall testing approach.
* Identify testing levels and types.
* Define testing standards and techniques.
* Determine tools and automation approach.
* Identify resources and responsibilities.
* Manage testing risks.
* Define quality goals.
* Ensure consistent testing across the project.

### Components of Test Strategy

```text
Test Strategy
      |
      +-- Testing Objectives
      |
      +-- Scope
      |
      +-- Testing Levels
      |
      +-- Testing Types
      |
      +-- Test Techniques
      |
      +-- Automation Strategy
      |
      +-- Tools
      |
      +-- Test Environment
      |
      +-- Test Data
      |
      +-- Defect Management
      |
      +-- Risk Management
      |
      +-- Metrics & Reporting
```

---

## PYQ – 2025

**Question:** Discuss process to Develop Test Strategy.

### Detailed Answer

The process of developing a test strategy involves defining a systematic approach for achieving the testing objectives of a software project.

### Steps to Develop Test Strategy

#### Step 1: Understand Project Requirements

Study:

* Business requirements
* Functional requirements
* Non-functional requirements
* Technical requirements
* Customer expectations

This helps determine what needs to be tested.

#### Step 2: Define Testing Objectives

Clearly define the goals of testing.

Examples:

* Verify functional correctness.
* Identify defects early.
* Validate performance.
* Ensure security.
* Reduce business risks.

#### Step 3: Define Scope

Identify:

* Features to be tested
* Features not to be tested
* Systems involved
* Interfaces and integrations

#### Step 4: Identify Testing Levels

Determine the required testing levels.

```text
Unit Testing
      ↓
Integration Testing
      ↓
System Testing
      ↓
Acceptance Testing
```

#### Step 5: Select Testing Types

Select appropriate testing types based on project requirements.

Examples:

* Functional Testing
* Regression Testing
* Performance Testing
* Security Testing
* Usability Testing

#### Step 6: Select Test Techniques

Choose appropriate test design techniques.

Examples:

* Equivalence Partitioning
* Boundary Value Analysis
* Decision Table Testing
* State Transition Testing
* Use Case Testing

#### Step 7: Define Automation Strategy

Determine:

* Which tests should be automated
* Automation tools
* Automation framework
* Maintenance approach
* Expected automation coverage

#### Step 8: Plan Test Environment

Identify the hardware, software, database, network, browsers, operating systems, and other infrastructure required for testing.

#### Step 9: Define Test Data Strategy

Determine how test data will be:

* Generated
* Stored
* Maintained
* Protected
* Reused

#### Step 10: Define Defect Management Process

Define:

* Defect reporting procedure
* Severity and priority
* Defect workflow
* Assignment process
* Retesting and closure process

#### Step 11: Identify Risks

Identify possible risks such as:

* Lack of resources
* Incomplete requirements
* Limited test environment
* Schedule constraints
* Technical complexity

Define mitigation plans for these risks.

#### Step 12: Define Metrics and Reporting

Define metrics such as:

* Test case execution percentage
* Pass/fail percentage
* Defect density
* Test coverage
* Defect rejection rate

#### Step 13: Review and Approve Strategy

The strategy should be reviewed by relevant stakeholders such as:

* Test Manager
* Project Manager
* Development Team
* Business Stakeholders

After approval, it becomes the guiding document for testing.

### Flowchart

```text
Understand Requirements
          ↓
Define Testing Objectives
          ↓
Define Scope
          ↓
Select Testing Levels & Types
          ↓
Select Test Techniques
          ↓
Define Automation & Tools
          ↓
Plan Environment & Test Data
          ↓
Define Defect Management
          ↓
Identify Risks
          ↓
Define Metrics & Reporting
          ↓
Review & Approve
          ↓
       Test Strategy
```

### Exam-Oriented Conclusion

A well-developed test strategy provides a clear direction for testing, ensures effective use of resources, manages risks, and helps achieve the required software quality.

---

# 4. Test Policy

## Definition

A **Test Policy** is a high-level organizational document that defines the organization's overall principles, objectives, standards, and expectations regarding software testing.

It answers:

> **"What does the organization expect from testing?"**

### Characteristics

* Organization-level document
* High-level and long-term
* Defines testing principles
* Establishes quality expectations
* Applies across projects
* Supports standardization

### Contents of Test Policy

* Testing objectives
* Quality objectives
* Testing principles
* Organizational testing standards
* Roles and responsibilities
* Compliance requirements
* Quality expectations
* Continuous improvement principles

---

## PYQ – 2022

**Question:** Analyse test policy & test strategy included in test documentation.

### Detailed Answer

Test policy and test strategy are important parts of test documentation, but they operate at different levels.

### Test Policy

Test policy defines the organization's overall principles and expectations regarding software testing.

It focuses on:

* Organizational quality objectives
* Testing principles
* Standards
* Compliance
* Overall testing expectations

### Test Strategy

Test strategy converts organizational testing principles into a practical high-level approach for a particular project.

It focuses on:

* Testing scope
* Testing levels
* Testing types
* Test techniques
* Tools
* Automation
* Resources
* Risks
* Test environment
* Metrics

### Relationship

```text
Organizational Test Policy
           ↓
      Test Strategy
           ↓
       Test Plan
           ↓
       Test Cases
           ↓
     Test Execution
           ↓
     Test Reports
```

### Difference

| Test Policy                         | Test Strategy                                       |
| ----------------------------------- | --------------------------------------------------- |
| Organization-level                  | Project/product-level                               |
| High-level principles               | High-level testing approach                         |
| Long-term                           | Project-specific                                    |
| Defines what organization expects   | Defines how testing will be performed               |
| Focuses on standards and objectives | Focuses on methods, techniques, tools and resources |

### Conclusion

Test policy provides the overall organizational direction for testing, while test strategy translates that direction into a practical approach for a specific project.

---

# 5. Test Plan vs Test Strategy

## Test Plan

A **Test Plan** is a project-level document that describes the specific testing activities, resources, schedule, responsibilities, scope, and execution details for a project.

### Main Contents

* Test objectives
* Scope
* Testing approach
* Resources
* Roles and responsibilities
* Schedule
* Test environment
* Entry criteria
* Exit criteria
* Risks
* Deliverables

## Test Strategy

A **Test Strategy** defines the high-level testing approach and methodology that will be followed.

### Main Contents

* Testing objectives
* Testing levels
* Testing types
* Test techniques
* Automation strategy
* Tools
* Risk management
* Test environment approach
* Metrics

---

## PYQ – 2022, 2024

**Question:** Differentiate between Test plan and Test strategy.

### Detailed Answer

| Basis           | Test Plan                                                      | Test Strategy                                        |
| --------------- | -------------------------------------------------------------- | ---------------------------------------------------- |
| **Definition**  | Describes how testing will be performed for a specific project | Defines the overall approach to testing              |
| **Level**       | Project level                                                  | Organizational/project high level                    |
| **Focus**       | Specific testing activities                                    | Overall testing methodology                          |
| **Scope**       | Project-specific                                               | Broader/high-level                                   |
| **Contents**    | Scope, schedule, resources, responsibilities, criteria         | Testing levels, types, techniques, tools, automation |
| **Schedule**    | Contains detailed testing schedule                             | Usually does not contain detailed schedule           |
| **Resources**   | Specifies project resources                                    | Defines general resource approach                    |
| **Environment** | Specifies required project environment                         | Defines environment strategy                         |
| **Risk**        | Identifies project-specific testing risks                      | Defines overall risk-based testing approach          |
| **Changes**     | Can change frequently during project                           | Usually more stable                                  |
| **Purpose**     | Guides actual testing activities                               | Provides overall direction for testing               |

### Simple Way to Remember

> **Test Strategy = How we test**

> **Test Plan = What, when, who, and where we test**

### Example

For an e-commerce application:

**Test Strategy:**

* Perform functional, performance, security, and regression testing.
* Use automation for regression testing.
* Perform testing at unit, integration, system, and acceptance levels.

**Test Plan:**

* Login testing will be performed from August 20–22.
* Two testers will execute 100 test cases.
* Selenium will be used for automation.
* Testing will be performed on Chrome and Firefox.
* Exit testing when all critical defects are resolved.

### Conclusion

Test strategy provides the overall testing direction, whereas the test plan converts that direction into detailed project-level testing activities.

---

# Quick Revision

| Topic                     | Key Point                                                      |
| ------------------------- | -------------------------------------------------------------- |
| **Test Artifact**         | Document/work product produced during testing                  |
| **Test Planning**         | Planning what, how, when, and by whom testing is performed     |
| **Test Strategy**         | High-level approach to testing                                 |
| **Test Policy**           | Organization's overall testing principles                      |
| **Test Plan**             | Project-specific testing plan                                  |
| **Test Strategy vs Plan** | Strategy = overall approach; Plan = detailed project execution |
| **2023 PYQ**              | Types of Test Artifacts                                        |
| **2022 PYQ**              | Test Policy & Test Strategy                                    |
| **2022, 2024 PYQ**        | Test Plan vs Test Strategy                                     |
| **2025 PYQ**              | Process to Develop Test Strategy                               |
