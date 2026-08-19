# 12 — Software Quality Control and QMS

> **Purpose:** This file combines **Software Quality Processes, Software Quality Control (SQC), Quality Management System (QMS), QMS Structure, Pillars of QMS, and Important Aspects of Quality Management**.
> It is especially important for **application/scenario-based questions**, where you must apply quality-control concepts to a real-world system.

---

# 1. Syllabus Coverage

This file covers:

* Processes related to Software Quality
* Software Quality Control
* Quality Management System (QMS)
* QMS Structure
* Pillars of QMS
* Important aspects of Quality Management
* Scenario/application-based Software Quality Control
* All given PYQs from 2022–2025

---

# 2. Processes Related to Software Quality

## 2.1 Definition

**Software Quality Processes** are systematic activities performed throughout the software development life cycle to ensure that the software satisfies specified requirements, quality standards, and user expectations.

Quality should not be checked only after development. It must be built into the software through activities performed throughout the SDLC.

---

## 2.2 Major Software Quality Processes

The major processes include:

1. Quality planning
2. Requirement quality analysis
3. Design reviews
4. Code reviews
5. Testing
6. Software Quality Control
7. Software Quality Assurance
8. Configuration management
9. Defect management
10. Quality measurement
11. Auditing
12. Continuous improvement

---

## 2.3 Quality Planning

Quality planning determines:

* What quality standards must be followed
* What quality objectives must be achieved
* Which testing methods will be used
* Which quality metrics will be measured
* Who is responsible for quality
* Which tools and procedures will be followed

### Example

For college attendance software, quality planning may specify:

* Attendance must be calculated accurately.
* Only authorized users can modify attendance.
* Attendance reports must be generated correctly.
* The system must be available during college hours.
* Changes to attendance must be logged.

---

# 3. Requirement Quality Analysis

Poor requirements can produce poor-quality software even if the software is technically well developed.

Requirements should be:

* Correct
* Complete
* Consistent
* Unambiguous
* Testable
* Feasible
* Traceable

### Example

Bad requirement:

> "The system should be fast."

Better requirement:

> "The attendance dashboard should load within 3 seconds under the specified normal load."

The second requirement can be measured and tested.

---

# 4. Reviews and Inspections

Reviews are performed to identify defects before they reach later stages.

Common reviews include:

* Requirement review
* Design review
* Code review
* Test-case review
* Documentation review

### Benefits

* Detects defects early
* Reduces correction cost
* Improves maintainability
* Ensures compliance with standards
* Improves consistency

---

# 5. Software Testing as a Quality Process

Testing evaluates software to discover defects and determine whether the software satisfies its requirements.

Typical levels include:

```text
Unit Testing
     ↓
Integration Testing
     ↓
System Testing
     ↓
Acceptance Testing
```

Testing is an important quality-control activity because it provides evidence about the actual behavior of the software.

---

# 6. Software Quality Control (SQC)

## 6.1 Definition

**Software Quality Control is the set of operational techniques and activities used to verify that software products satisfy specified quality requirements.**

In simple words:

> **SQC checks the actual software and its outputs to determine whether they meet the required quality standards.**

---

# 7. Objectives of Software Quality Control

The main objectives are:

1. Detect defects.
2. Verify software requirements.
3. Ensure compliance with standards.
4. Prevent defective software from reaching users.
5. Measure software quality.
6. Verify correctness of outputs.
7. Reduce failures.
8. Improve reliability.
9. Ensure consistency.
10. Provide evidence of software quality.

---

# 8. Software Quality Control Activities

## 8.1 Testing

Testing is one of the most important SQC activities.

Examples:

* Functional testing
* Performance testing
* Security testing
* Usability testing
* Reliability testing
* Regression testing

---

## 8.2 Inspection

Software artifacts are systematically examined to identify defects.

Artifacts may include:

* Requirements
* Design documents
* Source code
* Test cases
* User manuals

---

## 8.3 Review

Reviews involve examining work products to identify problems.

Example:

A team reviews an attendance calculation module before deployment.

---

## 8.4 Defect Detection

