# UNIT II — Analysis of Algorithms and Complexity Theory

# 15. NP-Hard Problems

> **🔥🔥 VERY IMPORTANT**
>
> **PYQ Frequency: 3/4 Years**
>
> **Direct/Related PYQs: 2022, 2024, 2025**

---

# 15.1 What Is an NP-Hard Problem?

A problem is called **NP-Hard** if it is at least as hard as every problem in NP.

Formally, a problem `H` is NP-Hard if every problem `A` in NP can be polynomially reduced to `H`.

That is:

```text id="q7m2x5"
∀ A ∈ NP,

A ≤p H
```

In simple terms:

> An NP-Hard problem is a problem that is at least as difficult as the hardest problems in NP.

---

# 15.2 Important Point

An NP-Hard problem **does not necessarily belong to NP**.

This is the most important distinction between:

```text id="r8c4n1"
NP-Hard
```

and:

```text id="m5x7q2"
NP-Complete
```

---

# 15.3 NP-Hard vs NP-Complete

### NP-Hard

A problem is at least as hard as every problem in NP.

It may or may not belong to NP.

### NP-Complete

A problem is:

```text id="v3q9c6"
NP
```

and:

```text id="x6m2r8"
NP-Hard
```

Therefore:

```text id="p4c7n1"
NP-Complete = NP ∩ NP-Hard
```

---

# 15.4 Comparison Table

| Property                             | NP                 | NP-Hard          | NP-Complete   |
| ------------------------------------ | ------------------ | ---------------- | ------------- |
| Polynomial-time verification         | Yes                | Not necessarily  | Yes           |
| Must be a decision problem           | Yes, formally      | No               | Yes, formally |
| At least as hard as every NP problem | Not necessarily    | Yes              | Yes           |
| Must belong to NP                    | Yes                | No               | Yes           |
| Example                              | Graph Connectivity | TSP Optimization | 3-SAT         |

---

# 15.5 Conceptual Diagram

```text id="k8m3q6"
                    NP-HARD
              ┌───────────────────┐
              │                   │
              │       NP          │
              │   ┌───────────┐   │
              │   │ NP-C      │   │
              │   │           │   │
              │   └───────────┘   │
              │                   │
              └───────────────────┘
```

The intersection between NP and NP-Hard is:

```text id="w5r2x9"
NP-Complete
```

---

# 15.6 Why Is NP-Hard Important?

NP-Hardness is used to identify computationally difficult problems.

If a problem is shown to be NP-Hard, then:

> A polynomial-time solution for that problem would imply polynomial-time solutions for all problems in NP.

Therefore:

```text id="q4x8m2"
NP-Hard problem ∈ P
        ↓
P = NP
```

for the standard setting where the problem is appropriately formulated.

---

# 15.7 Polynomial-Time Reduction and NP-Hardness

Polynomial-time reduction is the main tool used to prove NP-Hardness.

Suppose we want to prove that problem B is NP-Hard.

Take a known NP-Complete problem A.

Show:

```text id="n7m3c9"
A ≤p B
```

Since A is already at least as hard as every problem in NP, B must be at least as hard as A.

Therefore:

```text id="x5r8q1"
B is NP-Hard
```

---

# 15.8 Correct Reduction Direction

This is extremely important.

To prove:

```text id="m9x4c7"
B is NP-Hard
```

we need:

```text id="q2v8n5"
Known NP-Complete A
          ↓
          B
```

That is:

```text id="r6m3x1"
A ≤p B
```

### Remember:

> **Known Hard → Target Problem**

---

# 15.9 Wrong Direction

Do not use:

```text id="v4c7m9"
B ≤p A
```

as the basic NP-Hardness proof for B.

That only shows that B is no harder than A in the reduction sense.

The required direction is:

```text id="x8m2q5"
A ≤p B
```

---

# 15.10 Example of NP-Hardness

Suppose:

```text id="q5x9m3"
A = 3-SAT
B = Problem X
```

We know:

```text id="r7c2n8"
3-SAT is NP-Complete
```

If we prove:

```text id="m4x8q1"
3-SAT ≤p Problem X
```

then Problem X is NP-Hard.

If we also prove:

```text id="c6n3v7"
Problem X ∈ NP
```

