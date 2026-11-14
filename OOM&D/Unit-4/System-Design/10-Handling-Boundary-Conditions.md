# Unit IV — 9. Boundary Conditions and Trade-off Priorities



PYQ Priority: Low–Medium

Syllabus Coverage: Important



These are two separate system design activities. Boundary conditions deal with handling special situations and system limits, whereas trade-off priorities deal with balancing competing design objectives.

# Part A — Boundary Conditions

## 1. Definition of Boundary Conditions

Boundary conditions are special situations, limitations or constraints that occur at the edges of a system's operating range and must be considered during system design.

They define how a system should behave when it receives invalid inputs, reaches resource limits or encounters exceptional situations.

In simple words, boundary conditions specify what happens when a system reaches its limits or faces unusual situations.

## 2. Objectives of handling boundary conditions

1. Prevent system failures.
2. Handle invalid or unexpected inputs.
3. Improve system reliability.
4. Maintain data integrity.
5. Prevent resource overuse.
6. Ensure predictable system behaviour.
7. Improve security and robustness.

## 3. Types of boundary conditions

### 1. Input boundary conditions

These occur when the system receives input outside the acceptable range.

Examples:

- Empty username.
- Invalid email address.
- Negative age.
- Incorrect password.
- Withdrawal amount exceeding permitted limits.

### 2. Output boundary conditions

These occur when the system produces output that exceeds acceptable limits or does not satisfy expected conditions.

Examples:

- Report exceeding maximum allowed size.
- Invalid calculation result.
- Output exceeding supported character limits.

### 3. Resource boundary conditions

These occur when system resources reach their maximum or minimum limits.

Examples:

- Database storage becomes full.
- Maximum number of users is reached.
- Memory is exhausted.
- Too many simultaneous connections.

### 4. Time boundary conditions

These occur when operations exceed acceptable time limits.

Examples:

- Payment gateway timeout.
- Session expiration.
- Server response delay.
- Network connection timeout.

### 5. Exception conditions

These occur when unexpected situations interrupt normal system execution.

Examples:

- Database connection failure.
- File not found.
- Network failure.
- Payment transaction failure.

## 4. How to handle boundary conditions during system design

Step 1: Identify system limits

Identify the minimum and maximum acceptable values for inputs, outputs and resources.

Step 2: Define validation rules

Establish rules to validate user input and system data.

Step 3: Define exception handling

Determine how the system should respond to unexpected errors.

Step 4: Establish resource limits

Define limits for memory, storage, connections and concurrent users.

Step 5: Design recovery mechanisms

Provide suitable recovery mechanisms for failures and interruptions.

Step 6: Test boundary cases

Test minimum values, maximum values, empty inputs, invalid inputs and timeout conditions.

## 5. Example: ATM System

Consider an ATM system where a customer withdraws money.

| Boundary condition             | Expected system behaviour                                               |
| ------------------------------ | ----------------------------------------------------------------------- |
| Withdrawal amount is zero      | Reject the transaction.                                                 |
| Negative withdrawal amount     | Reject invalid input.                                                   |
| Amount exceeds account balance | Display insufficient balance.                                           |
| Amount exceeds daily limit     | Display withdrawal limit exceeded.                                      |
| ATM has insufficient cash      | Display cash unavailable.                                               |
| Incorrect PIN                  | Reject authentication.                                                  |
| Bank server timeout            | Display temporary service failure and handle transaction status safely. |

Simple flow diagram:

Enter withdrawal amount

Validate amount

Is amount valid and within limits?

Yes

Check balance

Process withdrawal

No

Display error

Request valid input

## 6. Advantages of handling boundary conditions

1. Prevents unexpected system failures.
2. Improves software reliability.
3. Protects against invalid data.
4. Improves user experience through meaningful error messages.
5. Prevents resource exhaustion.
6. Makes the application more secure and robust.

## 7. Conclusion

Boundary conditions are important considerations in system design because they define how the system behaves under exceptional circumstances and at operating limits. Proper handling through validation, exception handling, resource limits and recovery mechanisms improves system reliability, security and robustness.

# Part B — Setting Trade-off Priorities

## 1. Definition of Trade-off

A trade-off in system design is a situation where improving one design quality may negatively affect another design quality.

Since all design objectives cannot always be maximized simultaneously, the designer must balance competing priorities according to system requirements.

In simple words, a trade-off means choosing a suitable balance between competing design goals.

## 2. Why are trade-offs required?

During system design, different quality attributes may conflict with one another.

For example:

- Improving performance may increase development cost.
- Increasing security may make the application less convenient.
- Increasing reliability may require additional hardware.
- Increasing scalability may increase architectural complexity.

Therefore, designers must identify which qualities are most important for the application.

## 3. Important quality attributes involved in trade-offs

| Quality attribute | Meaning                                                         |
| ----------------- | --------------------------------------------------------------- |
| Performance       | Speed and efficiency of the system.                             |
| Security          | Protection against unauthorized access.                         |
| Reliability       | Ability to operate correctly without failure.                   |
| Maintainability   | Ease of modifying and maintaining software.                     |
| Scalability       | Ability to handle increasing workloads.                         |
| Usability         | Ease of using the system.                                       |
| Cost              | Financial resources required to develop and operate the system. |
| Availability      | Ability of the system to remain accessible when required.       |

