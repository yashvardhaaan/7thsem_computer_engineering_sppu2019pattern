# 12. STATES

## 1. Definition of State

A **state** represents a condition or situation of an object during its lifetime in which the object satisfies some condition, performs some activity, or waits for an event.

### Exam Definition

> **A state is a condition or situation in the life of an object during which it satisfies some condition, performs an activity, or waits for an event.**

A state continues until an **event** occurs that causes the object to transition to another state.

---

# 2. Simple Example

Consider an ATM card.

```text id="w6v4k2"
+----------------+
|      ATM       |
|      Idle      |
+----------------+
       |
   insertCard
       |
       ↓
+----------------+
| Card Inserted  |
+----------------+
```

Here:

* `Idle` → State
* `Card Inserted` → State
* `insertCard` → Event
* Arrow → Transition

---

# 3. State Representation in UML

A simple state is represented by a **rounded rectangle**.

```text id="j2m8p4"
       ___________________
      /                   \
     |       Idle          |
      \___________________/
```

The name of the state is written inside the rounded rectangle.

Example:

```text id="s7k1q5"
       +----------------+
      /     Logged In    \
     +--------------------+
```

---

# 4. Characteristics of a State

A state has the following important characteristics:

1. It represents a condition of an object.
2. It exists for a period of time.
3. It can have entry, exit, and internal activities.
4. It can respond to events.
5. An event may cause the object to leave the state.
6. A state can have transitions to other states.
7. A state may be simple or composite.

---

# 5. State, Event and Transition

These three concepts are closely related.

```text id="x7m3p1"
                 Event
                   |
                   ↓
+-----------+  Transition  +-----------+
|  State A  |------------->|  State B  |
+-----------+              +-----------+
```

### State

Represents the current condition.

### Event

Something that happens.

### Transition

Movement from one state to another.

### Example

```text id="a3k9v6"
              insertCard
                  |
                  ↓
+---------+                  +---------------+
|  Idle   |----------------->| Card Inserted |
+---------+                  +---------------+
```

---

# 6. Types of States

For the SPPU syllabus and PYQs, the important types are:

1. Initial State
2. Final State
3. Simple State
4. Composite State
5. Submachine State
6. Concurrent State
7. History State

The most important for the given PYQs are **simple states, composite states, initial/final states, and different types of states in a state chart diagram**.

---

# 7. Initial State

## Definition

The **initial state** represents the starting point of a state machine.

It shows the state from which the system/object begins its execution.

### UML Notation

It is represented by a **filled black circle**.

```text id="j8p3q5"
    ●
    |
    ↓
+---------+
|  Idle   |
+---------+
```

### Example

For an ATM:

```text id="c7m2x9"
    ●
    |
    ↓
+---------+
|  Idle   |
+---------+
```

The ATM starts in the Idle state.

### Exam Point

> **Initial state = starting point of the state machine.**

---

# 8. Final State

## Definition

The **final state** represents the completion or termination of a particular state machine execution.

### UML Notation

It is represented by a **circle containing a filled black circle**.

```text id="v9q4n2"
+-------------+
| Transaction |
|  Completed  |
+-------------+
       |
       ↓
      ◉
```

### Example

```text id="h2m7w8"
+-----------+
| Completed |
+-----------+
     |
     ↓
    ◉
```

### Exam Point

> **Final state = termination/completion of the state machine.**

---

# 9. Simple State

## Definition

A **simple state** is a state that does not contain any internal substates.

It represents a single condition or activity.

### Example

```text id="u4p8k1"
+-------------+
|   Waiting   |
+-------------+
```

Another example:

```text id="y6x2r9"
+-------------+
|  Logged In  |
+-------------+
```

These states do not contain other states inside them.

---

# 10. Composite State

## Definition

A **composite state** is a state that contains one or more **substates**.

It is used when a state itself has a detailed internal state structure.

### Example

Suppose an ATM has a state:

```text id="q9w3p6"
+----------------------+
|     Transaction      |
|                      |
|  +----------------+  |
|  | Select Account |  |
|  +----------------+  |
|          |           |
|          ↓           |
|  +----------------+  |
|  | Enter Amount   |  |
|  +----------------+  |
|          |           |
|          ↓           |
|  +----------------+  |
|  | Process        |  |
|  +----------------+  |
+----------------------+
```

`Transaction` is a **composite state** because it contains several substates.

---

# 11. Why Composite States Are Used

Composite states are useful when:

* A state contains multiple steps.
* A complex process needs to be modeled.
* The internal behavior of a state needs to be represented.
* The diagram would become too large without hierarchy.

### Example

An ATM's:

```text id="g6r1q4"
Transaction
```

may contain:

```text id="a9x2m7"
Select Account
      ↓
Enter Amount
      ↓
Process Transaction
```

Instead of putting everything into one large diagram, these states can be grouped inside `Transaction`.

---

# 12. Submachine State

## Definition

A **submachine state** is a state that refers to another state machine describing its internal behavior.

It is useful when the same complex state behavior needs to be reused or represented separately.

Conceptually:

```text id="b4p7n1"
+----------------------+
|   Transaction        |
|      «submachine»    |
+----------------------+
          |
          ↓
  Separate State Machine
```

---

# 13. Concurrent State

## Definition

A **concurrent state** is a composite state in which two or more activities can execute **simultaneously**.

It is also called an **orthogonal state**.

### Example

Consider a mobile phone during a video call.

Two activities can happen simultaneously:

```text id="q5r8v3"
+--------------------------------+
|          Video Call            |
|                                |
|  Audio Processing              |
|        ||                      |
|        ||  Concurrent          |
|        ||                      |
|  Video Processing              |
|                                |
+--------------------------------+
```

Both audio and video processing occur at the same time.

---

# 14. History State

## Definition

A **history state** remembers the last active substate of a composite state.

When the system returns to the composite state, it can resume from the previous substate rather than starting again from the beginning.

### Example

Suppose:

```text id="n3m7q2"
Transaction
   |
   +--- Select Account
   |
   +--- Enter Amount
   |
   +--- Confirm
```

If the system temporarily leaves `Transaction` while the user is at `Enter Amount`, a history state can allow the system to return directly to:

```text id="k8v4p1"
Enter Amount
```

instead of restarting at `Select Account`.

---

# 15. State with Activities

A state can contain activities.

UML commonly represents:

```text id="y3m6k9"
+----------------------+
|   Processing         |
|----------------------|
| entry / start()      |
| do / process()       |
| exit / finish()      |
+----------------------+
```

These represent:

### Entry Activity

Executed when entering the state.

```text id="2p7x4m"
entry / start()
```

### Do Activity

Executed while the object remains in the state.

```text id="k9m2q5"
do / process()
```

### Exit Activity

Executed when leaving the state.

```text id="r4v8n1"
exit / finish()
```

---

# PYQ 1 — SEPTEMBER 2023

## Question

> **"What is state? Explain with example transitions and condition." — 5 Marks**

This is a very important conceptual question.

---

# Exam-Oriented Answer

## Definition

> **A state represents a condition or situation of an object during its lifetime. The object remains in that state until an event causes a transition to another state.**

---

## Example

Consider a bank account.

```text id="f8w2q6"
                  deposit
                     |
                     ↓
+-------------+              +-------------+
|   Inactive  |-------------->|    Active   |
+-------------+              +-------------+
```

Here:

* `Inactive` → State
* `Active` → State
* `deposit` → Event
* Arrow → Transition

---

# Transition

## Definition

A **transition** represents the movement of an object from one state to another as a result of an event.

General form:

```text id="q2m7x4"
State A ---- event ----> State B
```

Example:

```text id="h4n8c1"
Idle ---- insertCard ----> Card Inserted
```

---

# Condition / Guard

A **condition**, also called a **guard condition**, specifies whether a transition is allowed to occur.

It is written inside square brackets `[ ]`.

### Example

```text id="d7k3p9"
                 withdraw
                    |
              [balance > 0]
                    |
                    ↓
+---------+                   +-------------+
| Active  |------------------>| Processing  |
+---------+                   +-------------+
```

The transition occurs only when:

```text id="m8q2v6"
balance > 0
```

is true.

---

# Complete Example

Consider an ATM:

```text id="s5x9k2"
                    insertCard
                       |
                       ↓
+---------+      [validCard]      +---------------+
|  Idle   |---------------------->| Card Inserted |
+---------+                       +---------------+
```

Here:

* `Idle` = State
* `insertCard` = Event
* `[validCard]` = Guard/Condition
* Arrow = Transition
* `Card Inserted` = New State

---

# 5-Mark Answer

> **State:** A state represents a condition or situation of an object during its lifetime. An object remains in a state until an event causes it to move to another state.
>
> **Transition:** A transition represents the movement from one state to another due to an event.
>
> **Condition/Guard:** A guard condition specifies whether the transition is allowed to occur. It is written in square brackets `[ ]`.
>
> Example:
>
> ```text
>                   insertCard
>                       |
>                  [validCard]
>                       |
>                       ↓
> +---------+                   +---------------+
> |  Idle   |------------------>| Card Inserted |
> +---------+                   +---------------+
> ```
>
> Here, `Idle` and `Card Inserted` are states, `insertCard` is the event, and `[validCard]` is the condition that controls the transition.

---

# PYQ 2 — AUGUST 2024

## Question

> **"Explain different types of states in state chart diagram." — 5 Marks**

This is a direct theory question.

---

# Exam-Oriented Answer

A state chart diagram can contain different types of states.

## 1. Initial State

Represents the starting point.

```text id="a2p8m5"
●
|
↓
+--------+
|  Idle  |
+--------+
```

---

## 2. Simple State

A state with no substates.

```text id="n6q3r8"
+------------+
| Processing |
+------------+
```

---

## 3. Composite State

Contains multiple substates.

```text id="p4x7m1"
+----------------------+
|    Transaction       |
|                      |
|  Select Account      |
|       ↓              |
|  Enter Amount        |
|       ↓              |
|  Confirm             |
+----------------------+
```