then:

```text id="p9m5x2"
Problem X is NP-Complete
```

---

# 15.11 NP-Hard Does Not Mean "Impossible"

An NP-Hard problem can still be solved.

For example, it can be solved using:

* Brute force
* Backtracking
* Dynamic programming for special cases
* Branch and bound
* Approximation
* Heuristics
* Integer programming

NP-Hard means the problem is computationally difficult in the complexity-theoretic sense.

---

# 15.12 NP-Hard and Polynomial Time

Suppose an NP-Hard problem B has a polynomial-time algorithm.

Then all NP problems can be polynomially reduced to B and solved using that algorithm.

Therefore:

```text id="x7c2m8"
P = NP
```

This is why discovering polynomial-time algorithms for NP-Hard problems would be a major theoretical result.

---

# 15.13 Examples of NP-Hard Problems

Important examples include:

### 1. TSP Optimization

> Find the minimum-cost tour visiting every city exactly once.

This optimization version is NP-Hard.

---

### 2. Scheduling Optimization

Many general scheduling optimization problems are NP-Hard.

---

### 3. Knapsack Optimization

The optimization version of the general 0/1 Knapsack problem is NP-Hard.

---

### 4. Minimum Vertex Cover

The optimization problem:

> Find the smallest vertex cover.

is NP-Hard.

Its decision version:

> Is there a vertex cover of size at most `k`?

is NP-Complete.

---

# 15.14 TSP Example

The **Travelling Salesman Problem (TSP)** asks:

> Given a collection of cities and distances between them, find a shortest tour that visits every city exactly once and returns to the starting city.

The optimization version asks for the actual minimum-cost tour.

This version is NP-Hard.

---

# 15.15 TSP Decision Version

The decision version asks:

> Is there a tour with total cost at most `K`?

This version has a YES/NO answer.

The decision version of TSP is NP-Complete.

This is an important distinction:

```text id="q8x3m6"
TSP Optimization
      ↓
NP-Hard
```

while:

```text id="r5m7c2"
TSP Decision
      ↓
NP-Complete
```

---

# 15.16 Why Is TSP Decision in NP?

Given a proposed tour:

```text id="x4n8q1"
v₁ → v₂ → ... → vₙ → v₁
```

we can verify:

1. Every city occurs exactly once.
2. The tour returns to the starting city.
3. Calculate the total distance.
4. Check whether total distance ≤ `K`.

These checks are polynomial.

Therefore the decision version belongs to NP.

---

# 15.17 Minimum Vertex Cover

Consider the optimization problem:

> Find the minimum number of vertices needed to cover all edges.

This is an optimization problem.

The decision version asks:

> Does there exist a vertex cover with at most `k` vertices?

The decision version is NP-Complete.

The optimization version is NP-Hard.

---

# 15.18 NP-Hard vs NP-Complete Example

Consider Vertex Cover.

### Decision

```text id="m7x2q9"
Does a vertex cover of size ≤ k exist?
```

This is:

```text id="v4c8n1"
NP-Complete
```

### Optimization

```text id="x5r3m7"
Find the minimum vertex cover.
```

This is:

```text id="q8m2c6"
NP-Hard
```

---

# 15.19 Why Optimization Problems Can Be NP-Hard

NP is formally defined using decision problems.

Optimization problems ask us to find the best solution rather than simply answer YES or NO.

However, if solving the optimization problem efficiently would allow us to solve an NP-Complete decision problem efficiently, the optimization problem is considered NP-Hard.

---

