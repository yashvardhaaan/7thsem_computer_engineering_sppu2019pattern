# UNIT II — Analysis of Algorithms and Complexity Theory

# 10. NP-Class Problems

> **🔥🔥 VERY HIGH PRIORITY**
>
> **PYQ Frequency: 5/4 years across the provided papers because NP appears repeatedly in combined P/NP, NP-Hard and NP-Complete questions.**

---

# 10.1 What Is NP?

**NP** stands for:

> **Nondeterministic Polynomial Time**

NP is a class of **decision problems** for which a proposed solution can be **verified in polynomial time by a deterministic algorithm**.

In simple terms:

> If someone gives us a candidate solution, we can check whether it is correct efficiently.

---

# 10.2 Important: NP Does NOT Mean Non-Polynomial

This is one of the most important exam points.

Incorrect:

```text id="a8f3m2"
NP = Non-Polynomial
```

Correct:

```text id="q5x7n1"
NP = Nondeterministic Polynomial Time
```

The `N` stands for **Nondeterministic**, not Non-polynomial.

---

# 10.3 Formal Definition

A decision problem belongs to NP if a proposed solution, called a **certificate**, can be verified by a deterministic algorithm in polynomial time.

Conceptually:

```text id="v3m8q6"
Input
  ↓
Candidate Solution / Certificate
  ↓
Polynomial-Time Verification
  ↓
YES / NO
```

If the certificate can be verified efficiently, the problem can belong to NP.

---

# 10.4 What Is a Decision Problem?

Complexity classes such as P and NP are formally defined using **decision problems**.

A decision problem has only two possible answers:

```text id="h4q7x2"
YES
```

or:

```text id="m9c3v8"
NO
```

---

## Example

Instead of asking:

> Find a vertex cover of size `k`.

we ask:

> Does the graph contain a vertex cover of size at most `k`?

The answer is:

```text id="r7w2p5"
YES / NO
```

This is the decision version used in complexity theory.

---

# 10.5 What Is a Certificate?

A **certificate** is a proposed solution that can be checked efficiently.

For example, in Vertex Cover:

```text id="y6n4q8"
Certificate = proposed set of vertices
```

The verifier checks:

1. Is the number of selected vertices at most `k`?
2. Does every edge have at least one endpoint in the selected set?

If yes:

```text id="x2m8v5"
YES
```

Otherwise:

```text id="c9q4z1"
NO
```

---

# 10.6 P vs NP

This is one of the most important relationships in complexity theory.

## P

Problems that can be:

> **Solved in polynomial time**

by a deterministic algorithm.

## NP

Problems whose proposed solutions can be:

> **Verified in polynomial time**

by a deterministic algorithm.

Therefore:

```text id="k5x8r3"
P ⊆ NP
```

---

# 10.7 Why Is P a Subset of NP?

Suppose a problem can already be solved in polynomial time.

Then we can simply:

1. Solve the problem.
2. Obtain the answer.
3. Verify the answer.

Since solving itself takes polynomial time, verification also takes polynomial time.

Therefore every P problem is also in NP.

Hence:

```text id="p4m9c7"
P ⊆ NP
```

---

# 10.8 The P vs NP Question

The central question of complexity theory is:

```text id="w8q2x5"
P = NP ?
```

In words:

> If a solution can be verified quickly, can it also be found quickly?

This question remains **open**.

We currently know:

```text id="n3m7v1"
P ⊆ NP
```

but we do not know whether:

```text id="j6x4c9"
P = NP
```

or:

```text id="r2w8q5"
P ≠ NP
```

---

# 10.9 Examples of NP Problems

Important NP problems in your syllabus include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

These are especially important because they are also related to **NP-Completeness**.

---

# 10.10 Example — SAT

SAT stands for **Boolean Satisfiability Problem**.

Given a Boolean formula, the question is:

> Is there an assignment of truth values to the variables that makes the formula true?

Example:

```text id="v5x9m3"
(x₁ ∨ x₂) ∧ (¬x₁ ∨ x₃)
```

