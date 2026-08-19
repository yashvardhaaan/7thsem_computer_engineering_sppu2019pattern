# UNIT II — Analysis of Algorithms and Complexity Theory

# 13. Vertex Cover

> **🔥🔥🔥 EXTREMELY IMPORTANT**
>
> **PYQ Frequency: 2/4 Years**
>
> **Direct PYQs: 2022, 2025**
>
> **Marks: 8 marks in both direct PYQs**

---

# 13.1 What Is Vertex Cover?

A **vertex cover** of an undirected graph is a set of vertices such that **every edge in the graph has at least one endpoint in the selected set**.

For a graph:

```text id="6u9k2q"
G = (V, E)
```

a set:

```text id="4r8m1x"
C ⊆ V
```

is a vertex cover if for every edge:

```text id="7p3c5n"
(u, v) ∈ E
```

at least one of the following is true:

```text id="m2x7q8"
u ∈ C
```

or:

```text id="v5n9c3"
v ∈ C
```

---

# 13.2 Vertex Cover Decision Problem

The complexity-theory version is the **decision problem**:

> Given an undirected graph `G` and an integer `k`, does there exist a vertex cover containing at most `k` vertices?

The answer is:

```text id="c8q2m5"
YES
```

or:

```text id="r7x4n1"
NO
```

This is the version used to establish NP-Completeness.

---

# 13.3 Simple Example

Consider the graph:

```text id="p4m8x2"
A ----- B
|       |
|       |
C ----- D
```

Edges are:

```text id="z6q1r9"
(A,B)
(A,C)
(B,D)
(C,D)
```

Consider the set:

```text id="n3x7c5"
C = {A, D}
```

Check every edge:

```text id="q8m2v4"
(A,B) → A covers it
(A,C) → A covers it
(B,D) → D covers it
(C,D) → D covers it
```

Therefore:

```text id="w5r9x1"
{A,D}
```

is a vertex cover.

Its size is:

```text id="m7c3q8"
|C| = 2
```

So if:

```text id="v2x6n4"
k = 2
```

the answer is:

```text id="j8r1m5"
YES
```

---

# 13.4 What Does "Cover an Edge" Mean?

An edge:

```text id="a4m7x2"
(u, v)
```

is covered if:

```text id="p9c3q8"
u ∈ C
```

or:

```text id="x5r6n1"
v ∈ C
```

It is **not necessary to select both endpoints**.

For example:

```text id="k7m2v9"
A ----- B
```

If `A` is selected:

```text id="q3x8c5"
C = {A}
```

then the edge `(A,B)` is covered.

---

# 13.5 Vertex Cover vs Edge Cover

Do not confuse these two.

### Vertex Cover

Select vertices so that every edge is covered.

```text id="r8m4x2"
Vertices → Selected
Edges    → Covered
```

### Edge Cover

Select edges so that every vertex is incident to at least one selected edge.

```text id="n5c7q1"
Edges → Selected
Vertices → Covered
```

Your syllabus topic is:

```text id="x2m9v6"
Vertex Cover
```

---

# 13.6 Vertex Cover as an NP Problem

Vertex Cover belongs to NP because a proposed solution can be verified in polynomial time.

Suppose someone gives us:

```text id="q6r3x8"
C = {v₁, v₂, ..., v_k}
```

We need to check:

### Step 1

Is:

```text id="m4c9x2"
|C| ≤ k
```

?

### Step 2

For every edge:

```text id="v7n5q1"
(u,v)
```

check:

```text id="r2x8m6"
u ∈ C OR v ∈ C
```

If every edge passes the check:

```text id="c5q9x3"
YES
```

Otherwise:

```text id="n8m2v7"
NO
```

This verification takes polynomial time.

Therefore:

```text id="x4r6m1"
Vertex Cover ∈ NP
```

---

# 13.7 Verification Complexity

Suppose the graph has:

```text id="q7x3m9"
|V| = V
```

and:

```text id="c2r8n5"
|E| = E
```

We can check every edge.

Therefore the verification can be performed in approximately:

```text id="m6v1x4"
O(V + E)
```

or polynomial time depending on the data structure used.

The exact implementation is less important than the key conclusion:

