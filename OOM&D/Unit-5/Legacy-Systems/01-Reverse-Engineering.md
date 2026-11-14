# Unit IV — 3. Legacy Systems



PYQ priority: Medium

Confirmed PYQ — November 2023



## 1. Introduction to legacy systems

Definition: A legacy system is an existing software system that continues to be used by an organization because it performs important business operations, even though its technology, architecture or design may be outdated.

Examples:

- Old banking systems running on mainframes.
- Government record-management applications.
- Railway reservation systems.
- Enterprise applications developed using older programming languages.

Characteristics of legacy systems:

1. Developed using outdated technologies.
2. May have incomplete documentation.
3. Contains important business data.
4. Difficult and expensive to maintain.
5. May have complex and poorly understood architecture.
6. Replacing the system can be risky.

Why are legacy systems maintained?

- They support critical business operations.
- They contain valuable historical data.
- Replacing them requires significant investment.
- Employees are familiar with their functionality.
- Migration may interrupt business activities.

## 2. Reverse engineering

Important November 2023 PYQ

Definition: Reverse engineering is the process of analyzing an existing software system to identify its components, structure, relationships and behaviour, and to recover higher-level design or documentation from the implemented system.

In simple words, reverse engineering means understanding how an existing system works by examining its source code, database, executable files and behaviour.

Example:

An organization has an old banking application developed in COBOL. The original design documents are missing.

Using reverse engineering, developers examine its source code, database and execution behaviour to recover:

- Classes and objects.
- Relationships between components.
- Interaction sequences.
- State transitions.
- System architecture.

Objectives of reverse engineering:

1. Understand an existing software system.
2. Recover missing documentation.
3. Identify classes and relationships.
4. Understand system behaviour.
5. Support system modernization.
6. Improve software maintenance.
7. Identify reusable components.

### 2.1 Inputs and outputs of reverse engineering

This is particularly important for the November 2023 PYQ.

## Reverse engineering process

Inputs

- Source code
- Executable programs
- Database schema
- Existing documentation
- System logs
- User interfaces and observed behaviour

Reverse Engineering

Analysis, investigation and model recovery

Outputs

- Recovered class model
- Interaction model
- State model
- Recovered architecture
- Data model
- Design documentation

Inputs explained:

| Input            | Purpose                                 |
| ---------------- | --------------------------------------- |
| Source code      | Understands program logic and structure |
| Executable files | Helps examine system behaviour          |
| Database schema  | Identifies tables and relationships     |
| Documentation    | Provides existing system information    |
| System logs      | Shows execution history and errors      |
| User interface   | Helps understand system functionality   |

Outputs explained:

| Output             | Purpose                                          |
| ------------------ | ------------------------------------------------ |
| Class model        | Identifies classes, attributes and relationships |
| Interaction model  | Identifies communication between objects         |
| State model        | Identifies object states and transitions         |
| Architecture model | Shows system components and organization         |
| Data model         | Describes data structures and relationships      |
| Documentation      | Records recovered design information             |

Important exam point: Reverse engineering does not necessarily produce the original source code or original design. It recovers an approximate model of the existing system from available evidence.

## 3. Building the class model

Definition: Building the class model is the process of identifying classes, their attributes, operations and relationships by analyzing an existing software system.

The objective is to recover the static structure of the legacy system.

Steps involved:

1. Study the source code and existing documentation.
2. Identify important data structures and entities.
3. Identify possible classes.
4. Identify attributes and operations.
5. Identify relationships between classes.
6. Identify inheritance and aggregation relationships.
7. Draw the UML class diagram.
8. Validate the model against the existing system.

Example — Legacy banking system

Suppose an existing banking application contains customer records, account details and transaction records.

Recovered class model:

Customer

customerId, name

1 customer owns multiple accounts

Account

accountNumber, balance

Account has multiple transactions

Transaction

transactionId, amount, date

The recovered model helps developers understand the system's data structure and object relationships.

Advantages:

- Recovers missing class documentation.
- Helps understand existing architecture.
- Supports modernization.
- Makes maintenance easier.

## 4. Building the interaction model

