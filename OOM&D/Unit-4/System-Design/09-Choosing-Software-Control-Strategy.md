# Unit IV — 8. Choosing a Software Control Strategy

PYQ Priority: Very High

This topic deals with deciding how the execution and flow of control in a software system will be managed. It is important to distinguish external control strategies from internal control strategies.

## 1. Meaning of Software Control Strategy

A software control strategy defines how the execution of a software system is controlled, including how operations are initiated, how activities are coordinated and how control passes between different components.

During system design, the designer chooses a suitable control mechanism based on the system's requirements, architecture and interaction patterns.

Objectives:

1. Define how system execution is initiated and coordinated.
2. Control the sequence of operations.
3. Coordinate communication between subsystems.
4. Support concurrent activities where required.
5. Improve system organization and maintainability.

## 2. Two types of software control flow

There are two major types of control flow in a software system:

1. External control: Controls the flow of externally visible events among objects in the system.
2. Internal control: Controls the flow of execution within an individual process.

Software control flow

Software Control Strategy

External Control

Between objects

- Procedure-driven
- Event-driven
- Concurrent

Internal Control

Within a process

- Procedure calls
- Quasi-concurrent calls
- Concurrent calls

## 3. Categories of External Control Strategies

According to the standard Object-Oriented Modeling and Design textbook classification, there are three categories of external control.

### A. Procedure-Driven Sequential Control

Definition: In procedure-driven control, control resides within the program code. Procedures request external input and wait for the response. When input arrives, execution resumes from the procedure that made the request.

Working:

1. A procedure starts execution.
2. It requests input or a service.
3. It waits until the required response is received.
4. After receiving the response, execution continues.
5. The next procedure is called.

Diagram:

Main Procedure

Request Input / Service

Wait for Response

Resume Procedure Execution

Example: A simple ATM program that asks for a PIN, waits for the user to enter it, verifies it and then proceeds to the next operation.

Advantages:

- Easy to understand and implement.
- Suitable for simple sequential applications.
- Supported by conventional programming languages.

Disadvantages:

- Execution may be blocked while waiting for input.
- Concurrent activities are mapped into sequential execution.
- Less flexible for applications with many independent events.

### B. Event-Driven Sequential Control

Definition: In event-driven control, control resides within a central dispatcher or monitor. Application procedures are associated with particular events, and the dispatcher invokes the appropriate procedure whenever an event occurs.

Working:

1. The system waits for events.
2. An event occurs, such as a button click or message arrival.
3. The dispatcher identifies the event.
4. It invokes the procedure associated with that event.
5. The procedure executes and returns control to the dispatcher.

Diagram:

Event Sources

Button click / Keyboard input / Message

Central Event Dispatcher

Procedure A

Login handler

Procedure B

Payment handler

Example: A graphical user interface (GUI) application where clicking the Login button invokes the login procedure and clicking the Submit button invokes the submission procedure.

Advantages:

- More flexible than procedure-driven control.
- Separates event detection from event processing.
- Suitable for interactive applications.
- Makes event handling more modular.

Disadvantages:

- Requires event registration and dispatching mechanisms.
- A long-running handler may block the dispatcher.
- Debugging event sequences can be difficult.

### C. Concurrent Control

Definition: In concurrent control, control resides simultaneously in several independent objects, each executing as a separate task.

Events are implemented as messages between objects. One task can wait for input while other tasks continue execution.

Working:

1. The system creates multiple independent tasks.
2. Each task performs its assigned operations.
3. Tasks communicate through messages.
4. The operating system schedules the tasks.
5. Multiple tasks can execute at the same time on multiple processors, or make overlapping progress through interleaved execution.

Diagram:

Concurrent System

Task 1

Order processing

Task 2

Database update

Task 3

Notification

Operating System Scheduler

Example: An online shopping system where order processing, inventory updates and notification tasks operate independently and coordinate through messages or events.

Advantages:

- Supports independent activities.
- Improves resource utilization.
- Can improve system responsiveness and throughput.
- Suitable for real-time and distributed applications.

Disadvantages:

- Requires synchronization.
- Race conditions and deadlocks may occur.
- More complex to design and debug.

## 4. Difference between the three external control strategies

| Basis            | Procedure-driven     | Event-driven                    | Concurrent                  |
| ---------------- | -------------------- | ------------------------------- | --------------------------- |
| Control location | Program code         | Central dispatcher              | Multiple independent tasks  |
| Execution        | Sequential           | Event-based sequential dispatch | Multiple independent tasks  |
| Trigger          | Procedure call/input | Event occurrence                | Task execution and messages |
| Coordination     | Procedure calls      | Event dispatcher                | Messages and scheduler      |
| Example          | Simple ATM program   | GUI application                 | Multitasking system         |

Easy memory trick:

- Procedure-driven = Program decides what to execute next.
- Event-driven = Dispatcher decides which procedure to execute.
- Concurrent = Multiple independent tasks manage their own execution.