```text id="z9q4c2"
Verification is polynomial
```

---

# 13.8 Why Vertex Cover Is NP-Complete

The decision version of Vertex Cover is NP-Complete.

To prove this, we need two things:

```text id="k5m8x3"
1. Vertex Cover ∈ NP
2. Vertex Cover is NP-Hard
```

---

# 13.9 Step 1 — Vertex Cover ∈ NP

Given a candidate set `C`:

```text id="r4x7n2"
|C| ≤ k
```

we check every edge.

For each edge `(u,v)`:

```text id="m8q3c5"
u ∈ C OR v ∈ C
```

If every edge is covered, accept.

This takes polynomial time.

Therefore:

```text id="v6x2r9"
Vertex Cover ∈ NP
```

---

# 13.10 Step 2 — Vertex Cover Is NP-Hard

To prove NP-Hardness, reduce a known NP-Complete problem to Vertex Cover.

A common approach is to use:

```text id="q9m4x7"
3-SAT
```

and construct a corresponding graph.

The reduction has the form:

```text id="c5r8n2"
3-SAT ≤p Vertex Cover
```

The transformation must be polynomial-time.

It must also preserve the answer:

```text id="x7m3q1"
3-SAT is satisfiable
        ⇔
The constructed graph has
a vertex cover of size ≤ k
```

Therefore:

```text id="n4v9c6"
Vertex Cover is NP-Hard
```

---

# 13.11 Final Conclusion

Since:

```text id="p8x2m5"
Vertex Cover ∈ NP
```

and:

```text id="r6c4q9"
Vertex Cover is NP-Hard
```

therefore:

```text id="w3m7x1"
Vertex Cover is NP-Complete
```

---

# 13.12 NP-Completeness Proof Structure

Remember:

```text id="x6r2m8"
              Vertex Cover
                    │
          ┌─────────┴─────────┐
          ↓                   ↓
      Vertex Cover ∈ NP   Vertex Cover is
                          NP-Hard
          │                   │
     Verify solution       3-SAT ≤p
      in polynomial       Vertex Cover
         time
          └─────────┬─────────┘
                    ↓
            Vertex Cover
             NP-Complete
```

---

# 13.13 2022 PYQ

> **"What is NP-complete class problem? How would you prove vertex cover problem is NP-complete class problem?"** `[8 Marks]`

This question has **two parts**:

### Part 1

Define NP-Complete.

### Part 2

Prove Vertex Cover is NP-Complete.

---

# 13.14 2022 PYQ — Answer Structure

## Definition

An NP-Complete problem is a decision problem that:

1. Belongs to NP.
2. Is NP-Hard.

Therefore:

```text id="r9x3m6"
NP-Complete = NP ∩ NP-Hard
```

## Vertex Cover

### Membership in NP

Given a set of at most `k` vertices, verify that every edge has at least one endpoint in the set.

This takes polynomial time.

Therefore:

```text id="c7m2x8"
Vertex Cover ∈ NP
```

### NP-Hardness

Reduce a known NP-Complete problem such as 3-SAT to Vertex Cover:

```text id="m4x8q1"
3-SAT ≤p Vertex Cover
```

The reduction must be polynomial and preserve the YES/NO answer.

Therefore Vertex Cover is NP-Hard.

Hence:

```text id="q5r9c3"
Vertex Cover is NP-Complete
```

---

# 13.15 2025 PYQ

> **"What is NP-complete class problems? How would you prove vertex cover problem is NP-complete problem."** `[8 Marks]`

The same proof structure should be used.

```text id="n7x2m5"
1. Define NP-Complete.
2. Show Vertex Cover ∈ NP.
3. Show Vertex Cover is NP-Hard.
4. Use polynomial reduction.
5. Conclude Vertex Cover is NP-Complete.
```

---

# 13.16 Important Graph Terminology

### Vertex

A vertex is a node in the graph.

Example:

```text id="v5r8x2"
A
```

---

### Edge

An edge connects two vertices.

```text id="q3m7c9"
A ----- B
```

The edge is:

```text id="x6n2p4"
(A,B)
```

---

### Graph

A graph is represented as:

```text id="m8r4q1"
G = (V,E)
```

where:

* `V` = set of vertices
* `E` = set of edges

