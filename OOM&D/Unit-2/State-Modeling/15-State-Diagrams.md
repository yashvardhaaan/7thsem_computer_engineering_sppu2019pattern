# 14. STATE DIAGRAMS

# 1. Introduction

A **State Diagram**, also called a **State Chart Diagram** or **State Machine Diagram**, is a UML behavioral diagram used to represent the **dynamic behavior of an object or system**.

It shows:

* Different states of an object
* Events that cause changes
* Transitions between states
* Conditions/guards
* Actions or activities
* Initial and final states
* Composite states
* Parallel/concurrent behavior

### Exam Definition

> **A state diagram is a UML behavioral diagram that represents the different states of an object during its lifetime and the transitions between those states in response to events and conditions.**

---

# 2. Purpose of State Diagrams

State diagrams are used to model systems whose behavior changes according to their current state.

They answer questions such as:

* What state is the object currently in?
* What event causes a state change?
* To which state does the object move?
* What condition must be satisfied?
* What action is performed during the transition?
* What happens when the process is completed?

---

# 3. Basic State Diagram

A basic state diagram contains:

```text id="h7m3q2"
                    Event
                      |
                      ↓
               +------------+
               |            |
               |  State A   |
               |            |
               +------------+
                      |
                 Transition
                      |
                      ↓
               +------------+
               |            |
               |  State B   |
               |            |
               +------------+
```

The arrow represents the transition from one state to another.

---

# 4. Main Components of a State Diagram

The important components are:

1. Initial State
2. State
3. Transition
4. Event
5. Guard Condition
6. Action/Activity
7. Final State
8. Composite State
9. Concurrent/Orthogonal State

---

# 5. Initial State

The initial state represents the **starting point** of a state machine.

### UML Notation

A filled black circle is used.

```text id="c3q8m5"
    ●
    |
    ↓
+---------+
|  Idle   |
+---------+
```

### Example

In an ATM:

```text id="r6m2v9"
    ●
    |
    ↓
+---------+
|  Idle   |
+---------+
```

The ATM begins in the Idle state.

---

# 6. State

A state represents a condition or situation of an object.

### UML Notation

A state is represented using a rounded rectangle.

```text id="j4p8x1"
+----------------+
|     Idle       |
+----------------+
```

Examples:

* Idle
* Logged In
* Processing
* Waiting
* Completed

---

# 7. Transition

A transition represents the movement from one state to another.

```text id="m9q2v6"
+---------+       event       +---------+
| State A |------------------>| State B |
+---------+                   +---------+
```

Example:

```text id="p7x3n8"
+---------+     insertCard     +---------------+
|  Idle   |------------------->| Card Inserted |
+---------+                    +---------------+
```

---

# 8. Event

An event is an occurrence that triggers a transition.

Example:

```text id="v8k2m4"
+---------+       insertCard      +---------------+
|  Idle   |---------------------->| Card Inserted |
+---------+                        +---------------+
```

Here:

```text id="q3n7p5"
insertCard = Event
```

---

# 9. Guard Condition

A guard is a Boolean condition that must be true for a transition to occur.

It is represented using `[ ]`.

### Example

```text id="x5m8q2"
+---------+       withdraw        +-------------+
| Active  |---------------------->| Transaction |
+---------+      [balance > 0]    +-------------+
```

The transition occurs only when:

```text id="u7r3p9"
balance > 0
```

is true.

---

# 10. Action

An action is an operation performed during a transition.

Notation:

```text id="n4q8m2"
event [guard] / action
```

Example:

```text id="w6p1x7"
withdraw [balance > 0] / deductAmount
```

---

# 11. Final State

The final state represents the completion of a state machine or a particular state-machine execution.

### UML Notation

```text id="s2m7q4"
+-------------+
|  Completed  |
+-------------+
       |
       ↓
      ◉
```

---

# 12. State Diagram Notation — Quick Table

