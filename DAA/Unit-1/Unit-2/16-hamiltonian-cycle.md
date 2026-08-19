# UNIT II — Analysis of Algorithms and Complexity Theory

# 16. Hamiltonian Cycle

> **PYQ: No direct PYQ found**
>
> **Syllabus Status: Explicitly included**
>
> **Priority: HIGH**
>
> Although no direct question appeared in the four uploaded papers, Hamiltonian Cycle is an important **NP-Complete problem** and can be asked as a theory or NP-Completeness question.

---

# 16.1 What Is a Hamiltonian Cycle?

A **Hamiltonian Cycle** is a cycle in a graph that:

1. Visits **every vertex exactly once**.
2. Returns to the starting vertex.

For a graph:

```text
G = (V, E)
```

a Hamiltonian Cycle is a sequence of vertices:

```text
v₁ → v₂ → v₃ → ... → vₙ → v₁
```

such that:

* Every vertex appears exactly once in the sequence, except the starting vertex which appears again at the end.
* Every consecutive pair of vertices has an edge between them.
* The final vertex is connected back to the first vertex.

---

# 16.2 Simple Example

Consider:

```text
      A
     / \
    /   \
   B-----C
    \   /
     \ /
      D
```

Suppose the graph contains the edges required for:

```text
A → B → C → D → A
```

This visits:

```text
A
B
C
D
```

exactly once and returns to `A`.

Therefore:

```text
A → B → C → D → A
```

is a Hamiltonian Cycle.

---

# 16.3 Hamiltonian Cycle vs Hamiltonian Path

These are different.

## Hamiltonian Path

A path that visits every vertex exactly once.

It does **not** have to return to the starting vertex.

```text
A → B → C → D
```

---

## Hamiltonian Cycle

A path that:

* Visits every vertex exactly once.
* Returns to the starting vertex.

```text
A → B → C → D → A
```

---

# 16.4 Comparison

| Hamiltonian Path                 | Hamiltonian Cycle                |
| -------------------------------- | -------------------------------- |
| Visits every vertex exactly once | Visits every vertex exactly once |
| Does not need to return to start | Must return to start             |
| Has two endpoints                | Forms a cycle                    |
| Can be represented as a path     | Forms a closed loop              |

---

# 16.5 Hamiltonian Cycle Decision Problem

The complexity-theory version asks:

> **Given a graph G, does G contain a Hamiltonian Cycle?**

The answer is:

```text
YES
```

or:

```text
NO
```

This is a **decision problem**.

The Hamiltonian Cycle decision problem is:

```text
NP-Complete
```

---

# 16.6 Why Is Hamiltonian Cycle in NP?

Suppose someone gives us a proposed Hamiltonian Cycle:

```text
v₁ → v₂ → v₃ → ... → vₙ → v₁
```

We can verify it efficiently.

We need to check:

### 1. Every vertex appears

Verify that all vertices of the graph occur in the proposed cycle.

### 2. No vertex is repeated

Except for the starting vertex appearing again at the end.

### 3. Consecutive vertices are connected

For every pair:

```text
(vᵢ, vᵢ₊₁)
```

check that the corresponding edge exists.

### 4. Last vertex connects to first

Check:

```text
(vₙ, v₁)
```

If all checks succeed:

```text
YES
```

Otherwise:

```text
NO
```

All these checks can be performed in polynomial time.

Therefore:

```text
Hamiltonian Cycle ∈ NP
```

---

# 16.7 Certificate for Hamiltonian Cycle

A certificate is simply a proposed ordering of the vertices.

For example:

```text
A → C → B → D → A
```

The verifier checks whether this ordering forms a valid Hamiltonian Cycle.

Therefore the certificate can be verified in polynomial time.

---

# 16.8 Verification Complexity

Suppose the graph has:

```text
n = |V|
```

vertices.

A proposed cycle contains `n` vertices.

We can:

1. Check that each vertex appears once.
2. Check each consecutive edge.
3. Check the closing edge.

These operations can be performed in polynomial time, such as:

```text
O(n²)
```

with a simple adjacency-matrix representation.

With appropriate data structures, edge checks can be more efficient.

For NP classification, the important fact is:

> **Verification is polynomial.**

---

# 16.9 Why Is Hamiltonian Cycle NP-Hard?

The standard proof uses a polynomial-time reduction from a known NP-Complete problem.