# 15.20 2022 PYQ

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7 Marks]`

For NP-Hard, write:

> An NP-Hard problem is at least as hard as every problem in NP. Every NP problem can be polynomially reduced to an NP-Hard problem.

Notation:

```text id="w3x7m5"
∀A ∈ NP:
A ≤p H
```

An NP-Hard problem does not necessarily belong to NP.

Example:

```text id="r9c4q2"
TSP optimization
```

---

# 15.21 2022 PYQ — Full Classification

| Class           | Definition                             | Example            |
| --------------- | -------------------------------------- | ------------------ |
| **P**           | Solvable in polynomial time            | Graph Connectivity |
| **NP**          | Solution verifiable in polynomial time | Vertex Cover       |
| **NP-Hard**     | At least as hard as every NP problem   | TSP Optimization   |
| **NP-Complete** | Both NP and NP-Hard                    | 3-SAT              |

---

# 15.22 2024 PYQ

> **"What do you understand by NP complete and NP hard problems? Give examples."** `[6 Marks]`

This is a direct question on the distinction.

---

# 15.23 2024 PYQ — Answer

### NP-Hard

A problem is NP-Hard if every problem in NP can be polynomially reduced to it.

It does not necessarily belong to NP.

Example:

```text id="v6m2x9"
TSP Optimization
```

---

### NP-Complete

A problem is NP-Complete if:

```text id="x4c8q1"
It belongs to NP
```

and:

```text id="m7r3n5"
It is NP-Hard
```

Therefore:

```text id="q9x2v6"
NP-Complete = NP ∩ NP-Hard
```

Examples:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

---

# 15.24 2025 PYQ

> **"Explain P, NP, NP-Hard and NP-Complex problems with example."** `[7 Marks]`

The term **NP-Complex** is generally intended to refer to **NP-Complete**.

For NP-Hard, write:

> NP-Hard problems are problems to which every problem in NP can be polynomially reduced. They need not themselves belong to NP.

Example:

```text id="n5c7m2"
TSP Optimization
```

---

# 15.25 NP-Hard and NP-Complete Relationship

The relationship can be summarized as:

```text id="r3x8m5"
                 NP-HARD
          ┌──────────────────┐
          │                  │
          │       NP         │
          │    ┌───────┐     │
          │    │ NP-C  │     │
          │    └───────┘     │
          │                  │
          └──────────────────┘
```

The intersection:

```text id="q7m2x9"
NP ∩ NP-Hard
```

is:

```text id="x4c8r1"
NP-Complete
```

---

# 15.26 Important Difference

The easiest way to remember:

### NP

> **Can verify quickly.**

### NP-Hard

> **At least as hard as all NP problems.**

### NP-Complete

> **Can verify quickly + as hard as all NP problems.**

---

# 15.27 NP-Hard Problems Can Be Outside NP

This is a very important theoretical distinction.

An NP-Hard problem may:

* Not be a decision problem.
* Not have polynomial-time verification.
* Not belong to NP.

For example:

```text id="m6x9q2"
TSP optimization
```

asks for an optimal tour rather than a YES/NO answer.

Therefore it is classified as NP-Hard rather than NP-Complete.

---

# 15.28 NP-Hard and Decision Problems

Although NP-Hard problems do not have to be decision problems, many decision problems can also be NP-Hard.

If a decision problem is both:

```text id="c5m8x1"
NP
```

and:

```text id="r7x3q9"
NP-Hard
```

then it is:

```text id="n4m2v6"
NP-Complete
```

---

# 15.29 Reduction Chain

Suppose:

```text id="x8q4m2"
A ≤p B
```

and:

```text id="v6m1c9"
B ≤p C
```

Then:

```text id="r3x7n5"
A ≤p C
```

This is because polynomial-time reductions are transitive.

---

# 15.30 Proving NP-Hardness

Use this exam template:

```text id="q9m4x2"
To prove problem B is NP-Hard:

1. Select a known NP-Complete problem A.
2. Construct a polynomial-time reduction:
      A ≤p B
3. Show that the transformation preserves
   the YES/NO answer.
4. Therefore B is NP-Hard.
```

---

# 15.31 Proving NP-Completeness

Use this template:

```text id="x5c8m1"
To prove B is NP-Complete:

Step 1:
Show B ∈ NP.

Step 2:
Choose known NP-Complete A.

Step 3:
Show A ≤p B.

Step 4:
Therefore B is NP-Hard.

Step 5:
Since B ∈ NP and B is NP-Hard,
B is NP-Complete.
```

---

# 15.32 Common Mistake — Reduction Direction

Suppose the target is:

```text id="m7x2q8"
B
```

To prove B is NP-Hard:

```text id="r4c9n1"
Known NP-Complete A
          ↓
          B
