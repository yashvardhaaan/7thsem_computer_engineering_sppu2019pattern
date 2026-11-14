# Unit VI — 2. Communication Patterns

PYQ priority: High

Communication patterns are design patterns that describe how different components, objects or subsystems communicate with each other to exchange information and coordinate their activities.

They help establish structured communication between distributed components while reducing unnecessary dependencies.

Your syllabus includes four important communication patterns:

1. Forwarder–Receiver
2. Client–Dispatcher–Server
3. Publisher–Subscriber
4. Command Processor

## 1. Forwarder–Receiver pattern

Definition: Forwarder–Receiver is a communication pattern used in distributed systems in which a sender forwards messages to a receiver through intermediate communication components.

It separates the communication mechanism from the application logic.

### Purpose

- Supports communication between distributed components.
- Hides low-level communication details.
- Separates sending and receiving responsibilities.
- Improves modularity.
- Supports location transparency.

### Participants

1. Sender: Generates a message or request.
2. Forwarder: Accepts the message and forwards it toward the destination.
3. Receiver: Receives and processes the message.
4. Communication channel: Provides the mechanism for transferring messages.

### Structure

Sender

Creates message

Forwarder

Routes message to destination

Communication Channel

Transfers message

Receiver

Processes message

### Working

1. The sender creates a message.
2. The message is passed to the forwarder.
3. The forwarder identifies the destination.
4. The message is transmitted through the communication channel.
5. The receiver receives the message.
6. The receiver processes the request.
7. A response may be sent back to the sender.

### Example — Distributed banking system

Suppose an ATM needs to communicate with a bank server.

- ATM creates a withdrawal request.
- Forwarder handles routing of the request.
- Communication channel transfers it across the network.
- Bank server receives and processes the request.
- The response is returned to the ATM.

Advantages:

- Separates communication from application logic.
- Supports distributed communication.
- Improves modularity.
- Makes communication mechanisms easier to change.

Limitations:

- Additional forwarding may introduce latency.
- Communication failures can interrupt requests.
- Routing and error handling add complexity.

## 2. Client–Dispatcher–Server pattern

Repeated PYQ — 2

Definition: Client–Dispatcher–Server is a communication pattern in which clients send requests to a dispatcher, which identifies the appropriate server and forwards the request to that server.

The dispatcher acts as an intermediary between clients and servers.

### Purpose

- Connect clients with appropriate servers.
- Hide server locations from clients.
- Support multiple servers.
- Simplify request routing.
- Improve flexibility and scalability.

### Participants

1. Client: Requests a service.
2. Dispatcher: Receives requests and selects the appropriate server.
3. Server: Processes the request and returns the result.

### Structure

Client 1

Client 2

Dispatcher

Selects appropriate server

Server 1

Server 2

Server 3

### Working

1. Client sends a service request.
2. Dispatcher receives the request.
3. Dispatcher identifies the appropriate server.
4. Dispatcher forwards the request.
5. Server processes the request.
6. Server sends the response back through the communication mechanism.
7. Client receives the result.

### Example — E-commerce application

Consider an e-commerce application with separate servers for different services.

| Client request | Selected server       |
| -------------- | --------------------- |
| User login     | Authentication server |
| Product search | Product server        |
| Payment        | Payment server        |
| Order tracking | Order server          |

The dispatcher identifies the type of request and forwards it to the appropriate server.

Advantages:

- Clients do not need to know server locations.
- Supports multiple servers.
- Simplifies communication.
- Allows servers to be changed independently.
- Supports scalability.

Limitations:

- Dispatcher can become a bottleneck.
- Dispatcher failure may interrupt communication.
- Adds an additional communication step.

## 3. Publisher–Subscriber pattern

Repeated PYQ — 3

Definition: Publisher–Subscriber is a communication pattern in which publishers generate events or messages and subscribers receive those messages when they are interested in particular topics.

The publisher and subscriber communicate through an intermediary called an event channel or message broker.

It supports loosely coupled communication.

### Purpose

- Distribute information to multiple subscribers.
- Reduce direct dependency between components.
- Support event-driven systems.
- Enable asynchronous communication.
- Allow dynamic subscription and unsubscription.

### Participants

1. Publisher: Generates and publishes events.
2. Subscriber: Registers interest in particular events or topics.
3. Event Channel / Message Broker: Receives published messages and distributes them to interested subscribers.
4. Topic: Identifies the category of messages.

### Structure

Publisher

Publishes event

Event Channel / Message Broker

Filters and distributes events

Subscriber 1

Subscriber 2

Subscriber 3

### Working

1. Subscribers register their interest in particular topics.
2. Publisher generates an event.
3. Publisher sends the event to the event channel.
4. Event channel identifies interested subscribers.
5. The message is delivered to the relevant subscribers.
6. Subscribers process the received event independently.

### Example — Online shopping notification system

Suppose a customer places an order.

The order service publishes an `OrderPlaced` event.

Different subscribers receive the event:

| Subscriber        | Action                   |
| ----------------- | ------------------------ |
| Email service     | Sends order confirmation |
| SMS service       | Sends SMS notification   |
| Inventory service | Updates stock            |
| Analytics service | Records order statistics |

The publisher does not need to know the internal implementation of each subscriber.

Advantages:

- Loose coupling.
- Supports multiple subscribers.
- Easy to add or remove subscribers.
- Supports asynchronous communication.
- Improves scalability.

Limitations:

- Debugging event flows can be difficult.
- Message delivery may be delayed.
- Duplicate or lost messages must be handled.
- Message ordering may require additional mechanisms.

Real-world technologies: Apache Kafka, RabbitMQ and cloud messaging services can implement publisher–subscriber communication.