A common approach is to reduce:

```text
3-SAT
```

to:

```text
Hamiltonian Cycle
```

Conceptually:

```text
3-SAT instance
      ↓
Polynomial-time transformation
      ↓
Graph G
      ↓
Hamiltonian Cycle?
```

The construction is designed so that:

```text
3-SAT is satisfiable
        ⇔
G has a Hamiltonian Cycle
```

Therefore:

```text
Hamiltonian Cycle is NP-Hard
```

---

# 16.10 Final NP-Completeness Result

We have:

```text
Hamiltonian Cycle ∈ NP
```

and:

```text
Hamiltonian Cycle is NP-Hard
```

Therefore:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.11 NP-Completeness Proof Structure

```text
             Hamiltonian Cycle
                     │
          ┌──────────┴──────────┐
          ↓                     ↓
      HC ∈ NP              HC is NP-Hard
          │                     │
     Verify a proposed      3-SAT ≤p HC
        cycle
          │                     │
          └──────────┬──────────┘
                     ↓
             HC is NP-Complete
```

---

# 16.12 Important Reduction Direction

If you want to prove Hamiltonian Cycle is NP-Hard, reduce a known NP-Complete problem **to** Hamiltonian Cycle.

For example:

```text
3-SAT ≤p Hamiltonian Cycle
```

Think:

```text
Known Hard Problem
        ↓
Hamiltonian Cycle
```

Do **not** use the reverse direction as the basic NP-Hardness argument:

```text
Hamiltonian Cycle ≤p 3-SAT
```

---

# 16.13 Why the Direction Matters

Suppose:

```text
A ≤p B
```

This means:

> If B can be solved efficiently, then A can also be solved efficiently.

Therefore B is at least as hard as A.

If:

```text
A = known NP-Complete problem
```

then:

```text
A ≤p B
```

establishes:

```text
B is NP-Hard
```

---

# 16.14 Example

Suppose:

```text
A = 3-SAT
B = Hamiltonian Cycle
```

We know:

```text
3-SAT is NP-Complete
```

If we construct a polynomial-time reduction:

```text
3-SAT ≤p Hamiltonian Cycle
```

then:

```text
Hamiltonian Cycle is NP-Hard
```

Since Hamiltonian Cycle is also in NP:

```text
Hamiltonian Cycle ∈ NP
```

we conclude:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.15 Hamiltonian Cycle vs TSP

Hamiltonian Cycle and the Travelling Salesman Problem are closely related but not identical.

## Hamiltonian Cycle

Question:

> Does a graph contain a Hamiltonian Cycle?

Answer:

```text
YES / NO
```

---

## TSP

Question:

> What is the minimum-cost tour that visits every city exactly once and returns to the start?

TSP is an optimization problem.

Its decision version asks:

> Is there a tour with cost at most `K`?

---

# 16.16 Comparison

| Hamiltonian Cycle                       | TSP                               |
| --------------------------------------- | --------------------------------- |
| Graph problem                           | Weighted graph / distance problem |
| Asks whether a Hamiltonian Cycle exists | Finds minimum-cost tour           |
| Decision problem                        | Optimization version              |
| NP-Complete                             | Optimization version is NP-Hard   |
| Decision version is NP-Complete         | Decision version is NP-Complete   |

---

# 16.17 Hamiltonian Cycle vs Euler Cycle

This is an important distinction.

## Hamiltonian Cycle

Visits:

> **Every vertex exactly once**

---

## Euler Cycle

Visits:

> **Every edge exactly once**

---

# 16.18 Comparison

| Hamiltonian Cycle                    | Euler Cycle                    |
| ------------------------------------ | ------------------------------ |
| Focuses on vertices                  | Focuses on edges               |
| Every vertex exactly once            | Every edge exactly once        |
| Computationally difficult in general | Can be solved efficiently      |
| Decision version is NP-Complete      | Has polynomial-time algorithms |

### Memory Trick

> **Hamiltonian → Houses/Vertices**

> **Euler → Edges**

---

# 16.19 Example — Hamiltonian Cycle

Consider:

```text
A ----- B
|       |
|       |
D ----- C
```

A Hamiltonian Cycle is:

```text
A → B → C → D → A
```

Every vertex occurs exactly once before returning to A.

---

# 16.20 Example — Hamiltonian Path

Using the same graph:

```text
A → B → C → D
```