## 4. Common trade-offs in system design

### 1. Performance vs Cost

- Higher performance may require powerful processors, memory and infrastructure.
- This increases system development and operating costs.

Example: Using expensive high-performance servers to reduce response time.

### 2. Security vs Usability

- Stronger security mechanisms may require additional authentication steps.
- This can make the application less convenient for users.

Example: Multi-factor authentication improves security but adds login steps.

### 3. Reliability vs Cost

- Higher reliability may require backup servers, replication and redundant components.
- These increase infrastructure and maintenance costs.

Example: A banking system uses multiple servers to reduce downtime.

### 4. Maintainability vs Performance

- Highly optimized code may become complex and difficult to understand.
- Simpler, more modular code may introduce some additional processing overhead.

Example: Complex database optimizations may improve query speed but make queries harder to maintain.

### 5. Scalability vs Complexity

- Supporting a large number of users may require distributed architecture.
- Distributed architecture introduces additional complexity in communication and data management.

Example: Moving from a monolithic application to microservices.

### 6. Availability vs Consistency

- In distributed systems, network partitions can make it difficult to guarantee both immediate consistency and availability.
- The system must make an appropriate choice depending on its requirements.

Example: A banking application may prioritize transaction consistency over accepting every operation during a network partition.

## 5. Steps involved in setting trade-off priorities

Step 1: Identify design objectives

Determine the important quality attributes of the system.

Example: Performance, security, reliability and cost.

Step 2: Identify conflicting objectives

Find quality attributes that may negatively affect one another.

Example: Security versus usability.

Step 3: Analyse system requirements

Understand user needs, business goals and technical constraints.

Step 4: Assign priorities

Rank design objectives according to their importance.

For example:

1. Security
2. Reliability
3. Performance
4. Maintainability
5. Cost

This ranking is illustrative; actual priorities depend on the system.

Step 5: Evaluate alternative designs

Compare possible architectures and technologies based on their advantages and disadvantages.

Step 6: Select a suitable balance

Choose the design that best satisfies the most important requirements within available constraints.

Step 7: Review and validate

Test the selected design to ensure that the chosen priorities are achieved.

## 6. Example: Online Banking System

Consider the design of an online banking application.

The system must provide security, reliability, performance and usability.

| Quality attribute | Priority   | Design decision                                 |
| ----------------- | ---------- | ----------------------------------------------- |
| Security          | Very high  | Encryption and multi-factor authentication      |
| Reliability       | Very high  | Backup and recovery mechanisms                  |
| Performance       | High       | Database indexing and caching where appropriate |
| Usability         | High       | Simple and clear user interface                 |
| Cost              | Controlled | Use resources according to workload             |

Analysis:

- Security may be prioritized over login convenience.
- Reliability may justify additional infrastructure costs.
- Performance improvements should not compromise transaction correctness.
- The interface should remain simple despite additional security requirements.

Thus, the designer selects a balanced architecture based on application requirements.

## 7. Diagram: Trade-off priority selection

Identify design objectives

Identify conflicting quality attributes

Analyse requirements and constraints

Assign priorities

Evaluate design alternatives

Select balanced design

## 8. Advantages of setting trade-off priorities

1. Helps select suitable architecture.
2. Ensures important requirements receive priority.
3. Avoids unnecessary development costs.
4. Improves overall system quality.
5. Helps make informed design decisions.
6. Balances performance, security, reliability and usability.

## 9. Conclusion

Setting trade-off priorities is an important system design activity that involves identifying competing quality attributes and balancing them according to system requirements. It helps designers select appropriate technologies, architectures and resources while achieving the best possible balance between performance, security, reliability, maintainability and cost.

# 10. Difference between Boundary Conditions and Trade-off Priorities

| Basis        | Boundary Conditions                              | Trade-off Priorities                        |
| ------------ | ------------------------------------------------ | ------------------------------------------- |
| Meaning      | Define system limits and exceptional situations. | Balance competing design objectives.        |
| Main purpose | Prevent errors and system failures.              | Select the most suitable design.            |
| Focus        | Constraints and special cases.                   | Quality attributes and priorities.          |
| Examples     | Invalid input, timeout, full storage.            | Performance vs cost, security vs usability. |
| Techniques   | Validation, exception handling, recovery.        | Prioritization, comparison and evaluation.  |

## Exam preparation checklist

Study progress

0/10

Definition and objectives of boundary conditions

Types: input, output, resource, time and exception

Steps to handle boundary conditions

ATM boundary conditions example

Definition and need for trade-offs

Important quality attributes

Common design trade-offs with examples

Steps for setting trade-off priorities

Online banking example

Difference between boundary conditions and trade-offs

Exam strategy:

- For boundary conditions, prioritize definition, types, handling steps and ATM example.
- For trade-off priorities, prioritize definition, common trade-offs, steps and online banking example.
- Practise both diagrams.

Important: Even if these topics have fewer direct PYQs in your uploaded papers, they are explicitly included in the syllabus. Prepare them rather than relying only on repeated questions.