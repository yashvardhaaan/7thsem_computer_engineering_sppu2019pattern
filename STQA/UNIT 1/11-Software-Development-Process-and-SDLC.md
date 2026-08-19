# 11 — Software Development Process and SDLC

# 1. Introduction

Software development is a systematic process used to develop, deliver, and maintain software.

A software project should not begin directly with coding.

A proper development process generally follows:

```text
Problem / Need
      ↓
Requirements
      ↓
Analysis
      ↓
Design
      ↓
Implementation
      ↓
Testing
      ↓
Deployment
      ↓
Maintenance
```

This complete sequence is commonly represented using the **Software Development Life Cycle (SDLC)**.

---

# 2. What is Software Development Process?

A **software development process** is a structured set of activities, methods, and practices used to develop and maintain software.

It defines:

* What activities should be performed
* When they should be performed
* Who should perform them
* What outputs should be produced
* How quality should be controlled

### Simple Definition

> **Software development process is a systematic approach used to develop software from initial requirements through deployment and maintenance.**

---

# 3. Objectives of Software Development Process

The major objectives are:

1. Develop software that satisfies requirements.
2. Deliver software within expected time.
3. Control development cost.
4. Maintain software quality.
5. Reduce development risks.
6. Manage resources effectively.
7. Detect defects early.
8. Support maintenance and future changes.

---

# 4. Basic Software Development Process

A simplified software development process is:

```text
Identify Problem
      ↓
Gather Requirements
      ↓
Analyze Requirements
      ↓
Design Solution
      ↓
Implement
      ↓
Test
      ↓
Deploy
      ↓
Maintain
```

Each stage produces outputs used by later stages.

---

# 5. Software Development Activities

## 5.1 Problem Identification

The organization first identifies:

* Business problem
* User need
* Opportunity
* Existing system limitations

### Example

A college wants to replace manual attendance registers with an online attendance system.

---

# 6. Requirement Engineering

Requirements are collected and analyzed from stakeholders.

Activities include:

* Requirement elicitation
* Requirement analysis
* Requirement specification
* Requirement validation
* Requirement management

Output:

> **Software Requirements Specification (SRS)**

---

# 7. Software Design

The design stage determines how the system will be built.

It may include:

* Architecture
* Modules
* Database
* Interfaces
* APIs
* Security
* Data flow

Example:

```text
Frontend
    ↓
REST API
    ↓
Backend
    ↓
Database
```

---

# 8. Implementation

During implementation, developers convert the design into executable software.

Activities include:

* Coding
* Unit testing
* Code review
* Version control
* Build

---

# 9. Testing

Testing evaluates whether the software works as expected.

Testing may include:

* Unit testing
* Integration testing
* System testing
* Acceptance testing
* Regression testing
* Performance testing
* Security testing

The goal is to identify defects and provide confidence in software quality.

---

# 10. Deployment

After successful testing and approval, software is deployed to the target environment.

Examples:

* Production server
* Cloud environment
* Mobile application store
* Enterprise infrastructure

---

# 11. Maintenance

After deployment, software may need:

* Bug fixes
* Enhancements
* Security updates
* Performance improvements
* Compatibility changes

Maintenance is an important part of the software lifecycle.

---

# 12. What is SDLC?

**SDLC** stands for **Software Development Life Cycle**.

It is a structured framework describing the different phases involved in developing and maintaining software.

### Definition

> **SDLC is a systematic life cycle consisting of phases through which software passes from initial planning and requirements to development, testing, deployment, and maintenance.**

---

# 13. Basic SDLC Phases

The common phases are:

1. Planning
2. Requirement Analysis
3. Design
4. Implementation
5. Testing
6. Deployment
7. Maintenance

```text
       PLANNING
           ↓
 REQUIREMENT ANALYSIS
           ↓
         DESIGN
           ↓
    IMPLEMENTATION
           ↓
        TESTING
           ↓
      DEPLOYMENT
           ↓
      MAINTENANCE
           ↓
      Improvement
           ↓
   Next Version / Change
```

---

# 14. Phase 1 — Planning

The project is evaluated and planned.

Activities include:

* Problem identification
* Scope definition
* Feasibility analysis
* Resource planning
* Cost estimation
* Schedule estimation
* Risk identification

### Output

A basic project plan and feasibility understanding.

---

# 15. Phase 2 — Requirement Analysis