| Element         | UML Representation         | Meaning                  |
| --------------- | -------------------------- | ------------------------ |
| Initial State   | `●`                        | Starting point           |
| State           | Rounded rectangle          | Condition of object      |
| Transition      | Arrow                      | Movement between states  |
| Event           | Label on arrow             | Trigger                  |
| Guard           | `[condition]`              | Condition for transition |
| Action          | `/action`                  | Operation performed      |
| Final State     | `◉`                        | Completion               |
| Composite State | State containing substates | Complex behavior         |

---

# 13. Simple State Diagram Example — Login System

Consider a login system.

```text id="k8m3v1"
                    ●
                    |
                    ↓
              +-----------+
              |   Logged  |
              |    Out    |
              +-----------+
                    |
                  login
                    |
                    ↓
              +-----------+
              | Authentic-|
              |   ating   |
              +-----------+
                    |
              [valid credentials]
                    |
                    ↓
              +-----------+
              |  Logged   |
              |    In     |
              +-----------+
                    |
                  logout
                    |
                    ↓
              +-----------+
              |   Logged  |
              |    Out    |
              +-----------+
```

This diagram shows how the user moves between different states.

---

# 14. Why State Diagrams Are Important

State diagrams are particularly useful for:

* ATM systems
* Railway reservation systems
* Library systems
* Telephone systems
* Traffic lights
* Online shopping
* Login/authentication
* Elevator systems
* Vending machines
* Communication systems

They are useful whenever the system has **different states and state-dependent behavior**.

---

# 15. Composite State

A **composite state** is a state containing one or more substates.

It is used to represent complex behavior at a higher level.

### Example — ATM Transaction

```text id="f5q8m2"
+--------------------------------+
|         Transaction            |
|                                |
|   +------------------------+   |
|   | Select Account         |   |
|   +------------------------+   |
|              |                 |
|              ↓                 |
|   +------------------------+   |
|   | Enter Amount           |   |
|   +------------------------+   |
|              |                 |
|              ↓                 |
|   +------------------------+   |
|   | Process Transaction    |   |
|   +------------------------+   |
|                                |
+--------------------------------+
```

Here:

**Transaction** = Composite State

Its substates are:

* Select Account
* Enter Amount
* Process Transaction

---

# 16. Why Composite States Are Used

Without composite states, a large state diagram can become difficult to understand.

Instead of:

```text id="c6m2x8"
20+ states in one diagram
```

we can group related states:

```text id="v7p3n1"
             Transaction
                  |
       +----------+----------+
       |          |          |
    Account     Amount     Process
```

This provides **hierarchical modeling**.

---

# 17. Concurrent States

A composite state may contain multiple regions that execute concurrently.

Example:

```text id="n8q4m2"
+--------------------------------+
|          Video Call            |
|--------------------------------|
|                                |
|   Audio Processing             |
|                                |
|--------------------------------|
|                                |
|   Video Processing             |
|                                |
+--------------------------------+
```

Audio and video processing can occur at the same time.

---

# 18. State Diagram with Guard Conditions

A state diagram can represent different paths depending on conditions.

### ATM Example

```text id="r4m7x2"
                       enterPIN
                    /           \
                   /             \
          [PIN valid]       [PIN invalid]
                |                 |
                ↓                 ↓
        +-------------+      +-------------+
        | Transaction |      |  Retry PIN  |
        +-------------+      +-------------+
```

This is useful for modeling decision-based behavior.

---

# 19. State Diagram with Activities

A state can contain:

* Entry activity
* Do activity
* Exit activity

Example:

```text id="p2x8m5"
+-----------------------------+
|        Processing           |
|-----------------------------|
| entry / startProcessing()   |
| do / processRequest()       |
| exit / finishProcessing()   |
+-----------------------------+
```

---

# PYQ 1 — AUGUST 2024

## Question

> **"Construct state transition diagram for computerization of your college library." — 5 Marks**

