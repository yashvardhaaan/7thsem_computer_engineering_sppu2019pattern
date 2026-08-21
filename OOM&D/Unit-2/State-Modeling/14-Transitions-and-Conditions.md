# 13. TRANSITIONS AND CONDITIONS

## 1. Introduction

In a UML state diagram, an object moves from one state to another when an **event** occurs and the required **condition/guard** is satisfied.

The basic relationship is:

```text
State A
   |
 Event
   |
 [Guard Condition]
   |
   ↓
State B
```

Therefore:

> **Event triggers the transition, while the guard condition controls whether the transition is allowed.**

---

# 2. What is a Transition?

## Definition

A **transition** represents the change of an object from one state to another as a result of an event.

### Exam Definition

> **A transition is a directed relationship between two states that indicates a change from a source state to a target state when a specified event occurs and any required guard condition is satisfied.**

---

# 3. Basic Transition

A simple transition can be represented as:

```text
State A -------- event --------> State B
```

### Example

```text id="x3q7m9"
+---------+      insertCard      +---------------+
|  Idle   |--------------------->| Card Inserted |
+---------+                       +---------------+
```

Here:

* `Idle` → Source state
* `insertCard` → Event
* Arrow → Transition
* `Card Inserted` → Target state

---

# 4. Components of a Transition

A transition may contain:

1. **Source State**
2. **Trigger/Event**
3. **Guard Condition**
4. **Action**
5. **Target State**

General notation:

```text id="m8k4p2"
event [guard] / action
```

Example:

```text id="v7q2n5"
insertCard [validCard] / readCard
```

Meaning:

* `insertCard` → Event
* `[validCard]` → Guard
* `/readCard` → Action

---

# 5. Source and Target States

## Source State

The state from which the transition starts.

## Target State

The state reached after the transition.

### Diagram

```text id="r4p8x1"
+-----------+                     +-----------+
|  Source   |-------------------->|  Target   |
|   State   |       event         |   State   |
+-----------+                     +-----------+
```

Example:

```text id="g6w2m9"
+---------+       login()        +----------+
| Logged  |--------------------->|  Home    |
|  Out    |                       |  Page    |
+---------+                       +----------+
```

---

# 6. What is a Condition / Guard?

## Definition

A **guard condition** is a Boolean condition that determines whether a transition can take place.

It is written inside **square brackets `[ ]`**.

### Exam Definition

> **A guard condition is a Boolean expression associated with a transition that must evaluate to true for the transition to occur.**

---

# 7. Example of a Guard Condition

Consider an ATM.

```text id="p3k7v1"
                         withdraw
                            |
                       [balance > 0]
                            |
                            ↓
+---------+              +-------------+
|  Active |------------->| Transaction |
+---------+              +-------------+
```

The transition occurs only when:

```text
balance > 0
```

is true.

If:

```text
balance = 0
```

the transition cannot occur.

---

# 8. Why are Guard Conditions Used?

Guard conditions are used to:

1. Control transitions.
2. Represent business rules.
3. Prevent invalid state changes.
4. Model decision-making.
5. Represent conditions based on object data.
6. Provide more precise behavior in a state diagram.

---

# 9. Transition with Event and Guard

The general UML notation is:

```text id="u6r2n8"
event [guard]
```

Example:

```text id="q8m4p1"
withdraw [balance > 0]
```

Meaning:

> When the `withdraw` event occurs, the transition happens only if `balance > 0`.

---

# 10. Transition with Action

A transition may also perform an action.

Notation:

```text id="w5n9c2"
event [guard] / action
```

Example:

```text id="k3p7m1"
withdraw [balance > 0] / deductAmount
```

Meaning:

1. `withdraw` event occurs.
2. `balance > 0` is checked.
3. If true, `deductAmount` is executed.
4. The object moves to the target state.

---

# 11. Complete Example

