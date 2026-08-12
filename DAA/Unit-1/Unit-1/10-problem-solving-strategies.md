# Problem Solving Strategies

> **PYQ Repeated:** 2022, 2024, 2025
> **Question:** "Write a short note / Explain in detail any four problem solving strategies." **[8 Marks]**

## 1. What is a Problem Solving Strategy?

A **problem solving strategy** is a systematic approach used to design an algorithm for solving a computational problem.

Different problems require different strategies.

```text
                    PROBLEM
                       │
                       ▼
              Understand Problem
                       │
                       ▼
              Select Strategy
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
    Divide &        Greedy       Dynamic
    Conquer         Method       Programming
        │              │              │
        └──────────────┼──────────────┘
                       ▼
                  Solve Problem
```

---

# 2. Major Problem Solving Strategies

Important strategies include:

1. **Brute Force**
2. **Divide and Conquer**
3. **Greedy Method**
4. **Dynamic Programming**
5. **Backtracking**
6. **Branch and Bound**
7. **Decrease and Conquer**
8. **Transform and Conquer**

For the exam, you can write **any four**. The following four are the most important to prepare:

* Brute Force
* Divide and Conquer
* Greedy Method
* Dynamic Programming

---

# 3. Brute Force

## Definition

**Brute Force** is a straightforward problem-solving strategy that tries **all possible solutions** or systematically checks all possibilities until the required solution is found.

It does not use sophisticated optimization.

### General Idea

```text
             Problem
                │
                ▼
        Generate possibilities
                │
                ▼
        Check each possibility
                │
                ▼
        Find valid solution
```

### Example — Linear Search

To find `x` in an array:

```text id="w7r5v4"
for i = 0 to n-1:
    if A[i] == x:
        return i

return -1
```

The algorithm checks elements one by one.

### Advantages

* Simple to understand.
* Easy to implement.
* Useful for small input sizes.
* Can be used as a baseline solution.

### Disadvantages

* Can be very slow for large inputs.
* May perform many unnecessary computations.
* Often has high time complexity.

### Applications

* Linear Search
* Simple string matching
* Exhaustive search
* Finding all possible combinations

---

# 4. Divide and Conquer

## Definition

**Divide and Conquer** divides a large problem into smaller subproblems, solves them independently, and combines their results.

### Three Steps

```text
             PROBLEM
                │
                ▼
              DIVIDE
                │
       ┌────────┼────────┐
       ▼        ▼        ▼
   Subproblem Subproblem Subproblem
       │        │        │
       └────────┼────────┘
                ▼
              CONQUER
                │
                ▼
             COMBINE
                │
                ▼
             SOLUTION
```

### Steps

1. **Divide** — break the problem into smaller subproblems.
2. **Conquer** — solve each subproblem, usually recursively.
3. **Combine** — combine the solutions to obtain the final answer.

### Example — Merge Sort

```text id="k8o4ec"
[8, 3, 5, 2]
      │
     Divide
      │
 ┌────┴────┐
[8,3]     [5,2]
  │          │
Sort        Sort
  │          │
[3,8]      [2,5]
  └────┬─────┘
       │
     Combine
       │
    [2,3,5,8]
```

### Advantages

* Reduces a large problem into smaller problems.
* Often provides efficient algorithms.
* Suitable for parallel processing.
* Gives good performance for many problems.

### Disadvantages

* Recursive calls may require extra memory.
* Combining results can sometimes be expensive.
* Not suitable for every problem.

### Examples

* Merge Sort
* Quick Sort
* Binary Search
* Strassen's Matrix Multiplication

---

# 5. Greedy Method

## Definition

The **Greedy Method** builds a solution step-by-step by choosing the **best available option at each step**.

The choice is called a **locally optimal choice**.

The goal is that these local choices eventually produce a **globally optimal solution**.

### General Structure

```text
             PROBLEM
                │
                ▼
       Choose best current option
                │
                ▼
          Add to solution
                │
                ▼
       Problem still remaining?
          │             │
         YES            NO
          │              │
          └──────►───────┘
                         ▼
                     SOLUTION
```