This is a **diagram-oriented question**.

The examiner mainly wants:

1. Correct states
2. Correct events
3. Correct transitions
4. Logical sequence
5. Proper UML notation

---

# 20. College Library State Diagram

A library system can be modeled using states such as:

* Idle
* Search Book
* Book Available
* Book Issued
* Book Returned
* Book Not Available

### Diagram

```text id="q7m2v9"
                         ●
                         |
                         ↓
                  +-------------+
                  |    Idle     |
                  +-------------+
                         |
                    searchBook
                         |
                         ↓
                  +-------------+
                  | Search Book |
                  +-------------+
                    /         \
                   /           \
          [available]       [not available]
                |                  |
                ↓                  ↓
       +----------------+   +----------------+
       | Book Available |   | Not Available  |
       +----------------+   +----------------+
                |
             issueBook
                |
                ↓
       +----------------+
       |  Book Issued   |
       +----------------+
                |
             returnBook
                |
                ↓
       +----------------+
       |  Book Returned |
       +----------------+
                |
                ↓
               ◉
```

---

# 21. Explanation of Library Diagram

### Step 1 — Idle

The system waits for a user request.

### Step 2 — Search Book

The user searches for a book.

### Step 3 — Check Availability

Two conditions are possible:

```text id="w3n8p4"
[available]
[not available]
```

### Step 4 — Book Available

If the book is available, the user can issue it.

### Step 5 — Book Issued

The book is issued to the student.

### Step 6 — Return Book

The student returns the book.

### Step 7 — Book Returned

The system updates the book status.

---

# 22. Exam Answer for Library PYQ

> The state transition diagram for a computerized college library represents the different states of a book/library transaction and the events that cause transitions between them.
>
> Important states are:
>
> * Idle
> * Search Book
> * Book Available
> * Book Not Available
> * Book Issued
> * Book Returned
>
> The system starts from Idle. When the user searches for a book, it moves to Search Book. If the book is available, it moves to Book Available and then Book Issued. After the book is returned, it moves to Book Returned and the transaction is completed.

Then draw the diagram.

---

# PYQ 2 — SEPTEMBER 2023

## Question

> **"Draw state diagram with composite states from ATM card reading & authentication system." — 5 Marks**

This question specifically tests **composite states**.

---

# 23. ATM Card Reading and Authentication

The main high-level state can be:

```text id="j5q8m2"
Authentication
```

Inside it, we can have:

* Insert Card
* Read Card
* Validate Card
* Enter PIN
* Verify PIN

This makes `Authentication` a **composite state**.

---

# 24. ATM Composite State Diagram

```text id="r8m3x6"
                           ●
                           |
                           ↓
                  +-------------------+
                  |       Idle        |
                  +-------------------+
                           |
                       insertCard
                           |
                           ↓
      +-----------------------------------------+
      |             Authentication              |
      |-----------------------------------------|
      |                                         |
      |   +----------------+                    |
      |   |   Read Card    |                    |
      |   +----------------+                    |
      |           |                             |
      |           ↓                             |
      |   +----------------+                    |
      |   |  Validate Card |                    |
      |   +----------------+                    |
      |           |                             |
      |           ↓                             |
      |   +----------------+                    |
      |   |   Enter PIN    |                    |
      |   +----------------+                    |
      |           |                             |
      |           ↓                             |
      |   +----------------+                    |
      |   |   Verify PIN   |                    |
      |   +----------------+                    |
      |                                         |
      +-----------------------------------------+
                           |
                     [PIN valid]
                           |
                           ↓
                    +-------------+
                    | Transaction |
                    +-------------+
```

---

# 25. Explanation

### Idle

ATM waits for the user.

### Insert Card

The user inserts the ATM card.

### Authentication — Composite State

The ATM performs multiple internal operations:

```text id="d6p2m9"
Read Card
   ↓
Validate Card
   ↓
Enter PIN
   ↓
Verify PIN
```