Definition: Building the interaction model is the process of identifying how different objects or components communicate with each other to perform a particular operation in an existing system.

It focuses on the dynamic behaviour of the system.

Steps involved:

1. Identify important system operations.
2. Select a particular use case or scenario.
3. Identify participating objects.
4. Examine method calls and messages.
5. Determine the sequence of communication.
6. Identify conditions and alternative flows.
7. Draw sequence or communication diagrams.
8. Validate the interaction model against actual system behaviour.

Example — ATM cash withdrawal

Suppose the existing ATM system supports cash withdrawal.

## Interaction sequence

1

Customer

Enters PIN and withdrawal amount

2

ATM

Sends authentication request

3

Bank Server

Validates PIN and account

4

Account

Checks and updates balance

5

Cash Dispenser

Dispenses cash

6

ATM

Displays transaction result

The interaction model helps developers understand the communication sequence between objects.

Advantages:

- Identifies object communication.
- Helps recover missing workflows.
- Supports debugging and maintenance.
- Helps recreate system functionality.

## 5. Building the state model

Definition: Building the state model is the process of identifying the different states of an object and the events or conditions that cause transitions between those states.

It focuses on the dynamic life cycle of an object.

Steps involved:

1. Identify important objects.
2. Examine their possible states.
3. Identify events that change states.
4. Determine transition conditions.
5. Identify initial and final states.
6. Draw the UML state machine diagram.
7. Validate the diagram using actual system behaviour.

Example — ATM transaction state model

Idle

Card inserted

Authenticating

Valid PIN

Transaction Selection

Select withdrawal

Processing

Transaction approved

Completed

Illustrative successful withdrawal path. Invalid PIN or declined transactions follow alternative paths.

Advantages:

- Helps understand object life cycles.
- Identifies invalid state transitions.
- Helps recover system behaviour.
- Supports testing and debugging.

## 6. Reverse engineering tips

Reverse engineering can be difficult when a system has poor documentation, complicated code or outdated technologies.

The following practices make the process more effective.

1. Start with system documentation: Examine available manuals, diagrams and technical documents.
2. Study the source code: Identify important modules, functions and dependencies.
3. Understand the database: Examine tables, keys and relationships.
4. Use meaningful examples: Trace important business operations such as login and payment.
5. Identify important classes: Focus on major business entities first.
6. Analyze system behaviour: Observe inputs, outputs and execution logs.
7. Use UML diagrams: Prepare class, interaction and state models.
8. Validate recovered models: Compare the models with the actual system.
9. Document assumptions: Clearly record unknown or uncertain behaviour.
10. Work incrementally: Analyze one subsystem at a time instead of studying the entire system at once.

Important: Reverse engineering is an iterative process. Recovered models should be refined whenever additional information becomes available.

## 7. Wrapping

Definition: Wrapping is the process of creating an interface around an existing legacy system or component so that other applications can access its functionality without directly modifying its internal implementation.

The wrapper hides the complexity of the legacy system and provides a convenient interface to modern applications.

Why is wrapping required?

- To reuse existing functionality.
- To connect old systems with modern applications.
- To avoid replacing an entire legacy system.
- To hide implementation complexity.
- To support gradual modernization.

Working of wrapping:

Modern Application

Web application / Mobile application

Wrapper / Adapter

Translates requests and responses

Legacy System

Existing application or component

Requests travel downward and responses return through the wrapper.

Example:

An old banking application provides account balance information through a legacy interface.

A wrapper can expose that functionality through a REST API so that a modern mobile application can access it.

Advantages:

1. Reuses existing software.
2. Reduces redevelopment cost.
3. Supports integration with modern applications.
4. Hides legacy-system complexity.
5. Enables gradual modernization.

Limitations:

- Does not automatically fix internal design problems.
- May introduce additional processing overhead.
- Depends on the reliability of the legacy system.
- Complex interfaces can be difficult to wrap.

## 8. Maintenance

Definition: Software maintenance is the process of modifying, correcting, updating and improving software after its initial delivery to ensure that it continues to work effectively.

Legacy systems require continuous maintenance because their technology and operating environments may become outdated.

### Types of software maintenance