is a Hamiltonian Path.

It visits every vertex once but does not return to A.

---

# 16.21 Example Where No Hamiltonian Cycle Exists

Consider a star graph:

```text
      B
      |
C ---- A ---- D
      |
      E
```

The center `A` is connected to all outer vertices.

A Hamiltonian Cycle would need to enter and leave each outer vertex.

However, each outer vertex has degree 1.

Once the cycle reaches an outer vertex, there is no second edge to continue through it.

Therefore this graph does not have a Hamiltonian Cycle.

Answer:

```text
NO
```

---

# 16.22 Necessary Condition — Vertex Degree

A graph containing a Hamiltonian Cycle must have every vertex with degree at least:

```text
2
```

Why?

A vertex in the cycle needs:

* One edge to enter.
* One edge to leave.

Therefore:

```text
degree(v) ≥ 2
```

is necessary.

However, it is **not sufficient**.

A graph can have every vertex of degree at least 2 and still have no Hamiltonian Cycle.

---

# 16.23 Necessary vs Sufficient Conditions

Important:

```text
Minimum degree ≥ 2
```

is a necessary condition for a Hamiltonian Cycle.

But:

```text
Minimum degree ≥ 2
```

does **not guarantee** a Hamiltonian Cycle.

Therefore:

```text
degree(v) ≥ 2
```

is not a complete test.

---

# 16.24 Dirac's Theorem

A useful sufficient condition is **Dirac's theorem**.

For a simple graph with `n ≥ 3` vertices:

If every vertex has degree at least:

```text
n/2
```

then the graph contains a Hamiltonian Cycle.

Formally:

```text
δ(G) ≥ n/2
```

implies:

```text
G is Hamiltonian
```

This is a sufficient condition, not a necessary one.

---

# 16.25 Ore's Theorem

Another sufficient condition is **Ore's theorem**.

For a simple graph with `n ≥ 3` vertices, if for every pair of non-adjacent vertices `u` and `v`:

```text
degree(u) + degree(v) ≥ n
```

then the graph contains a Hamiltonian Cycle.

These theorems can help identify Hamiltonian graphs without exhaustive search.

---

# 16.26 Important Note

You generally do **not** need to prove Dirac's or Ore's theorem unless specifically included in your syllabus or asked by your teacher.

For your current PYQ alignment, focus mainly on:

* Definition.
* Example.
* Hamiltonian Path vs Cycle.
* NP membership.
* NP-Hardness.
* NP-Completeness.
* Reduction concept.

---

# 16.27 Brute-Force Approach

For a graph with `n` vertices, one simple approach is to try different orderings of vertices.

There can be approximately:

```text
(n - 1)!
```

possible cycles when fixing the starting vertex.

Therefore brute-force search is factorial/exponential in nature.

For large graphs, this becomes impractical.

---

# 16.28 Brute-Force Algorithm

A simple approach:

```text
1. Choose a starting vertex.
2. Generate permutations of the remaining vertices.
3. For each permutation:
       Check every consecutive edge.
       Check the closing edge.
4. If a valid cycle exists:
       Return YES.
5. Otherwise:
       Return NO.
```

Worst-case complexity is approximately:

```text
O((n-1)! · n)
```

depending on implementation.

---

# 16.29 Why Hamiltonian Cycle Is Difficult

The number of possible vertex orderings grows extremely quickly.

For example:

```text
5 vertices → 4! = 24
10 vertices → 9! = 362,880
15 vertices → 14! = 87,178,291,200
```

Therefore brute-force enumeration becomes infeasible for larger graphs.

---

# 16.30 Hamiltonian Cycle and Dynamic Programming

A more efficient exact approach is the **Held-Karp dynamic programming algorithm**.

It solves the related TSP/Hamiltonian-cycle search in roughly:

```text
O(2ⁿ n²)
```

time, depending on formulation.

This is still exponential, but much better than factorial brute force.

For an exam focused on complexity theory, the important conclusion is:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.31 Backtracking

Backtracking can also be used.

Basic idea:

```text
Choose a vertex
      ↓
Extend current path
      ↓
Check whether choice is valid
      ↓
If invalid → Backtrack
      ↓
Continue
```

Backtracking can be much faster than blindly checking every permutation on some inputs, but its worst-case complexity remains exponential.

---

# 16.32 Practical Methods