Stakeholder needs are collected and analyzed.

Activities:

* Requirement gathering
* Interviews
* Surveys
* Observation
* Requirement analysis
* Requirement validation
* Documentation

### Output

**Software Requirements Specification (SRS)**

---

# 16. Phase 3 — Design

The system architecture and detailed solution are designed.

Activities include:

* Architectural design
* Database design
* UI design
* Module design
* Interface design
* Security design

### Output

Design specifications.

---

# 17. Phase 4 — Implementation

Developers implement the design using programming languages and development tools.

Activities:

* Coding
* Unit testing
* Code review
* Build
* Version control

### Output

Working software components.

---

# 18. Phase 5 — Testing

The developed software is verified and validated.

Activities may include:

```text
Unit Testing
     ↓
Integration Testing
     ↓
System Testing
     ↓
Acceptance Testing
```

Additional testing:

* Regression testing
* Performance testing
* Security testing
* Usability testing

---

# 19. Phase 6 — Deployment

The tested software is released to users.

Deployment may be:

* Manual
* Automated
* Gradual
* Phased
* Blue-green
* Canary

The exact deployment strategy depends on the system.

---

# 20. Phase 7 — Maintenance

After release, the software is monitored and maintained.

Activities include:

* Bug fixing
* Security patches
* Performance improvements
* Feature enhancements
* Compatibility updates

---

# 21. SDLC Diagram

```text
                    SDLC
                     ↓
              +-------------+
              |  Planning   |
              +------+------+
                     ↓
              +-------------+
              | Requirements|
              +------+------+
                     ↓
              +-------------+
              |   Design    |
              +------+------+
                     ↓
              +-------------+
              |Implementation|
              +------+------+
                     ↓
              +-------------+
              |   Testing   |
              +------+------+
                     ↓
              +-------------+
              | Deployment  |
              +------+------+
                     ↓
              +-------------+
              | Maintenance |
              +------+------+
                     |
                     +------→ Next Release
```

---

# 22. SDLC is Iterative in Real Projects

The basic diagram looks sequential, but real software development is often iterative.

For example:

```text
Requirements
     ↓
Design
     ↓
Development
     ↓
Testing
     ↓
Feedback
     ↓
Updated Requirements
     ↓
Development
     ↓
Testing
     ↓
Release
```

This is especially common in Agile development.

---

# 23. SDLC Models

An **SDLC model** defines how the phases of software development are organized and executed.

Important models include:

1. Waterfall Model
2. V-Model
3. Incremental Model
4. Iterative Model
5. Spiral Model
6. Prototyping Model
7. Agile Model

---

# 24. Waterfall Model

The **Waterfall Model** follows a largely sequential development approach.

```text
Requirements
     ↓
Design
     ↓
Implementation
     ↓
Testing
     ↓
Deployment
     ↓
Maintenance
```

The output of one phase becomes the input to the next.

---

## Advantages

* Simple to understand
* Clearly defined phases
* Easy to manage
* Good documentation
* Suitable when requirements are stable

## Disadvantages

* Difficult to accommodate changing requirements
* Testing happens relatively late
* Working software is delivered late
* Errors in requirements can become expensive later

---

# 25. V-Model

The **V-Model** emphasizes verification and validation.

Each development phase has a corresponding testing activity.

```text
Requirements           Acceptance Testing
     ↓                       ↑
System Design          System Testing
     ↓                       ↑
Architecture           Integration Testing
     ↓                       ↑
Module Design          Unit Testing
     ↓                       ↑
          Coding
```

### Key Idea

> **Testing is planned alongside development.**

---

# 26. Incremental Model

In the Incremental Model, the system is developed and delivered in multiple increments.

```text
Increment 1 → Basic Features
      ↓
Increment 2 → Additional Features
      ↓
Increment 3 → More Features
      ↓
Complete Product
```

### Advantage

Users receive useful functionality earlier.

---

# 27. Iterative Model

The system is developed through repeated cycles.

```text
Plan
 ↓
Develop
 ↓
Test
 ↓
Evaluate
 ↓
Improve
 ↓
Repeat
```

Each iteration improves the software.

---

# 28. Spiral Model

The Spiral Model combines iterative development with strong risk analysis.

Each cycle generally involves:

1. Planning
2. Risk analysis
3. Engineering
4. Evaluation

```text
        Planning
           ↓
      Risk Analysis
           ↓
       Development
           ↓
        Evaluation
           ↓
      Next Spiral
```

