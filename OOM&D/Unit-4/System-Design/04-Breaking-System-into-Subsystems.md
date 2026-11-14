# Unit IV — 5. Breaking a System into Subsystems

PYQ Priority: High

This is an important system design topic. Prepare all four syllabus points separately because examination questions may ask about decomposition, concurrency, allocation or communication independently.

## 1. Introduction

A subsystem is a major part of a software system that performs a specific set of related functions and interacts with other subsystems to achieve the overall system objectives.

Subsystem decomposition is the process of dividing a large software system into smaller, manageable and relatively independent subsystems.

For example, an online shopping system can be divided into:

- User Management Subsystem
- Product Management Subsystem
- Order Management Subsystem
- Payment Subsystem
- Inventory Management Subsystem
- Notification Subsystem

[What is Modularity?. Modularity Fundamentals | by Ravi | Software Architecture/Design Essentials | Medium](https://images.openai.com/static-rsc-4/WBLSWjiyyXb27_Lu7axgUKAkWbiprZJoLuoQiG7GPIKNEg4ymCiNyNCqgZpCjJifNXyTyPw86J-0_atWp7JElNfiGXJ36th4JJtH2Jd170TCdZMrcRtQZlUzSyP2-IBDgPONX_s8CqFy_CoEK8GTJR3ZU-T10xB-o8ANAsD9Lrc?purpose=inline)

[medium.com](https://medium.com/software-architecture/what-is-modularity-1480ddb84b51?utm_source=chatgpt.com)

Objectives:

1. Reduce system complexity.
2. Improve modularity and maintainability.
3. Divide responsibilities among different subsystems.
4. Support parallel development.
5. Improve reusability.
6. Make testing and debugging easier.

## 2. Breaking the System into Subsystems (Subsystem Decomposition)

### Definition

Subsystem decomposition is the process of dividing a complex software system into smaller subsystems, where each subsystem performs a specific responsibility.

### Steps involved

Step 1: Study system requirements

Understand the functional and non-functional requirements of the complete system.

Step 2: Identify major responsibilities

Identify the major functions that the system must perform.

Example: User registration, product browsing, ordering and payment.

Step 3: Group related responsibilities

Group closely related functions into logical subsystems.

Step 4: Define subsystem boundaries

Specify what each subsystem is responsible for and what is outside its scope.

Step 5: Define dependencies

Identify which subsystems depend on other subsystems.

Step 6: Define interfaces

Specify how subsystems interact with one another.

Step 7: Evaluate the decomposition

Check whether the resulting subsystems are cohesive, loosely coupled and manageable.

### Example: Online Shopping System

Online Shopping System

Main system

User Management

Registration and login

Product Management

Product catalogue

Order Management

Order placement

Payment Management

Payment processing

Inventory Management

Stock management

Notification Management

Email and SMS

### Advantages of subsystem decomposition

1. Reduces complexity.
2. Supports independent development.
3. Makes testing easier.
4. Improves maintainability.
5. Allows changes in one subsystem with minimal impact on others.

## 3. Identifying Concurrency

### Definition

Concurrency is the ability of a system to execute multiple activities or processes during overlapping periods of time.

During system design, identifying concurrency means determining which activities can execute independently or simultaneously and which activities require coordination.

### Objectives

1. Improve system performance.
2. Utilize CPU and other resources efficiently.
3. Reduce overall execution time.
4. Support multiple users simultaneously.
5. Identify synchronization requirements.

### Steps to identify concurrency

1. Identify all major activities in the system.
2. Determine dependencies between activities.
3. Identify activities that do not depend on each other.
4. Group independent activities for concurrent execution.
5. Identify shared resources.
6. Define synchronization and coordination requirements.

### Example: Online Shopping System

When a customer places an order, several activities may take place concurrently:

- Inventory availability can be checked.
- Delivery information can be calculated.
- Order details can be prepared.
- Notifications can be generated after appropriate events.

However, payment confirmation and final order confirmation may require coordination.

Illustration of concurrent activities

Order Request

Start parallel activities

Check inventory

Calculate delivery

Prepare order details

Coordinate results

Proceed with order processing

### Benefits of concurrency

- Better performance.
- Improved resource utilization.
- Faster processing.
- Better support for multiple users.

Important: Concurrency does not necessarily mean that multiple activities execute at exactly the same instant. They may also make progress through interleaved execution.

## 4. Allocation of Subsystems

### Definition

Subsystem allocation is the process of assigning the identified subsystems to appropriate hardware or software components, processors, computers or execution environments.

It determines where each subsystem will execute.

### Objectives

1. Improve system performance.
2. Balance workload among resources.
3. Reduce communication overhead.
4. Improve reliability and availability.
5. Use hardware resources efficiently.
6. Meet security and scalability requirements.

### Steps involved in subsystem allocation

Step 1: Identify available resources

Identify servers, processors, memory, storage and network resources.

Step 2: Analyze subsystem requirements

Determine CPU, memory, storage, network and security requirements of each subsystem.

Step 3: Evaluate allocation alternatives

Consider different ways of assigning subsystems to available resources.

Step 4: Assign subsystems

Allocate each subsystem to suitable hardware or software environments.

Step 5: Consider communication requirements

Ensure that frequently communicating subsystems are placed appropriately to reduce communication delays.

Step 6: Evaluate performance

Check whether the allocation satisfies performance, reliability and scalability requirements.

### Example: Online Shopping System

| Subsystem               | Allocation                  |
| ----------------------- | --------------------------- |
| User Management         | Application server          |
| Product Management      | Application server          |
| Order Management        | Application server          |
| Payment Management      | Payment service/server      |
| Inventory Management    | Database/application server |
| Notification Management | Background worker/server    |

[design.tupuy.com](https://design.tupuy.com/en/what-is-presentation-layer-in-3-tier-architecture.html?utm_source=chatgpt.com)

### Factors affecting allocation

- Processing requirements
- Memory requirements
- Communication overhead
- Security requirements
- Reliability
- Scalability
- Hardware availability

## 5. Communication Between Subsystems

### Definition

Communication between subsystems refers to the mechanism through which different subsystems exchange data, messages and requests to coordinate their activities and complete system operations.

Each subsystem should communicate through clearly defined interfaces.

### Objectives

1. Exchange information between subsystems.
2. Coordinate activities.
3. Maintain data consistency.
4. Reduce dependency between subsystems.
5. Support distributed system operation.

### Methods of communication

1\. Direct method calls

One subsystem calls an operation provided by another subsystem.

Example: Order Management calls Inventory Management to check stock.

2\. API-based communication

Subsystems communicate through APIs, commonly using HTTP and REST.

Example: Order service sends a request to the Payment service.

3\. Message-based communication

Subsystems exchange messages through a message queue or broker.

Example: After an order is placed, an event is sent to the Notification subsystem.

4\. Shared database

Multiple subsystems access a common database to exchange information.

This method requires careful management of data consistency and coupling.

### Example: Online Shopping System Communication

Order Management

Stock check request

Inventory Management

Stock availability response

Order Management

Payment request

Payment Management

Payment result / event

Notification Management

### Important design considerations

- Define clear interfaces.
- Minimize unnecessary dependencies.
- Ensure secure data exchange.
- Handle communication failures.
- Maintain data consistency.
- Use appropriate synchronous or asynchronous communication.

### Synchronous vs Asynchronous communication

| Synchronous                        | Asynchronous                                         |
| ---------------------------------- | ---------------------------------------------------- |
| Sender waits for the response.     | Sender does not need to wait for immediate response. |
| Usually request-response based.    | Often message/event based.                           |
| Creates tighter timing dependency. | Allows greater temporal independence.                |
| Example: REST API request.         | Example: Message queue.                              |

## 6. Difference between decomposition, concurrency, allocation and communication

This is particularly important for examination questions.

| Concept       | Meaning                                                            | Main question           |
| ------------- | ------------------------------------------------------------------ | ----------------------- |
| Decomposition | Dividing the system into subsystems.                               | What are the parts?     |
| Concurrency   | Identifying activities that can execute simultaneously or overlap. | What can run together?  |
| Allocation    | Assigning subsystems to hardware/software resources.               | Where will they run?    |
| Communication | Defining information exchange between subsystems.                  | How will they interact? |

Remember this sequence:

1\. Decomposition

Divide the system into subsystems

2\. Concurrency

Identify independent activities

3\. Allocation

Assign subsystems to resources

4\. Communication

Define how subsystems exchange information

Note: This is a useful study sequence, not a mandatory chronological order. In actual system design, these activities influence one another and may be revisited.

## 7. Advantages of proper subsystem organization

1. Modularity: The system is divided into manageable parts.
2. Maintainability: Individual subsystems can be modified independently.
3. Scalability: Subsystems can be scaled according to demand.
4. Performance: Workloads can be distributed efficiently.
5. Reusability: Existing subsystems can be reused in other applications.
6. Reliability: Failure in one subsystem can be isolated if the architecture supports it.

## 8. Conclusion

Breaking a system into subsystems is an important system design activity. It involves decomposing the system into manageable parts, identifying concurrency, allocating subsystems to suitable resources and defining communication between them. Proper subsystem organization improves modularity, performance, scalability and maintainability.

## Exam preparation checklist

Study progress

0/8

Subsystem definition and objectives

System decomposition: definition, steps and diagram

Identifying concurrency: definition, steps and example

Subsystem allocation: definition, steps and factors

Communication between subsystems and methods

Synchronous vs asynchronous communication

Difference between decomposition, concurrency, allocation and communication

Online shopping system example

## Important PYQ preparation

Prioritize these four question formats:

1. Explain how a system is broken into subsystems.
2. Explain the identification of concurrency during system design.
3. Explain subsystem allocation with a suitable example.
4. Explain communication between subsystems.

Exam tip: If the question asks about subsystem organization, explain all four activities. If it asks only about allocation or communication, write that particular section independently with its definition, steps, example and advantages.