For large graph problems, practical approaches can include:

* Backtracking
* Branch and bound
* Dynamic programming for related formulations
* Integer programming
* Constraint programming
* Heuristics
* Special graph classes

NP-Completeness describes worst-case complexity, not the performance on every individual graph.

---

# 16.33 Hamiltonian Cycle Is Not the Same as Euler Cycle

Remember this for exams:

```text
Hamiltonian → Vertices
Euler       → Edges
```

### Hamiltonian Cycle

```text
Every vertex exactly once
```

### Euler Cycle

```text
Every edge exactly once
```

---

# 16.34 Hamiltonian Cycle Is Not the Same as TSP

Remember:

```text
Hamiltonian Cycle:
Does such a cycle exist?

TSP:
What is the minimum-cost cycle?
```

The two problems are closely connected, and both have NP-Complete decision formulations.

---

# 16.35 Hamiltonian Cycle and NP

Why is it in NP?

Because:

```text
Given a proposed cycle
        ↓
Check all vertices
        ↓
Check no repetitions
        ↓
Check all required edges
        ↓
Polynomial verification
```

Therefore:

```text
Hamiltonian Cycle ∈ NP
```

---

# 16.36 Hamiltonian Cycle and NP-Hardness

Why is it NP-Hard?

Because a known NP-Complete problem such as 3-SAT can be transformed into a Hamiltonian Cycle instance in polynomial time.

Conceptually:

```text
3-SAT
  ↓
Polynomial Reduction
  ↓
Hamiltonian Cycle
```

Therefore:

```text
Hamiltonian Cycle is NP-Hard
```

---

# 16.37 Final Classification

```text
Hamiltonian Cycle ∈ NP
```

and:

```text
Hamiltonian Cycle is NP-Hard
```

Therefore:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.38 Exam-Ready Definition

> **A Hamiltonian Cycle is a cycle in a graph that visits every vertex exactly once and returns to the starting vertex. The decision problem asks whether a given graph contains a Hamiltonian Cycle. The Hamiltonian Cycle decision problem is NP-Complete.**

---

# 16.39 2-Mark Answer

> A Hamiltonian Cycle is a cycle that visits every vertex of a graph exactly once and returns to the starting vertex. The decision problem of determining whether such a cycle exists is NP-Complete.

---

# 16.40 5-Mark Answer

## Explain Hamiltonian Cycle

A Hamiltonian Cycle is a cycle in an undirected graph that visits every vertex exactly once and returns to the starting vertex.

For example:

```text
A → B → C → D → A
```

is a Hamiltonian Cycle if all the corresponding edges exist.

The decision problem asks whether a graph contains a Hamiltonian Cycle.

It belongs to NP because a proposed cycle can be verified in polynomial time by checking:

1. Every vertex appears exactly once.
2. Every consecutive pair has an edge.
3. The last vertex connects to the first.

The decision problem is NP-Complete.

---

# 16.41 7/8-Mark Answer

## Explain Hamiltonian Cycle and Its NP-Completeness

A Hamiltonian Cycle is a cycle that visits every vertex of a graph exactly once and returns to the starting vertex.

For example:

```text
A → B → C → D → A
```

is a Hamiltonian Cycle if all required edges exist.

### Step 1 — Hamiltonian Cycle ∈ NP

Given a proposed cycle, verify:

* Every vertex appears exactly once.
* Consecutive vertices are connected by edges.
* The final vertex connects to the first.
* All vertices are included.

These checks can be performed in polynomial time.

Therefore:

```text
Hamiltonian Cycle ∈ NP
```

### Step 2 — Hamiltonian Cycle Is NP-Hard

Reduce a known NP-Complete problem such as 3-SAT to Hamiltonian Cycle:

```text
3-SAT ≤p Hamiltonian Cycle
```

The transformation is polynomial and preserves the answer:

```text
3-SAT is satisfiable
        ⇔
Constructed graph has a Hamiltonian Cycle
```

Therefore:

```text
Hamiltonian Cycle is NP-Hard
```

### Conclusion

Since:

```text
Hamiltonian Cycle ∈ NP
```

and:

```text
Hamiltonian Cycle is NP-Hard
```

therefore:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.42 Hamiltonian Cycle vs Hamiltonian Path

```text
Hamiltonian Path:
A → B → C → D

Hamiltonian Cycle:
A → B → C → D → A
```