### Key Advantage

Strong focus on risk management.

---

# 29. Prototyping Model

A prototype is an early version of the system used to understand requirements or validate design ideas.

```text
Initial Requirements
       ↓
Prototype
       ↓
User Feedback
       ↓
Refined Requirements
       ↓
Final System
```

Useful when requirements are unclear.

---

# 30. Agile Model

Agile development emphasizes:

* Iterative development
* Frequent delivery
* Customer collaboration
* Adaptability
* Continuous feedback

A simplified Agile cycle:

```text
Backlog
   ↓
Sprint Planning
   ↓
Development
   ↓
Testing
   ↓
Review
   ↓
Feedback
   ↓
Next Sprint
```

---

# 31. Comparison of SDLC Models

| Model       | Main Idea                           | Best Suited For                  |
| ----------- | ----------------------------------- | -------------------------------- |
| Waterfall   | Sequential phases                   | Stable requirements              |
| V-Model     | Development + corresponding testing | Quality/testing-focused projects |
| Incremental | Product delivered in increments     | Early feature delivery           |
| Iterative   | Repeated refinement                 | Evolving requirements            |
| Spiral      | Iterative + risk analysis           | High-risk projects               |
| Prototyping | Prototype + feedback                | Unclear requirements             |
| Agile       | Short iterations + feedback         | Frequently changing requirements |

---

# 32. Problematic Areas of SDLC

Software development can face problems at different SDLC stages.

Important problematic areas include:

* Requirement problems
* Communication problems
* Design problems
* Technical problems
* Resource problems
* Schedule problems
* Cost problems
* Quality problems
* Risk management problems
* Change management problems
* Testing problems
* Maintenance problems

---

# 33. Requirement Problems

Poor requirements are one of the biggest sources of software problems.

Examples:

* Incomplete requirements
* Ambiguous requirements
* Conflicting requirements
* Frequently changing requirements
* Poor stakeholder communication

### Effect

```text
Poor Requirements
      ↓
Wrong Understanding
      ↓
Wrong Design
      ↓
Wrong Implementation
      ↓
Defects
      ↓
Rework
```

---

# 34. Communication Problems

Software projects involve many stakeholders.

Poor communication can cause:

* Misunderstanding
* Incorrect requirements
* Delays
* Conflicts
* Incorrect implementation

Good communication is therefore essential.

---

# 35. Design Problems

Poor architecture or design can lead to:

* Performance problems
* Security problems
* Maintainability problems
* Scalability problems
* Integration problems

A poor design may make later changes expensive.

---

# 36. Technical Problems

Technical problems may involve:

* New technology
* Integration
* Database
* Network
* Infrastructure
* Performance
* Security
* Compatibility

---

# 37. Resource Problems

Resources include:

* People
* Hardware
* Software
* Infrastructure
* Budget
* Time

Insufficient resources can affect quality and schedule.

---

# 38. Schedule Problems

Unrealistic schedules may cause:

* Rushed development
* Reduced testing
* Technical debt
* Poor documentation
* Increased defects

```text
Unrealistic Deadline
       ↓
Development Pressure
       ↓
Testing Reduced
       ↓
Defects ↑
       ↓
Quality ↓
```

---

# 39. Cost Problems

Poor estimation can lead to:

* Budget overruns
* Resource shortages
* Reduced scope
* Project delays

Cost should be monitored throughout development.

---

# 40. Quality Problems

Quality problems include:

* High defect rates
* Poor testing
* Inadequate reviews
* Security weaknesses
* Poor maintainability

Quality should be considered throughout the SDLC.

---

# 41. Change Management Problems

Requirements can change during development.

If changes are not controlled:

```text
Uncontrolled Changes
       ↓
Scope Creep
       ↓
More Development
       ↓
Schedule Delay
       ↓
Cost Increase
       ↓
Quality Problems
```

A proper change-management process is therefore necessary.

---

# 42. Testing Problems

Testing may face:

* Insufficient time
* Incomplete test coverage
* Poor test environments
* Poor test data
* Lack of automation
* Late defect detection

Testing should be planned early rather than treated as the final activity only.

---

# 43. Maintenance Problems

After deployment, maintenance can become difficult because of:

* Poor documentation
* Complex code
* Technical debt
* Outdated technology
* Lack of skilled personnel
* Dependencies