```text id="n8q3v6"
+---------+
|  Idle   |
+---------+
     |
     | insertCard [validCard] / readCard
     |
     ↓
+---------------+
| Card Inserted |
+---------------+
```

### Interpretation

**Event:**

```text
insertCard
```

**Guard:**

```text
[validCard]
```

**Action:**

```text
/readCard
```

---

# 12. Guard Condition vs Event

These are often confused.

| Event                 | Guard                  |
| --------------------- | ---------------------- |
| Something happens     | Condition is checked   |
| Triggers transition   | Controls transition    |
| Example: `insertCard` | Example: `[validCard]` |
| Written normally      | Written in `[ ]`       |

### Example

```text id="j7m2p4"
insertCard [validCard]
    ↑          ↑
  Event      Guard
```

Remember:

> **Event asks "What happened?"**

> **Guard asks "Is the condition satisfied?"**

---

# 13. Guard Condition vs Action

| Guard                                | Action                                |
| ------------------------------------ | ------------------------------------- |
| Determines whether transition occurs | Operation performed during transition |
| Boolean condition                    | Operation/activity                    |
| Written `[ ]`                        | Written after `/`                     |
| Example `[balance > 0]`              | Example `/deductAmount`               |

Example:

```text id="f4n8x2"
withdraw [balance > 0] / deductAmount
```

---

# 14. Multiple Guarded Transitions

An event can lead to different states depending on conditions.

### Example — ATM PIN Verification

```text id="m6q2p8"
                    enterPIN
                       |
              +--------+--------+
              |                 |
        [PIN valid]        [PIN invalid]
              |                 |
              ↓                 ↓
       +-----------+       +-----------+
       | Transaction|       | Retry PIN |
       +-----------+       +-----------+
```

Here, the same event `enterPIN` produces different transitions based on the guard condition.

---

# 15. Guard Conditions Must Be Mutually Appropriate

When multiple transitions leave the same state and are triggered by the same event, their guard conditions should define clear alternatives.

Example:

```text id="r8m3v5"
                   enterPIN
                      |
              +-------+-------+
              |               |
        [valid PIN]      [invalid PIN]
              |               |
              ↓               ↓
        Transaction        Retry PIN
```

This is clearer than having two transitions with exactly the same condition.

---

# 16. Types of Transitions

For exam purposes, understand the following:

### 1. External Transition

Moves the object from one state to another.

```text id="v3q8m2"
State A ---- event ----> State B
```

---

### 2. Internal Transition

An internal transition handles an event without leaving the current state.

Example:

```text id="j5n7p1"
+------------------+
|    Processing    |
|------------------|
| timeout / retry  |
+------------------+
```

The object remains in `Processing`.

---

### 3. Self-Transition

A self-transition starts and ends in the same state.

```text id="h2m8q4"
              retry
        +--------------+
        |              |
        ↓              |
+----------------+     |
|    Waiting     |-----+
+----------------+
```

The object leaves and re-enters the same state.

---

# 17. Transition Example — Traffic Light

Traffic lights are an excellent example for this topic.

### States

* Red
* Green
* Yellow

### Transitions

```text id="t7p3n8"
                 after 30 sec
             +----------------+
             |                ↓
        +---------+       +---------+
        |   Red   |------>|  Green  |
        +---------+       +---------+
                              |
                           after 25 sec
                              |
                              ↓
                         +---------+
                         | Yellow  |
                         +---------+
                              |
                           after 5 sec
                              |
                              ↓
                            Red
```

---

# 18. Guarded Traffic Light Example

Suppose a traffic signal changes only when a sensor confirms that the road is clear.

```text id="q4m8x1"
+---------+
|  Green  |
+---------+
     |
     | timerExpired [roadClear]
     |
     ↓
+---------+
| Yellow  |
+---------+
```

Here:

* `timerExpired` → Event
* `[roadClear]` → Guard
* `Yellow` → Target state

---

# PYQ 1 — SEPTEMBER 2023

## Question

> **"What is state? Explain with example transitions and condition." — 5 Marks**

