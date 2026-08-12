# Towers of Hanoi — Exemplar / Case Study

## 1. Introduction

**Tower of Hanoi** is a classic problem used to understand:

* Recursion
* Algorithm design
* Divide and Conquer
* Time complexity
* Mathematical recurrence
* Base and recursive cases

The problem consists of **three rods** and `n` disks of different sizes.

---

# 2. Problem Statement

There are three rods:

```text id="f4m0jy"
   Source          Auxiliary          Destination
     A                 B                   C
     │                 │                   │
```

Initially, all `n` disks are placed on the **Source (A)** rod.

The largest disk is at the bottom and the smallest disk is at the top.

```text id="2f5x4v"
       │
      [1]  ← Smallest
      [2]
      [3]
      [4]  ← Largest
════════════════
       A
```

### Goal

Move all disks from:

```text
A → C
```

using rod `B` as an auxiliary rod.

---

# 3. Rules of Towers of Hanoi

There are three important rules:

### Rule 1

Only **one disk can be moved at a time**.

### Rule 2

Only the **top disk** of a rod can be moved.

### Rule 3

A **larger disk cannot be placed on a smaller disk**.

```text id="0x34d5h"
       Correct              Incorrect

       [1]                  [2]
       [2]                  [1]
       [3]                  [3]
     Smaller               Larger
     on larger             on smaller
```

---

# 4. Basic Idea

To move `n` disks from `A` to `C`:

### Step 1

Move the top `n-1` disks:

```text id="e6jq3b"
A → B
```

### Step 2

Move the largest disk:

```text id="4t4pgo"
A → C
```

### Step 3

Move the `n-1` disks from:

```text id="2p90s9"
B → C
```

Therefore:

```text id="q0myh6"
          Move n disks A → C
                   │
          ┌────────┴────────┐
          ▼                 ▼
      Move n-1            Move largest
       A → B                A → C
                              │
                              ▼
                         Move n-1
                           B → C
```

This is a **recursive strategy**.

---

# 5. Recursive Algorithm

```text id="kwl6u8"
TOH(n, source, auxiliary, destination)

if n == 1:
    move source → destination
    return

TOH(n-1, source, destination, auxiliary)

move source → destination

TOH(n-1, auxiliary, source, destination)
```

---

# 6. Example for 3 Disks

Initially:

```text id="m7y5wq"
       A          B          C
       │          │          │
      [1]         │          │
      [2]         │          │
      [3]         │          │
```

Required moves:

### Move 1

```text
A → C
```

### Move 2

```text
A → B
```

### Move 3

```text
C → B
```

### Move 4

```text
A → C
```

### Move 5

```text
B → A
```

### Move 6

```text
B → C
```

### Move 7

```text
A → C
```

Total:

```text id="3u4t7x"
7 moves
```

---

# 7. Recursive Breakdown

For `n = 3`:

```text id="2a4h0q"
TOH(3, A, B, C)
        │
        ├── TOH(2, A, C, B)
        │       │
        │       ├── Move 1: A → C
        │       ├── Move 2: A → B
        │       └── Move 3: C → B
        │
        ├── Move 4: A → C
        │
        └── TOH(2, B, A, C)
                │
                ├── Move 5: B → A
                ├── Move 6: B → C
                └── Move 7: A → C
```

---

# 8. Recurrence Relation

Let:

```text id="n3h8m5"
T(n) = minimum number of moves required for n disks
```

To move `n` disks:

* Move `n-1` disks → `T(n-1)`
* Move largest disk → `1`
* Move `n-1` disks again → `T(n-1)`

Therefore:

```text id="qz7y9v"
T(n) = 2T(n-1) + 1
```

### Base Case

For one disk:

```text id="7e8f6y"
T(1) = 1
```

---

# 9. Deriving the Number of Moves

Starting with:

```text id="5wqf0o"
T(n) = 2T(n-1) + 1
```

The solution is:

```text id="p6d2cb"
T(n) = 2ⁿ - 1
```

### Examples

| Number of Disks | Minimum Moves |
| --------------: | ------------: |
|               1 |             1 |
|               2 |             3 |
|               3 |             7 |
|               4 |            15 |
|               5 |            31 |
|              10 |         1,023 |
|              20 |     1,048,575 |

---

# 10. Time Complexity

The number of moves is:

```text
T(n) = 2ⁿ - 1
```

Therefore:

**Time Complexity = O(2ⁿ)**

This is **exponential time complexity**.

As `n` increases, the number of operations increases extremely quickly.

---

# 11. Space Complexity

The recursive algorithm creates a recursion call stack.

The maximum recursion depth is approximately `n`.

Therefore:

**Space Complexity = O(n)**

```text id="o3w9ip"
n recursive calls
       ↓
Recursion Stack
       ↓
O(n) space
```

---

# 12. Why Towers of Hanoi Is Important

Towers of Hanoi demonstrates several important algorithmic concepts.

### Recursion

The problem is solved by solving smaller versions of itself.

### Divide and Conquer

The problem is reduced into smaller subproblems.

### Base Case

For one disk, the solution is immediate.

### Recurrence Relation

```text
T(n) = 2T(n-1) + 1
```

### Complexity Analysis

```text
Time  → O(2ⁿ)
Space → O(n)
```

---

# 13. Advantages of the Recursive Approach

* Simple and elegant.
* Clearly represents the problem structure.
* Easy to understand mathematically.
* Demonstrates recursive problem solving.

# 14. Disadvantages

* Exponential time complexity.
* Becomes impractical for large `n`.
* Uses recursion stack memory.
* Number of moves grows extremely rapidly.

---

# 15. Exam-Oriented Answer

### Definition

> Towers of Hanoi is a recursive problem involving three rods and `n` disks of different sizes. The objective is to move all disks from a source rod to a destination rod using an auxiliary rod while following the rules that only one disk can be moved at a time and a larger disk cannot be placed on a smaller disk.

### Algorithm

```text
TOH(n, A, B, C)

if n == 1:
    move A → C
    return

TOH(n-1, A, C, B)

move A → C

TOH(n-1, B, A, C)
```

### Recurrence

```text
T(n) = 2T(n-1) + 1
T(1) = 1
```

### Result

```text
T(n) = 2ⁿ - 1
```

### Complexity

```text
Time Complexity  = O(2ⁿ)
Space Complexity = O(n)
```

---

# Quick Revision

```text
Towers of Hanoi
       │
       ├── 3 rods
       ├── n disks
       ├── Recursive problem
       ├── Base case: n = 1
       ├── T(n) = 2T(n-1) + 1
       ├── Moves = 2ⁿ - 1
       ├── Time = O(2ⁿ)
       └── Space = O(n)
```

> **Key formula to remember:**
>
> **Minimum number of moves = `2ⁿ − 1`**
