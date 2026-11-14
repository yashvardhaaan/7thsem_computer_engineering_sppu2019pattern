# Topic 2 – System Design Overview



SPPU Exam-Oriented Notes

High PYQ Priority



System Design is an important topic in Object-Oriented Modeling and Design. It focuses on converting the requirements identified during system analysis into a suitable system architecture.

There are three important PYQ areas:

1. What is System Design? Explain with an example.
2. Explain different Architectural Styles.
3. Explain Subsystem Decomposition and Allocation.

Important: These are related questions, but each requires a separate answer in the examination.

# Q1. What is System Design? Explain its Purpose, Major Activities and Example.

Answer:

### 1. Definition

System Design is the process of defining the overall architecture, components, subsystems, interfaces and data organization of a software system to satisfy the specified requirements.

It converts the requirements obtained during system analysis into a detailed design that can be implemented by developers.

System design mainly focuses on how the system will be organized and how its components will communicate with each other.

### 2. Objectives of System Design

1. To define the overall system architecture.
2. To divide the system into manageable subsystems.
3. To identify hardware and software requirements.
4. To define communication between components.
5. To improve system performance and reliability.
6. To provide a foundation for implementation.
7. To ensure that functional and non-functional requirements are satisfied.

### 3. Major Activities of System Design

A. System Architecture Design

- Defines the overall structure of the system.
- Identifies major components and their relationships.
- Selects a suitable architectural style.

Example: Three-tier architecture.

B. Subsystem Decomposition

- Divides a large system into smaller subsystems.
- Each subsystem performs a specific responsibility.
- Reduces complexity and improves maintainability.

Example: An online shopping system can be divided into:

- User Management
- Product Management
- Order Management
- Payment Management

C. Concurrency Identification

- Identifies activities that can execute simultaneously.
- Helps improve system performance.
- Determines which components require independent threads or processes.

Example: Processing payments and sending notifications independently.

D. Hardware and Software Allocation

- Assigns software components to appropriate hardware resources.
- Identifies servers, databases and network requirements.
- Helps optimize resource utilization.

Example: Application server, database server and client devices.

E. Data Management Design

- Defines how data is stored, organized and accessed.
- Identifies databases and data structures.
- Ensures data consistency and security.

Example: Using a relational database to store customer and order information.

F. Boundary Conditions

- Identifies system limitations and exceptional conditions.
- Considers initialization, shutdown and failure handling.
- Defines system behavior under abnormal conditions.

Example: Handling server failure or network interruption.

G. Interface Design

- Defines communication between subsystems.
- Specifies APIs and data exchange formats.
- Ensures proper integration between components.

Example: REST API communication between frontend and backend.

### 4. Example: Online Shopping System

Consider an online shopping application that allows customers to browse products, place orders and make online payments.

System Design:

The application can be divided into the following components:

1. User Management – Handles registration and login.
2. Product Management – Manages products and availability.
3. Cart Management – Handles shopping cart operations.
4. Order Management – Processes customer orders.
5. Payment Management – Handles online transactions.
6. Notification Management – Sends order confirmation.

### System Architecture Diagram

### Online shopping system design

Illustrative system decomposition for online shopping

### 5. Advantages of System Design

1. Reduces system complexity.
2. Improves maintainability.
3. Supports scalability.
4. Improves performance.
5. Provides a clear implementation plan.
6. Makes testing and debugging easier.

### Conclusion

System design converts system requirements into an organized architecture by defining subsystems, interfaces, data management and resource allocation. It provides the foundation for software implementation.

# Q2. Explain Different Architectural Styles with Examples.

Answer:

### 1. Definition

An architectural style is a predefined pattern or approach used to organize the components and subsystems of a software system and define how they interact with each other.

It provides a structural framework for designing software applications.

### 2. Types of Architectural Styles

The major architectural styles are explained below.

### A. Data-Centered Architecture

- A central data repository is maintained.
- Different components access and modify the shared data.
- The central repository manages data storage and retrieval.
- Components communicate through the common data store.

Example: Library Management System with a centralized database.

### Data-centered architecture

Components access a common repository.

Advantages:

1. Centralized data management.
2. Easy data sharing.
3. Better consistency.
4. Simplified backup and recovery.

Disadvantages:

1. Central repository failure can affect the whole system.
2. Heavy access may create a performance bottleneck.

### B. Data-Flow Architecture

- The system is organized as a series of processing components.
- Data moves from one component to another.
- Each component performs a specific transformation.
- The output of one component becomes the input of another.