Therefore, Authentication is a **composite state**.

### Valid PIN

If the PIN is correct, the system moves to Transaction.

### Invalid PIN

If required, the system can move to Retry PIN.

```text id="x4m8q1"
Verify PIN
   |
   +---- [valid] ----> Transaction
   |
   +---- [invalid] --> Retry PIN
```

---

# PYQ 3 — SEPTEMBER 2023

## Question

> **"Draw state chart diagram for Railway reservation system." — 5 Marks**

This question appeared again in **October 2022**, making it particularly important.

---

# 26. Railway Reservation State Diagram

Important states:

* Start
* Search Train
* Train Available
* Enter Passenger Details
* Seat Available
* Payment
* Ticket Confirmed
* Waitlisted
* Cancelled

### Diagram

```text id="m7q3v8"
                           ●
                           |
                           ↓
                    +-------------+
                    |    Start    |
                    +-------------+
                           |
                       searchTrain
                           |
                           ↓
                    +-------------+
                    | Search Train|
                    +-------------+
                           |
                    [train available]
                           |
                           ↓
                 +-------------------+
                 | Train Selected    |
                 +-------------------+
                           |
                  enterPassengerDetails
                           |
                           ↓
              +--------------------------+
              | Passenger Details Entered|
              +--------------------------+
                           |
                      checkSeat
                       /        \
                      /          \
             [seat available]   [no seat]
                    |                |
                    ↓                ↓
             +------------+    +------------+
             |   Payment  |    | Waitlisted |
             +------------+    +------------+
                    |
               paymentSuccess
                    |
                    ↓
             +---------------+
             | Ticket        |
             | Confirmed     |
             +---------------+
                    |
                    ↓
                   ◉
```

---

# 27. Railway Reservation Explanation

### Start

The system begins.

### Search Train

Passenger searches for a train.

### Train Selected

A suitable train is selected.

### Passenger Details

Passenger enters required information.

### Seat Availability

The system checks seat availability.

Two possibilities:

```text id="f8m2q6"
[seat available]
        ↓
     Payment

[no seat]
        ↓
    Waitlisted
```

### Payment

Passenger completes payment.

### Ticket Confirmed

After successful payment, reservation is confirmed.

---

# PYQ 4 — OCTOBER 2022

## Question

> **"Draw state diagram with composite states from ATM card reading & authentication system." — 5 Marks**

This is the **same core question as Sept 2023**.

### Importance

🔥🔥🔥🔥🔥

You should prepare the ATM composite-state diagram as a **ready-to-draw answer**.

Use:

```text id="y6q3m8"
Idle
 ↓
Authentication
 ├── Read Card
 ├── Validate Card
 ├── Enter PIN
 └── Verify PIN
 ↓
Transaction
```

---

# PYQ 5 — OCTOBER 2022

## Question

> **"Draw state chart diagram for Railway Reservation system." — 5 Marks**

This is repeated from Sept 2023.

Therefore, the Railway Reservation diagram is also **extremely high priority**.

---

# PYQ 6 — AUGUST 2025

## Question

> **"Draw state diagram for a telephone line with activities." — 5 Marks**

This question specifically tests **states + activities**.

---

# 28. Telephone Line State Diagram

Important states:

* On Hook
* Dial Tone
* Dialing
* Ringing
* Connected
* Busy
* Disconnected

---

## Diagram

```text id="k4m8q2"
                           ●
                           |
                           ↓
                    +-------------+
                    |   On Hook   |
                    +-------------+
                           |
                       offHook
                           |
                           ↓
                    +-------------+
                    |  Dial Tone  |
                    +-------------+
                           |
                        dialing
                           |
                           ↓
                    +-------------+
                    |   Dialing   |
                    +-------------+
                           |
                     numberDialed
                           |
                           ↓
                    +-------------+
                    |   Ringing   |
                    +-------------+
                      /          \
                     /            \
             [answered]        [busy]
                   |                |
                   ↓                ↓
            +-------------+    +-------------+
            |  Connected  |    |    Busy     |
            +-------------+    +-------------+
                   |
                 hangup
                   |
                   ↓
            +-------------+
            | Disconnected|
            +-------------+
                   |
                   ↓
                  ◉
```