```

Therefore:

```text id="x6m3q5"
A ≤p B
```

not:

```text id="q8v2m9"
B ≤p A
```

---

# 15.33 Common Mistake — NP-Hard Means NP

False.

Correct:

```text id="c3x7m5"
NP-Complete ⊆ NP
```

But NP-Hard can extend beyond NP.

---

# 15.34 Common Mistake — NP-Hard Means No Solution

False.

NP-Hard problems can be solved.

The issue is the lack of a known polynomial-time algorithm for the general problem.

---

# 15.35 Common Mistake — NP-Hard Means Exponential

Not necessarily.

NP-Hardness is a complexity-classification concept.

It does not simply mean:

```text id="n6x2q8"
"the algorithm is exponential."
```

A problem can have different algorithms with different complexities.

The classification concerns the fundamental difficulty under polynomial reductions.

---

# 15.36 Common Mistake — Every NP-Hard Problem Is NP-Complete

False.

For NP-Complete:

```text id="w5r8x1"
Problem ∈ NP
```

must also hold.

NP-Hard alone is insufficient.

---

# 15.37 NP-Hard and P = NP

Suppose an NP-Hard problem has a polynomial-time solution.

Then every NP problem can be reduced to that problem and solved in polynomial time.

Therefore:

```text id="m9x3c7"
P = NP
```

This is why NP-Hard problems are considered computationally difficult.

---

# 15.38 Practical Approaches for NP-Hard Problems

Even though general NP-Hard problems are computationally difficult, practical approaches include:

### 1. Brute Force

Try all possibilities.

Often:

```text id="x8m2q4"
O(2ⁿ)
```

or worse.

---

### 2. Backtracking

Explore possible solutions while eliminating invalid partial solutions.

---

### 3. Branch and Bound

Use bounds to eliminate branches that cannot produce a better solution.

---

### 4. Approximation Algorithms

Find solutions close to optimal.

---

### 5. Heuristics

Use practical rules to obtain good solutions quickly.

---

### 6. Special Cases

Some restricted versions may be solvable in polynomial time.

---

# 15.39 Example — TSP Approaches

For TSP optimization, possible approaches include:

* Brute force
* Dynamic programming
* Branch and bound
* Nearest-neighbor heuristic
* Approximation algorithms for special metric versions

The general optimization problem remains NP-Hard.

---

# 15.40 NP-Hard and Real-World Problems

NP-Hard problems appear in many practical areas:

* Scheduling
* Routing
* Resource allocation
* Logistics
* Network design
* Timetabling
* Manufacturing
* Clustering
* Planning

This is why understanding NP-Hardness is practically important.

---

# 15.41 Example — Scheduling

Suppose we need to assign:

```text id="q4m8x2"
100 jobs
```

to:

```text id="r7c3n9"
10 machines
```

while minimizing completion time and satisfying constraints.

Finding the optimal assignment can become computationally difficult.

Many scheduling optimization problems are NP-Hard.

Practical solutions often use:

* Approximation
* Heuristics
* Integer programming
* Local search

---

# 15.42 Example — Routing

Suppose a delivery company has many destinations.

The optimization problem:

> Find the shortest route visiting all required destinations.

is closely related to TSP.

The optimization version is NP-Hard.

This illustrates how NP-Hard problems occur in real-world logistics.

---

# 15.43 NP-Hard vs NP-Complete — Exam Table

| Feature                          | NP-Hard          | NP-Complete                                            |
| -------------------------------- | ---------------- | ------------------------------------------------------ |
| At least as hard as NP           | Yes              | Yes                                                    |
| Belongs to NP                    | Not necessarily  | Yes                                                    |
| Polynomial verification required | No               | Yes                                                    |
| Can be optimization problem      | Yes              | Usually formal classification is for decision problems |
| Example                          | TSP optimization | 3-SAT                                                  |
| Relationship                     | Broader category | NP ∩ NP-Hard                                           |

---

# 15.44 Exam-Ready Definition

> **An NP-Hard problem is a problem to which every problem in NP can be polynomially reduced. It is at least as hard as every problem in NP and does not necessarily belong to NP. TSP optimization and minimum Vertex Cover are examples of NP-Hard problems.**

---

# 15.45 2-Mark Answer

> **NP-Hard problems are problems that are at least as hard as every problem in NP. Every NP problem can be polynomially reduced to an NP-Hard problem. An NP-Hard problem does not necessarily belong to NP.**

---

# 15.46 5-Mark Answer

## Explain NP-Hard Problems

An NP-Hard problem is a problem such that every problem in NP can be polynomially reduced to it.

Formally:

```text id="x7m3q9"
∀A ∈ NP:
A ≤p H
```

NP-Hard problems do not necessarily belong to NP.

For example, the optimization version of TSP is NP-Hard.

The decision version of TSP is NP-Complete.

The main difference is:

```text id="m5c8r2"
NP-Hard → at least as hard as NP
NP-Complete → NP + NP-Hard
```

---

# 15.47 6-Mark Answer

## Explain NP-Hard and NP-Complete Problems

### NP-Hard

A problem is NP-Hard if every problem in NP can be polynomially reduced to it.

It does not necessarily belong to NP.

Example:

```text id="q8x2m5"
TSP optimization
```

### NP-Complete

A problem is NP-Complete if it belongs to NP and is NP-Hard.

Therefore:

```text id="r4c7n1"
NP-Complete = NP ∩ NP-Hard
```

Examples:

```text id="m9x3c6"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