Example: Compiler system.

A compiler processes source code through different stages:

1. Lexical Analysis.
2. Syntax Analysis.
3. Semantic Analysis.
4. Code Generation.

### Data-flow architecture

Compiler processing pipeline

Advantages:

1. Easy to understand and maintain.
2. Supports modular processing.
3. Components can be reused.
4. Suitable for data transformation systems.

Disadvantages:

1. Not suitable for highly interactive systems.
2. Data conversion between components may be required.

### C. Call-and-Return Architecture

- The system is organized into a hierarchy of modules.
- A main program calls other modules to perform specific tasks.
- Each module can call additional submodules.
- Control returns to the calling module after execution.

Example: A banking application where the main banking module calls account, deposit and withdrawal modules.

### Call-and-return architecture

Hierarchical module organization

Advantages:

1. Clear hierarchy.
2. Easy debugging.
3. Supports modular programming.
4. Simplifies control flow.

Disadvantages:

1. Tight dependency between calling modules.
2. Changes in higher-level modules may affect lower-level modules.

### D. Object-Oriented Architecture

- The system is organized as a collection of interacting objects.
- Each object contains data and operations.
- Objects communicate by sending messages.
- Supports encapsulation, inheritance and polymorphism.

Example: An e-commerce application containing Customer, Product, Order and Payment objects.

### Object-oriented architecture

Interacting objects

Advantages:

1. High reusability.
2. Better modularity.
3. Easy maintenance.
4. Supports real-world modeling.

Disadvantages:

1. Object interactions may increase complexity.
2. Requires careful interface and responsibility design.

### E. Layered Architecture

- The system is divided into multiple layers.
- Each layer provides services to the layer above it.
- Each layer uses services from the layer below it.
- It improves separation of responsibilities.

Example: Three-tier web application.

1. Presentation Layer – User interface.
2. Business Logic Layer – Application processing.
3. Data Access Layer – Database operations.

### Layered architecture

Presentation Layer

User Interface

Business Logic Layer

Business Rules and Processing

Data Access Layer

Database Operations

Database

Persistent Data Storage

Advantages:

1. Separation of concerns.
2. Easy maintenance.
3. Better code organization.
4. Individual layers can be modified independently, provided interfaces remain compatible.

Disadvantages:

1. Additional communication between layers.
2. May introduce performance overhead.
3. Strict layering can limit flexibility.

### 3. Comparison of Architectural Styles

| Style           | Main concept               | Example                    |
| --------------- | -------------------------- | -------------------------- |
| Data-Centered   | Common data repository     | Library database           |
| Data-Flow       | Sequential data processing | Compiler                   |
| Call-and-Return | Hierarchical module calls  | Banking application        |
| Object-Oriented | Interacting objects        | E-commerce                 |
| Layered         | Organized layers           | Three-tier web application |

### Conclusion

Architectural styles define how software components are organized and communicate. The selection of an appropriate style depends on system requirements, performance, scalability and maintainability.

# Q3. Explain Subsystem Decomposition and Allocation.

Answer:

### 1. Definition of Subsystem Decomposition

Subsystem decomposition is the process of dividing a large software system into smaller, independent and manageable subsystems, where each subsystem performs a specific set of related functions.

It reduces system complexity and makes development, testing and maintenance easier.

### 2. Objectives of Subsystem Decomposition

1. To divide a complex system into smaller modules.
2. To assign specific responsibilities to each subsystem.
3. To reduce dependencies between components.
4. To improve modularity and maintainability.
5. To support parallel development.
6. To simplify testing and debugging.

### 3. Steps in Subsystem Decomposition

Step 1: Identify Major Functionalities

Identify the major functions that the system must perform.

Example: In an online shopping application:

- User Management
- Product Management
- Order Management
- Payment Management

Step 2: Group Related Responsibilities

Group related classes and functions into appropriate subsystems.

Example: Customer registration and login can be grouped into User Management.

Step 3: Define Subsystem Interfaces

Specify how different subsystems communicate with each other.

Example: Order Management communicates with Payment Management through an API.

Step 4: Define Dependencies

Identify the dependencies between subsystems and try to reduce unnecessary coupling.

Step 5: Validate Decomposition

Check whether all system requirements are covered and every subsystem has a clear responsibility.

### 4. Example: Online Shopping System

The system can be divided into the following subsystems:

| Subsystem               | Responsibilities                           |
| ----------------------- | ------------------------------------------ |
| User Management         | Registration, login and profile management |
| Product Management      | Product details and availability           |
| Cart Management         | Add and remove products                    |
| Order Management        | Order creation and tracking                |
| Payment Management      | Payment and refund processing              |
| Notification Management | Email and SMS notifications                |

### 5. Subsystem Decomposition Diagram

### Online shopping subsystem decomposition

Subsystem decomposition diagram (illustrative)

### 6. Advantages

1. Reduces complexity.
2. Supports independent development.
3. Improves code reusability.
4. Simplifies testing.
5. Improves maintenance.
6. Makes the system easier to extend.

### 7. Definition of Subsystem Allocation

Subsystem allocation is the process of assigning software subsystems and components to suitable hardware resources, processors, computers or execution environments.

It determines where each subsystem will execute in the overall system architecture.

### 8. Objectives of Subsystem Allocation

1. To distribute system components across hardware resources.
2. To improve system performance.
3. To balance processing loads.
4. To reduce communication delays.
5. To improve reliability and availability.
6. To utilize hardware resources efficiently.

### 9. Steps in Subsystem Allocation

Step 1: Identify Hardware Resources

Identify available hardware such as:

- Client computers
- Application servers
- Database servers
- Network devices

Step 2: Identify Software Subsystems

Identify the subsystems that must be deployed.

Step 3: Assign Subsystems to Hardware

Allocate each subsystem to the appropriate hardware resource.

Step 4: Consider Performance Requirements

Consider processing speed, memory, network communication and storage requirements.

Step 5: Verify Allocation

Check whether the allocation satisfies system requirements such as reliability, performance and security.

### 10. Example: Online Shopping Application

The subsystems can be allocated as follows:

| Hardware Resource  | Allocated Subsystems                 |
| ------------------ | ------------------------------------ |
| Client Device      | User Interface                       |
| Web Server         | Web Application                      |
| Application Server | User, Product and Order Management   |
| Payment Service    | Payment Processing                   |
| Database Server    | Customer, Product and Order Database |

### 11. Subsystem Allocation Diagram

### Subsystem allocation to hardware

Illustrative deployment and subsystem allocation

### 12. Difference Between Subsystem Decomposition and Allocation

| Subsystem Decomposition                         | Subsystem Allocation                               |
| ----------------------------------------------- | -------------------------------------------------- |
| Divides the system into smaller subsystems.     | Assigns subsystems to hardware resources.          |
| Focuses on software organization.               | Focuses on deployment and resource assignment.     |
| Defines subsystem responsibilities.             | Defines where subsystems execute.                  |
| Reduces system complexity.                      | Improves performance and resource utilization.     |
| Example: Dividing shopping system into modules. | Example: Deploying modules on application servers. |

### Conclusion

Subsystem decomposition divides a large system into smaller manageable subsystems, whereas subsystem allocation assigns those subsystems to appropriate hardware resources. Both activities help achieve an efficient and maintainable system design.

# Important SPPU Exam Revision

## 1. Three related PYQs – What is the difference?

| PYQ                                             | What the examiner expects                                       |
| ----------------------------------------------- | --------------------------------------------------------------- |
| What is System Design?                          | Definition, objectives, major activities and example            |
| Explain Architectural Styles.                   | Types, diagrams, advantages and examples                        |
| Explain Subsystem Decomposition and Allocation. | Decomposition steps, allocation steps, diagrams and differences |

Do not write the same answer for all three questions.

## 2. Preparation Priority

| Topic                       | Priority  | Must prepare                  |
| --------------------------- | --------- | ----------------------------- |
| System Design Overview      | Very High | Definition + major activities |
| Architectural Styles        | Very High | Five styles + diagrams        |
| Subsystem Decomposition     | Very High | Steps + example               |
| Subsystem Allocation        | Very High | Hardware mapping + diagram    |
| Decomposition vs Allocation | High      | Difference table              |

## 3. Final study checklist

System Design – Progress Tracker

0/11 completed

Definition and objectives of system design

Major activities of system design

Online shopping system design example

Data-centered architecture

Data-flow architecture

Call-and-return architecture

Object-oriented architecture

Layered architecture

Subsystem decomposition definition and steps

Subsystem allocation definition and steps

Decomposition vs allocation differences

My recommendation for the SPPU exam: Give maximum attention to architectural styles and subsystem decomposition/allocation. These topics are diagram-friendly and can be asked as separate long-answer questions.

For an 8-mark answer, write the definition, explain the important points, draw a labelled diagram and conclude with advantages or an example. The mark allocation here is a preparation guideline, not an official marking scheme.