SQC identifies:

* Incorrect calculations
* Missing functionality
* Security vulnerabilities
* Interface problems
* Performance problems
* Data inconsistencies

---

## 8.5 Defect Reporting

Detected defects should be recorded with information such as:

* Defect ID
* Description
* Severity
* Priority
* Steps to reproduce
* Expected result
* Actual result
* Assigned developer
* Status

---

## 8.6 Defect Correction and Re-testing

After a defect is fixed:

```text
Defect Detected
      ↓
Defect Reported
      ↓
Developer Fixes Defect
      ↓
Retesting
      ↓
Regression Testing
      ↓
Defect Closed
```

---

## 8.7 Quality Measurement

Quality metrics can be used to evaluate the software.

Examples:

* Defect density
* Test coverage
* Failure rate
* Mean Time Between Failures (MTBF)
* Mean Time To Repair (MTTR)
* Requirements coverage
* Availability
* Response time

---

# 9. Software Quality Control vs Software Quality Assurance

| Software Quality Control    | Software Quality Assurance                           |
| --------------------------- | ---------------------------------------------------- |
| Product-oriented            | Process-oriented                                     |
| Detects defects             | Prevents defects                                     |
| Focuses on outputs          | Focuses on processes                                 |
| Testing is a major activity | Process definition and auditing are major activities |
| Identifies problems         | Establishes methods to reduce problems               |
| Reactive in nature          | More preventive in nature                            |

### Easy Memory Trick

> **QA = Are we following the right process?**
> **QC = Is the resulting product correct?**

---

# 10. Quality Management System (QMS)

## 10.1 Definition

A **Quality Management System (QMS)** is a structured system of policies, processes, procedures, responsibilities, and resources used by an organization to consistently achieve quality objectives and satisfy customer and regulatory requirements.

In simple words:

> **QMS provides an organized framework for managing quality throughout an organization.**

---

# 11. Objectives of QMS

The major objectives are:

1. Deliver consistent quality.
2. Satisfy customer requirements.
3. Meet applicable standards and regulations.
4. Prevent defects.
5. Improve organizational processes.
6. Establish clear responsibilities.
7. Monitor quality performance.
8. Reduce errors and waste.
9. Support continual improvement.
10. Maintain documentation and evidence.

---

# 12. QMS Structure

A typical QMS can be understood as a hierarchy:

```text
                 QUALITY MANAGEMENT SYSTEM
                           │
          ┌────────────────┼────────────────┐
          ↓                ↓                ↓
       Quality          Processes        Resources
       Policy               │                │
          │                 ↓                ↓
          ↓              Procedures       People
   Quality Objectives      │              Training
          │                ↓              Tools
          ↓             Work Instructions  Infrastructure
          │
          ↓
       Records & Documentation
          │
          ↓
      Monitoring & Measurement
          │
          ↓
       Corrective Action
          │
          ↓
    Continual Improvement
```

---

# 13. Main Components of QMS Structure

## 13.1 Quality Policy

A quality policy defines the organization's overall commitment to quality.

It communicates:

* Commitment to customer satisfaction
* Commitment to standards
* Commitment to continual improvement
* Overall direction for quality

---

## 13.2 Quality Objectives

Quality objectives convert the quality policy into measurable goals.

Examples:

* Reduce production defects by 20%.
* Achieve 95% test coverage.
* Reduce critical production incidents.
* Improve system availability.

---

## 13.3 Processes

Processes define how work is performed.

Examples:

* Software development process
* Testing process
* Release process
* Defect management process
* Change management process

---

## 13.4 Procedures

Procedures provide detailed instructions for performing processes consistently.

Example:

A defect-management procedure may specify:

```text
Identify defect
     ↓
Record defect
     ↓
Assign severity
     ↓
Assign responsible person
     ↓
Fix defect
     ↓
Retest
     ↓
Close defect
```

---

## 13.5 Documentation

QMS requires appropriate documentation and records.

Examples:

* Policies
* Procedures
* Standards
* Test reports
* Audit reports
* Defect reports
* Training records
* Quality metrics

---