Thus NP-Complete problems are the problems that are both efficiently verifiable and at least as hard as every problem in NP.

---

# 15.48 7-Mark Answer — P, NP, NP-Hard and NP-Complete

## P

Problems solvable in polynomial time.

Example:

```text id="x6m2q9"
Graph Connectivity
```

---

## NP

Problems whose proposed solutions can be verified in polynomial time.

Example:

```text id="r5c8m1"
Vertex Cover
```

---

## NP-Hard

Problems at least as hard as every problem in NP.

Example:

```text id="q3x7n4"
TSP Optimization
```

---

## NP-Complete

Problems that are both NP and NP-Hard.

Examples:

```text id="m8r2c5"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

Relationship:

```text id="v4x9q1"
P ⊆ NP
```

and:

```text id="c7m3r8"
NP-Complete = NP ∩ NP-Hard
```

---

# 15.49 Quick Revision Diagram

```text id="q6m2x8"
                     NP-HARD
              ┌──────────────────┐
              │                  │
              │       NP         │
              │   ┌──────────┐   │
              │   │NP-C      │   │
              │   └──────────┘   │
              │                  │
              └──────────────────┘

NP-Complete = NP ∩ NP-Hard
```

---

# 15.50 One-Minute Revision

```text id="x7r3m9"
NP-HARD
   ↓
At least as hard as every NP problem
   ↓
Every NP problem can be reduced to it
   ↓
A ≤p H
   ↓
H does NOT have to be in NP
```

### NP-Complete

```text id="m5c8q2"
NP
+
NP-Hard
=
NP-Complete
```

### Examples

```text id="r8x2n6"
NP-Hard:
TSP Optimization
Minimum Vertex Cover

NP-Complete:
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

### Key Relationship

```text id="q4m7x1"
NP-Complete = NP ∩ NP-Hard
```

---

# 15.51 PYQ Priority

### 2022

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7]`

### 2024

> **"What do you understand by NP complete and NP hard problems? Give examples."** `[6]`

### 2025

> **"Explain P, NP, NP-Hard and NP-Complex problems with example."** `[7]`

---

# 15.52 Final Priority

**🔥🔥 VERY HIGH**

Prepare especially:

1. Definition of NP-Hard.
2. NP-Hard vs NP-Complete.
3. Polynomial-time reduction.
4. Correct reduction direction.
5. Why NP-Hard does not necessarily belong to NP.
6. TSP optimization as an example.
7. Minimum Vertex Cover as an optimization problem.
8. Relationship:

```text
NP-Complete = NP ∩ NP-Hard
```

9. Relationship with `P = NP`.
10. Full P/NP/NP-Hard/NP-Complete comparison.

---

# 15.53 Final Exam Memory Trick

Remember these four lines:

```text id="f2x8m4"
P
→ Solve quickly

NP
→ Verify quickly

NP-Hard
→ At least as hard as NP

NP-Complete
→ NP + NP-Hard
```

And for reductions:

```text id="n7m3q9"
Known Hard Problem
        ↓
    Target Problem

A ≤p B
```

**🔥🔥 EXAM PRIORITY: VERY HIGH**
