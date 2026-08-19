# UNIT II — Analysis of Algorithms and Complexity Theory

# 9. P-Class Problems

> **🔥 PYQ Frequency: 3/4 Years**
>
> **Priority: VERY HIGH**

---

# 9.1 What Is Class P?

**P** stands for **Polynomial Time**.

Class **P** contains decision problems that can be solved by a **deterministic algorithm in polynomial time**.

In simple terms:

> A problem belongs to P if there exists an algorithm that can solve it in time bounded by a polynomial function of the input size.

The general form is:

```text id="1x1m4a"
O(n^k)
```

where `k` is a fixed constant.

---

# 9.2 Polynomial Time

Examples of polynomial-time complexity include:

```text id="q8f0y6"
O(1)
O(log n)
O(n)
O(n log n)
O(n²)
O(n³)
O(n^k)
```

These are considered polynomial-time complexities.

For example:

```text id="r4f7c8"
O(n²)
```

is polynomial because:

```text id="w9m2s5"
n² = n^k
```

where:

```text id="6x2v9q"
k = 2
```

---

# 9.3 Definition of P

A decision problem belongs to class P if there exists a deterministic algorithm that solves the problem in polynomial time.

Formally:

```text id="m5q8z1"
P = { decision problems solvable
      by a deterministic polynomial-time algorithm }
```

---

# 9.4 Why Is P Important?

P represents problems that are considered **efficiently solvable** from a theoretical complexity perspective.

If an algorithm has:

```text id="n6r3t7"
O(n²)
```

then increasing the input size does increase the computation, but the growth is polynomial rather than exponential.

This generally provides much better scalability than algorithms with:

```text id="2y8c4m"
O(2ⁿ)
```

or:

```text id="7p1x9k"
O(n!)
```

---

# 9.5 Examples of Problems in P

Common examples include:

### 1. Sorting

Efficient sorting algorithms include merge sort:

```text id="v8z4k1"
O(n log n)
```

Since `n log n` is polynomially bounded, sorting has polynomial-time algorithms.

---

### 2. Linear Search

Worst-case complexity:

```text id="0x5q8m"
O(n)
```

---

### 3. Binary Search

Worst-case complexity:

```text id="q4r7s2"
O(log n)
```

---

### 4. Shortest Path

Many shortest-path problems can be solved in polynomial time.

For example, Dijkstra's algorithm has polynomial-time implementations.

---

### 5. Minimum Spanning Tree

Algorithms such as:

* Prim's algorithm
* Kruskal's algorithm

run in polynomial time.

---

### 6. Graph Traversal

Breadth-first search:

```text id="j3k7v9"
O(V + E)
```

Depth-first search:

```text id="t8p4w2"
O(V + E)
```

Both are polynomial in the size of the graph representation.

---

# 9.6 Decision Problems

P is formally defined using **decision problems**.

A decision problem has an answer:

```text id="w7c2m5"
YES
```

or:

```text id="k9r4x1"
NO
```

For example:

### Path Existence Problem

Given a graph `G` and vertices `s` and `t`:

> Is there a path from `s` to `t`?

A BFS or DFS can answer this in polynomial time.

Therefore, the decision version belongs to P.

---

# 9.7 Example — Graph Connectivity

Problem:

> Given a graph, is it connected?

Use BFS or DFS.

Complexity:

```text id="p5n8q3"
O(V + E)
```

Since this is polynomial in the input size:

```text id="c1x7z9"
Graph Connectivity ∈ P
```

---

# 9.8 Example — Shortest Path Decision Problem

Question:

> Is there a path from `s` to `t` whose total cost is at most `K`?

For appropriate graph settings, shortest-path algorithms can solve such decision problems in polynomial time.

Therefore, such problems can belong to P.

---

# 9.9 P Does Not Mean "Easy" in Every Practical Sense

A common misconception is:

> "If a problem is in P, it must be practically easy."

Not necessarily.

For example:

```text id="f6j2q9"
O(n^100)
```

is polynomial.

But it may be completely impractical for realistic input sizes.

Therefore:

> Polynomial-time is a theoretical classification of computational efficiency, not a guarantee of practical speed.

---

# 9.10 P Does Not Mean "Constant Time"

Another common mistake is thinking polynomial time means:

```text id="r8w5m2"
O(n)
```

only.

Polynomial includes:

```text id="q1x4z7"
O(n)
O(n²)
O(n³)
...
O(n^k)
```

for fixed constant `k`.

---

# 9.11 P vs Non-Polynomial

| P-Class            | Non-Polynomial Growth         |
| ------------------ | ----------------------------- |
| `O(n)`             | `O(2ⁿ)`                       |
| `O(n²)`            | `O(3ⁿ)`                       |
| `O(n³)`            | `O(n!)`                       |
| `O(n log n)`       | Other super-polynomial growth |
| Generally scalable | Becomes expensive rapidly     |

---

# 9.12 P vs NP

This is one of the most important concepts.

### P

Problems that can be:

```text id="6z3m7v"
SOLVED
```

in polynomial time by a deterministic algorithm.

### NP

Problems for which a proposed solution can be:

```text id="8r4x1c"
VERIFIED
```

in polynomial time.

Therefore:

```text id="j7q2w9"
P ⊆ NP
```

---

# 9.13 Why Is P a Subset of NP?

Suppose a problem can be solved in polynomial time.

Then, after solving it, we can verify the result in polynomial time as well.

Therefore, every problem in P also satisfies the polynomial-time verification requirement of NP.

Hence:

```text id="t5m8c2"
P ⊆ NP
```

The major unresolved question is:

```text id="x3q7v1"
P = NP ?
```

---

# 9.14 P vs NP Diagram

Conceptually:

```text id="f9w3k5"
              ┌───────────────────────┐
              │          NP           │
              │                       │
              │     ┌───────────┐     │
              │     │     P     │     │
              │     │           │     │
              │     └───────────┘     │
              │                       │
              └───────────────────────┘
```

We know:

```text id="g8r1m4"
P ⊆ NP
```

but we do not know whether the containment is strict.

---

# 9.15 P and NP-Complete Problems

NP-Complete problems belong to NP and are at least as hard as every problem in NP under polynomial-time reductions.

Important examples:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

If **any one** NP-Complete problem is solved in polynomial time, then:

```text id="k2m7p8"
P = NP
```

This is a very important theoretical result.

---

# 9.16 P and NP-Hard Problems

NP-Hard problems are at least as hard as every problem in NP under the relevant reduction.

An NP-Hard problem does not necessarily belong to NP.

Therefore:

```text id="q6x9c3"
NP-Complete = NP ∩ NP-Hard
```

Conceptually:

```text id="w8r4m1"
          NP-Hard
      ┌─────────────────┐
      │     ┌─────┐     │
      │     │ NP  │     │
      │     │ ┌─┐ │     │
      │     │ │C│ │     │
      │     │ └─┘ │     │
      │     └─────┘     │
      └─────────────────┘
```

The NP-Complete problems are the problems that are both:

```text id="m3z7v5"
NP
```

and:

```text id="b8q2x4"
NP-Hard
```

---

# 9.17 PYQ — 2022

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7 Marks]`

This is a major PYQ because it asks for the complete complexity-class relationship.

### P

Problems solvable in polynomial time by a deterministic algorithm.

Example:

```text id="x5j8c1"
Graph Connectivity
```

---

### NP

Problems whose proposed solutions can be verified in polynomial time.

Example:

```text id="z2m6r9"
SAT
```

---

### NP-Hard

Problems at least as hard as every problem in NP under polynomial-time reductions.

Example:

```text id="p7q3w8"
Travelling Salesman Problem
```

when considering its optimization version.

---

### NP-Complete

Problems that are both:

```text id="n8v2k4"
NP
```

and:

```text id="r5x7m1"
NP-Hard
```

Examples:

* SAT
* 3-SAT
* Vertex Cover

---

# 9.18 PYQ — 2023

> **"Briefly explain P and NP problems in the context of complexity theory. Give suitable example."** `[8 Marks]`

### P

A problem belongs to P if it can be solved in polynomial time by a deterministic algorithm.

Example:

```text id="c4w8n2"
Graph Connectivity
```

can be solved using BFS/DFS in:

```text id="e6q1z5"
O(V + E)
```

---

### NP

A problem belongs to NP if a proposed solution can be verified in polynomial time.

Example:

```text id="j9r3m7"
Vertex Cover
```

Given a set of vertices, we can verify in polynomial time whether:

* The set contains at most `k` vertices.
* Every edge has an endpoint in the set.

---

# 9.19 PYQ — 2025

> **"Explain P, NP, NP-Hard and NP-Complex problems with example."** `[7 Marks]`

The term **NP-Complex** in the question is generally intended to refer to **NP-Complete**.

For the exam, prepare the standard terminology:

```text id="v7x2q9"
P
NP
NP-Hard
NP-Complete
```

---

# 9.20 How to Explain P in an Exam

Use this structure:

```text id="p4m8x1"
Definition
   ↓