### Memory Trick

> **Cycle = Close the path.**

---

# 16.43 Hamiltonian vs Euler

```text
Hamiltonian
     ↓
Vertices

Euler
     ↓
Edges
```

### Hamiltonian Cycle

```text
Visit every vertex once
```

### Euler Cycle

```text
Visit every edge once
```

---

# 16.44 Common Mistakes

## Mistake 1 — Hamiltonian means every edge once

Wrong.

Hamiltonian concerns **vertices**.

---

## Mistake 2 — Hamiltonian Path must return to the start

Wrong.

Only a Hamiltonian **Cycle** must return to the start.

---

## Mistake 3 — Every graph has a Hamiltonian Cycle

False.

Some graphs have none.

---

## Mistake 4 — Degree ≥ 2 guarantees Hamiltonian Cycle

False.

It is necessary but not sufficient.

---

## Mistake 5 — Hamiltonian Cycle is NP-Hard but not in NP

Wrong.

The decision problem is:

```text
Hamiltonian Cycle ∈ NP
```

and:

```text
Hamiltonian Cycle is NP-Hard
```

Therefore:

```text
Hamiltonian Cycle is NP-Complete
```

---

# 16.45 Important Properties

For a Hamiltonian Cycle:

### Every vertex

```text
degree ≥ 2
```

is necessary.

### Every vertex appears

```text
exactly once
```

before returning to the start.

### Number of cycle edges

For a graph with `n` vertices, a Hamiltonian Cycle contains:

```text
n
```

edges.

---

# 16.46 Example With Five Vertices

Consider a cycle:

```text
A → B → C → D → E → A
```

Vertices:

```text
A, B, C, D, E
```

Each vertex appears once.

Edges:

```text
(A,B)
(B,C)
(C,D)
(D,E)
(E,A)
```

There are five edges.

Therefore this is a Hamiltonian Cycle.

---

# 16.47 Quick Revision

```text
HAMILTONIAN CYCLE

Given:
Graph G = (V,E)

Question:
Does G contain a cycle that
visits every vertex exactly once?

Example:
A → B → C → D → A

Verification:
Polynomial

Therefore:
HC ∈ NP

Hardness:
3-SAT ≤p HC

Therefore:
HC is NP-Hard

Final:
HC is NP-Complete
```

---

# 16.48 No Direct PYQ

Based on the four uploaded papers:

```text
2022 → No direct Hamiltonian Cycle PYQ
2023 → No direct Hamiltonian Cycle PYQ
2024 → No direct Hamiltonian Cycle PYQ
2025 → No direct Hamiltonian Cycle PYQ
```

Therefore:

> **No direct PYQ found.**

However, this does **not** mean the topic can be ignored.

It is explicitly present in the syllabus under NP-Hard/NP-Complete graph problems and is a standard NP-Complete problem.

---

# 16.49 What You Should Prepare

For this topic, prepare:

1. Definition of Hamiltonian Cycle.
2. Hamiltonian Cycle decision problem.
3. Example.
4. Hamiltonian Path vs Hamiltonian Cycle.
5. Hamiltonian Cycle vs Euler Cycle.
6. Hamiltonian Cycle vs TSP.
7. Certificate.
8. Why Hamiltonian Cycle belongs to NP.
9. Why it is NP-Hard.
10. Polynomial-time reduction.
11. Correct reduction direction.
12. Why it is NP-Complete.
13. Basic brute-force approach.
14. Necessary degree condition.
15. Dirac's theorem — basic idea.
16. Ore's theorem — basic idea.

---

# 16.50 One-Minute Revision

```text
Hamiltonian Cycle
        ↓
Visit EVERY VERTEX
exactly once
        ↓
Return to starting vertex
        ↓
Decision:
Does such a cycle exist?
        ↓
Certificate:
Proposed vertex ordering
        ↓
Polynomial verification
        ↓
HC ∈ NP
        ↓
3-SAT ≤p HC
        ↓
HC is NP-Hard
        ↓
HC is NP-Complete
```

### Remember:

```text
Hamiltonian → VERTICES
Euler       → EDGES
```

### Reduction:

```text
Known NP-Complete
       ↓
Hamiltonian Cycle
```

**PYQ STATUS: NO DIRECT PYQ**

**SYLLABUS STATUS: INCLUDED**

**EXAM PRIORITY: HIGH**