## 13.6 Resources

Resources required for quality include:

* Skilled employees
* Testing tools
* Development tools
* Hardware
* Infrastructure
* Training
* Budget

---

## 13.7 Monitoring and Measurement

Organizations must measure whether quality objectives are being achieved.

Examples:

* Defect rate
* Customer complaints
* Test coverage
* Failure rate
* Response time
* Availability

---

## 13.8 Corrective Action

When a quality problem occurs, corrective action is taken to remove its cause and prevent recurrence.

Example:

If attendance data is repeatedly calculated incorrectly, the organization should not merely correct individual records. It should investigate why the calculation defect occurred and improve the underlying process.

---

## 13.9 Continual Improvement

QMS should continuously improve organizational processes.

A common improvement cycle is:

```text
       PLAN
         ↓
         DO
         ↓
       CHECK
         ↓
         ACT
         ↓
      IMPROVE
         │
         └────────→ PLAN
```

This is commonly associated with the **PDCA cycle**.

---

# 14. Pillars of Quality Management System

## 14.1 Overview

The pillars of quality management represent the fundamental principles on which an effective QMS is built.

For examination purposes, the following pillars are important:

1. Customer focus
2. Leadership
3. Engagement of people
4. Process approach
5. Improvement
6. Evidence-based decision making
7. Relationship management

These align with the widely used quality-management principles associated with modern QMS frameworks.

---

# 15. Pillar 1 — Customer Focus

## Meaning

The organization should understand and satisfy customer requirements and expectations.

### Key Points

* Understand customer needs.
* Meet customer requirements.
* Monitor customer satisfaction.
* Handle complaints.
* Continuously improve customer experience.

### Software Example

For college attendance software:

* Students should be able to view attendance accurately.
* Faculty should be able to record attendance easily.
* Administrators should receive correct reports.

If the software technically works but displays incorrect attendance, customer satisfaction is still poor.

---

# 16. Pillar 2 — Leadership

## Meaning

Management must establish direction and create an environment where quality can be achieved.

### Key Points

* Establish quality policy.
* Set quality objectives.
* Provide resources.
* Define responsibilities.
* Encourage quality culture.
* Support improvement.

### Example

For a military software system, management must ensure:

* Security requirements are clearly defined.
* Adequate testing resources are available.
* Responsible personnel are assigned.
* Safety and reliability are prioritized.

---

# 17. Pillar 3 — Engagement of People

## Meaning

Quality is everyone's responsibility.

People involved in the project should understand their responsibilities and contribute to quality improvement.

### Includes

* Developers
* Testers
* Managers
* Customers
* Administrators
* Operations teams
* Support teams

### Example

In attendance software:

* Faculty enters attendance.
* Students verify attendance.
* Developers maintain the system.
* Testers verify calculations.
* Administrators manage users.

Everyone contributes to quality.

---

# 18. Pillar 4 — Process Approach

## Meaning

Activities should be managed as interconnected processes rather than isolated tasks.

Example:

```text
Requirements
     ↓
Design
     ↓
Development
     ↓
Testing
     ↓
Deployment
     ↓
Monitoring
     ↓
Improvement
```

A problem in one process can affect later processes.

### Example

Incorrect attendance requirements → incorrect design → incorrect implementation → incorrect attendance reports.

Therefore, quality must be controlled throughout the complete process.

---

# 19. Pillar 5 — Improvement

## Meaning

An organization should continuously improve its products, services, and processes.

Improvement may involve:

* Reducing defects
* Improving performance
* Improving security
* Automating testing
* Improving processes
* Learning from failures

### Example

If users repeatedly report slow attendance reports, the organization can:

1. Analyze the problem.
2. Identify the root cause.
3. Optimize database queries.
4. Test the improvement.
5. Monitor performance.

---

# 20. Pillar 6 — Evidence-Based Decision Making

## Meaning

Quality decisions should be based on reliable data rather than assumptions.

Examples of evidence:

* Defect statistics
* Test results
* Customer complaints
* Performance measurements
* Failure reports
* Security audit results

### Example

Instead of saying:

> "The attendance system seems reliable."

Use evidence:

> "The system achieved 99.9% availability during the measured period and all critical test cases passed."

---

# 21. Pillar 7 — Relationship Management

## Meaning

An organization should manage relationships with stakeholders and suppliers effectively.

Important relationships may include:

* Customers
* Software vendors
* Cloud providers
* Hardware suppliers
* Development partners
* Regulatory bodies

### Example

A space research organization may depend on specialized hardware and software suppliers. Their quality directly affects the final system.

---

# 22. Important Aspects of Quality Management

## 22.1 Quality Planning

Determining quality requirements, standards, objectives, responsibilities, and resources.

---

## 22.2 Quality Assurance

Ensuring that appropriate processes and standards are followed.

---

## 22.3 Quality Control

Checking the actual product and identifying defects.

---

## 22.4 Quality Improvement

Continuously improving products and processes.

---

## 22.5 Customer Satisfaction

Understanding and satisfying user requirements.

---

## 22.6 Employee Involvement

Everyone involved in the software life cycle should contribute to quality.

---

## 22.7 Process Management

Processes should be defined, controlled, measured, and improved.

---

## 22.8 Risk Management

Potential quality risks should be identified and controlled.

Examples:

* Security risks
* Performance risks
* Hardware failure
* Data loss
* Requirement changes

---

## 22.9 Documentation

Quality activities and results should be documented.

---

## 22.10 Measurement

Quality must be measurable using appropriate metrics.

---

## 22.11 Corrective and Preventive Action

### Corrective Action

Removes the cause of an existing problem.

### Preventive Action

Addresses potential causes before a problem occurs.

---

# 23. Scenario-Based Question Strategy

For application-based SQC questions, do **not** simply write the definition of SQC.

Use this structure:

```text
1. Understand the system
        ↓
2. Identify quality requirements
        ↓
3. Identify possible risks/failures
        ↓
4. Define quality-control activities
        ↓
5. Perform testing/inspection/review
        ↓
6. Detect and report defects
        ↓
7. Correct and retest
        ↓
8. Measure quality
        ↓
9. Approve/reject the system
        ↓
10. Monitor after deployment
```

---

# 24. PYQ — 2022

## Question

> **Plan Software Quality Control with respect to college attendance software.**

---

## Answer

### 1. Understand the System

College attendance software is used to:

* Record student attendance.
* Maintain attendance records.
* Calculate attendance percentages.
* Generate attendance reports.
* Allow faculty and administrators to manage attendance.

---

## 2. Identify Quality Requirements

The major quality requirements are:

### Accuracy

Attendance percentage must be calculated correctly.

### Security

Only authorized users should be able to modify attendance.

### Reliability

Attendance data should not be lost or corrupted.

### Usability

Faculty should be able to mark attendance easily.

### Performance

Attendance records and reports should be generated quickly.

### Availability

The system should be available whenever attendance needs to be recorded.

### Data Integrity

Attendance records must remain consistent and correct.

---

## 3. Define Quality Standards

Example standards:

* Every attendance transaction must be validated.
* Unauthorized users must be denied access.
* Attendance percentage must follow the defined calculation formula.
* Database records must be protected against accidental modification.
* Critical defects must be fixed before release.

---

## 4. Prepare Test Cases

Example:

| Test Case                 | Expected Result                            |
| ------------------------- | ------------------------------------------ |
| Mark student present      | Attendance increases correctly             |
| Mark student absent       | Attendance remains correctly recorded      |
| Duplicate attendance      | Duplicate entry is prevented               |
| Invalid student ID        | Appropriate error displayed                |
| Unauthorized modification | Access denied                              |
| Calculate percentage      | Correct percentage displayed               |
| Generate report           | Correct report generated                   |
| Delete attendance         | Only authorized user can perform operation |

---

## 5. Perform Functional Testing

Test:

* Login
* Student registration
* Attendance marking
* Attendance editing
* Attendance calculation
* Report generation

---

## 6. Perform Security Testing

Verify:

* Authentication
* Authorization
* Role-based access
* Protection against unauthorized modification
* Secure handling of student information