Good design and documentation reduce maintenance problems.

---

# 44. PYQ — 2024

## Question

**Explain problematic area of Software Development Life Cycle.**

### Answer

The Software Development Life Cycle can face several problematic areas that affect project quality, cost, schedule, and customer satisfaction.

Important problematic areas are:

---

### 1. Requirement Problems

Requirements may be:

* Incomplete
* Ambiguous
* Conflicting
* Frequently changing

These problems can result in incorrect software.

---

### 2. Communication Problems

Poor communication between stakeholders can cause misunderstanding and incorrect implementation.

---

### 3. Planning Problems

Poor planning can result in:

* Unrealistic schedules
* Incorrect resource allocation
* Poor cost estimation
* Unmanaged risks

---

### 4. Design Problems

Poor system design can lead to:

* Performance issues
* Security issues
* Scalability problems
* Maintenance difficulties

---

### 5. Technical Problems

Projects may face:

* Technology limitations
* Integration problems
* Infrastructure failures
* Compatibility issues

---

### 6. Resource Problems

Insufficient:

* People
* Budget
* Tools
* Hardware
* Infrastructure

can affect project execution.

---

### 7. Schedule Problems

Unrealistic deadlines may cause:

* Rushed coding
* Reduced testing
* Increased defects
* Poor documentation

---

### 8. Cost Problems

Poor estimation may result in:

* Budget overruns
* Resource shortages
* Reduced project scope

---

### 9. Quality Problems

Inadequate quality practices may lead to:

* Defects
* Security problems
* Reliability issues
* Customer dissatisfaction

---

### 10. Change Management Problems

Uncontrolled requirement changes can cause:

* Scope creep
* Delays
* Increased cost
* Increased complexity

---

### 11. Testing Problems

Testing may be affected by:

* Lack of time
* Poor test data
* Incomplete coverage
* Poor test environments

---

### 12. Maintenance Problems

Poor documentation, technical debt, and complex architecture can make maintenance difficult.

---

## Problematic Areas Diagram

```text
                 SDLC PROBLEMS
                       |
       +---------------+---------------+
       |               |               |
 Requirements     Planning        Communication
       |               |               |
     Design          Cost          Resources
       |               |               |
    Technical       Schedule       Quality
       |               |               |
    Testing         Changes       Maintenance
       +---------------+---------------+
                       |
                 Project Failure
                 / Quality Issues
```

### Conclusion

The problematic areas of SDLC can affect cost, schedule, quality, and customer satisfaction. Proper requirement management, planning, communication, risk management, testing, and continual improvement help reduce these problems.

### ⭐ Exam Keywords

**Requirements + Communication + Planning + Design + Technical + Resources + Cost + Schedule + Quality + Changes + Testing + Maintenance**

---

# 45. Constructing SDLC for a Real-Life Application

For application-based questions, first identify the application and then map its development activities to SDLC phases.

---

# 46. Example — College Attendance System

Suppose the question asks:

> **Construct SDLC for a college attendance application.**

### Phase 1 — Planning

Identify the problem:

> Manual attendance is time-consuming and difficult to manage.

Objectives:

* Digital attendance
* Faster reporting
* Reduced manual errors

---

### Phase 2 — Requirements

Functional requirements:

* Teacher login
* Mark attendance
* Edit attendance
* Student login
* View attendance
* Generate reports

Non-functional requirements:

* Security
* Reliability
* Fast response
* Availability

---

### Phase 3 — Design

Possible architecture:

```text
Web / Mobile UI
       ↓
Backend API
       ↓
Database
```

Database may contain:

* Students
* Teachers
* Subjects
* Attendance
* Classes

---

### Phase 4 — Implementation

Develop:

* Authentication
* Attendance module
* Student module
* Teacher module
* Reports

---

### Phase 5 — Testing

Perform:

* Unit testing
* Integration testing
* System testing
* Security testing
* User acceptance testing

Example:

> Verify that only authorized teachers can mark attendance.

---

### Phase 6 — Deployment

Deploy the application to:

* College server
* Cloud
* Internal network

---

### Phase 7 — Maintenance

After deployment:

* Fix bugs
* Add features
* Improve performance
* Update security

---

# 47. PYQ — 2024

## Question

**Construct SDLC for any real-life application.**

### Answer — College Attendance System