## 4. Command Processor pattern

Definition: Command Processor is a communication pattern that encapsulates requests as command objects and manages their execution through a central command processor.

Instead of directly invoking operations, the client creates a command representing the requested action and passes it to the command processor.

### Purpose

- Organize and manage requests.
- Separate request creation from execution.
- Support command queuing.
- Support logging and scheduling.
- Enable undo and redo functionality when designed appropriately.

### Participants

1. Client: Creates a command request.
2. Command: Represents a particular operation.
3. Command Processor: Receives, manages and executes commands.
4. Receiver: Performs the actual operation requested by the command.

### Structure

Client

Command Object

Command Processor

Manages and executes commands

Receiver

Command object carries the request; receiver performs the actual operation.

### Working

1. Client generates a request.
2. A command object is created for that request.
3. Command object is passed to the command processor.
4. Command processor accepts and manages the command.
5. The command is executed by invoking the receiver.
6. Receiver performs the requested operation.
7. Result is returned to the client or recorded.

### Example — ATM system

An ATM supports multiple operations:

- Withdraw money.
- Deposit money.
- Check balance.
- Print receipt.

Each operation can be represented as a command.

| Command             | Operation                |
| ------------------- | ------------------------ |
| WithdrawCommand     | Withdraws cash           |
| DepositCommand      | Deposits money           |
| BalanceCommand      | Displays account balance |
| PrintReceiptCommand | Prints receipt           |

The command processor receives the selected command and invokes the corresponding operation.

Advantages:

- Separates request creation from execution.
- Centralizes command management.
- Supports logging and scheduling.
- Can support undo and redo.
- Makes adding new operations easier.

Limitations:

- Requires additional command classes.
- May increase system complexity.
- Command management can become complicated with many operations.

## 5. Comparison of all four communication patterns

Important for revision

| Feature           | Forwarder–Receiver              | Client–Dispatcher–Server | Publisher–Subscriber | Command Processor                |
| ----------------- | ------------------------------- | ------------------------ | -------------------- | -------------------------------- |
| Main purpose      | Forward messages                | Route client requests    | Distribute events    | Manage commands                  |
| Main intermediary | Forwarder                       | Dispatcher               | Event channel        | Command processor                |
| Communication     | Message forwarding              | Request-response         | Event-based          | Command-based                    |
| Coupling          | Separates communication details | Hides server locations   | Loose coupling       | Separates request from execution |
| Typical example   | Distributed message transfer    | Service routing          | Notifications        | ATM operations                   |

## 6. Important conceptual differences

### A. Client–Dispatcher–Server vs Forwarder–Receiver

| Client–Dispatcher–Server                                | Forwarder–Receiver                                   |
| ------------------------------------------------------- | ---------------------------------------------------- |
| Dispatcher selects an appropriate server.               | Forwarder transfers messages toward a receiver.      |
| Uses client, dispatcher and server roles.               | Uses sender, forwarder and receiver roles.           |
| Focuses on service request routing.                     | Focuses on communication and message forwarding.     |
| Example: Routing a payment request to a payment server. | Example: Forwarding a message to a remote component. |

### B. Publisher–Subscriber vs Client–Dispatcher–Server

| Publisher–Subscriber                         | Client–Dispatcher–Server                      |
| -------------------------------------------- | --------------------------------------------- |
| Distributes events to subscribers.           | Routes requests to servers.                   |
| Supports one-to-many event distribution.     | Selects a server to handle a client request.  |
| Often asynchronous.                          | Commonly request-response based.              |
| Publisher does not need to know subscribers. | Client does not need to know server location. |
| Example: Order notifications.                | Example: Product search request.              |

### C. Command Processor vs other communication patterns

| Command Processor                       | Other communication patterns                                        |
| --------------------------------------- | ------------------------------------------------------------------- |
| Represents requests as command objects. | Generally focus on message transfer, routing or event distribution. |
| Centralizes command management.         | Use different intermediaries depending on the pattern.              |
| Can support queuing, logging and undo.  | These features are not inherent to all other patterns.              |
| Example: ATM withdrawal command.        | Example: Publisher–Subscriber notification.                         |

## 7. PYQ preparation priority

Based on the frequency figures you supplied:

| Topic                             | Frequency                     | Priority        |
| --------------------------------- | ----------------------------- | --------------- |
| Publisher–Subscriber              | 3                             | Very high       |
| Client–Dispatcher–Server          | 2                             | Very high       |
| Communication patterns in general | 1                             | High            |
| Forwarder–Receiver                | No direct question identified | High — syllabus |
| Command Processor                 | No direct question identified | High — syllabus |

Exam strategy:

- Prepare Publisher–Subscriber thoroughly, including its diagram and working.
- Prepare Client–Dispatcher–Server with its participants and example.
- Prepare Forwarder–Receiver and Command Processor because they are explicitly in your syllabus.
- Practise the comparison table to handle questions asking for differences.

## 8. Quick revision checklist

Communication patterns progress

# 0/9

Communication pattern definition and purpose

Forwarder–Receiver: participants, structure and working

Client–Dispatcher–Server: participants, structure and working

Publisher–Subscriber: participants, structure and working

Command Processor: participants, structure and working

Real-world examples of all four patterns

Client–Dispatcher–Server vs Forwarder–Receiver

Publisher–Subscriber vs Client–Dispatcher–Server

Command Processor vs other patterns

Reset checklist

Exam tip: For every communication pattern, remember this five-part answer structure: Purpose → Participants → Structure diagram → Working → Example. This makes your answers complete and easy to reproduce in the examination.

Next topic: View Handler pattern and Idioms — introduction, what idioms provide, idioms and style, where to find idioms, and counted pointer example.