---

## 7. Perform Performance Testing

Check:

* Response time
* Number of simultaneous users
* Report-generation speed
* Database performance

---

## 8. Defect Management

When a defect is found:

```text
Detect
 ↓
Record
 ↓
Classify Severity
 ↓
Assign
 ↓
Fix
 ↓
Retest
 ↓
Regression Test
 ↓
Close
```

---

## 9. Quality Metrics

Possible metrics:

* Number of defects
* Defect density
* Test-case pass percentage
* Test coverage
* Response time
* System availability
* Failure rate

---

## 10. Final Quality Evaluation

The software should be released only after:

* Critical defects are resolved.
* Important test cases pass.
* Security requirements are satisfied.
* Attendance calculations are verified.
* Performance is acceptable.
* User acceptance criteria are satisfied.

### Conclusion

Software Quality Control for college attendance software ensures that attendance records, calculations, security, performance, and reports are accurate and reliable before the system is delivered to users.

---

# 25. PYQ — 2023

## Question

> **Plan Software Quality Control with respect to space research.**

---

## Answer

Space research software is a high-criticality application where failures may cause loss of mission, equipment, data, or human life. Therefore, quality control must be extremely rigorous.

---

## 1. Identify Quality Requirements

Important requirements include:

* Reliability
* Accuracy
* Safety
* Security
* Fault tolerance
* Performance
* Availability
* Maintainability
* Data integrity

---

## 2. Requirement Verification

Every requirement should be:

* Correct
* Complete
* Consistent
* Traceable
* Testable

Requirements should be reviewed before development.

---

## 3. Design Review

The architecture should be reviewed for:

* Fault tolerance
* Redundancy
* Failure handling
* Security
* Performance
* Reliability

---

## 4. Code Review

Critical software code should undergo systematic review.

Check for:

* Logic errors
* Incorrect calculations
* Resource problems
* Security vulnerabilities
* Exception-handling issues
* Unsafe operations

---

## 5. Testing

Extensive testing should be performed.

### Unit Testing

Tests individual components.

### Integration Testing

Tests interactions between components.

### System Testing

Tests the complete system.

### Performance Testing

Verifies response and processing capability.

### Stress Testing

Tests behavior under extreme conditions.

### Security Testing

Identifies security vulnerabilities.

### Fault Injection Testing

Introduces simulated failures to determine whether the system handles them correctly.

---

## 6. Simulation

Space systems can be tested in simulated environments before actual deployment.

Examples:

* Simulated sensor data
* Communication failures
* Hardware failures
* Extreme operating conditions
* Timing problems

---

## 7. Reliability Testing

The system should be evaluated for:

* Failure frequency
* Recovery capability
* Fault tolerance
* Long-duration operation

---

## 8. Data Quality Control

Verify:

* Sensor data accuracy
* Data transmission
* Data storage
* Data processing
* Data integrity

---

## 9. Defect Management

Critical defects should be:

* Identified
* Documented
* Classified
* Corrected
* Retested
* Tracked until closure

---

## 10. Quality Metrics

Possible metrics include:

* Failure rate
* Defect density
* Test coverage
* Reliability
* Availability
* Recovery time
* Number of critical defects
* Requirements coverage

---

## 11. Final Verification

Before deployment:

* All critical requirements must be verified.
* Critical defects must be resolved.
* System testing must be completed.
* Failure scenarios must be evaluated.
* Security must be verified.
* Reliability must be demonstrated.

### Conclusion

Software Quality Control in space research focuses strongly on **reliability, accuracy, safety, fault tolerance, rigorous testing, and failure prevention**, because software failure can have extremely serious consequences.

---

# 26. PYQ — 2024

## Question

> **Plan Software Quality Control with respect to college attendance software.**

This question is similar to the 2022 question.

### Application

For college attendance software, SQC should cover:

```text
Requirements
     ↓
Quality Criteria
     ↓
Reviews
     ↓
Functional Testing
     ↓
Security Testing
     ↓
Performance Testing
     ↓
Data Validation
     ↓
Defect Management
     ↓
Retesting
     ↓
Quality Metrics
     ↓
User Acceptance
     ↓
Release
```