---

# 29. Telephone Line with Activities

The question specifically says **"with activities"**, so add entry/do/exit activities.

Example:

```text id="m7q2x9"
+--------------------------------+
|          Dial Tone             |
|--------------------------------|
| entry / generateTone()         |
| do / waitForDigit()            |
| exit / stopTone()              |
+--------------------------------+
```

Another example:

```text id="p3n8v5"
+--------------------------------+
|           Ringing              |
|--------------------------------|
| entry / startRinging()         |
| do / generateRing()            |
| exit / stopRinging()           |
+--------------------------------+
```

---

# 30. Activities in a State

A state can contain three types of activities:

## Entry Activity

Executed immediately when entering the state.

```text id="b5x9m2"
entry / startRinging()
```

## Do Activity

Executed while the object remains in the state.

```text id="r8q3v6"
do / generateRing()
```

## Exit Activity

Executed when leaving the state.

```text id="n4m7p1"
exit / stopRinging()
```

---

# 31. Telephone State with Activities — Exam Diagram

```text id="x6q2m8"
+--------------------------------+
|            Ringing             |
|--------------------------------|
| entry / startRinging()         |
| do / generateRing()            |
| exit / stopRinging()           |
+--------------------------------+
```

This directly demonstrates the meaning of **"with activities."**

---

# PYQ 7 — AUGUST 2024

## Question

> **"Draw state chart diagram for handling telecommunication system." — 5 Marks**

This is related to the telephone/communication state model.

---

# 32. Telecommunication State Diagram

A generic telecommunication system can be represented as:

```text id="q8m4x2"
                          ●
                          |
                          ↓
                   +-------------+
                   |    Idle     |
                   +-------------+
                          |
                      callRequest
                          |
                          ↓
                   +-------------+
                   | Connecting  |
                   +-------------+
                          |
                   [connectionOK]
                          |
                          ↓
                   +-------------+
                   |  Connected  |
                   +-------------+
                    /           \
                   /             \
              dataSend        callEnd
                 |                |
                 ↓                ↓
          +-------------+    +-------------+
          | Data Transfer|   | Terminated  |
          +-------------+    +-------------+
                 |
              transferComplete
                 |
                 ↓
             Connected
```

---

# 33. Explanation

### Idle

System waits for a communication request.

### Connecting

System attempts to establish a connection.

### Connected

Communication is successfully established.

### Data Transfer

Data is exchanged.

### Terminated

Communication ends.

---

# 34. Common Pattern for State Diagram Questions

Most state-diagram questions can be solved using this process:

```text id="w2q8m5"
STEP 1
Identify the object/system
        ↓
STEP 2
Identify its states
        ↓
STEP 3
Identify events
        ↓
STEP 4
Identify conditions
        ↓
STEP 5
Connect states using transitions
        ↓
STEP 6
Add initial and final states
        ↓
STEP 7
Add activities/composite states if asked
```

---

# 35. How to Identify States from a Question

Look for words representing a **condition/status**.

### Example: ATM

Question:

> Draw state diagram for ATM authentication.

Possible states:

```text id="j6m3p8"
Idle
Card Inserted
Reading Card
PIN Verification
Authenticated
Transaction
```

---

### Example: Railway Reservation

Possible states:

```text id="s5q8n2"
Searching
Train Selected
Passenger Details
Seat Available
Payment
Confirmed
Waitlisted
Cancelled
```

---

### Example: Telephone

Possible states:

```text id="m8v2x6"
On Hook
Dial Tone
Dialing
Ringing
Connected
Busy
Disconnected
```

