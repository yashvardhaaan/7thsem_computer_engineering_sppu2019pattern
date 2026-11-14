# Unit IV — 10. Common Architectural Styles

PYQ Priority: Very High

## 1. Definition of Architectural Style

An architectural style is a general pattern or approach that defines the overall structure and organization of a software system.

It specifies:

- The major components or subsystems of a system.
- The responsibilities of each component.
- How components communicate with one another.
- The rules and constraints governing their interaction.

In simple words, an architectural style describes how the major parts of a software system are organized and connected.

Purpose:

1. Provides a high-level structure for software development.
2. Divides a complex system into manageable components.
3. Defines communication between components.
4. Improves maintainability and scalability.
5. Helps designers select a suitable system architecture.

## 2. Architectural styles covered in your course

Your Unit IV revision guide lists these six architectural styles:

1. Layered Architecture
2. Client–Server Architecture
3. Pipe-and-Filter Architecture
4. Repository Architecture
5. Event-Driven Architecture
6. Model–View–Controller (MVC) Architecture

The following explanations follow that course list.&#x20;

Unit IV System Design Revision Guide.png



### A. Layered Architecture

Definition: Layered architecture organizes a software system into multiple layers, where each layer performs a specific responsibility and provides services to the layer above it.

Structure:

```
+---------------------------+
|     Presentation Layer    |
+---------------------------+
|      Business Layer       |
+---------------------------+
|      Data Access Layer    |
+---------------------------+
|       Database Layer      |
+---------------------------+
```

Characteristics:

- System is divided into logical layers.
- Each layer has a separate responsibility.
- Upper layers use services provided by lower layers.
- Changes in one layer can often be isolated from others.

Example: An online shopping application:

- Presentation: React user interface.
- Business: Spring Boot business logic.
- Data access: Spring Data JPA.
- Database: PostgreSQL.

Advantages:

1. Easy to maintain and modify.
2. Supports separation of concerns.
3. Layers can be tested independently.
4. Improves code organization.

Limitations:

1. Additional layers may increase processing overhead.
2. Changes to lower-level interfaces can affect upper layers.
3. Strict layering may reduce performance.

Applications: Operating systems, enterprise applications and banking systems.

### B. Client–Server Architecture

Definition: Client–server architecture is a software architecture in which clients request services or resources, and a central server processes those requests and provides responses.

Structure:

```
+----------+       +----------------+
| Client 1 | ----> |                |
+----------+       |                |
                   |  Server        |
+----------+       |                |
| Client 2 | ----> |  Processes     |
+----------+       |  Requests      |
                   |                |
+----------+       |                |
| Client 3 | ----> |                |
+----------+       +----------------+
```

Characteristics:

- Clients initiate requests.
- Servers provide services.
- Communication usually occurs over a network.
- Multiple clients can access the same server.
- Server manages shared resources.

Example: In online banking, customers use a mobile application or website to request account balances and transfer money. The banking server processes these requests.

Advantages:

1. Centralized data management.
2. Easier administration and maintenance.
3. Supports multiple clients.
4. Centralized security and access control.

Limitations:

1. Server failure can affect many clients.
2. High request volume may overload the server.
3. Requires network connectivity.
4. Server infrastructure may be costly.

Applications: Web applications, banking systems, email systems and online shopping.

### C. Pipe-and-Filter Architecture

Definition: Pipe-and-filter architecture divides a system into independent processing components called filters. Each filter processes input data and passes the output to the next filter through pipes.

- Filter: Performs a specific transformation on data.
- Pipe: Transfers data between filters.

Structure:

```
Input
  |
  v
+----------+
| Filter 1 |
+----------+
  |
  v
+----------+
| Filter 2 |
+----------+
  |
  v
+----------+
| Filter 3 |
+----------+
  |
  v
Output
```

Characteristics:

- Each filter performs a specific operation.
- Filters are relatively independent.
- Data flows from one filter to another.
- Filters can often be reused and rearranged.

Example: A compiler:

```
Source Code
     |
     v
Lexical Analysis
     |
     v
Syntax Analysis
     |
     v
Semantic Analysis
     |
     v
Code Generation
     |
     v
Machine Code
```

Advantages:

1. High modularity.
2. Filters can be reused.
3. Easy to test individual filters.
4. Supports data transformation pipelines.

Limitations:

1. Data conversion between filters may introduce overhead.
2. Not suitable for systems requiring complex shared state.
3. Error handling across multiple filters can be difficult.

Applications: Compilers, data processing systems, image processing and ETL pipelines.

### D. Repository Architecture

Definition: Repository architecture is a software architecture in which multiple independent components access and share a common central data store called a repository.

Structure:

```
+-------------+   +-------------+
| Component A |   | Component B |
+------+------+   +------+------+
       |                 |
       v                 v
+-----------------------------+
|     Central Repository      |
|       Shared Database       |
+-----------------------------+
       ^                 ^
       |                 |
+------+------+   +------+------+
| Component C |   | Component D |
+-------------+   +-------------+
```

Characteristics:

- Maintains a central data store.
- Multiple components access shared data.
- Components communicate indirectly through the repository.
- Data management is centralized.

Example: A college management system where admission, examination, fees and attendance modules access a common student database.

Advantages:

1. Centralized data management.
2. Easy sharing of information.
3. Reduces direct communication between components.
4. Supports data consistency through centralized controls.

Limitations:

1. Repository failure can affect the entire system.
2. High access demand may create a bottleneck.
3. Changes in the repository structure may affect multiple components.
4. Requires careful access control and concurrency management.

Applications: CASE tools, CAD systems, enterprise information systems and database-driven applications.

### E. Event-Driven Architecture

Definition: Event-driven architecture is a software architecture in which components communicate by generating, publishing, detecting and responding to events.

An event represents something that has happened in the system.

Structure:

```
+------------------+
|   Event Producer |
+--------+---------+
         |
         v
+------------------+
|   Event Channel  |
|   / Dispatcher   |
+--------+---------+
         |
    +----+----+
    |         |
    v         v
+--------+ +--------+
|Consumer| |Consumer|
|   A    | |   B    |
+--------+ +--------+
```

Characteristics:

- Components communicate through events.
- Producers generate events.
- Consumers receive and process events.
- Components can operate independently.
- Often supports asynchronous communication.

Example: In an e-commerce application, when an order is placed:

- An order event is generated.
- Inventory service updates stock.
- Notification service sends an email.
- Delivery service starts shipment processing.

Advantages:

1. Loose coupling between components.
2. Supports asynchronous communication.
3. Improves scalability.
4. Components can be added independently.

Limitations:

1. Event flow can be difficult to debug.
2. Event ordering and duplicate processing must be handled.
3. Eventual consistency may occur.
4. Requires reliable event delivery and failure handling.

Applications: IoT systems, real-time applications, notification systems and distributed applications.

### F. Model–View–Controller (MVC) Architecture

Definition: MVC is an architectural pattern that separates an application into three interconnected components: Model, View and Controller.

Components:

1. Model: Manages application data and business logic.
2. View: Displays information to the user.
3. Controller: Handles user input and coordinates between the Model and View.

Structure:

```
       User
         |
         v
+------------------+
|   Controller     |
+--------+---------+
         |
         v
+------------------+
|      Model       |
| Data and Logic   |
+--------+---------+
         |
         v
+------------------+
|       View       |
| User Interface   |
+------------------+
         |
         v
        User
```

Conceptually, the controller handles user actions, updates or queries the model, and the view presents the resulting state. Exact communication mechanisms depend on the MVC implementation.

Example: In a student management application:

- Model: Student records and business rules.
- View: Student details webpage.
- Controller: Handles add, update and delete requests.

Advantages:

1. Separates business logic from presentation.
2. Improves maintainability.
3. Supports independent testing.
4. Allows different views to use the same model.

Limitations:

1. Adds architectural complexity to small applications.
2. Requires proper coordination between components.
3. Can involve additional development effort.

Applications: Web applications, desktop applications and enterprise software.

## 3. Comparison of all six architectural styles

| Style           | Main idea                              | Communication                     | Suitable example       |
| --------------- | -------------------------------------- | --------------------------------- | ---------------------- |
| Layered         | Organizes system into layers           | Between adjacent layers           | Enterprise application |
| Client–Server   | Clients request server services        | Request–response                  | Banking application    |
| Pipe-and-Filter | Data passes through processing filters | Pipes                             | Compiler               |
| Repository      | Components share a central data store  | Shared repository                 | College management     |
| Event-Driven    | Components respond to events           | Events/messages                   | Notification system    |
| MVC             | Separates data, interface and control  | Model–View–Controller interaction | Web application        |

# 4. Architecture of ATM System

Important PYQ

Your uploaded papers include questions asking to draw the ATM system architecture along with architectural styles.

An ATM system can be designed using a layered client–server architecture. The ATM machine acts as a client, while the bank's central server processes banking requests.

## Diagram: ATM System Architecture