---

# 13.17 Minimum Vertex Cover

The **minimum vertex cover** is a vertex cover with the smallest possible number of vertices.

For example, if:

```text id="r5x9m2"
C₁ = {A,B,C}
```

is a vertex cover and:

```text id="q7c3n8"
C₂ = {A,D}
```

is also a vertex cover, then:

```text id="v4m8x1"
|C₂| < |C₁|
```

so `C₂` is better.

The optimization problem asks:

> Find the smallest vertex cover.

---

# 13.18 Decision vs Optimization Version

### Optimization Version

> Find the minimum vertex cover.

### Decision Version

> Does a vertex cover of size at most `k` exist?

Complexity theory uses the decision version for NP-Completeness classification.

---

# 13.19 Example — Triangle Graph

Consider:

```text id="n6m3x8"
      A
     / \
    /   \
   B-----C
```

Edges:

```text id="q8r2v5"
(A,B)
(A,C)
(B,C)
```

A vertex cover is:

```text id="m4x9c1"
{A,B}
```

Check:

```text id="p7n3q6"
(A,B) → A/B
(A,C) → A
(B,C) → B
```

All edges are covered.

A single vertex cannot cover all three edges.

Therefore:

```text id="z2m8x4"
Minimum Vertex Cover Size = 2
```

---

# 13.20 Example — Star Graph

Consider:

```text id="a7m2x9"
      B
      |
C ---- A ---- D
      |
      E
```

Edges:

```text id="q4x8r3"
(A,B)
(A,C)
(A,D)
(A,E)
```

Selecting:

```text id="n6c2m7"
{A}
```

covers every edge.

Therefore:

```text id="v8r4x1"
Minimum Vertex Cover Size = 1
```

---

# 13.21 Example — Path Graph

Consider:

```text id="m5x8q2"
A ---- B ---- C ---- D
```

A possible vertex cover is:

```text id="r7c3n9"
{B,D}
```

Check:

```text id="x4m6q1"
(A,B) → B
(B,C) → B
(C,D) → D
```

Every edge is covered.

Another valid cover is:

```text id="p8x2m5"
{A,C}
```

Both have size 2.

---

# 13.22 Key Observation

A vertex cover does **not** need to include every vertex.

It only needs to satisfy:

```text id="q5m8x3"
Every edge has ≥ 1 selected endpoint
```

This is the central definition.

---

# 13.23 Vertex Cover and Independent Set

There is an important relationship between **Vertex Cover** and **Independent Set**.

A set `C` is a vertex cover if and only if:

```text id="x8r2m6"
V - C
```

is an independent set.

Therefore:

```text id="n4c7q1"
C is a vertex cover
⇔
V-C is an independent set
```

This relationship is useful in complexity theory.

---

# 13.24 Why Does This Relationship Work?

An independent set contains no edge between any two selected vertices.

Suppose:

```text id="m7x3r9"
I = V - C
```

If `I` contained an edge `(u,v)`, then neither `u` nor `v` would be in C.

Therefore that edge would not be covered by C.

Contradiction.

Hence:

```text id="c5q8m2"
C is a vertex cover
```

if and only if:

```text id="r9x4v6"
V-C is an independent set
```

---

# 13.25 Relationship with Independent Set

For a graph with `n` vertices:

```text id="q3m7x1"
Minimum Vertex Cover Size
+
Maximum Independent Set Size
=
n
```

Therefore:

```text id="v8c2r5"
τ(G) + α(G) = |V|
```

where:

* `τ(G)` = minimum vertex cover size
* `α(G)` = maximum independent set size

This is a useful theoretical relationship.

---

# 13.26 Vertex Cover vs Independent Set

| Vertex Cover                            | Independent Set                          |
| --------------------------------------- | ---------------------------------------- |
| Select vertices                         | Select vertices                          |
| Every edge has a selected endpoint      | No edge exists between selected vertices |
| Minimum version is optimization problem | Maximum version is optimization problem  |
| Decision version is NP-Complete         | Decision version is NP-Complete          |
| Complement of an independent set        | Complement of a vertex cover             |

---

# 13.27 Vertex Cover and Clique

There is also a relationship between Independent Set and Clique.