### Important Quality Checks

#### Attendance Accuracy

Verify that:

* Present/absent status is recorded correctly.
* Attendance percentage is calculated correctly.
* Duplicate records are prevented.

#### Security

Verify that:

* Faculty can modify only permitted records.
* Students cannot modify attendance.
* Administrators have appropriate privileges.

#### Data Integrity

Verify that:

* Records are stored correctly.
* Database updates are consistent.
* Attendance history is preserved where required.

#### Performance

Verify:

* Login response time.
* Attendance submission time.
* Report-generation time.
* Performance under multiple users.

#### Usability

Verify that:

* Faculty can mark attendance easily.
* Students can understand attendance reports.
* Error messages are clear.

#### Reliability

Verify that:

* Data is not lost.
* System recovery works.
* Failures do not corrupt attendance records.

---

# 27. PYQ — 2025

## Question

> **Plan Software Quality Control with respect to military system.**

---

## Answer

Military software is a high-criticality system where security, reliability, availability, accuracy, and safety are extremely important.

---

## 1. Identify Quality Requirements

Important requirements include:

* High reliability
* High availability
* Security
* Data integrity
* Accuracy
* Fault tolerance
* Performance
* Safety
* Maintainability
* Traceability

---

## 2. Requirement Review

Requirements should be checked for:

* Correctness
* Completeness
* Consistency
* Testability
* Traceability
* Security requirements

Any ambiguity in critical requirements should be resolved before development.

---

## 3. Design Review

Review the system design for:

* Security
* Redundancy
* Fault tolerance
* Failure recovery
* Performance
* Access control
* Data integrity

---

## 4. Code Inspection

Source code should undergo rigorous review.

Check for:

* Logic errors
* Security vulnerabilities
* Incorrect calculations
* Memory/resource problems
* Exception-handling errors

---

## 5. Functional Testing

Verify that all required functions work correctly.

Examples:

* User authentication
* Data processing
* Communication
* Monitoring
* Alert generation
* Reporting

---

## 6. Security Testing

Security is a critical quality requirement.

Test:

* Authentication
* Authorization
* Access control
* Data protection
* Secure communication
* Vulnerability resistance

---

## 7. Reliability and Fault-Tolerance Testing

Test the behavior when:

* Hardware fails
* Network connection fails
* Sensors provide invalid data
* A software component crashes
* Power is interrupted

The system should fail safely and recover appropriately.

---

## 8. Performance and Stress Testing

Test:

* Response time
* Processing capacity
* Concurrent operations
* Resource utilization
* Behavior under heavy load

---

## 9. Data Integrity Testing

Verify that critical information:

* Is not corrupted.
* Is transmitted correctly.
* Is stored correctly.
* Is processed correctly.

---

## 10. Defect Management

Critical defects should be tracked carefully.

```text
Defect Detection
      ↓
Severity Assessment
      ↓
Root Cause Analysis
      ↓
Correction
      ↓
Retesting
      ↓
Regression Testing
      ↓
Approval
```

---

## 11. Quality Metrics

Examples:

* Critical defect count
* Defect density
* Test coverage
* Failure rate
* System availability
* Response time
* Recovery time
* Requirements coverage

---

## 12. Final Acceptance

The system should be released only after satisfying defined acceptance criteria.

### Conclusion

For military systems, Software Quality Control must emphasize **security, reliability, accuracy, fault tolerance, availability, rigorous testing, and controlled defect management** because system failures can have severe consequences.

---

# 28. PYQ — 2024

## Question

> **Write a note on pillars of Quality Management System.**

---

## Answer

The major pillars/principles of a Quality Management System are:

### 1. Customer Focus

The organization should understand customer requirements and consistently work toward customer satisfaction.

### 2. Leadership

Management should establish quality objectives, provide resources, and create a culture of quality.

### 3. Engagement of People

Employees at all levels should participate in achieving quality objectives.

### 4. Process Approach