```
       +-----------------------------+
       |    USER INTERFACE LAYER     |
       |                             |
       | ATM Screen | Card Reader    |
       | Keypad     | Cash Dispenser |
       +-------------+---------------+
                     |
                     v
       +-----------------------------+
       |     APPLICATION LAYER       |
       |                             |
       | Transaction Processing      |
       | Account Management          |
       | Security Management         |
       +-------------+---------------+
                     |
                     v
       +-----------------------------+
       |        DATA LAYER           |
       |                             |
       | Account Database            |
       | Transaction Database        |
       +-------------+---------------+
                     |
                     v
       +-----------------------------+
       |     BANK SERVER / HOST      |
       |                             |
       | Authentication              |
       | Balance Verification        |
       | Transaction Authorization   |
       +-----------------------------+
```

## Explanation of components

1\. User Interface Layer

- Provides interaction between the customer and ATM.
- Accepts input through keypad and card reader.
- Displays account information and transaction status.
- Controls cash dispensing and receipt printing through suitable device interfaces.

2\. Application Layer

Contains the main ATM business operations.

- Transaction Processing: Handles deposits, withdrawals and balance enquiries.
- Account Management: Retrieves and updates account information.
- Security Management: Validates PIN and manages authentication.

3\. Data Layer

Stores and manages banking information.

- Account Database: Stores account details and balances.
- Transaction Database: Stores transaction history and records.

4\. Bank Server / Host

- Receives transaction requests from ATMs.
- Verifies customer information.
- Checks account balance and transaction limits.
- Authorizes or rejects transactions.
- Sends responses to the ATM.

## Working of ATM architecture

Consider a cash withdrawal transaction:

1. Customer inserts the ATM card.
2. ATM reads card information.
3. Customer enters the PIN.
4. Application layer sends an authentication request to the bank server.
5. Bank server verifies the PIN and account.
6. Customer enters the withdrawal amount.
7. Bank server checks account balance and transaction limits.
8. Transaction is authorized and account records are updated.
9. ATM dispenses cash and prints the receipt.

Important design considerations:

- Security and authentication.
- Reliability and fault tolerance.
- Real-time transaction response.
- Data consistency.
- Handling concurrent transactions.
- Communication with external banking systems.

The ATM architecture and its key layers are also represented in your Unit IV revision guide.&#x20;

Unit IV System Design Revision Guide.png



# 5. Difference between Architectural Styles and Design Patterns

Unit IV vs Unit VI

| Basis    | Architectural Style                                    | Design Pattern                                              |
| -------- | ------------------------------------------------------ | ----------------------------------------------------------- |
| Meaning  | Defines the overall organization of a software system. | Provides a reusable solution to a recurring design problem. |
| Scope    | System-level structure.                                | More specific design-level problem.                         |
| Focus    | Components, connections and organization.              | Object relationships and interactions.                      |
| Purpose  | Defines system architecture.                           | Improves solutions to design problems.                      |
| Examples | Layered, Client–Server, Repository, MVC.               | Singleton, Factory, Observer, Adapter.                      |
| Unit     | Unit IV                                                | Unit VI                                                     |

Remember: Architectural styles define the overall structure of a system, while design patterns solve recurring problems within that structure.

# 6. Advantages of using architectural styles

1. Better organization: Provides a clear structure for the software system.
2. Modularity: Divides the system into manageable components.
3. Maintainability: Makes modifications easier.
4. Reusability: Architectural structures can be reused in different applications.
5. Scalability: Helps accommodate future system growth.
6. Communication: Provides a common understanding of system design among developers.

# 7. Exam preparation checklist

Study progress

0/10

Definition and purpose of architectural style

Layered architecture: structure, example, advantages and limitations

Client–Server architecture: structure, example, advantages and limitations

Pipe-and-Filter architecture: structure, example, advantages and limitations

Repository architecture: structure, example, advantages and limitations

Event-Driven architecture: structure, example, advantages and limitations

MVC architecture: components, diagram and example

Comparison of all six architectural styles

ATM system architecture diagram and explanation

Difference between architectural styles and design patterns

## 8. PYQ priority and question preparation

Based on your uploaded papers:

| Paper         | Question asked                                                    |
| ------------- | ----------------------------------------------------------------- |
| November 2022 | Enlist architectural styles and explain any four.                 |
| April 2023    | Discuss different architectural styles.                           |
| April 2024    | Explain architectural styles and draw ATM architecture.           |
| November 2024 | Explain different architectural styles and draw ATM architecture. |



OOM&D Nov 22.pdf

OOM&D April 23.pdf

OOM&D April 24.pdf

OOM&D Nov 24.pdf



My recommended preparation order:

1. Learn all six definitions and their diagrams.
2. Prepare any four styles in detail, including characteristics, advantages, limitations and examples.
3. Practise the ATM architecture diagram separately.
4. Learn the comparison table.
5. Understand the difference between architectural styles and design patterns.

Exam tip: Do not prepare only four styles. Since the question may ask you to enlist all styles or explain a particular one, know the basic definition and structure of all six.