1\. Corrective maintenance

Fixing errors and defects discovered after software delivery.

Example: Correcting an incorrect balance calculation in a banking application.

2\. Adaptive maintenance

Modifying software to work with changes in its environment.

Example: Updating a legacy application to support a new operating system or database.

3\. Perfective maintenance

Improving software performance, usability or functionality based on user requirements.

Example: Improving the response time of a railway reservation application.

4\. Preventive maintenance

Making changes to reduce future problems and improve maintainability.

Example: Refactoring poorly structured code and improving documentation.

| Type       | Main purpose                         |
| ---------- | ------------------------------------ |
| Corrective | Fix defects                          |
| Adaptive   | Adapt to environmental changes       |
| Perfective | Improve functionality or performance |
| Preventive | Avoid future problems                |

Challenges in legacy system maintenance:

- Lack of documentation.
- Outdated programming languages.
- Poorly structured code.
- Limited availability of experienced developers.
- Compatibility issues.
- High maintenance costs.
- Risk of introducing new defects.

Advantages of proper maintenance:

- Extends software life.
- Improves reliability.
- Reduces operational failures.
- Supports changing business requirements.
- Protects existing business investments.

## 9. Difference between important concepts

### A. Reverse engineering vs implementation modeling

| Reverse engineering                                | Implementation modeling                             |
| -------------------------------------------------- | --------------------------------------------------- |
| Studies an existing system.                        | Prepares design elements for implementation.        |
| Recovers models from source code and behaviour.    | Refines design classes and relationships.           |
| Usually works from implementation toward design.   | Works from design toward implementation.            |
| Example: Recovering a class diagram from old code. | Example: Defining Java classes from a design model. |

### B. Wrapping vs maintenance

| Wrapping                                                  | Maintenance                                        |
| --------------------------------------------------------- | -------------------------------------------------- |
| Creates an interface around an existing system.           | Modifies and supports software over time.          |
| Focuses on integration and reuse.                         | Focuses on correction, adaptation and improvement. |
| May leave internal implementation unchanged.              | May require changes to internal implementation.    |
| Example: Exposing a legacy application through REST APIs. | Example: Fixing bugs in the legacy application.    |

### C. Interaction model vs state model

| Interaction model                           | State model                                                    |
| ------------------------------------------- | -------------------------------------------------------------- |
| Represents communication between objects.   | Represents states of an object.                                |
| Focuses on messages and their sequence.     | Focuses on events and transitions.                             |
| Commonly represented by sequence diagrams.  | Commonly represented by state machine diagrams.                |
| Example: ATM communicates with bank server. | Example: ATM transaction changes from Processing to Completed. |

## 10. PYQ preparation priority

Based on the question information you supplied:

| Topic                                                | PYQ evidence                           | Preparation priority |
| ---------------------------------------------------- | -------------------------------------- | -------------------- |
| Reverse engineering — definition, inputs and outputs | Direct question, Nov 2023              | Very high            |
| Wrapping                                             | Combined short-note question, Nov 2023 | Very high            |
| Maintenance                                          | Combined short-note question, Nov 2023 | Very high            |
| Building the class model                             | Syllabus topic                         | High                 |
| Building the interaction model                       | Syllabus topic                         | High                 |
| Building the state model                             | Syllabus topic                         | High                 |
| Reverse engineering tips                             | Syllabus topic                         | High                 |

The preparation priorities are based on the supplied PYQ information and syllabus, not a prediction of future questions.

## 11. Quick revision checklist

Legacy systems preparation

# 0/12

Legacy system definition and characteristics

Reverse engineering definition

Inputs and outputs of reverse engineering

Building the class model

Building the interaction model

Building the state model

Reverse engineering tips

Wrapping — definition, working and advantages

Maintenance — definition and four types

Reverse engineering vs implementation modeling

Wrapping vs maintenance

Interaction model vs state model

Reset checklist

Exam tip: For the November 2023 reverse engineering question, write the definition first, draw the inputs → reverse engineering → outputs diagram, and explain each input and output. For wrapping and maintenance, prepare separate short notes with definition, working or types, example and advantages.