Activities should be managed as interconnected processes to achieve consistent results.

### 5. Improvement

The organization should continuously improve products, services, and processes.

### 6. Evidence-Based Decision Making

Decisions should be based on reliable data, measurements, and analysis.

### 7. Relationship Management

The organization should maintain effective relationships with customers, suppliers, partners, and other stakeholders.

### Short Diagram

```text
              QUALITY MANAGEMENT
                     │
     ┌───────────────┼────────────────┐
     ↓               ↓                ↓
Customer          Leadership       People
 Focus
     │               │                │
     └───────────────┼────────────────┘
                     ↓
             Process Approach
                     ↓
                 Improvement
                     ↓
          Evidence-Based Decisions
                     ↓
           Relationship Management
```

---

# 29. How to Answer Scenario-Based SQC Questions

When the question gives a system such as:

* College attendance
* Space research
* Military system
* Banking
* Healthcare
* Railway
* E-commerce

first identify the **quality characteristics that matter most**.

---

## 29.1 College Attendance Software

Prioritize:

```text
Accuracy
Security
Data Integrity
Usability
Performance
Reliability
```

---

## 29.2 Space Research

Prioritize:

```text
Reliability
Accuracy
Safety
Fault Tolerance
Availability
Performance
Data Integrity
```

---

## 29.3 Military System

Prioritize:

```text
Security
Reliability
Safety
Availability
Accuracy
Fault Tolerance
Data Integrity
```

---

# 30. General SQC Planning Template

This template can be adapted to almost any scenario-based examination question.

## Step 1 — Identify the System

State what the software does.

## Step 2 — Identify Quality Requirements

Identify relevant characteristics such as:

* Reliability
* Security
* Accuracy
* Performance
* Usability
* Availability
* Maintainability
* Safety

## Step 3 — Define Quality Standards

Specify measurable quality expectations.

## Step 4 — Review Requirements

Check requirements for correctness, completeness, consistency, and testability.

## Step 5 — Review Design

Identify design-level defects and risks.

## Step 6 — Inspect Code

Identify implementation defects.

## Step 7 — Perform Testing

Include appropriate testing types.

## Step 8 — Manage Defects

Record, classify, fix, retest, and close defects.

## Step 9 — Measure Quality

Use appropriate metrics.

## Step 10 — Final Acceptance

Verify that all critical quality requirements are satisfied.

---

# 31. Important Quality Metrics

| Metric                    | Meaning                                                |
| ------------------------- | ------------------------------------------------------ |
| Defect Density            | Number of defects relative to software size            |
| Test Coverage             | Percentage of software/requirements covered by testing |
| Failure Rate              | Frequency of software failures                         |
| Availability              | Percentage of time system is operational               |
| MTBF                      | Mean Time Between Failures                             |
| MTTR                      | Mean Time To Repair                                    |
| Response Time             | Time taken to respond to a request                     |
| Requirements Coverage     | Percentage of requirements verified                    |
| Defect Removal Efficiency | Effectiveness of defect detection and removal          |

---

# 32. Defect Life Cycle

```text
       New
        ↓
     Assigned
        ↓
      Open
        ↓
    In Progress
        ↓
       Fixed
        ↓
     Retested
      ↙     ↘
    Fail     Pass
     ↓        ↓
 Reopened    Closed
```

---

# 33. QMS and SQC Relationship

QMS provides the overall framework for managing quality.

SQC is one of the operational mechanisms used within that quality framework.

```text
              QMS
               │
     ┌─────────┼──────────┐
     ↓         ↓          ↓
 Quality    Quality     Quality
 Planning   Assurance   Control
                         │
             ┌───────────┼───────────┐
             ↓           ↓           ↓
          Testing     Inspection   Measurement
             │           │           │
             └───────────┼───────────┘
                         ↓
                       Defects
                         ↓
                     Correction
                         ↓
                    Improvement
```

---

# 34. QA, QC, and QMS — Quick Comparison