Although the question is under **States**, it directly tests transitions and conditions.

---

# Exam Answer

> A **state** represents a condition or situation of an object during its lifetime. An object remains in a state until an event causes it to change to another state.
>
> A **transition** represents the movement from one state to another due to an event.
>
> A **condition or guard** is a Boolean expression that must be true for the transition to occur. It is represented using square brackets `[ ]`.
>
> Example:
>
> ```text
>                         withdraw
>                            |
>                       [balance > 0]
>                            |
>                            ↓
> +---------+              +-------------+
> |  Active |-------------->| Transaction |
> +---------+              +-------------+
> ```
>
> Here, `Active` is the source state, `Transaction` is the target state, `withdraw` is the event, and `[balance > 0]` is the guard condition.
>
> Thus, a transition changes the state of an object when the specified event occurs and the guard condition is satisfied.

---

# PYQ 2 — AUGUST 2025

## Question

> **"What is meant by transitions and guarded transitions in state diagram. Draw a state diagram with guarded transitions for a traffic light..." — 5 Marks**

This is a **very important direct PYQ**.

---

# 19. What is a Guarded Transition?

A **guarded transition** is a transition that occurs only when a specified Boolean condition is true.

### General Form

```text id="n2k7p4"
event [guard] / action
```

Example:

```text id="y6m3q8"
timerExpired [roadClear] / changeSignal
```

---

# 20. Traffic Light State Diagram

A simple traffic light can be modeled using three states:

```text id="z8q4m1"
                         after 30 sec
                    +-------------------+
                    |                   |
                    ↓                   |
               +---------+              |
               |  Green  |--------------+
               +---------+
                    |
                 [timer]
                    |
                    ↓
               +---------+
               | Yellow  |
               +---------+
                    |
                 [5 sec]
                    |
                    ↓
               +---------+
               |   Red   |
               +---------+
                    |
                 [30 sec]
                    |
                    +-------------> Green
```

---

# 21. Better Guarded Traffic Light Diagram for Exam

Use this version if the question specifically says **guarded transitions**:

```text id="x5m8q2"
                     timerExpired
                  [roadClear = true]
                          |
                          ↓
                  +---------------+
                  |     Green     |
                  +---------------+
                          |
                  timerExpired
                  [timer >= 25s]
                          |
                          ↓
                  +---------------+
                  |    Yellow     |
                  +---------------+
                          |
                  timerExpired
                  [timer >= 5s]
                          |
                          ↓
                  +---------------+
                  |      Red      |
                  +---------------+
                          |
                  timerExpired
                  [timer >= 30s]
                          |
                          +-----------> Green
```

---

# 22. Explanation of Traffic Light Diagram

### Green → Yellow

Event:

```text id="v7q2m4"
timerExpired
```

Guard:

```text id="c9n3x6"
[timer >= 25 sec]
```

If the timer has reached 25 seconds, the signal changes to Yellow.

---

### Yellow → Red

Event:

```text id="k4m8p2"
timerExpired
```

Guard:

```text id="s6q1v9"
[timer >= 5 sec]
```

The signal changes to Red after the specified time.

---

### Red → Green

Event:

```text id="w3n7m5"
timerExpired
```

Guard:

```text id="p8q2c4"
[timer >= 30 sec]
```

The signal returns to Green.

---

# 23. 5-Mark Exam Answer — Aug 2025

> **Transition:** A transition represents the movement of an object from one state to another when an event occurs.
>
> **Guarded Transition:** A guarded transition is a transition that occurs only when a specified Boolean condition, called a guard condition, is true. The guard is written in square brackets `[ ]`.
>
> General notation:
>
> ```text
> event [guard] / action
> ```
>
> Example of a traffic light:
>
> ```text
>                     timerExpired
>                    [timer >= 25s]
>                          |
>                          ↓
>                    +----------+
>                    |  Green   |
>                    +----------+
>                          |
>                    timerExpired
>                    [timer >= 5s]
>                          ↓
>                    +----------+
>                    |  Yellow  |
>                    +----------+
>                          |
>                    timerExpired
>                    [timer >= 30s]
>                          ↓
>                    +----------+
>                    |   Red    |
>                    +----------+
>                          |
>                          +-------> Green
> ```
>
> The guard conditions determine when the transitions are allowed. Thus, guarded transitions are useful for representing decision-based behavior in state diagrams.