### Example — Coin Change

Suppose coins are:

```text id="9zcv4t"
[10, 5, 2, 1]
```

Amount:

```text id="qg3k4s"
18
```

Greedy approach:

```text id="e2a2o1"
10 → remaining 8
5  → remaining 3
2  → remaining 1
1  → remaining 0
```

Solution:

```text id="5f8y0k"
10 + 5 + 2 + 1 = 18
```

### Important Point

Greedy does **not always produce the optimal answer** for every problem.

It works when the problem has appropriate properties such as the **greedy-choice property**.

### Advantages

* Simple to implement.
* Usually fast.
* Often requires less memory.
* Useful for optimization problems.

### Disadvantages

* Local best choice may not always produce global optimum.
* Requires proof that the greedy strategy is valid.

### Examples

* Kruskal's Algorithm
* Prim's Algorithm
* Dijkstra's Algorithm (with non-negative edge weights)
* Huffman Coding
* Activity Selection

---

# 6. Dynamic Programming

## Definition

**Dynamic Programming (DP)** solves a complex problem by breaking it into smaller **overlapping subproblems**, solving each subproblem once, and storing its result for reuse.

### Main Idea

> **Solve once → Store → Reuse**

### General Structure

```text
                 PROBLEM
                    │
                    ▼
            Smaller subproblems
                    │
          ┌─────────┴─────────┐
          ▼                   ▼
      Subproblem A        Subproblem B
          │                   │
          └─────────┬─────────┘
                    ▼
              Store results
                    │
                    ▼
             Reuse results
                    │
                    ▼
               Final answer
```

### Two Main Approaches

#### 1. Memoization

* Top-down approach
* Usually uses recursion
* Stores already calculated results

#### 2. Tabulation

* Bottom-up approach
* Usually uses iteration
* Builds a table from smaller problems to larger ones

---

# 7. Example — Fibonacci

Normal recursive Fibonacci repeatedly calculates the same values.

```text id="7i0g6k"
F(5)
├── F(4)
│   ├── F(3)
│   └── F(2)
└── F(3)
    ├── F(2)
    └── F(1)
```

`F(3)` and `F(2)` are calculated multiple times.

Dynamic Programming stores the results:

```text id="b2ap6z"
F(0) = 0
F(1) = 1

F(2) = F(1) + F(0)
F(3) = F(2) + F(1)
F(4) = F(3) + F(2)
...
```

### Advantages

* Avoids repeated computation.
* Can significantly reduce time complexity.
* Useful for optimization problems.
* Efficient for problems with overlapping subproblems.

### Disadvantages

* Requires extra memory for storing results.
* Designing the correct recurrence can be difficult.
* Not useful when subproblems do not overlap.

### Examples

* 0/1 Knapsack
* Longest Common Subsequence
* Matrix Chain Multiplication
* Fibonacci
* Shortest Path problems

---

# 8. Backtracking

## Definition

**Backtracking** builds a solution step-by-step and **abandons a partial solution as soon as it determines that the solution cannot lead to a valid answer**.

It follows:

> **Choose → Explore → If invalid, undo → Try another choice**

### Diagram

```text
                 START
                   │
                 Choose
                   │
                   ▼
               Candidate
                /     \
             Valid   Invalid
               │        │
               ▼        ▼
            Explore    Backtrack
               │        │
               └────────┘
                   │
                   ▼
                Solution
```

### Example — N-Queens

Place queens on a chessboard so that no two queens attack each other.

If a queen placement causes a conflict:

```text id="c2g5qk"
Place Queen
    ↓
Conflict?
  /    \
YES    NO
 │      │
 ▼      ▼
Undo   Continue
 │
 ▼
Try another position
```

### Advantages

* Avoids exploring some impossible solutions.
* Useful for constraint-based problems.
* Easier than checking every complete solution.

### Disadvantages

* Can still have exponential time complexity.
* Performance depends heavily on how much the search space can be pruned.

### Examples