| Concept             | Main Focus                | Example                                |
| ------------------- | ------------------------- | -------------------------------------- |
| QMS                 | Overall quality framework | Quality policies and processes         |
| QA                  | Process quality           | Auditing development/testing processes |
| QC                  | Product quality           | Testing attendance calculation         |
| Quality Improvement | Better future performance | Improving defect-prone processes       |

### Remember

> **QMS = Framework**
> **QA = Process**
> **QC = Product**
> **Improvement = Make it better**

---

# 35. Exam-Oriented Key Points

## Software Quality Control

Remember:

> **SQC = Detect, Measure, Verify, Correct**

Main activities:

* Testing
* Inspection
* Reviews
* Defect detection
* Defect reporting
* Retesting
* Quality measurement

---

## QMS

Remember:

> **QMS = Policies + Processes + People + Resources + Measurement + Improvement**

---

## QMS Pillars

Remember:

> **Customer → Leadership → People → Process → Improvement → Evidence → Relationships**

---

# 36. PYQ Coverage Summary

| Year | Question                                             | Covered In     |
| ---- | ---------------------------------------------------- | -------------- |
| 2022 | Plan SQC with respect to college attendance software | Section 24     |
| 2023 | Plan SQC with respect to space research              | Section 25     |
| 2024 | Plan SQC with respect to college attendance software | Section 26     |
| 2025 | Plan SQC with respect to military system             | Section 27     |
| 2024 | Write a note on pillars of QMS                       | Section 28     |
| —    | QMS Structure                                        | Sections 12–13 |
| —    | Important aspects of Quality Management              | Section 22     |

---

# 37. Last-Minute Revision

### Software Quality Processes

```text
Plan
 ↓
Review
 ↓
Develop
 ↓
Test
 ↓
Inspect
 ↓
Measure
 ↓
Correct
 ↓
Improve
```

### SQC

> **SQC checks whether the developed software actually satisfies quality requirements.**

### QMS

> **QMS is the organized framework used to manage and continually improve quality.**

### Seven QMS Pillars

1. Customer Focus
2. Leadership
3. Engagement of People
4. Process Approach
5. Improvement
6. Evidence-Based Decision Making
7. Relationship Management

### Scenario Questions

For **college attendance** → focus on **accuracy, security, data integrity, usability, performance**.

For **space research** → focus on **reliability, accuracy, safety, fault tolerance, availability**.

For **military systems** → focus on **security, reliability, safety, availability, accuracy, fault tolerance**.

### Best Answer Pattern

```text
System
  ↓
Quality Requirements
  ↓
Quality Standards
  ↓
Reviews & Inspections
  ↓
Testing
  ↓
Defect Management
  ↓
Retesting
  ↓
Quality Metrics
  ↓
Acceptance
  ↓
Continuous Improvement
```

---

# 38. One-Line Definitions for Exam

**Software Quality Process:**
A systematic set of activities used to ensure that software is developed and maintained according to defined quality requirements and standards.

**Software Quality Control:**
Operational techniques and activities used to verify that a software product satisfies specified quality requirements.

**Quality Management System:**
A structured framework of policies, processes, procedures, resources, and responsibilities used to manage and improve organizational quality.

**Quality Management:**
The coordinated activities used to direct, control, assure, and improve quality within an organization.

**Quality Improvement:**
Continuous activities performed to enhance the effectiveness, efficiency, and quality of products and processes.

---

# 39. Most Important Exam Insight

For a **"Plan Software Quality Control with respect to X"** question, the examiner is testing whether you can **apply general SQC principles to a particular domain**.

Therefore, write:

1. System understanding
2. Quality requirements
3. Quality standards
4. Requirement/design/code reviews
5. Appropriate testing
6. Defect management
7. Quality metrics
8. Final acceptance
9. Continuous monitoring/improvement

Then give **domain-specific quality characteristics**.

> **Do not write exactly the same generic SQC answer for every scenario. Change the priority of quality characteristics according to the system.**

For example:

**Attendance → Accuracy + Data Integrity**

**Space Research → Reliability + Safety + Fault Tolerance**

**Military → Security + Reliability + Safety + Availability**

This is the key to scoring well in application/scenario-based Software Quality Control questions.