---

# 24. Important UML Notation

Memorize this:

```text id="d8m3q7"
event [guard] / action
```

### Meaning

```text id="s4x9p1"
event
  ↓
What happened?

[guard]
  ↓
Is transition allowed?

/action
  ↓
What should be performed?
```

### Example

```text id="y2q6m8"
withdraw [balance > 0] / deductAmount
```

---

# 25. Common Real-World Examples

## ATM

```text id="r5n8q2"
withdraw [balance > 0]
```

## Login

```text id="m3x7p9"
login [passwordCorrect]
```

## E-Commerce

```text id="placeOrder [paymentSuccessful]"
```

## Traffic Light

```text id="q8v2m4"
timerExpired [timer >= 30s]
```

## Elevator

```text id="j6p1x8"
move [floorSelected]
```

---

# 26. Difference Between Transition and Guarded Transition

| Transition                     | Guarded Transition                        |
| ------------------------------ | ----------------------------------------- |
| Changes one state to another   | Changes state only if a condition is true |
| May only require an event      | Requires event + guard                    |
| Example: `insertCard`          | Example: `withdraw [balance > 0]`         |
| No explicit condition required | Has a Boolean guard                       |
| Simpler                        | More precise                              |

---

# 27. Transition vs Event

| Event                             | Transition                        |
| --------------------------------- | --------------------------------- |
| Something that happens            | Movement between states           |
| Triggers transition               | Represents state change           |
| Example: `insertCard`             | Arrow from Idle → Card Inserted   |
| Can be time, signal, call, change | Connects source and target states |

### Remember

> **Event triggers → Transition changes → State**

---

# 28. Exam Diagram Strategy

If you have limited time, draw this:

```text id="c7m4n9"
+---------+       event [condition]       +---------+
| State A |------------------------------>| State B |
+---------+                               +---------+
```

Then give a real-world example:

```text id="f2x8q6"
+--------+       withdraw [balance > 0]       +-------------+
| Active |----------------------------------->| Transaction |
+--------+                                    +-------------+
```

For the **Aug 2025 traffic-light question**, draw the complete traffic-light diagram.

---

# 29. One-Minute Revision

## Transition

> **Movement from one state to another caused by an event.**

## Guard

> **Boolean condition that must be true for the transition to occur.**

## Guarded Transition

```text id="k9q3m7"
event [condition]
```

## Full Transition

```text id="x4p8n2"
event [guard] / action
```

## Example

```text id="m7v2q5"
withdraw [balance > 0] / deductAmount
```

---

# ⭐ Memory Trick

Think:

> **E-G-A**

```text id="e9k3w7"
E → Event
G → Guard
A → Action

Event [Guard] / Action
```

Example:

```text id="p4m8x2"
withdraw [balance > 0] / deductAmount
```

---

# PYQ Priority

| PYQ                                                | Importance |
| -------------------------------------------------- | ---------- |
| **Aug 2025 — Guarded transitions + Traffic Light** | 🔥🔥🔥🔥🔥 |
| **Sept 2023 — State + transitions + condition**    | 🔥🔥🔥🔥🔥 |

### Must Prepare

```text
Definition of Transition
        ↓
Definition of Guard
        ↓
UML Notation
        ↓
Event [Guard] / Action
        ↓
Traffic Light Diagram
        ↓
ATM Example
```

# Final Exam Formula

> **Transition = State Change**

> **Guarded Transition = Event + Condition + State Change**

> **Full UML Transition = Event [Guard] / Action**
