# Configuration Management

## 1. Definition

**Configuration Management (CM)** is the process of identifying, organizing, controlling, tracking, and maintaining changes to software and its related artifacts throughout the software development and testing life cycle.

It ensures that the correct versions of software, source code, test cases, documents, configurations, and other artifacts are used.

### Simple Definition

> **Configuration Management ensures that the right version of the right artifact is available at the right time.**

---

# 2. Need for Configuration Management

Software projects contain many artifacts that change frequently.

Examples:

* Source code
* Requirements
* Design documents
* Test plans
* Test cases
* Test data
* Build files
* Database scripts
* Configuration files
* Deployment files

Without configuration management, teams may:

* Use outdated files.
* Lose changes.
* Overwrite each other's work.
* Test the wrong software version.
* Have difficulty reproducing defects.
* Deploy an incorrect build.

---

# 3. Objectives of Configuration Management

The major objectives are:

1. Identify configuration items.
2. Maintain version history.
3. Control changes.
4. Maintain consistency between artifacts.
5. Track the status of configuration items.
6. Prevent unauthorized changes.
7. Support reproducible builds and testing.
8. Maintain traceability.
9. Enable rollback to previous versions.
10. Ensure the correct software configuration is delivered.

---

# 4. Configuration Items

## Definition

A **Configuration Item (CI)** is a software product, document, file, or other artifact that is placed under configuration management control.

### Examples

```text id="v4m8q2"
Configuration Items
       |
       +-- Source Code
       |
       +-- Requirements
       |
       +-- Design Documents
       |
       +-- Test Plan
       |
       +-- Test Cases
       |
       +-- Test Data
       |
       +-- Build Files
       |
       +-- Database Scripts
       |
       +-- Configuration Files
       |
       +-- Release Packages
```

---

# 5. Main Activities of Configuration Management

Configuration Management generally includes the following activities:

```text id="x7n3p9"
Configuration Management
          |
          +-- Configuration Identification
          |
          +-- Version Control
          |
          +-- Change Control
          |
          +-- Configuration Status Accounting
          |
          +-- Configuration Auditing
```

---

# 6. Configuration Identification

## Definition

Configuration Identification is the process of identifying and naming the configuration items that need to be controlled.

### Example

For an e-commerce project:

```text id="h5k8w1"
CI-001 → Requirements Document
CI-002 → Source Code
CI-003 → Database Script
CI-004 → Test Plan
CI-005 → Test Cases
CI-006 → Release Build
```

Each item can have a unique identifier and version.

---

# 7. Version Control

## Definition

**Version Control** is the process of managing different versions of files and artifacts and maintaining their history.

### Example

```text id="p3r7m2"
Application
   |
   +-- v1.0
   |
   +-- v1.1
   |
   +-- v1.2
   |
   +-- v2.0
```

Each version represents a particular state of the software.

### Benefits

* Maintains history.
* Supports collaboration.
* Prevents accidental overwriting.
* Enables rollback.
* Identifies who made changes.
* Supports defect investigation.

### Examples of Version Control Systems

* Git
* GitHub
* GitLab
* Bitbucket
* Subversion

---

# 8. Change Control

## Definition

**Change Control** is the controlled process of requesting, evaluating, approving, implementing, and verifying changes to configuration items.

### Change Control Process

```text id="n9q4t6"
Change Request
      ↓
Impact Analysis
      ↓
Review
      ↓
Approval / Rejection
      ↓
Implementation
      ↓
Testing
      ↓
Verification
      ↓
Update Configuration
```

### Example

A customer requests:

> Add OTP verification during payment.

The team should not simply modify the system without tracking the change.

Instead:

1. Create a change request.
2. Analyse impact.
3. Estimate effort and risk.
4. Obtain approval.
5. Implement the change.
6. Test the change.
7. Update documentation and configuration records.

---

# 9. Configuration Status Accounting

## Definition

Configuration Status Accounting is the process of recording and reporting information about configuration items and their versions and changes.

It answers questions such as:

* What version is currently available?
* Who changed it?
* When was it changed?
* Which change request caused the change?
* Which build contains the change?
* What is the current status?

### Example

| Configuration Item | Version | Status      | Owner        |
| ------------------ | ------- | ----------- | ------------ |
| Requirements       | v2.0    | Approved    | BA           |
| Source Code        | v3.4    | Development | Developer    |
| Test Plan          | v1.2    | Approved    | Test Manager |
| Test Cases         | v2.1    | Ready       | Tester       |
| Release Build      | v3.0    | Tested      | DevOps       |

---

# 10. Configuration Auditing

## Definition

Configuration Auditing verifies that the actual configuration of the software matches the approved configuration records and requirements.

It ensures that:

* Correct files are present.
* Correct versions are used.
* Approved changes are implemented.
* Documentation matches the product.
* Unauthorized changes are not present.

### Types of Configuration Audits

#### 1. Functional Configuration Audit

Checks whether the software performs the required functions according to specifications.

#### 2. Physical Configuration Audit

Checks whether the actual configuration items and documentation correspond to the approved configuration.

---

# 11. Baseline

## Definition

A **Baseline** is an officially reviewed and approved version of a configuration item or collection of configuration items that serves as a reference point for further development or change.

### Example

```text id="c6p9m3"
Requirements v2.0
       ↓
    Approved
       ↓
    BASELINE
       ↓
Future changes require controlled change process
```

Once a baseline is established, changes should be controlled rather than made informally.

---

# 12. Build and Release Management

Configuration Management also helps control software builds and releases.

### Build

A **Build** is a compiled or packaged version of the software prepared for testing or deployment.

Example:

```text id="w3n8k5"
Build 1.0
Build 1.1
Build 1.2
Build 2.0
```

### Release

A **Release** is a software version delivered to users or customers.

Configuration Management ensures that the release contains the correct:

* Source code
* Libraries
* Configuration
* Database scripts
* Documentation
* Test artifacts

---

# 13. Configuration Management in Testing

Configuration Management is especially important in testing because testers must know exactly which version of the software is being tested.

### Example

Suppose a defect is found in:

```text id="j7m2q9"
Application Build: v2.5
Browser: Chrome
Database: PostgreSQL
```

If configuration information is properly maintained, the team can reproduce the issue using the same configuration.

Without configuration management, it may be difficult to determine:

* Which version contained the defect.
* Which code was tested.
* Which test cases were used.
* Which environment was used.

---

# 14. Configuration Management and Testing Relationship

```text id="r4k8n1"
Requirements
     ↓
Configuration Identification
     ↓
Baseline
     ↓
Development
     ↓
Build
     ↓
Test
     ↓
Defect / Change
     ↓
Change Control
     ↓
New Version
     ↓
Retest
     ↓
Release
```

---

# 15. Example – E-Commerce Application

Suppose an e-commerce system is currently running version **2.0**.

A new payment feature is requested.

### Without Configuration Management

A developer modifies the code directly.

Problems may occur:

* Previous code gets overwritten.
* Testers receive the wrong build.
* Documentation is outdated.
* The team cannot easily identify what changed.
* Rollback becomes difficult.

### With Configuration Management

```text id="s8p5w2"
Payment Feature Request
        ↓
Change Request
        ↓
Impact Analysis
        ↓
Approval
        ↓
Code Modification
        ↓
Version 2.1
        ↓
Testing
        ↓
Configuration Update
        ↓
Release
```

This provides traceability and control.

---

# 16. Benefits of Configuration Management

### 1. Version Control

Maintains different versions of artifacts.

### 2. Change Control

Ensures changes are reviewed and approved.

### 3. Traceability

Links requirements, changes, code, tests, and releases.

### 4. Reproducibility

Makes it possible to reproduce previous software configurations.

### 5. Collaboration

Allows multiple team members to work safely.

### 6. Quality Improvement

Prevents incorrect or unauthorized changes.

### 7. Easier Rollback

Previous stable versions can be restored when required.

### 8. Better Release Management

Ensures releases contain the correct components.