---

# 36. How to Identify Events

Look for **actions that cause movement**.

### ATM

```text id="p3x7m9"
insertCard
enterPIN
selectTransaction
withdraw
cancel
```

### Railway

```text id="q6m2v8"
searchTrain
selectTrain
enterDetails
makePayment
cancel
```

### Telephone

```text id="r4n8x1"
offHook
dial
answer
hangup
```

---

# 37. How to Identify Guards

Look for conditions such as:

```text id="g8m3q5"
[valid]
[available]
[successful]
[insufficient balance]
[seat available]
[PIN correct]
[connection failed]
```

These go inside square brackets.

---

# 38. State Diagram vs Activity Diagram

This distinction is important in exams.

| State Diagram                     | Activity Diagram                  |
| --------------------------------- | --------------------------------- |
| Models states of an object/system | Models workflow/process           |
| Focuses on state changes          | Focuses on activities             |
| Event-driven                      | Flow-driven                       |
| Shows states and transitions      | Shows actions and decisions       |
| Example: ATM states               | Example: ATM transaction workflow |

### Easy Memory

> **State Diagram → "What state is the object in?"**

> **Activity Diagram → "What activity happens next?"**

---

# 39. State Diagram vs Sequence Diagram

| State Diagram           | Sequence Diagram            |
| ----------------------- | --------------------------- |
| Models state changes    | Models interactions         |
| Focuses on lifecycle    | Focuses on message sequence |
| Event causes transition | Message causes interaction  |
| Shows states            | Shows objects and messages  |

---

# 40. Common Errors in State Diagram Questions

## Error 1 — Using actions as states

Wrong:

```text id="f3m7q1"
State: insertCard
```

Better:

```text id="s8q2m6"
Event: insertCard
State: Card Inserted
```

---

## Error 2 — Forgetting initial state

Always start with:

```text id="k5x9n2"
●
```

when appropriate.

---

## Error 3 — No conditions when question asks for guarded transitions

Use:

```text id="p7m3q8"
event [condition]
```

---

## Error 4 — Drawing random arrows

Every transition should have a logical event or condition.

---

## Error 5 — Forgetting final state

When the process has a clear completion, show:

```text id="v4q8m1"
◉
```

---

# 41. High-Scoring Diagram Structure

For a 5-mark diagram question, aim for:

```text id="d9m2x7"
                 ●
                 |
                 ↓
            +---------+
            | State 1 |
            +---------+
                 |
              event
                 |
                 ↓
            +---------+
            | State 2 |
            +---------+
                 |
           event [guard]
                 |
                 ↓
            +---------+
            | State 3 |
            +---------+
                 |
                 ↓
                ◉
```

Then add a composite state if specifically requested.

---

# 42. PYQ Priority Analysis

| PYQ           | Topic                          | Priority   |
| ------------- | ------------------------------ | ---------- |
| **Sept 2023** | ATM composite state            | 🔥🔥🔥🔥🔥 |
| **Sept 2023** | Railway reservation            | 🔥🔥🔥🔥🔥 |
| **Oct 2022**  | ATM composite state            | 🔥🔥🔥🔥🔥 |
| **Oct 2022**  | Railway reservation            | 🔥🔥🔥🔥🔥 |
| **Aug 2024**  | College library                | 🔥🔥🔥🔥   |
| **Aug 2024**  | Telecommunication system       | 🔥🔥🔥🔥   |
| **Aug 2025**  | Telephone line with activities | 🔥🔥🔥🔥🔥 |

---

# 43. Most Important Diagrams to Practice

Do NOT try to memorize every possible diagram.

Practice these five:

### 1. ATM Authentication

```text id="u5q8m2"
Idle
 ↓
Authentication
 ├─ Read Card
 ├─ Validate Card
 ├─ Enter PIN
 └─ Verify PIN
 ↓
Transaction
```

