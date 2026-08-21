# 15. STATE DIAGRAM BEHAVIOR

## 1. Introduction

**State diagram behavior** describes how an object or system behaves while it moves through different states in response to events, conditions, and actions.

A state diagram does not only show the states of an object. It also explains:

* What event causes a transition
* What condition must be satisfied
* What action is performed
* How the object enters a state
* What happens while it remains in a state
* What happens when it leaves a state
* How different states interact

### Exam Definition

> **State diagram behavior represents the dynamic behavior of an object by showing how it changes from one state to another in response to events, guard conditions, and actions.**

---

# 2. Basic Behavior of a State Diagram

The basic behavioral sequence is:

```text
       Event occurs
            ↓
     Guard is checked
            ↓
       Guard true?
        /       \
      Yes         No
       |           |
       ↓           ↓
 Transition     Remain in
 occurs         current state
       |
       ↓
 Action executed
       |
       ↓
 New state entered
```

This is the fundamental behavior of a state machine.

---

# 3. Components of State Diagram Behavior

Important components include:

1. State
2. Event
3. Transition
4. Guard condition
5. Action
6. Entry activity
7. Do activity
8. Exit activity

---

# 4. Transition

## Definition

A **transition** represents a change from one state to another due to an event.

### General Form

```text
State A ---- event ----> State B
```

### Example

```text
+---------+       login()       +----------+
| Logged  |-------------------->| Logged In|
|  Out    |                     |          |
+---------+                     +----------+
```

Here:

* `Logged Out` → Source state
* `login()` → Event
* Arrow → Transition
* `Logged In` → Target state

---

# 5. Guarded Transition

A **guarded transition** is a transition that occurs only when a specified condition is true.

### Syntax

```text
event [guard]
```

or:

```text
event [guard] / action
```

### Example

```text
+---------+      withdraw [balance > 0]      +-------------+
| Active  |--------------------------------->| Transaction |
+---------+                                  +-------------+
```

The transition occurs only if:

```text
balance > 0
```

is true.

---

# 6. What Happens When the Guard is False?

Suppose:

```text
withdraw [balance > 0]
```

If:

```text
balance = ₹500
```

then:

```text
balance > 0 → TRUE
```

The transition occurs.

But if:

```text
balance = ₹0
```

then:

```text
balance > 0 → FALSE
```

The guarded transition does not occur.

The object remains in the current state or follows another valid transition.

---

# 7. Multiple Guarded Transitions

Multiple transitions can originate from the same state and be selected according to different conditions.

### Example — ATM PIN

```text
                       enterPIN
                          |
                +---------+---------+
                |                   |
          [PIN correct]       [PIN incorrect]
                |                   |
                ↓                   ↓
       +-------------+       +-------------+
       | Transaction |       | Retry PIN   |
       +-------------+       +-------------+
```

Here:

* `enterPIN` is the event.
* `[PIN correct]` is one guard.
* `[PIN incorrect]` is another guard.

The system follows the transition whose guard condition is satisfied.

---

# 8. Actions in State Diagram Behavior

An **action** is an operation performed when a transition occurs.

### Syntax

```text
event [guard] / action
```

### Example

```text
withdraw [balance > 0] / deductAmount
```

The sequence is:

```text
withdraw event
      ↓
Check balance > 0
      ↓
If true
      ↓
deductAmount()
      ↓
Move to Transaction state
```

---

# 9. Entry Activity

An **entry activity** is performed automatically whenever an object enters a state.

### Syntax

```text
entry / action
```

### Example

```text
+--------------------------+
|       Logged In          |
|--------------------------|
| entry / loadDashboard()  |
+--------------------------+
```

Whenever the system enters `Logged In`, it executes:

```text
loadDashboard()
```

---

# 10. Do Activity

A **do activity** is performed while the object remains in a particular state.

### Syntax

```text
do / activity
```

### Example

```text
+----------------------------+
|       Processing           |
|----------------------------|
| do / processTransaction()  |
+----------------------------+
```

The activity continues while the object remains in the Processing state.

---

# 11. Exit Activity

An **exit activity** is performed when the object leaves a state.

### Syntax

```text
exit / action
```

### Example

```text
+---------------------------+
|        Logged In          |
|---------------------------|
| exit / saveSession()      |
+---------------------------+
```

When the system leaves `Logged In`, it executes:

```text
saveSession()
```

---

