# Design of Algorithm

## 1. What is Algorithm Design?

**Algorithm design** is the process of developing a **step-by-step procedure** to solve a given problem efficiently.

A good algorithm should not only produce the correct answer but should also use **minimum possible time and memory**.

### Main Goals of Algorithm Design

```text
                PROBLEM
                   │
                   ▼
          Understand the Problem
                   │
                   ▼
          Identify Input/Output
                   │
                   ▼
          Choose Algorithmic Approach
                   │
                   ▼
             Design Algorithm
                   │
                   ▼
          Analyze Correctness
                   │
                   ▼
        Analyze Time & Space
                   │
                   ▼
              IMPLEMENT
                   │
                   ▼
               TEST
```

---

# 2. Steps in Designing an Algorithm

### Step 1: Understand the Problem

Clearly identify:

* What problem needs to be solved?
* What are the inputs?
* What output is expected?
* What are the constraints?

### Step 2: Define Inputs and Outputs

For example, in searching:

**Input:** Array `A` and target value `x`

**Output:** Position of `x` if found, otherwise `-1`.

### Step 3: Select an Approach

Different problems require different approaches.

Common approaches include:

* Brute Force
* Divide and Conquer
* Greedy Method
* Dynamic Programming
* Backtracking
* Recursion
* Iteration

### Step 4: Write the Algorithm

The solution should be expressed as clear and unambiguous steps.

### Step 5: Check Correctness

Verify that the algorithm produces the **correct output for every valid input**.

### Step 6: Analyze Efficiency

Two major resources are considered:

* **Time Complexity** → how much time the algorithm requires.
* **Space Complexity** → how much extra memory it requires.

---

# 3. Characteristics of a Good Algorithm

A good algorithm generally has the following properties:

| Property          | Meaning                                       |
| ----------------- | --------------------------------------------- |
| **Input**         | Accepts zero or more inputs                   |
| **Output**        | Produces at least one result                  |
| **Definiteness**  | Every step is clear and unambiguous           |
| **Finiteness**    | Must terminate after a finite number of steps |
| **Effectiveness** | Each operation should be basic and executable |
| **Correctness**   | Produces the expected result                  |
| **Efficiency**    | Uses reasonable time and memory               |

### Easy Memory Trick

**I-O-D-F-E-C-E**

**Input → Output → Definiteness → Finiteness → Effectiveness → Correctness → Efficiency**

---

# 4. Algorithm Design vs Algorithm Analysis

These are related but different.

```text
       Problem
          │
          ▼
   Algorithm Design
          │
          ▼
   Candidate Algorithm
          │
          ▼
   Algorithm Analysis
      /           \
     ▼             ▼
 Time Complexity  Space Complexity
          │
          ▼
    Better Algorithm
```

### Algorithm Design

Focuses on:

> **How can I solve this problem?**

### Algorithm Analysis

Focuses on:

> **How efficiently does my solution solve the problem?**

---

# 5. Iterative Algorithm Design

An **iterative algorithm** repeatedly executes a set of instructions using loops such as:

* `for`
* `while`
* `do-while`

### General Structure

```text
Start
  │
  ▼
Initialize variables
  │
  ▼
Check condition
  │
 ┌┴──────────────┐
 │ True          │ False
 ▼               ▼
Execute          Stop
steps
 │
 ▼
Update variables
 │
 └──────► Check condition
```

### Example

```text
i = 0

while i < n:
    process A[i]
    i = i + 1
```

The loop continues until the condition becomes false.

---

# 6. Iteration vs Recursion

| Iteration                             | Recursion                             |
| ------------------------------------- | ------------------------------------- |
| Uses loops                            | Function calls itself                 |
| Usually uses less memory              | Uses call stack memory                |
| `for`, `while`                        | Recursive function                    |
| Often easier to optimize              | Can be simpler for recursive problems |
| Must explicitly update loop variables | Must define a base case               |

### Example

**Iteration:**

```text
factorial = 1

for i = 1 to n:
    factorial = factorial × i
```

**Recursion:**

```text
factorial(n):
    if n == 0:
        return 1
    return n × factorial(n-1)
```

---

# 7. Linear Search as an Example of Algorithm Design

**Linear Search** checks each element sequentially until the required element is found.

### Algorithm

Given an array:

```text
A = [10, 25, 30, 45, 60]
```

Search for:

```text
x = 45
```

### Working

```text
10 ≠ 45
 │
 ▼
25 ≠ 45
 │
 ▼
30 ≠ 45
 │
 ▼
45 = 45  ✓
 │
 ▼
Return position
```

### Pseudocode

```text
LinearSearch(A, n, x)

for i = 0 to n-1:
    if A[i] == x:
        return i

return -1
```

---

# 8. Efficiency of Linear Search

Suppose there are **n elements**.

### Best Case

The element is found at the first position.

```text
Comparisons = 1
```

Therefore:

**Best Case = O(1)**

### Worst Case

The element is:

* at the last position, or
* not present.

Approximately `n` comparisons are required.

Therefore:

**Worst Case = O(n)**

### Average Case

On average, approximately `n/2` elements are checked.

Since constants are ignored in asymptotic analysis:

**Average Case = O(n)**

### Space Complexity

Linear search only needs a few variables.

**Space Complexity = O(1)**

---

# 9. PYQ — 2023: Linear Search and Efficiency

### Question