### 2. Railway Reservation

```text id="r7m3x9"
Search Train
     ↓
Train Selected
     ↓
Passenger Details
     ↓
Seat Check
   /      \
Available  Not Available
   ↓          ↓
Payment    Waitlisted
   ↓
Confirmed
```

### 3. College Library

```text id="p2v6n8"
Search Book
     ↓
Availability
   /       \
Available  Not Available
   ↓
Issued
   ↓
Returned
```

### 4. Telephone

```text id="m8q4x1"
On Hook
   ↓
Dial Tone
   ↓
Dialing
   ↓
Ringing
  /    \
Answer Busy
  ↓
Connected
  ↓
Disconnected
```

### 5. Telecommunication

```text id="j3n7p5"
Idle
 ↓
Connecting
 ↓
Connected
 ↓
Data Transfer
 ↓
Terminated
```

---

# 44. Universal State Diagram Template

For almost any exam question, start with:

```text id="h4m8q2"
                         ●
                         |
                         ↓
                  +-------------+
                  | Initial     |
                  | State       |
                  +-------------+
                         |
                       event
                         |
                         ↓
                  +-------------+
                  |   State 1   |
                  +-------------+
                         |
                   event [guard]
                         |
                         ↓
                  +-------------+
                  |   State 2   |
                  +-------------+
                         |
                       event
                         |
                         ↓
                  +-------------+
                  |   Final     |
                  |   State     |
                  +-------------+
                         |
                         ↓
                        ◉
```

Replace the states and events according to the question.

---

# 45. One-Minute Revision

## State Diagram

> **UML behavioral diagram used to represent the lifecycle and dynamic behavior of an object/system through states and transitions.**

### Main Components

```text id="y6p2m8"
Initial State
      ↓
State
      ↓
Event
      ↓
Transition
      ↓
Guard
      ↓
Action
      ↓
New State
      ↓
Final State
```

### Important Notations

```text id="q8m3v1"
●   → Initial State

Rounded rectangle → State

→   → Transition

[event] → Guard

/action → Action

◉   → Final State
```

---

# ⭐ Exam Strategy for State Diagram Questions

When the question says **"Draw state diagram"**, do not write only theory.

Use:

### 1. One-line definition

> A state diagram represents the states and transitions of an object/system during its lifetime.

### 2. Identify 5–8 logical states

### 3. Connect them with events

### 4. Add guards where decisions exist

### 5. Add initial state `●`

### 6. Add final state `◉` if appropriate

### 7. If the question says **composite state**, put substates inside a larger state.

### 8. If the question says **with activities**, use:

```text id="w3q7m9"
entry / action
do / activity
exit / action
```

---

# 🔥 MOST IMPORTANT FOR EXAM

The highest-yield diagrams from your PYQs are:

## 1. ATM Card Reading & Authentication

**Asked:** Sept 2023 + Oct 2022

🔥🔥🔥🔥🔥

## 2. Railway Reservation

**Asked:** Sept 2023 + Oct 2022

🔥🔥🔥🔥🔥

## 3. Telephone Line with Activities

**Asked:** Aug 2025

🔥🔥🔥🔥🔥

## 4. College Library

**Asked:** Aug 2024

🔥🔥🔥🔥

## 5. Telecommunication System

**Asked:** Aug 2024

🔥🔥🔥🔥

---

# Final Memory Formula

```text id="v5m8q2"
STATE DIAGRAM

      Event
        ↓
   [Guard]
        ↓
   Transition
        ↓
 New State
        ↓
   [Action]
```

### For Diagram Questions:

> **Identify STATES → identify EVENTS → identify GUARDS → draw TRANSITIONS → add INITIAL/FINAL → add COMPOSITE/ACTIVITIES if asked.**

This method can be applied to **ATM, Railway Reservation, Library, Telephone, Traffic Light, Telecommunication, and similar state-diagram questions.**