## 5. External Control versus Internal Control

### External Control

External control concerns the flow of externally visible events among different objects in the system.

Examples:

- User sends a login request.
- Payment subsystem sends a payment confirmation.
- Inventory subsystem sends a stock availability event.

### Internal Control

Internal control refers to the flow of execution within a single process. It is mainly concerned with how operations are implemented internally.

Unlike external control, internal control is under the direction of the program and can be structured according to convenience, efficiency and clarity.

### Categories of Internal Control

1\. Procedure Calls

One procedure calls another procedure and waits for its result.

Example: A `calculateTotal()` method calls `calculateTax()`.

2\. Quasi-Concurrent Intertask Calls

Multiple tasks or routines have separate execution contexts, but only one thread of control is active at a time. Examples include coroutines and certain cooperative lightweight processes.

3\. Concurrent Intertask Calls

Multiple tasks execute independently, potentially at the same time, and coordinate through communication mechanisms.

Example: Multiple threads processing independent requests.

### Difference between External and Internal Control

| Basis    | External Control                                 | Internal Control                                                  |
| -------- | ------------------------------------------------ | ----------------------------------------------------------------- |
| Meaning  | Flow of externally visible events among objects. | Flow of execution within a process.                               |
| Scope    | Between objects or system components.            | Within an individual process.                                     |
| Purpose  | Coordinates system-level interactions.           | Controls implementation-level execution.                          |
| Nature   | Includes sequential and concurrent control.      | Depends on the implementation.                                    |
| Examples | Procedure-driven, event-driven, concurrent.      | Procedure calls, quasi-concurrent and concurrent intertask calls. |

## 6. Example: ATM System

Consider an ATM system.

External control:

- Customer inserts an ATM card.
- ATM receives a PIN.
- Customer selects a withdrawal operation.
- Banking system sends transaction approval.

Internal control:

- Validate PIN.
- Calculate withdrawal amount.
- Check transaction limits.
- Update transaction records.

The external control coordinates interactions between the ATM, customer and banking system, while internal control manages the execution of operations within the ATM software.

## 7. How to choose a suitable software control strategy?

The designer should consider:

1. Application requirements: Whether the system is interactive, sequential or concurrent.
2. System complexity: Simple systems may use procedure-driven control.
3. Event handling: Applications with frequent user events may use event-driven control.
4. Performance: Systems with independent tasks may benefit from concurrent control.
5. Available resources: Programming language, operating system and processor capabilities.
6. Maintainability: The chosen control style should be understandable and manageable.

A system may use different control styles in different subsystems, although a consistent overall control approach is generally preferable.

## 8. Conclusion

Choosing a software control strategy is an important system design activity. It determines how control flows between objects and within processes. External control is classified into procedure-driven sequential, event-driven sequential and concurrent control, whereas internal control includes procedure calls, quasi-concurrent intertask calls and concurrent intertask calls. Selecting an appropriate strategy improves system performance, flexibility and maintainability.

## Important correction for your notes

Your Unit IV revision guide image lists centralized control, event-driven control, client-server control and call-and-return control under external control, and thread-based, object-based and rule-based control under internal control.

However, these are not the standard categories given in the textbook section “Choosing a Software Control Strategy” by Rumbaugh and Blaha. The textbook's classification is:

Use this classification for the PYQ

External control

1. Procedure-driven sequential
2. Event-driven sequential
3. Concurrent

Internal control

1. Procedure calls
2. Quasi-concurrent intertask calls
3. Concurrent intertask calls

This matches the textbook section and the standard OOMD notes.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://www.simmc.org\&sz=32)

SIMMC+2



## PYQ evidence from your uploaded papers

| Paper         | Question                                                     |
| ------------- | ------------------------------------------------------------ |
| November 2022 | Categories of External Control                               |
| April 2023    | Categories of External Control                               |
| November 2023 | Categories of External Control Strategies                    |
| April 2024    | Categories of External Control                               |
| April 2025    | Categories of External Control; External vs Internal Control |
| November 2024 | Different Software Control Strategies                        |

These recurring questions confirm the high priority of this topic.&#x20;

OOM&D Nov 22.pdf

OOM&D April 23.pdf

OOM&D Nov 23.pdf

OOM&D April 24.pdf

OOM&D April 25.pdf

OOM&D Nov 24.pdf



## Exam preparation checklist

Study progress

0/10

Meaning and purpose of software control strategy

Two types: external and internal control

Procedure-driven sequential control with diagram

Event-driven sequential control with diagram

Concurrent control with diagram

Difference between three external control strategies

Three categories of internal control

External control vs internal control

ATM system example

Factors for choosing a control strategy

PYQ strategy: First prepare all three external control categories with diagrams and advantages/disadvantages. Then prepare external versus internal control. These cover the most repeated question formats.