A certificate is:

```text id="z8q4r1"
x₁ = TRUE
x₂ = FALSE
x₃ = TRUE
```

The verifier substitutes the values into the formula.

If the formula evaluates to TRUE:

```text id="f7m2c6"
YES
```

Therefore, SAT belongs to NP.

SAT is also **NP-Complete**.

---

# 10.11 Example — 3-SAT

3-SAT is a restricted form of SAT where each clause contains exactly three literals.

Example:

```text id="b3q7x9"
(x₁ ∨ ¬x₂ ∨ x₃)
∧
(¬x₁ ∨ x₂ ∨ x₄)
```

A candidate assignment can be provided as a certificate.

The verifier checks every clause.

Since the formula can be evaluated in polynomial time:

```text id="n8m4v2"
3-SAT ∈ NP
```

In fact:

```text id="k5x1c7"
3-SAT is NP-Complete
```

---

# 10.12 Example — Vertex Cover

Given:

* Graph `G = (V, E)`
* Integer `k`

Question:

> Does there exist a set of at most `k` vertices such that every edge has at least one endpoint in the set?

A certificate is:

```text id="q9w3m6"
A set C ⊆ V
```

where:

```text id="m2x7c5"
|C| ≤ k
```

The verifier checks every edge.

For every edge `(u,v)`:

```text id="a6r8z2"
u ∈ C OR v ∈ C
```

If this holds for all edges, the certificate is valid.

Therefore:

```text id="t4n9y7"
Vertex Cover ∈ NP
```

and Vertex Cover is also NP-Complete.

---

# 10.13 Example — Hamiltonian Cycle

Given a graph:

> Does the graph contain a cycle that visits every vertex exactly once and returns to the starting vertex?

A certificate is a proposed sequence of vertices:

```text id="c8m5q1"
v₁ → v₂ → v₃ → ... → vₙ → v₁
```

The verifier checks:

1. Every vertex appears exactly once.
2. Consecutive vertices are connected by edges.
3. The final vertex connects to the first.

These checks can be performed in polynomial time.

Therefore:

```text id="p7x3m9"
Hamiltonian Cycle ∈ NP
```

and it is also NP-Complete.

---

# 10.14 NP Verification Process

The general process is:

```text id="h5r9x2"
          Input
            ↓
     Candidate Solution
            ↓
       Verification
            ↓
     ┌──────┴──────┐
     ↓             ↓
    YES            NO
```

The important condition is:

```text id="s4q8m1"
Verification Time = Polynomial
```

---

# 10.15 Finding vs Verifying

This distinction is extremely important.

For many NP problems:

### Finding a solution

May appear computationally difficult.

### Verifying a solution

Can be done in polynomial time.

For example, with Vertex Cover:

```text id="x6m2q8"
Finding:
Find a valid set of k vertices.
```

versus:

```text id="r7c4v1"
Verifying:
Given a set of k vertices,
check whether it covers every edge.
```

The second task can be performed efficiently.

---

# 10.16 Nondeterministic Interpretation

NP can also be understood using a nondeterministic computational model.

Conceptually:

```text id="y8q3m5"
Input
  ↓
Guess a candidate
  ↓
Verify candidate in polynomial time
  ↓
Accept if candidate is valid
```

The "guessing" is theoretical.

It does **not** mean the computer randomly guesses answers.

---

# 10.17 Nondeterministic Turing Machine

The formal model used to define NP is the **Nondeterministic Turing Machine**.

A deterministic machine has one possible transition for a given state and input.

A nondeterministic machine can have multiple possible transitions.

Conceptually:

```text id="m4x8q2"
                 ┌── Path A
                 │
Input → State ───┼── Path B
                 │
                 └── Path C
```

If one computation path accepts, the nondeterministic machine accepts.

---

# 10.18 NP and Polynomial Verification

Suppose a problem has:

```text id="n5x7c3"
Input size = n
```

and a certificate of size polynomial in `n`.

If a verifier can check the certificate in:

```text id="j2q9m6"
O(n^k)
```

for a constant `k`, then the problem satisfies the basic NP verification requirement.

---

# 10.19 NP-Complete vs NP

It is important to understand that:

> **Every NP-Complete problem is in NP.**

But:

> **Not every problem in NP is known to be NP-Complete.**

NP-Complete problems have an additional property:

> Every problem in NP can be polynomially reduced to them.

Therefore:

```text id="w7m3q9"
NP-Complete
=
NP
+
NP-Hard
```

or:

```text id="p4x8c2"
NP-Complete = NP ∩ NP-Hard
```

---

# 10.20 NP-Hard vs NP

### NP

The proposed solution can be verified in polynomial time.

### NP-Hard

At least as hard as every problem in NP under polynomial-time reductions.

An NP-Hard problem does not necessarily have to belong to NP.

Therefore:

```text id="z6r2m8"
NP-Hard ⊄ NP
```

in general.

---

# 10.21 NP-Complete Problems

A problem is NP-Complete if:

### Condition 1

It belongs to NP.

```text id="q8v4c1"
Problem ∈ NP
```

### Condition 2

It is NP-Hard.

```text id="m5x9r7"
Problem is NP-Hard
```

Therefore:

```text id="f2c7n4"
NP-Complete = NP ∩ NP-Hard
```

---

# 10.22 Important NP-Complete Problems in Your Syllabus

Your Unit II syllabus and PYQs emphasize:

### SAT

Boolean satisfiability problem.

### 3-SAT

SAT where each clause contains three literals.

### Vertex Cover

Find/decide whether a small set of vertices covers all edges.

### Hamiltonian Cycle

Determine whether a graph contains a cycle visiting every vertex exactly once.

All four are classic NP-Complete problems.

---

# 10.23 PYQ — 2022

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7 Marks]`

### What You Need to Write

#### P

Decision problems solvable in polynomial time by deterministic algorithms.

Example:

```text id="v3m8q6"
Graph Connectivity
```

---

#### NP

Decision problems whose proposed solutions can be verified in polynomial time.

Example:

```text id="k7x2r9"
Vertex Cover
```

---

#### NP-Hard

Problems at least as hard as every problem in NP.

Example:

```text id="c5q8m1"
TSP optimization problem
```

---

#### NP-Complete

Problems that are both NP and NP-Hard.

Examples:

```text id="r4x9z2"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

---

# 10.24 PYQ — 2023

> **"Briefly explain P and NP problems in the context of complexity theory. Give suitable example."** `[8 Marks]`

### P

A problem is in P if it can be solved in polynomial time.

### NP

A problem is in NP if a candidate solution can be verified in polynomial time.

### Example

For Vertex Cover:

```text id="m8c4q1"
Certificate = selected vertices
```

The verifier checks:

```text id="p6x9r3"
1. Number of vertices ≤ k
2. Every edge is covered
```

Both checks can be performed in polynomial time.

Therefore:

```text id="z5v7m2"
Vertex Cover ∈ NP
```

---

# 10.25 PYQ — 2024

### PYQ

> **"What is polynomial time reducibility? What is its importance in computational complexity theory?"** `[6 Marks]`

This question is directly connected to NP.

Polynomial reduction is used to establish NP-Hardness and NP-Completeness.

If:

```text id="h2q8x5"
A ≤p B
```

then problem A can be transformed into problem B in polynomial time.

If B has a polynomial-time solution, A can also be solved in polynomial time.

---

# 10.26 PYQ — 2024

### PYQ

> **"What do you understand by NP complete and NP hard problems? Give examples."** `[6 Marks]`

This directly tests the relationship:

```text id="y4m7c9"
NP-Complete = NP ∩ NP-Hard
```

Examples:

```text id="f8x2q6"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

---

# 10.27 PYQ — 2025

### PYQ

> **"Explain P, NP, NP-Hard and NP-Complex problems with example."** `[7 Marks]`

The term "NP-Complex" is generally intended to refer to **NP-Complete**.

Prepare the standard terminology:

```text id="r9c5x2"
P
NP
NP-Hard
NP-Complete
```

---

# 10.28 Why NP Problems Matter

NP problems are important because they represent problems where:

```text id="x3m8q7"
Checking a solution → efficient
```

while:

```text id="v5c2r9"
Finding a solution → may be difficult
```

This distinction is fundamental to:

* Complexity theory
* Optimization
* Scheduling
* Routing
* Graph problems
* Satisfiability
* Artificial intelligence
* Cryptography
* Operations research

---

# 10.29 Example — Scheduling

Suppose we need to assign jobs to machines under constraints.

The decision problem could be:

> Is there a schedule satisfying all constraints within a specified time limit?

A proposed schedule can be checked efficiently:

```text id="q7x4m2"
Check each job
Check each machine
Check each constraint
Check total time
```

If all checks can be performed in polynomial time, the problem can belong to NP.

---

# 10.30 Example — Traveling Salesman Problem

Decision version:

> Given cities, distances and a value `K`, is there a tour visiting every city exactly once with total cost at most `K`?

A proposed tour can be verified in polynomial time:

1. Check every city appears once.
2. Check the tour returns to the starting city.
3. Calculate total cost.
4. Compare the cost with `K`.

Therefore, the decision version belongs to NP.

The decision version of TSP is NP-Complete.

---

# 10.31 NP and Optimization Problems

Complexity classes P and NP are formally based on decision problems.

However, optimization problems are often related to their decision versions.

Example:

### Optimization

> Find the minimum vertex cover.

### Decision

> Does a vertex cover of size at most `k` exist?

The decision version is used to classify the problem in NP.

---

# 10.32 NP Verification Example

Consider a graph:

```text id="n4x7c2"
A —— B
|    |
|    |
C —— D
```

Suppose:

```text id="w8m3q5"
k = 2
```

Candidate vertex cover:

```text id="r6c9x1"
{A, D}
```

Check every edge:

```text id="q2v7m4"
A-B → A covers it
A-C → A covers it
B-D → D covers it
C-D → D covers it
```

All edges are covered.

Therefore:

```text id="j5x8r3"
YES
```

The candidate can be verified efficiently.

---

# 10.33 Certificate Size

For NP verification, the certificate must be of polynomial size relative to the input.

For example, in Vertex Cover:

```text id="p8c4m6"
Certificate = list of selected vertices
```

The certificate cannot be exponentially larger than the original input.

---

# 10.34 Common Mistakes

## Mistake 1 — NP means Non-Polynomial

Wrong.

Correct:

```text id="x4m7q9"
NP = Nondeterministic Polynomial Time
```

---

## Mistake 2 — NP means problems that cannot be solved quickly

Not exactly.

NP is formally about **polynomial-time verification**, not a proof of slow solvability.

---

## Mistake 3 — Every NP problem is NP-Complete

Wrong.

NP-Complete problems are a special subset of NP.

---

## Mistake 4 — Every NP-Hard problem is in NP

Wrong.

An NP-Hard problem may not be in NP.

---

## Mistake 5 — P and NP are known to be different

Unknown.

The correct statement is:

```text id="s6r2x8"
P ⊆ NP
```

and:

```text id="m9c4v1"
P = NP ?
```

remains unresolved.

---

## Mistake 6 — Nondeterministic means random

Wrong.

Nondeterminism is a theoretical computational model and is not the same as randomized computation.

---

# 10.35 Exam-Ready Answer

## What Are NP-Class Problems?

NP stands for **Nondeterministic Polynomial Time**. It is the class of decision problems for which a proposed solution can be verified in polynomial time by a deterministic algorithm.

A proposed solution is called a **certificate**.

For example, in the Vertex Cover problem, a certificate is a set of at most `k` vertices. The verifier checks whether every edge has at least one endpoint in the selected set. This verification can be performed in polynomial time.

Important NP problems include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

Some of these are also NP-Complete.

The relationship between P and NP is:

```text id="j3m7x5"
P ⊆ NP
```

However, whether:

```text id="c8q2r6"
P = NP
```

is still an open problem.

---

# 10.36 2-Mark Answer

> **NP is the class of decision problems for which a proposed solution can be verified in polynomial time by a deterministic algorithm. Examples include SAT, 3-SAT, Vertex Cover and Hamiltonian Cycle.**

---

# 10.37 5-Mark Answer

## Explain NP-Class Problems

NP stands for **Nondeterministic Polynomial Time**.

It contains decision problems for which a given candidate solution can be verified in polynomial time.

The candidate solution is called a certificate.

For example, in Vertex Cover, the certificate is a set of at most `k` vertices. A verifier checks whether every edge has at least one endpoint in the selected set. This can be done in polynomial time.

Examples of NP problems include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

Every P problem is also in NP:

```text id="n7x3c8"
P ⊆ NP
```

The question of whether:

```text id="r4m8q2"
P = NP
```

remains open.

---

# 10.38 7/8-Mark Answer

## Explain P, NP, NP-Hard and NP-Complete

### P

P is the class of decision problems solvable by deterministic algorithms in polynomial time.

Example:

```text id="x5q9m3"
Graph Connectivity
```

---

### NP

NP is the class of decision problems for which a proposed solution can be verified in polynomial time.

Example:

```text id="c7r2v8"
Vertex Cover
```

---

### NP-Hard

A problem is NP-Hard if every problem in NP can be polynomially reduced to it.

It does not necessarily have to belong to NP.

Example:

```text id="m4x8q1"
TSP optimization problem
```

---

### NP-Complete

A problem is NP-Complete if:

```text id="p9c3v6"
It belongs to NP
```

and:

```text id="w2r7m5"
It is NP-Hard
```

Examples:

```text id="f6x1q8"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