For a graph `G`:

```text id="m4x8c2"
Independent Set in G
```

corresponds to:

```text id="q7r3n5"
Clique in complement graph
```

Therefore Vertex Cover is connected to several important NP-Complete graph problems.

---

# 13.28 Why Vertex Cover Is Difficult

For a general graph, finding the minimum vertex cover efficiently is computationally difficult.

The decision version is NP-Complete.

This means:

```text id="x9m2c7"
Vertex Cover ∈ NP
```

and:

```text id="r5q8v3"
Vertex Cover is NP-Hard
```

Therefore:

```text id="n7m4x1"
Vertex Cover is NP-Complete
```

---

# 13.29 Brute-Force Approach

A simple brute-force approach is:

1. Generate possible subsets of vertices.
2. Check whether each subset is a vertex cover.
3. Find the smallest valid subset.

For `n` vertices, there can be:

```text id="q6x3m8"
2ⁿ
```

possible subsets.

Therefore, brute-force search can take exponential time.

This illustrates why the problem becomes difficult for large graphs.

---

# 13.30 Why NP-Completeness Does Not Mean Impossible

NP-Complete does **not** mean:

> "The problem cannot be solved."

It means:

> No polynomial-time algorithm is currently known for the general problem, and the problem is NP-Complete under the standard complexity assumptions.

We can still solve Vertex Cover using:

* Brute force
* Backtracking
* Branch and bound
* Integer programming
* Approximation algorithms
* Parameterized algorithms
* Special-case algorithms

---

# 13.31 Approximation Algorithm

Although minimum Vertex Cover is NP-Hard as an optimization problem, approximation algorithms can find a solution close to the optimum.

A classic simple approximation algorithm gives a **2-approximation**.

Basic idea:

1. Select an uncovered edge `(u,v)`.
2. Add both `u` and `v` to the cover.
3. Remove all edges incident to `u` or `v`.
4. Repeat.

The resulting cover has size at most twice the optimum.

This is useful in practical applications.

---

# 13.32 Example of 2-Approximation

Suppose:

```text id="w4x8m2"
A ----- B
|       |
|       |
C ----- D
```

Select edge:

```text id="q7m3r9"
(A,B)
```

Add:

```text id="x5c8n1"
A, B
```

Remove all edges incident to A or B.

If remaining edges exist, repeat.

The resulting set is a valid vertex cover and has size at most twice the minimum cover size.

---

# 13.33 Important Exam Distinction

The question:

> "Is Vertex Cover NP-Complete?"

should refer to the **decision version**.

The question:

> "Find the minimum vertex cover."

is an **optimization problem**.

For exams, write:

> **The decision version of Vertex Cover is NP-Complete.**

---

# 13.34 Common Mistakes

## Mistake 1 — Selecting edges instead of vertices

Vertex Cover selects:

```text id="p6m9x2"
VERTICES
```

not edges.

---

## Mistake 2 — Every edge needs both endpoints selected

False.

Only one endpoint needs to be selected.

```text id="r4c7m1"
A ----- B
```

Selecting A is sufficient to cover `(A,B)`.

---

## Mistake 3 — Showing only Vertex Cover ∈ NP

Not enough.

You must also show:

```text id="x8m3q5"
Vertex Cover is NP-Hard
```

---

## Mistake 4 — Wrong reduction direction

To prove Vertex Cover is NP-Hard:

```text id="n7c2r9"
Known NP-Complete A ≤p Vertex Cover
```

---

## Mistake 5 — Saying NP means non-polynomial

Incorrect.

```text id="q5x8m3"
NP = Nondeterministic Polynomial Time
```

---

# 13.35 2-Mark Answer

> A vertex cover of an undirected graph is a set of vertices such that every edge has at least one endpoint in the selected set. The decision version asks whether a vertex cover of size at most `k` exists.

---

# 13.36 5-Mark Answer

## Explain Vertex Cover

Given a graph:

```text id="x4m7q2"
G = (V,E)
```

a vertex cover is a subset:

```text id="c8r3n5"
C ⊆ V
```

such that every edge `(u,v)` satisfies:

```text id="m6x9q1"
u ∈ C OR v ∈ C
```

The decision problem asks whether a vertex cover of size at most `k` exists.