```text
                 COLLEGE ATTENDANCE SYSTEM
                           |
                       PLANNING
                           ↓
                Identify Manual Problems
                           ↓
                     REQUIREMENTS
                           ↓
        Teacher + Student + Attendance + Reports
                           ↓
                         DESIGN
                           ↓
                  UI + Backend + Database
                           ↓
                    IMPLEMENTATION
                           ↓
                Coding + Unit Testing
                           ↓
                       TESTING
                           ↓
          Integration + System + Acceptance
                           ↓
                      DEPLOYMENT
                           ↓
                   College Environment
                           ↓
                     MAINTENANCE
                           ↓
                Bug Fixes + Enhancements
```

### Exam Tip

For any real-life application, use the same structure:

```text
Planning
   ↓
Requirements
   ↓
Design
   ↓
Implementation
   ↓
Testing
   ↓
Deployment
   ↓
Maintenance
```

Then write **2–3 application-specific points under every phase**.

---

# 48. PYQ — 2025

## Question

**Draw and explain SDLC Life Cycle.**

### Answer

SDLC represents the systematic sequence of activities involved in developing and maintaining software.

The major phases are:

```text
                 PLANNING
                     ↓
             REQUIREMENT ANALYSIS
                     ↓
                  DESIGN
                     ↓
              IMPLEMENTATION
                     ↓
                  TESTING
                     ↓
                DEPLOYMENT
                     ↓
                MAINTENANCE
                     ↓
               NEXT VERSION
                     ↓
              CONTINUOUS CHANGE
```

---

## Planning

Determine:

* Scope
* Feasibility
* Resources
* Cost
* Schedule
* Risks

---

## Requirement Analysis

Identify and document:

* User requirements
* Functional requirements
* Non-functional requirements

---

## Design

Define:

* Architecture
* Database
* Interfaces
* Modules
* Security

---

## Implementation

Convert the design into executable code.

---

## Testing

Verify and validate the software.

---

## Deployment

Release the software to users.

---

## Maintenance

Fix defects and implement improvements after deployment.

### Conclusion

SDLC provides a systematic framework for software development and helps manage quality, cost, time, risks, and resources throughout the software lifecycle.

---

# 49. Software Management

Software management involves planning, organizing, directing, monitoring, and controlling software development activities.

It focuses on:

* Scope
* Cost
* Schedule
* Quality
* Resources
* Risks
* People
* Communication
* Changes

---

# 50. Major Software Management Activities

```text
              SOFTWARE MANAGEMENT
                      |
       +--------------+--------------+
       |              |              |
     Scope          Cost          Schedule
       |              |              |
     Quality        Risk          Resources
       |              |              |
     People      Communication     Changes
```

---

# 51. Scope Management

Scope management defines what is included and excluded from the project.

It prevents uncontrolled scope expansion.

### Example

Original scope:

> Attendance management.

Additional requests:

* Payroll
* Hostel management
* Library management
* Transport management

If all are added without proper control, scope creep occurs.

---

# 52. Risk Management

Risk management involves:

1. Identify risks.
2. Analyze risks.
3. Prioritize risks.
4. Plan responses.
5. Monitor risks.

Example:

```text
Risk:
Database failure
      ↓
Impact:
Data unavailable
      ↓
Mitigation:
Backup + Replication
```

---

# 53. Schedule Management

Schedule management ensures that activities are completed within expected time.

It includes:

* Task planning
* Dependencies
* Milestones
* Deadlines
* Progress tracking

---

# 54. Cost Management

Cost management involves:

* Estimating cost
* Budgeting
* Monitoring expenses
* Controlling cost

---

# 55. Resource Management

Resources include:

* Developers
* Testers
* Managers
* Infrastructure
* Tools
* Hardware
* Budget

Effective resource allocation improves project execution.

---

# 56. Quality Management in SDLC

Quality management should happen throughout the lifecycle.

```text
Requirements → Review
Design       → Design Review
Coding       → Code Review
Testing      → Test Evaluation
Deployment   → Release Validation
Maintenance  → Monitoring
```

Quality should not be left only to the final testing phase.

---

# 57. SDLC and Quality

The relationship can be represented as:

```text
Good Requirements
       ↓
Good Design
       ↓
Good Implementation
       ↓
Effective Testing
       ↓
Controlled Deployment
       ↓
Effective Maintenance
       ↓
Better Software Quality
```

A weakness at an early stage can affect later stages.

---

# 58. Important Differences