---

### Relationship

```text id="z8m4c2"
P ⊆ NP
```

and:

```text id="k5x7r1"
NP-Complete = NP ∩ NP-Hard
```

Whether:

```text id="q3v9m6"
P = NP
```

is unknown.

---

# 10.39 Quick Revision Diagram

```text id="m8x2q5"
                    NP-HARD
              ┌─────────────────┐
              │                 │
              │       NP        │
              │   ┌─────────┐   │
              │   │ P       │   │
              │   │         │   │
              │   │ NP-C    │   │
              │   └─────────┘   │
              │                 │
              └─────────────────┘
```

Remember:

```text id="r4c8m1"
P ⊆ NP
```

and:

```text id="j7x3q9"
NP-Complete = NP ∩ NP-Hard
```

---

# 10.40 One-Minute Revision

```text id="w5q8x2"
NP
↓
Nondeterministic Polynomial Time
↓
Decision Problems
↓
Certificate
↓
Polynomial-Time Verification
```

### Important Examples

```text id="c7m2r9"
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

### Important Relationships

```text id="x8q4v1"
P ⊆ NP
```

```text id="n5m7c3"
NP-Complete = NP ∩ NP-Hard
```

```text id="r2x9q6"
P = NP ?
→ Unknown
```

---

# 10.41 PYQ Priority

### 2022

* P, NP, NP-Hard, NP-Complete — `[7]`

### 2023

* P and NP — `[8]`

### 2024

* Polynomial-time reducibility — `[6]`
* NP-Complete and NP-Hard — `[6]`

### 2025

* P, NP, NP-Hard, NP-Complete — `[7]`

### Priority

**🔥🔥🔥 EXTREMELY IMPORTANT**

This is one of the most important topics in Unit II.

You should be able to answer:

1. Define NP.
2. Explain certificate and verification.
3. Differentiate P and NP.
4. Explain `P ⊆ NP`.
5. Explain NP-Hard.
6. Explain NP-Complete.
7. Give examples.
8. Explain the P vs NP question.
9. Explain the relationship between NP and NP-Complete.
10. Connect NP with SAT, 3-SAT, Vertex Cover and Hamiltonian Cycle.