# 12. Entry, Do and Exit Together

A state can contain all three:

```text
+--------------------------------+
|          Processing            |
|--------------------------------|
| entry / startProcessing()      |
| do / processRequest()          |
| exit / finishProcessing()      |
+--------------------------------+
```

### Meaning

### Entry

```text
startProcessing()
```

runs when entering the state.

### Do

```text
processRequest()
```

runs while the system remains in the state.

### Exit

```text
finishProcessing()
```

runs when leaving the state.

---

# 13. Transition vs State Activities

This distinction is important.

### Transition Action

Occurs during a transition.

```text
event [guard] / action
```

### State Activity

Occurs because the object enters, remains in, or exits a state.

```text
entry / action
do / activity
exit / action
```

### Example

```text
State A
   |
   | login [valid] / authenticate()
   ↓
+----------------------------+
|        Logged In           |
|----------------------------|
| entry / loadDashboard()    |
| do / monitorSession()      |
| exit / saveSession()       |
+----------------------------+
```

---

# 14. Complete Behavioral Sequence

The behavior of a state transition can be understood as:

```text
Event
  ↓
Guard Check
  ↓
Exit Activity of Current State
  ↓
Transition Action
  ↓
Entry Activity of Target State
  ↓
Do Activity
  ↓
Wait for Next Event
```

### Example

```text
Login event
    ↓
[valid credentials]
    ↓
exit / closeLoginScreen()
    ↓
transition / authenticate()
    ↓
entry / loadDashboard()
    ↓
do / monitorSession()
```

---

# 15. State Diagram Behavior Example — ATM

Consider an ATM.

```text
                     insertCard
                         |
                         ↓
                +----------------+
                |      Idle      |
                +----------------+
                         |
                     insertCard
                         |
                         ↓
              +----------------------+
              |   Card Authentication|
              |----------------------|
              | entry / readCard()   |
              | do / verifyCard()    |
              | exit / ejectCard()   |
              +----------------------+
                         |
                     enterPIN
                         |
                  [PIN correct]
                         |
                         ↓
              +----------------+
              |   Transaction  |
              |----------------|
              | entry / showMenu|
              | do / process() |
              | exit / close()  |
              +----------------+
                         |
                      complete
                         |
                         ↓
                        ◉
```

This demonstrates:

* States
* Events
* Guard
* Entry activities
* Do activities
* Exit activities
* Transitions
* Final state

---

# 16. PYQ 1 — AUGUST 2025

## Question

> **"What is meant by transitions and guarded transitions in state diagram. Draw a state diagram with guarded transitions for a traffic light..." — 5 Marks**

This is the **most direct PYQ for this concept**.

---

# 17. Transition — Exam Answer

> **A transition is a directed relationship between two states that represents a change from one state to another when a particular event occurs.**

### Example

```text
+---------+       timerExpired       +---------+
|  Green  |-------------------------->| Yellow  |
+---------+                           +---------+
```

---

# 18. Guarded Transition — Exam Answer

> **A guarded transition is a transition that occurs only when a specified Boolean condition, called a guard condition, is true. A guard is written inside square brackets `[ ]`.**

### Example

```text
+---------+      timerExpired [timer >= 30s]      +---------+
|  Green  |-------------------------------------->| Yellow  |
+---------+                                       +---------+
```

The transition occurs only if:

```text
timer >= 30 seconds
```

---

# 19. Traffic Light State Diagram

A traffic light has three main states:

* Red
* Green
* Yellow

### Exam Diagram

```text
                         timerExpired
                        [timer >= 30s]
                              |
                              ↓
                       +-------------+
                       |    Green    |
                       +-------------+
                              |
                         timerExpired
                         [timer >= 5s]
                              |
                              ↓
                       +-------------+
                       |    Yellow   |
                       +-------------+
                              |
                         timerExpired
                         [timer >= 30s]
                              |
                              ↓
                       +-------------+
                       |     Red     |
                       +-------------+
                              |
                         timerExpired
                         [timer >= 30s]
                              |
                              +----------> Green
```

---

# 20. Explanation of Traffic Light Behavior

## Green → Yellow

When the timer expires and:

```text
timer >= 5 seconds
```

the system moves from Green to Yellow.

---

## Yellow → Red

When the specified yellow duration is completed:

```text
timer >= 5 seconds
```

the system moves to Red.

---

## Red → Green

When the red duration is completed:

```text
timer >= 30 seconds
```

the system moves back to Green.

---

# 21. 5-Mark Exam Answer

> **Transition:** A transition represents the movement of an object from one state to another when an event occurs.
>
> **Guarded Transition:** A guarded transition occurs only when a specified Boolean condition is true. The guard condition is written in square brackets `[ ]`.
>
> General notation:
>
> ```text
> event [guard] / action
> ```
>
> For example, a traffic light can be represented as:
>
> ```text
> Green -- timerExpired [timer >= 30s] --> Yellow
> Yellow -- timerExpired [timer >= 5s] --> Red
> Red -- timerExpired [timer >= 30s] --> Green
> ```
>
> The guard conditions control when the traffic light can move from one state to another. Thus, guarded transitions are useful for modeling state changes that depend on specific conditions.

---

# PYQ 2 — OCTOBER 2022

## Question

> **"Explain different components of a state diagram." — 5 Marks**

This question directly tests the components that create state diagram behavior.

---

# 22. Components of a State Diagram

## 1. Initial State

Indicates where the state machine starts.

```text
●
```

---

## 2. State

Represents a condition of an object.

```text
+-----------+
|   Idle    |
+-----------+
```

---

## 3. Transition

Represents movement between states.

```text
State A --------> State B
```

---

## 4. Event

Triggers a transition.

```text
State A -- event --> State B
```

---

## 5. Guard Condition

Controls whether a transition is allowed.

```text
event [condition]
```

---

## 6. Action

An operation performed during transition.

```text
event [guard] / action
```

---

## 7. Final State

Indicates completion.

```text
◉
```

---

## 8. Activities

A state can contain:

```text
entry / action
do / activity
exit / action
```

---

# 23. Exam Answer — Components

> The major components of a UML state diagram are:
>
> **1. Initial State:** Represents the starting point and is shown by a filled black circle.
>
> **2. State:** Represents a condition or situation of an object and is shown using a rounded rectangle.
>
> **3. Transition:** Represents movement from one state to another.
>
> **4. Event:** An occurrence that triggers a transition.
>
> **5. Guard Condition:** A Boolean condition that must be true for a transition to occur and is represented using `[ ]`.
>
> **6. Action:** An operation performed during a transition and represented using `/`.
>
> **7. Final State:** Represents completion and is shown by a bull's-eye symbol.
>
> **8. Activities:** Entry, do, and exit activities describe behavior associated with a state.

---

# 24. Component Diagram for Revision

```text
                         STATE DIAGRAM
                              |
          +-------------------+-------------------+
          |                   |                   |
        States             Transitions         Events
          |                   |                   |
       Condition          State change        Trigger
                              |
                         +----+----+
                         |         |
                       Guard      Action
                         |         |
                      [condition] /action
```

---

# 25. Complete Example Showing All Components

```text
                             ●
                             |
                             ↓
                    +----------------+
                    |      Idle      |
                    |----------------|
                    |                |
                    +----------------+
                             |
                    insertCard [valid]
                             |
                             | /readCard()
                             ↓
              +----------------------------+
              |      Card Inserted         |
              |----------------------------|
              | entry / startAuth()        |
              | do / verifyCard()          |
              | exit / closeReader()       |
              +----------------------------+
                             |
                          enterPIN
                             |
                        [PIN valid]
                             |
                             ↓
                    +----------------+
                    |  Authenticated |
                    +----------------+
                             |
                          logout
                             |
                             ↓
                            ◉
```

This one diagram can demonstrate almost every important concept.

---

# 26. Transition Label — How to Read It

Consider:

```text
withdraw [balance > 0] / deductAmount()
```

Break it into:

```text
withdraw
   ↓
Event

[balance > 0]
   ↓
Guard

/deductAmount()
   ↓
Action
```

Therefore:

> **Event + Guard + Action = Detailed Transition Behavior**

---

# 27. Internal Behavior of a State

A state can perform activities without necessarily changing to another state.

Example:

```text
+--------------------------------+
|         Processing             |
|--------------------------------|
| entry / start()                |
| do / processTransaction()      |
| exit / complete()              |
+--------------------------------+
```

### Entry

Executed once when entering.

### Do

Executed while staying in the state.

### Exit

Executed when leaving.

---

# 28. Internal Transition

An internal transition processes an event while remaining in the same state.

Example:

```text
+-------------------------+
|      Processing         |
|-------------------------|
| timeout / retry()       |
+-------------------------+
```

The object remains in:

```text
Processing
```

after handling the event.

---

# 29. Self Transition

A self-transition leaves and returns to the same state.

```text
              retry
          +-----------+
          |           |
          ↓           |
     +---------+      |
     | Waiting |------+
     +---------+
```

It is useful when an event causes the state to restart or re-enter itself.

---

# 30. State Diagram Behavior vs Static Structure

State diagrams represent **dynamic behavior**, while class diagrams represent **static structure**.

| State Diagram       | Class Diagram                       |
| ------------------- | ----------------------------------- |
| Behavioral          | Structural                          |
| Shows state changes | Shows classes                       |
| Event-driven        | Attribute/operation-driven          |
| Shows lifecycle     | Shows relationships                 |
| Example: ATM states | Example: ATM, Card, Account classes |

---

# 31. How to Solve Any State Diagram Question

When the exam gives you a real-world system, follow this method.

## Step 1 — Identify the Object

Ask:

> What object's behavior am I modeling?

Examples:

* ATM
* Book
* Reservation
* Telephone
* Traffic Light

---

## Step 2 — Identify States

Look for conditions/statuses.

Example:

```text
ATM:
Idle
Card Inserted
Authenticated
Transaction
```

---

## Step 3 — Identify Events

Look for actions that cause state changes.

```text
insertCard
enterPIN
withdraw
logout
```

---

## Step 4 — Identify Guards

Look for conditions.

```text
[PIN valid]
[balance > 0]
[seat available]
[book available]
```

---

## Step 5 — Draw Transitions

Connect states using arrows.

```text
State A -- event [guard] --> State B
```

---

## Step 6 — Add Activities

Only when required.

```text
entry / action
do / activity
exit / action
```

---

## Step 7 — Add Initial and Final States

```text
● → Starting point

◉ → Ending point
```

---

# 32. High-Scoring Answer Structure

For a **5-mark state diagram behavior question**, use:

### Part 1 — Definition

2–3 lines.

### Part 2 — Theory

Explain:

* Transition
* Guarded transition
* Event
* Action

### Part 3 — UML notation

```text
event [guard] / action
```

### Part 4 — Diagram

Draw a clean real-world example.

### Part 5 — Explanation

Explain the transitions in 3–5 points.

This gives the examiner both **theory and diagram evidence**.

---

# 33. Most Important PYQs

| Year         | Question                                          | Priority   |
| ------------ | ------------------------------------------------- | ---------- |
| **Aug 2025** | Transitions + guarded transitions + traffic light | 🔥🔥🔥🔥🔥 |
| **Oct 2022** | Components of a state diagram                     | 🔥🔥🔥🔥🔥 |
| **Aug 2024** | Components of a state diagram                     | 🔥🔥🔥🔥🔥 |

The **components question appeared in both 2022 and 2024**, while transitions/guards appeared in 2025.

Therefore, this topic is **extremely important**.

---

# 34. What You Must Memorize

## Definition of Transition

> **A transition represents the movement of an object from one state to another in response to an event.**

## Definition of Guard

> **A guard is a Boolean condition that must be true for a transition to occur.**

## UML Syntax

```text
event [guard] / action
```

## State Activities

```text
entry / action
do / activity
exit / action
```

## Main Components

```text
Initial
State
Event
Transition
Guard
Action
Activity
Final
```

---

# 35. One-Minute Revision

```text
                  EVENT
                    ↓
             +--------------+
             |   GUARD?     |
             +--------------+
                    |
              YES   |   NO
                    |
                    ↓
              TRANSITION
                    |
                    ↓
                 ACTION
                    |
                    ↓
              TARGET STATE
```

### Remember:

> **Event triggers. Guard controls. Transition changes. Action executes. State represents the condition.**

---

# ⭐ Final Exam Memory Formula

```text
STATE DIAGRAM BEHAVIOR

Event
  ↓
Guard
  ↓
Transition
  ↓
Action
  ↓
New State
```

And for a state itself:

```text
ENTRY
  ↓
DO ACTIVITY
  ↓
EXIT
```

### Most important notation:

```text
event [condition] / action
```

### Example:

```text
withdraw [balance > 0] / deductAmount()
```

**This single notation is worth memorizing because it combines Event + Guard + Action and can be used in many state-diagram questions.**