Vertex Cover belongs to NP because a proposed cover can be verified in polynomial time by checking every edge.

The decision version of Vertex Cover is NP-Complete.

---

# 13.37 8-Mark Answer

## What Is Vertex Cover? Prove It Is NP-Complete.

A vertex cover of an undirected graph `G=(V,E)` is a subset `C ⊆ V` such that every edge has at least one endpoint in C.

The decision problem is:

> Does the graph contain a vertex cover of size at most `k`?

### Step 1 — Vertex Cover ∈ NP

Given a candidate set `C`, verify:

```text id="j5r8x2"
|C| ≤ k
```

and for every edge `(u,v)`:

```text id="v3m7c9"
u ∈ C OR v ∈ C
```

This verification takes polynomial time.

Therefore:

```text id="q6x2m4"
Vertex Cover ∈ NP
```

### Step 2 — Vertex Cover is NP-Hard

Take a known NP-Complete problem such as 3-SAT and construct a polynomial-time reduction:

```text id="r9c4x7"
3-SAT ≤p Vertex Cover
```

such that:

```text id="m2x8q5"
3-SAT is satisfiable
⇔
constructed graph has a vertex cover
of size at most k
```

Therefore Vertex Cover is NP-Hard.

### Conclusion

Since:

```text id="x7m3c1"
Vertex Cover ∈ NP
```

and:

```text id="n5q8r2"
Vertex Cover is NP-Hard
```

therefore:

```text id="p4x9m6"
Vertex Cover is NP-Complete
```

---

# 13.38 Quick Revision

```text id="c7x2m9"
VERTEX COVER
      ↓
Select vertices
      ↓
Every edge has ≥ 1 selected endpoint
      ↓
Decision:
Is |C| ≤ k?
      ↓
Vertex Cover ∈ NP
      ↓
Known NP-C ≤p Vertex Cover
      ↓
Vertex Cover is NP-Hard
      ↓
Vertex Cover is NP-Complete
```

---

# 13.39 Key Formula

```text id="v5m8x2"
Vertex Cover:
∀(u,v) ∈ E,
u ∈ C OR v ∈ C
```

Decision form:

```text id="q3r7c9"
∃ C ⊆ V
such that
|C| ≤ k
and
∀(u,v) ∈ E,
u ∈ C OR v ∈ C
```

---

# 13.40 PYQ Priority

### 2022

> **"What is NP-complete class problem? How would you prove vertex cover problem is NP-complete class problem?"** `[8 Marks]`

### 2025

> **"What is NP-complete class problems? How would you prove vertex cover problem is NP-complete problem."** `[8 Marks]`

### Frequency

```text id="r8x3m5"
2/4 years
```

### Priority

**🔥🔥🔥 EXTREMELY IMPORTANT**

---

# 13.41 What You Must Prepare

For the exam, prepare these points thoroughly:

1. Definition of Vertex Cover.
2. Vertex Cover decision problem.
3. Example of Vertex Cover.
4. Difference between Vertex Cover and Edge Cover.
5. Why Vertex Cover belongs to NP.
6. Certificate and verification.
7. NP-Hardness proof idea.
8. Polynomial-time reduction.
9. Correct reduction direction.
10. Full NP-Completeness proof.
11. Vertex Cover and Independent Set relationship.
12. Minimum Vertex Cover.
13. Decision vs optimization version.
14. Brute-force approach.
15. Approximation concept.
16. 2022 PYQ.
17. 2025 PYQ.

---

# 13.42 Final One-Minute Revision

```text id="m4x8q2"
VERTEX COVER

Given:
G = (V,E), k

Question:
Is there a set C of ≤ k vertices
such that every edge has at least
one endpoint in C?

Verification:
Check every edge.

Therefore:
Vertex Cover ∈ NP

For NP-Hard:
Known NP-Complete problem
        ↓
Polynomial reduction
        ↓
Vertex Cover

Therefore:
Vertex Cover is NP-Hard

Final:
Vertex Cover ∈ NP
+
Vertex Cover is NP-Hard
=
Vertex Cover is NP-Complete
```

**🔥🔥🔥 EXAM PRIORITY: EXTREMELY HIGH**