* N-Queens
* Sudoku
* Maze solving
* Subset Sum
* Graph coloring

---

# 9. Branch and Bound

## Definition

**Branch and Bound** is mainly used for optimization problems.

It divides the problem into branches and calculates a **bound** on the best possible solution from each branch.

Branches that cannot produce a better solution are discarded.

```text id="1f4o8a"
                  Problem
                     │
                 Branch
               /    |    \
              A     B     C
             /      │      \
           Bound   Bound   Bound
             │      │        │
           Poor?   Good?    Poor?
             │      │        │
           Prune   Explore  Prune
                     │
                     ▼
                 Best solution
```

### Example

**Travelling Salesman Problem (TSP)**

Instead of exploring every possible route completely, branches that cannot beat the current best route can be eliminated.

### Advantages

* Reduces unnecessary search.
* Useful for optimization problems.
* Can find exact optimal solutions.

### Disadvantages

* May still require exponential time.
* Requires a good bounding function.

---

# 10. Decrease and Conquer

## Definition

**Decrease and Conquer** solves a problem by reducing it to a **smaller instance of the same problem**, solving the smaller problem, and extending the solution.

Unlike Divide and Conquer, it usually creates **one smaller subproblem**, not several.

```text id="znq7n7"
Problem of size n
       │
       ▼
Problem of size n-1
       │
       ▼
Problem of size n-2
       │
       ▼
      ...
       │
       ▼
     Base case
       │
       ▼
    Build answer
```

### Example — Insertion Sort

Insertion Sort solves a smaller sorted portion and inserts the next element into its correct position.

### Examples

* Insertion Sort
* Binary Search
* Euclid's Algorithm

---

# 11. Transform and Conquer

## Definition

**Transform and Conquer** transforms a problem into another form that is easier to solve.

```text id="l6xwq4"
Original Problem
       │
       ▼
 Transform
       │
       ▼
Easier Problem
       │
       ▼
   Solve it
       │
       ▼
Original Solution
```

### Example

A problem may transform data into a sorted or structured form before solving it.

### Examples

* Heap construction
* Sorting before searching
* Gaussian elimination
* Balancing search trees

---

# 12. Comparison of Strategies

| Strategy                | Main Idea                            | Example        |
| ----------------------- | ------------------------------------ | -------------- |
| **Brute Force**         | Try possibilities directly           | Linear Search  |
| **Divide & Conquer**    | Divide, solve, combine               | Merge Sort     |
| **Greedy**              | Make best local choice               | Kruskal        |
| **Dynamic Programming** | Store overlapping subproblem results | 0/1 Knapsack   |
| **Backtracking**        | Try, reject, undo                    | N-Queens       |
| **Branch & Bound**      | Branch and eliminate using bounds    | TSP            |
| **Decrease & Conquer**  | Solve smaller instance               | Insertion Sort |
| **Transform & Conquer** | Transform into easier problem        | Heap Sort      |

---

# 13. Four Strategies to Write for an 8-Mark Question

If the exam asks:

> **"Explain any four problem solving strategies."**

The safest four to prepare are:

### 1. Brute Force

> Directly tries possible solutions until the required solution is obtained.

**Example:** Linear Search.

### 2. Divide and Conquer

> Divides a problem into smaller subproblems, solves them and combines their results.

**Example:** Merge Sort.

### 3. Greedy Method

> Makes the best possible choice at each step with the aim of obtaining an overall optimal solution.

**Example:** Kruskal's Algorithm.

### 4. Dynamic Programming

> Solves overlapping subproblems once and stores their results to avoid repeated computation.

**Example:** 0/1 Knapsack.

---

# Exam Writing Format

For each strategy, write:

```text
1. Definition
2. Basic idea / working
3. Diagram
4. Example
5. Advantages
6. Disadvantages
7. Applications (if space permits)
```

For an **8-mark answer**, explaining **four strategies with definition + working + example** is usually the most important part.

## Quick Memory Trick

**B-D-G-D**

> **B**rute Force → **D**ivide & Conquer → **G**reedy → **D**ynamic Programming