### 9. Audit Support

Provides historical records of changes.

### 10. Reduced Risk

Prevents problems caused by configuration inconsistencies.

---

# 17. Configuration Management Tools

Common tools include:

### Version Control

* Git
* Subversion

### Repository Hosting

* GitHub
* GitLab
* Bitbucket

### Build Management

* Maven
* Gradle
* Jenkins

### Issue/Change Tracking

* Jira
* GitHub Issues

The exact tools used depend on the organization and project.

---

# 18. Configuration Management vs Change Management

| Configuration Management                                 | Change Management                                          |
| -------------------------------------------------------- | ---------------------------------------------------------- |
| Controls configuration items and their versions          | Controls changes to systems/processes                      |
| Focuses heavily on software artifacts and configurations | Broader organizational/process focus                       |
| Includes version control and configuration auditing      | Includes assessing and implementing organizational changes |
| Example: Track source code v2.0                          | Example: Approve a major business process change           |

---

# 19. Important Terms

### Configuration Item

An artifact controlled under configuration management.

### Version

A specific state of a configuration item.

### Baseline

An approved reference version.

### Change Request

Formal request to modify a configuration item.

### Version Control

Management of different versions and their history.

### Change Control

Controlled process for approving and implementing changes.

### Configuration Audit

Verification that actual configuration matches approved configuration.

### Status Accounting

Recording and reporting configuration information.

---

# 20. PYQ – 2023

**Question:** Define and Explain configuration management.

### Detailed Answer

Configuration Management is a systematic process used to identify, control, track, and maintain software configuration items and their changes throughout the software development and testing life cycle.

The main purpose of configuration management is to ensure that the correct versions of software, source code, documents, test artifacts, configurations, and releases are maintained.

### Major Activities

#### 1. Configuration Identification

Identifies and uniquely names configuration items such as:

* Source code
* Requirements
* Test cases
* Test plans
* Build files
* Configuration files

#### 2. Version Control

Maintains different versions of configuration items and their history.

For example:

```text id="g4k7n2"
v1.0 → v1.1 → v1.2 → v2.0
```

#### 3. Change Control

Ensures that changes are formally requested, analysed, approved, implemented, and tested.

#### 4. Configuration Status Accounting

Records the current status, versions, changes, and ownership of configuration items.

#### 5. Configuration Auditing

Checks whether the actual configuration matches the approved configuration.

### Benefits

* Prevents unauthorized changes.
* Maintains version history.
* Improves traceability.
* Supports collaboration.
* Enables rollback.
* Makes defect reproduction easier.
* Ensures correct software releases.
* Improves software quality.

### Example

Suppose an application is released as version 2.0. A new payment feature is requested.

The change is first recorded as a change request. Its impact is analysed and the change is approved. Developers implement it and create version 2.1. Testers test version 2.1, and configuration records are updated before release.

### Conclusion

Configuration Management provides systematic control over software artifacts and their changes. It ensures consistency, traceability, reproducibility, and controlled evolution of software throughout the development and testing life cycle.

---

# 21. Exam-Oriented Revision

Remember the five major Configuration Management activities:

> **Identify → Control → Record → Audit → Maintain**

Or:

```text id="q6m8p4"
Identification
      ↓
Version Control
      ↓
Change Control
      ↓
Status Accounting
      ↓
Configuration Audit
```

### One-Line Definitions

| Term                     | Meaning                                      |
| ------------------------ | -------------------------------------------- |
| Configuration Management | Controls software configurations and changes |
| Configuration Item       | Artifact under configuration control         |
| Version Control          | Manages different versions                   |
| Change Control           | Controls modifications                       |
| Baseline                 | Approved reference version                   |
| Status Accounting        | Records configuration status                 |
| Configuration Audit      | Verifies actual vs approved configuration    |

---

# PYQ Coverage

| Syllabus Concept         | PYQ                                                   |
| ------------------------ | ----------------------------------------------------- |
| Configuration Management | **2023:** Define and Explain configuration management |

## Important Question

### 2023

**Define and Explain configuration management.**