---

## 4. Final State

Represents completion.

```text id="h8k2v5"
+-----------+
| Completed |
+-----------+
     |
     ↓
    ◉
```

---

## 5. Concurrent State

Contains multiple regions that execute simultaneously.

```text id="c7m1q4"
+-----------------------------+
|       Video Call            |
|-----------------------------|
|     Audio Processing        |
|-----------------------------|
|     Video Processing        |
+-----------------------------+
```

---

## 6. History State

Remembers the last active substate of a composite state.

It is useful when a process temporarily leaves a composite state and later returns.

---

# 5-Mark Answer

> A state chart diagram represents the different states through which an object passes during its lifetime. Important types of states include:
>
> **1. Initial State:** Starting point of the state machine, represented by a filled black circle `●`.
>
> **2. Simple State:** A state without substates, such as `Idle` or `Processing`.
>
> **3. Composite State:** A state containing one or more substates. For example, `Transaction` may contain `Select Account`, `Enter Amount`, and `Confirm`.
>
> **4. Final State:** Represents the completion of the state machine and is represented by `◉`.
>
> **5. Concurrent State:** Contains multiple regions whose activities can execute simultaneously.
>
> **6. History State:** Remembers the previously active substate of a composite state.
>
> Thus, different types of states help model both simple and complex behavior of an object.

---

# 16. State Diagram Example — ATM

A complete ATM example combines several concepts.

```text id="h6q9w3"
                    ●
                    |
                    ↓
              +-----------+
              |   Idle    |
              +-----------+
                    |
                insertCard
                    |
                    ↓
          +------------------+
          |  Card Inserted   |
          +------------------+
                    |
                enterPIN
                    |
                    ↓
          +------------------+
          | PIN Verification |
          +------------------+
             /          \
            /            \
     [valid PIN]     [invalid PIN]
          |                |
          ↓                ↓
   +-------------+    +-------------+
   | Transaction |    | Retry PIN   |
   +-------------+    +-------------+
          |
       complete
          |
          ↓
     +-----------+
     | Completed |
     +-----------+
          |
          ↓
         ◉
```

This diagram demonstrates:

* Initial state
* Simple states
* Events
* Transitions
* Guard conditions
* Final state

---

# 17. Important Difference Between State Types

| Type       | Meaning                  | Example       |
| ---------- | ------------------------ | ------------- |
| Initial    | Starting point           | `●`           |
| Simple     | No substates             | `Idle`        |
| Composite  | Contains substates       | `Transaction` |
| Concurrent | Parallel activities      | Audio + Video |
| History    | Remembers previous state | `H`           |
| Final      | End point                | `◉`           |

---

# 18. Most Important Concepts for Exam

For the given PYQs, prioritize:

### ⭐⭐⭐⭐⭐

* Definition of state
* Transition
* Guard/condition
* Simple state
* Composite state
* Initial state
* Final state

### ⭐⭐⭐⭐

* Concurrent state
* History state
* Entry/Do/Exit activities

---

# 19. Common Exam Mistakes

### Mistake 1 — Confusing Event and State

Wrong:

> "Insert card is a state."

Correct:

> `Card Inserted` is the state; `insertCard` is the event.

---

### Mistake 2 — Confusing Condition and Event

```text id="g4p8n2"
insertCard [validCard]
    ↑          ↑
  Event      Guard
```

---

### Mistake 3 — Forgetting the Guard Brackets

Correct UML notation:

```text id="j8m3q6"
event [condition]
```

Example:

```text id="x7p4n1"
withdraw [balance > 0]
```

---

# 20. One-Minute Revision

## State

> **State = condition/situation of an object.**

## Transition

> **Transition = movement between states.**

## Event

> **Event = occurrence that triggers transition.**

## Guard

> **Guard = condition that controls whether transition can occur.**

### Complete Relationship

```text id="v2q8m5"
                    Event
                      |
                      ↓
State A ---- [Guard] ----> State B
                |
                ↓
          Condition must
             be true
```

---

# ⭐ Memory Trick for State Types

```text id="f7m2k9"
INITIAL    → Start
SIMPLE     → Single
COMPOSITE  → Contains
CONCURRENT → Parallel
HISTORY    → Remember
FINAL      → End
```

### Easy sequence:

> **Start → Simple → Composite → Concurrent → History → End**

---

# PYQ Priority

| PYQ                                             | Importance |
| ----------------------------------------------- | ---------- |
| **Sept 2023 — State + transitions + condition** | 🔥🔥🔥🔥🔥 |
| **Aug 2024 — Types of states**                  | 🔥🔥🔥🔥🔥 |

Both are **directly repeated/high-yield state-modeling questions**.

### Must Prepare

```text
State Definition
       ↓
Transition
       ↓
Guard Condition
       ↓
Simple State
       ↓
Composite State
       ↓
Initial / Final
       ↓
Concurrent / History
       ↓
ATM Example
```

# Final Exam Formula

> **State + Event + Guard + Transition = State Model**

If you remember this relationship, you can construct and explain most basic state-diagram questions.