Polynomial-time deterministic algorithm
   ↓
Complexity O(n^k)
   ↓
Decision-problem interpretation
   ↓
Example
   ↓
Relationship with NP
```

---

# 9.21 Exam-Ready Definition

### What is P-Class?

**P-class** is the class of decision problems that can be solved by a deterministic algorithm in polynomial time.

If the running time of an algorithm is bounded by:

```text id="r8c2v6"
O(n^k)
```

for some constant `k`, then the problem is considered polynomial-time solvable.

Examples include graph connectivity, shortest-path decision problems, and many standard searching and graph problems.

P is important because polynomial-time problems are generally considered efficiently solvable from a theoretical complexity perspective.

---

# 9.22 2-Mark Answer

> **P is the class of decision problems that can be solved by a deterministic algorithm in polynomial time, such as `O(n)`, `O(n²)` or `O(n³)`.**

Example:

```text id="k7m4x2"
Graph Connectivity
```

can be solved using BFS/DFS in:

```text id="t5q8z1"
O(V + E)
```

---

# 9.23 5-Mark Answer

## Explain P-Class Problems

P stands for **Polynomial Time**.

It is the class of decision problems that can be solved by a deterministic algorithm in polynomial time.

The running time is bounded by:

```text id="z6x2m8"
O(n^k)
```

where `k` is a constant.

Examples of polynomial-time complexities include:

```text id="r9w5c3"
O(n)
O(n log n)
O(n²)
O(n³)
```

Examples of P problems include:

* Graph connectivity
* Shortest path
* Minimum spanning tree
* Searching
* Sorting

P is a subset of NP because any problem that can be solved in polynomial time can also have its solution verified in polynomial time.

Therefore:

```text id="q4m7x1"
P ⊆ NP
```

---

# 9.24 7/8-Mark Answer

## Explain P and NP with Examples

### P-Class

P stands for **Polynomial Time**.

It contains decision problems that can be solved by deterministic algorithms in polynomial time.

A problem is in P if there exists an algorithm with complexity:

```text id="h8v3c6"
O(n^k)
```

where `k` is a constant.

Examples:

* Graph connectivity
* Shortest path
* Minimum spanning tree
* Searching
* Sorting

---

### NP-Class

NP stands for **Nondeterministic Polynomial Time**.

It contains decision problems for which a proposed solution can be verified in polynomial time by a deterministic algorithm.

Examples:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

For example, for Vertex Cover, if a set of vertices is provided, we can check in polynomial time whether every edge has at least one endpoint in the selected set.

---

### Relationship

Every problem in P is also in NP:

```text id="j2q7w5"
P ⊆ NP
```

However, whether:

```text id="x9m4c8"
P = NP
```

is still an open question.

---

# 9.25 P-Class Examples

| Problem               |          Typical Polynomial Complexity | P?  |
| --------------------- | -------------------------------------: | --- |
| Array Search          |                                 `O(n)` | Yes |
| Binary Search         |                             `O(log n)` | Yes |
| Sorting               | `O(n log n)` with efficient algorithms | Yes |
| BFS                   |                             `O(V + E)` | Yes |
| DFS                   |                             `O(V + E)` | Yes |
| Minimum Spanning Tree |                             Polynomial | Yes |
| Shortest Path         |   Polynomial for standard formulations | Yes |

---

# 9.26 P-Class and Decision Version

Remember that complexity classes are formally defined for decision problems.

For example:

### Optimization Problem

> Find the shortest path from `A` to `B`.

### Decision Version

> Is there a path from `A` to `B` with cost at most `K`?

The decision version has:

```text id="c8v3m6"
YES / NO
```

answers and fits directly into the formal definition of P.

---

# 9.27 Important Distinction: P vs Polynomial Algorithm

A **polynomial-time algorithm** is an algorithm.

**P** is a complexity class containing problems.

Therefore:

```text id="s4q8n2"
Algorithm → has complexity
Problem   → belongs to a complexity class
```

Example:

```text id="j7m1x5"
Merge Sort → O(n log n)
```

while:

```text id="p6c9v3"
Sorting Problem → belongs to P
```

because a polynomial-time algorithm exists for sorting.

---

# 9.28 Common Mistakes

## Mistake 1 — P means "Polynomial Algorithms"

Not exactly.

P is a **class of decision problems**, not a collection of algorithms.

---

## Mistake 2 — P means only `O(n)`

False.

P includes:

```text id="m4z7x8"
O(n)
O(n²)
O(n³)
O(n^k)
```

for constant `k`.

---

## Mistake 3 — NP means Non-Polynomial

False.

```text id="q5w8r2"
NP = Nondeterministic Polynomial Time
```

---

## Mistake 4 — Every NP problem is outside P

Unknown.

We know:

```text id="v6c2m9"
P ⊆ NP
```

but we do not know whether:

```text id="k8x4z1"
P = NP
```

---

## Mistake 5 — P = Easy in every practical sense

Not necessarily.

An algorithm with:

```text id="d3r7m5"
O(n^100)
```

is theoretically polynomial but may be impractical.

---

# 9.29 Relationship Between Complexity Classes

The key relationships to remember are:

```text id="z2q8m4"
P ⊆ NP
```

and:

```text id="j6x1c9"
NP-Complete = NP ∩ NP-Hard
```

The relationship between P and NP is unknown:

```text id="f4m7w2"
P = NP ?
```

---

# 9.30 If P = NP

If it is proven that:

```text id="v8x3q5"
P = NP
```

then every NP problem would have a polynomial-time solution.

This would include all NP-Complete problems.

For example:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

would all have polynomial-time algorithms.

---

# 9.31 If P ≠ NP

If:

```text id="m9c4x7"
P ≠ NP
```

then some problems in NP cannot be solved in polynomial time by deterministic algorithms.

NP-Complete problems would remain especially important because a polynomial-time solution for any NP-Complete problem would imply:

```text id="q2w6z8"
P = NP
```

---

# 9.32 Quick Revision

```text id="x7m3c9"
P
↓
Polynomial Time
↓
Deterministic Algorithm
↓
O(n^k)
↓
Decision Problems
```

### Examples

```text id="f5q8r2"
Graph Connectivity
Shortest Path
Minimum Spanning Tree
Sorting
Searching
```

### Relationship

```text id="h4z9w1"
P ⊆ NP
```

### Open Problem

```text id="n6x2m7"
P = NP ?
```

**Unknown.**

---

# 9.33 PYQ Frequency

### 2022

> **Explain P, NP, NP-Hard and NP-Complete problems with examples.** `[7 Marks]`

### 2023

> **Briefly explain P and NP problems in the context of complexity theory. Give suitable example.** `[8 Marks]`

### 2025

> **Explain P, NP, NP-Hard and NP-Complex problems with example.** `[7 Marks]`

---

# 9.34 Priority

**🔥 PYQ Frequency: 3/4 years**

**🔥🔥 Priority: VERY HIGH**

This is a **must-prepare topic**.

Focus on:

1. Definition of P
2. Polynomial-time meaning
3. `O(n^k)`
4. Decision problems
5. Examples of P problems
6. P vs NP
7. `P ⊆ NP`
8. Why P is a subset of NP
9. Relationship with NP-Complete
10. What would happen if `P = NP`

---

# 9.35 One-Minute Revision

```text id="r8m2x5"
P = Polynomial Time

Definition:
Decision problems solvable by a
deterministic algorithm in polynomial time.

Form:
O(n^k)

Examples:
Graph Connectivity
Shortest Path
MST
Searching
Sorting

Relationship:
P ⊆ NP

Important:
P ≠ "Non-NP"
NP ≠ "Non-Polynomial"

Open Question:
P = NP ?
```

**PYQ Priority: 🔥🔥 VERY HIGH**