> A linear search algorithm is given. Analyze whether the given code is efficient and identify whether there is an issue with its iterative algorithm design.

### What the Question is Testing

This question is not simply asking:

> "What is Linear Search?"

It tests whether you can **critically analyze an algorithm**.

You should examine:

1. Does the algorithm give the correct answer?
2. Does the loop terminate?
3. Is the loop condition correct?
4. Is the loop variable updated?
5. Is unnecessary work being performed?
6. What is the time complexity?
7. What is the space complexity?

---

# 10. Common Iterative Design Issue

A major issue in iterative algorithms is an **incorrect loop condition or failure to update the loop variable**.

### Example of a Problem

```text
i = 0

while i < n:
    if A[i] == x:
        return i
```

There is **no update of `i`**.

Therefore:

```text
i = 0
   │
   ▼
Check A[0]
   │
   ▼
Condition i < n
   │
   ▼
i is STILL 0
   │
   └──────────► Repeat forever
```

This creates an **infinite loop** when `A[0] != x`.

### Correct Version

```text
i = 0

while i < n:
    if A[i] == x:
        return i

    i = i + 1

return -1
```

Now:

```text
i = 0
 │
 ▼
Check element
 │
 ▼
i = i + 1
 │
 ▼
Check next element
 │
 ▼
...
 │
 ▼
i = n
 │
 ▼
STOP
```

---

# 11. How to Identify an Iterative Algorithm Design Problem

Whenever you see a loop in an exam, check these five things:

```text
              LOOP
                │
       ┌────────┼────────┐
       ▼        ▼        ▼
   Initialize  Condition Update
       │        │        │
       └────────┼────────┘
                ▼
         Progress toward
             termination
                │
                ▼
             Correct?
```

### Checklist

**1. Initialization**

Is the loop variable initialized correctly?

**2. Condition**

Will the loop eventually become false?

**3. Update**

Is the loop variable updated?

**4. Progress**

Does each iteration move toward termination?

**5. Correctness**

Are all required elements being processed?

---

# 12. Efficiency Does NOT Mean "Fast Code Only"

When we say an algorithm is efficient, we consider both:

### Time

How many operations are performed?

```text
Small input → fast
Large input → potentially slow
```

### Space

How much additional memory is required?

```text
Input
  │
  ├── Original data
  │
  └── Extra memory used by algorithm
```

Therefore:

> **Algorithm efficiency = Time efficiency + Space efficiency**

---

# 13. Example: Two Linear Search Designs

### Design A

```text
for i = 0 to n-1:
    if A[i] == x:
        return i
return -1
```

Complexity:

```text
Time  → O(n)
Space → O(1)
```

This is a reasonable design for an **unsorted array**.

### Design B

```text
for i = 0 to n-1:
    if A[i] == x:
        print("Found")
```

This may continue searching even after finding the element.

If only the first occurrence is required, this performs **unnecessary work**.

Better:

```text
for i = 0 to n-1:
    if A[i] == x:
        return i

return -1
```

### Important Principle

> **A good algorithm should stop doing unnecessary work once the required result is obtained.**

---

# 14. General Principles of Algorithm Design

### 1. Divide the Problem

Break a large problem into smaller manageable parts.

### 2. Avoid Unnecessary Computation

Do not perform operations that do not contribute to the final answer.

### 3. Choose the Right Data Structure

The choice of data structure can significantly affect algorithm efficiency.

### 4. Consider Input Constraints

An algorithm suitable for `n = 100` may be unsuitable for `n = 10⁶`.

### 5. Ensure Termination

Every iterative or recursive algorithm must have a clear path toward termination.

### 6. Analyze Complexity

Always consider:

```text
Time Complexity
       +
Space Complexity
       ↓
Overall Efficiency
```

---

# 15. Exam Answer — Short Version

### What is Algorithm Design?

Algorithm design is the process of developing a finite, clear and correct sequence of steps to solve a computational problem efficiently. It involves understanding the problem, identifying inputs and outputs, selecting a suitable strategy, designing the algorithm, checking correctness and analyzing time and space complexity.

### What is an Iterative Algorithm?

An iterative algorithm repeatedly executes a set of instructions using loops such as `for` or `while`. A correct iterative design must have proper initialization, a valid termination condition and an update that ensures progress toward termination.

### Linear Search Complexity

| Case    | Complexity |
| ------- | ---------- |
| Best    | **O(1)**   |
| Average | **O(n)**   |
| Worst   | **O(n)**   |
| Space   | **O(1)**   |

### Key PYQ Point

If a linear search loop **does not update its iteration variable**, the algorithm may enter an **infinite loop**. If it continues searching after finding the required element, it may perform **unnecessary operations**.

---

# 16. PYQ Answer Structure

For a question asking whether a given algorithm is efficient:

**Step 1 — Correctness:**
Check whether it produces the required output.

**Step 2 — Iterative design:**
Check initialization, loop condition and update.

**Step 3 — Termination:**
Explain whether the loop definitely terminates.

**Step 4 — Time complexity:**
Determine the number of iterations/operations.

**Step 5 — Space complexity:**
Determine additional memory used.

**Step 6 — Improvement:**
Suggest a better version if unnecessary work or an iterative design problem exists.

> **Exam tip:** Do not simply write the Big-O value. Explain *why* the algorithm has that complexity and identify any logical problem in the loop.