## Software Development Process vs SDLC

| Software Development Process          | SDLC                                             |
| ------------------------------------- | ------------------------------------------------ |
| Broad set of practices and activities | Structured lifecycle framework                   |
| Describes how software is developed   | Describes major phases of development            |
| May include standards, tools, methods | Usually represented through lifecycle phases     |
| Can be Agile, Waterfall, etc.         | Can be implemented through different SDLC models |

---

## Waterfall vs Agile

| Waterfall                                    | Agile                                |
| -------------------------------------------- | ------------------------------------ |
| Sequential                                   | Iterative/incremental                |
| Requirements expected to be stable           | Requirements can evolve              |
| Testing generally follows development phases | Testing occurs throughout iterations |
| Feedback later                               | Frequent feedback                    |
| Release often later                          | Frequent releases possible           |
| Change can be expensive                      | Designed to accommodate change       |

---

# 59. Exam-Oriented Answer Templates

## Question: Explain problematic areas of SDLC.

Write:

1. Definition of SDLC.
2. Explain problematic areas.
3. Requirements
4. Communication
5. Planning
6. Design
7. Technical issues
8. Resources
9. Schedule
10. Cost
11. Quality
12. Change management
13. Testing
14. Maintenance
15. Diagram
16. Conclusion

---

## Question: Draw and explain SDLC.

Write:

```text
Planning
   ↓
Requirements
   ↓
Design
   ↓
Implementation
   ↓
Testing
   ↓
Deployment
   ↓
Maintenance
```

Then explain each phase in 2–4 lines.

---

## Question: Construct SDLC for a real-life application.

Use:

```text
Planning
   ↓
Application Requirements
   ↓
Application Design
   ↓
Implementation
   ↓
Application Testing
   ↓
Deployment
   ↓
Maintenance
```

Then give application-specific examples under each phase.

---

# 60. Quick Revision

## SDLC

> **Software Development Life Cycle is a systematic framework consisting of phases used to develop and maintain software.**

### Phases

```text
P → Planning
R → Requirements
D → Design
I → Implementation
T → Testing
D → Deployment
M → Maintenance
```

Memory:

> **P R D I T D M**

---

# 61. SDLC Models

```text
Waterfall → Sequential
V-Model   → Development + Testing
Incremental → Product in increments
Iterative → Repeated refinement
Spiral    → Risk-driven
Prototype → Early model + feedback
Agile     → Iterative + adaptive
```

---

# 62. Problematic Areas

Remember:

```text
Requirements
Communication
Planning
Design
Technical
Resources
Cost
Schedule
Quality
Changes
Testing
Maintenance
```

---

# 63. Most Important Exam Points

| Topic                                    |          Year | Priority |
| ---------------------------------------- | ------------: | -------: |
| Problematic Areas of SDLC                |          2024 |    ⭐⭐⭐⭐⭐ |
| Construct SDLC for Real-Life Application |          2024 |    ⭐⭐⭐⭐⭐ |
| Draw and Explain SDLC Life Cycle         |          2025 |    ⭐⭐⭐⭐⭐ |
| SDLC Models                              | No direct PYQ |    ⭐⭐⭐⭐⭐ |
| Software Management                      | No direct PYQ |     ⭐⭐⭐⭐ |
| Waterfall / V-Model / Agile              | No direct PYQ |     ⭐⭐⭐⭐ |

---

# 64. One-Minute Revision

```text
                    SDLC
                     |
                PLANNING
                     ↓
               REQUIREMENTS
                     ↓
                  DESIGN
                     ↓
              IMPLEMENTATION
                     ↓
                 TESTING
                     ↓
                DEPLOYMENT
                     ↓
                MAINTENANCE
                     ↓
             NEXT RELEASE
                     ↓
                 IMPROVE
```

### ⭐ Golden Rules

> **SDLC = Systematic lifecycle for developing and maintaining software.**

> **Requirements tell us what to build.**

> **Design tells us how to build it.**

> **Implementation builds it.**

> **Testing evaluates it.**

> **Deployment delivers it.**

> **Maintenance keeps improving it.**

> **Waterfall = Sequential.**

> **V-Model = Development phases mapped to testing phases.**

> **Spiral = Risk-focused.**

> **Prototype = Useful when requirements are unclear.**

> **Agile = Iterative, incremental, and adaptive.**

> **Poor requirements are one of the major sources of SDLC problems.**
