# UNIT II — Analysis of Algorithms and Complexity Theory

# 12. NP-Complete Problems

> **🔥🔥🔥 EXTREMELY IMPORTANT**
>
> **PYQ Frequency: Very High**
>
> **Directly tested in 2022, 2023, 2024 and 2025**

---

# 12.1 What Is an NP-Complete Problem?

An **NP-Complete problem** is a decision problem that satisfies **two conditions**:

1. It belongs to **NP**.
2. It is **NP-Hard**.

Therefore:

```text
NP-Complete = NP ∩ NP-Hard
```

In simple terms:

> An NP-Complete problem is a problem whose solution can be verified in polynomial time and which is at least as hard as every problem in NP.

---

# 12.2 Two Conditions for NP-Completeness

Suppose we want to prove that problem `B` is NP-Complete.

We must prove:

## Condition 1 — B belongs to NP

A proposed solution for B must be verifiable in polynomial time.

```text
B ∈ NP
```

---

## Condition 2 — B is NP-Hard

A known NP-Complete problem must be polynomially reducible to B.

```text
A ≤p B
```

where `A` is already known to be NP-Complete.

Therefore:

```text
B ∈ NP
+
A ≤p B
+
A is NP-Complete
↓
B is NP-Complete
```

---

# 12.3 What Does NP Mean?

NP stands for:

> **Nondeterministic Polynomial Time**

A problem belongs to NP if a proposed solution can be verified in polynomial time by a deterministic algorithm.

Examples:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

---

# 12.4 What Does NP-Hard Mean?

A problem is **NP-Hard** if every problem in NP can be polynomially reduced to it.

In simpler terms:

> An NP-Hard problem is at least as difficult as every problem in NP.

An NP-Hard problem does **not necessarily** have to belong to NP.

Therefore:

```text
NP-Hard ⊄ NP
```

in general.

---

# 12.5 NP vs NP-Hard vs NP-Complete

| Class           | Main Requirement                            |
| --------------- | ------------------------------------------- |
| **NP**          | Solution can be verified in polynomial time |
| **NP-Hard**     | At least as hard as every NP problem        |
| **NP-Complete** | Both NP and NP-Hard                         |

Therefore:

```text
NP-Complete = NP ∩ NP-Hard
```

---

# 12.6 Conceptual Diagram

```text
                    NP-HARD
              ┌─────────────────┐
              │                 │
              │       NP        │
              │   ┌─────────┐   │
              │   │         │   │
              │   │ NP-C    │   │
              │   │         │   │
              │   └─────────┘   │
              │                 │
              └─────────────────┘
```

The NP-Complete problems are the intersection between:

```text
NP
```

and:

```text
NP-Hard
```

---

# 12.7 Why Are NP-Complete Problems Important?

NP-Complete problems are important because they represent the **hardest problems within NP**.

If any NP-Complete problem can be solved in polynomial time, then:

```text
P = NP
```

For example, if we discover a polynomial-time algorithm for:

```text
SAT
```

then:

```text
P = NP
```

would follow.

---

# 12.8 The P vs NP Connection

We know:

```text
P ⊆ NP
```

But it is unknown whether:

```text
P = NP
```

or:

```text
P ≠ NP
```

If one NP-Complete problem is in P:

```text
NP-Complete problem ∈ P
```

then:

```text
P = NP
```

Therefore, NP-Complete problems are central to the P vs NP question.

---

# 12.9 Important NP-Complete Problems in Your Syllabus

The major NP-Complete problems appearing in your syllabus/PYQs are:

1. **SAT**
2. **3-SAT**
3. **Vertex Cover**
4. **Hamiltonian Cycle**

These should be prepared carefully.

---

# 12.10 SAT

SAT stands for:

> **Boolean Satisfiability Problem**

Given a Boolean formula, the problem asks:

> Is there an assignment of truth values to the variables that makes the formula TRUE?

---

# 12.11 Example of SAT

Consider:

```text
(x₁ ∨ x₂) ∧ (¬x₁ ∨ x₃)
```

We can choose:

```text
x₁ = TRUE
x₂ = FALSE
x₃ = TRUE
```

Then:

```text
(x₁ ∨ x₂)
= TRUE ∨ FALSE
= TRUE
```

and:

```text
(¬x₁ ∨ x₃)
= FALSE ∨ TRUE
= TRUE
```

Therefore the formula is satisfiable.

Answer:

```text
YES
```

---

# 12.12 Why SAT Is in NP

A proposed assignment is a certificate.

For example:

```text
x₁ = TRUE
x₂ = FALSE
x₃ = TRUE
```

The verifier substitutes the values into the formula.

If the formula evaluates to TRUE:

```text
YES
```

Otherwise:

```text
NO
```

The verification takes polynomial time.

Therefore:

```text
SAT ∈ NP
```

SAT is also NP-Complete.

---

# 12.13 3-SAT

3-SAT is a special form of SAT.

In 3-SAT, each clause contains exactly three literals.

Example:

```text
(x₁ ∨ ¬x₂ ∨ x₃)
∧
(¬x₁ ∨ x₂ ∨ x₄)
```

The problem is:

> Is there an assignment that makes the entire formula TRUE?

---

# 12.14 Why 3-SAT Is Important

3-SAT is one of the most important NP-Complete problems.

It is frequently used as the **starting problem for NP-Completeness reductions**.

For example:

```text
3-SAT
  ↓
Polynomial Reduction
  ↓
Target Problem
```

If the target problem is also in NP, it can be shown to be NP-Complete.

---

# 12.15 Vertex Cover

Given an undirected graph:

```text
G = (V, E)
```

and an integer `k`.

The decision problem asks:

> Does there exist a set of at most `k` vertices such that every edge has at least one endpoint in the set?

The set is called a **vertex cover**.

---

# 12.16 Example of Vertex Cover

Consider:

```text
A ----- B
|       |
|       |
C ----- D
```

Suppose:

```text
k = 2
```

Consider:

```text
{A, D}
```

Check every edge:

```text
A-B → A covers it
A-C → A covers it
B-D → D covers it
C-D → D covers it
```

Every edge is covered.

Therefore:

```text
YES
```

---

# 12.17 Why Vertex Cover Is in NP

Suppose someone gives us:

```text
C = {A, D}
```

We can verify:

1. `|C| ≤ k`
2. Every edge has at least one endpoint in C.

Both checks can be performed in polynomial time.

Therefore:

```text
Vertex Cover ∈ NP
```

Vertex Cover is also NP-Complete.

---

# 12.18 Hamiltonian Cycle

A Hamiltonian Cycle is a cycle in a graph that:

1. Visits every vertex exactly once.
2. Returns to the starting vertex.

The decision problem asks:

> Does the graph contain a Hamiltonian Cycle?

---

# 12.19 Example

Suppose:

```text
A —— B
|    |
|    |
D —— C
```

A possible Hamiltonian cycle is:

```text
A → B → C → D → A
```

Every vertex is visited exactly once and the cycle returns to A.

Therefore:

```text
YES
```

---

# 12.20 Why Hamiltonian Cycle Is in NP

A certificate is a proposed cycle:

```text
A → B → C → D → A
```

The verifier checks:

1. Every vertex occurs exactly once.
2. Consecutive vertices have edges.
3. The last vertex connects to the first.

These checks are polynomial.

Therefore:

```text
Hamiltonian Cycle ∈ NP
```

Hamiltonian Cycle is also NP-Complete.

---

# 12.21 How to Prove a Problem Is NP-Complete

This is extremely important for your exam.

Use the following two-step method.

---

## Step 1 — Show the Problem Is in NP

Take a candidate solution and show that it can be verified in polynomial time.

Write:

```text
B ∈ NP
```

---

## Step 2 — Show the Problem Is NP-Hard

Choose a known NP-Complete problem `A`.

Then prove:

```text
A ≤p B
```

The transformation must:

* Take polynomial time.
* Preserve the YES/NO answer.

Therefore:

```text
B is NP-Hard
```

---

## Final Conclusion

Since:

```text
B ∈ NP
```

and:

```text
B is NP-Hard
```

we conclude:

```text
B is NP-Complete
```

---

# 12.22 NP-Completeness Proof Diagram

```text
                 Target Problem B
                       │
              ┌────────┴────────┐
              ↓                 ↓
           B ∈ NP           B is NP-Hard
              │                 │
       Verify certificate   Known NP-C A
       in polynomial time        │
                                 ↓
                              A ≤p B
              └────────┬────────┘
                       ↓
                 B is NP-Complete
```

---

# 12.23 Very Important Reduction Direction

To prove:

```text
B is NP-Complete
```

reduce a **known NP-Complete problem TO B**:

```text
Known NP-Complete A
          ↓
          B
```

Write:

```text
A ≤p B
```

### Do NOT write:

```text
B ≤p A
```

That is the wrong direction for establishing that B is NP-Hard.

---

# 12.24 Why the Direction Matters

Suppose:

```text
A ≤p B
```

This means:

> If we can solve B efficiently, then we can solve A efficiently.

Therefore B must be at least as hard as A.

If A is already NP-Complete, B is therefore NP-Hard.

---

# 12.25 Example of NP-Completeness Proof

Suppose:

```text
A = 3-SAT
B = Vertex Cover
```

We know:

```text
3-SAT is NP-Complete
```

Now prove:

```text
3-SAT ≤p Vertex Cover
```

This establishes:

```text
Vertex Cover is NP-Hard
```

Then show:

```text
Vertex Cover ∈ NP
```

Therefore:

```text
Vertex Cover is NP-Complete
```

---

# 12.26 2022 PYQ — NP-Complete

> **"What is NP-complete class problem? How would you prove vertex cover problem is NP-complete class problem?"** `[8 Marks]`

This is a **direct and highly important PYQ**.

---

# 12.27 Answer — NP-Complete Definition

An NP-Complete problem is a decision problem satisfying two conditions:

1. It belongs to NP.
2. It is NP-Hard.

Therefore:

```text
NP-Complete = NP ∩ NP-Hard
```

Examples include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

---

# 12.28 2022 PYQ — Vertex Cover Proof

> **"How would you prove vertex cover problem is NP-complete class problem?"**

### Step 1 — Vertex Cover belongs to NP

Given a candidate vertex set `C`:

```text
|C| ≤ k
```

We verify every edge `(u,v)` and check:

```text
u ∈ C OR v ∈ C
```

for every edge.

This can be done in polynomial time.

Therefore:

```text
Vertex Cover ∈ NP
```

---

### Step 2 — Vertex Cover is NP-Hard

Choose a known NP-Complete problem, such as 3-SAT.

Show a polynomial-time reduction:

```text
3-SAT ≤p Vertex Cover
```

The reduction transforms every 3-SAT instance into a Vertex Cover instance such that:

```text
3-SAT is satisfiable
       ⇔
Corresponding graph has a vertex cover
of size at most k
```

The construction must be polynomial in size.

Therefore:

```text
Vertex Cover is NP-Hard
```

---

### Final Conclusion

Since:

```text
Vertex Cover ∈ NP
```

and:

```text
Vertex Cover is NP-Hard
```

we conclude:

```text
Vertex Cover is NP-Complete
```

---

# 12.29 2025 PYQ — Vertex Cover

> **"What is NP-complete class problems? How would you prove vertex cover problem is NP-complete problem."** `[8 Marks]`

The same proof structure applies:

```text
1. Vertex Cover ∈ NP
2. Reduce a known NP-Complete problem to Vertex Cover
3. Therefore Vertex Cover is NP-Hard
4. Therefore Vertex Cover is NP-Complete
```

---

# 12.30 2023 PYQ — 3-SAT

> **"What is SAT AND 3-SAT problem? Prove that 3-SAT problem is NP complete."** `[8 Marks]`

This question requires:

1. Definition of SAT.
2. Definition of 3-SAT.
3. Show 3-SAT ∈ NP.
4. Show 3-SAT is NP-Hard.
5. Conclude 3-SAT is NP-Complete.

---

# 12.31 SAT

SAT asks:

> Is there a truth assignment that satisfies a Boolean formula?

Example:

```text
(x₁ ∨ x₂) ∧ (¬x₁ ∨ x₃)
```

A satisfying assignment is:

```text
x₁ = TRUE
x₂ = FALSE
x₃ = TRUE
```

---

# 12.32 3-SAT

3-SAT restricts each clause to exactly three literals.

Example:

```text
(x₁ ∨ x₂ ∨ ¬x₃)
∧
(¬x₁ ∨ x₄ ∨ x₅)
```

The problem asks whether there is a truth assignment satisfying every clause.

---

# 12.33 Proving 3-SAT Is in NP

Given a truth assignment:

```text
x₁, x₂, ..., xₙ
```

we evaluate every clause.

Each clause can be checked efficiently.

If all clauses evaluate to TRUE:

```text
YES
```

Otherwise:

```text
NO
```

Therefore:

```text
3-SAT ∈ NP
```

---

# 12.34 Proving 3-SAT Is NP-Hard

A complete proof uses a known NP-Complete problem and constructs a polynomial-time reduction to 3-SAT.

The most fundamental result is the **Cook-Levin theorem**, which establishes that SAT is NP-Complete.

A standard route is:

```text
SAT ≤p 3-SAT
```

Since SAT is NP-Complete:

```text
SAT is NP-Complete
```

and:

```text
SAT ≤p 3-SAT
```

we conclude:

```text
3-SAT is NP-Hard
```

Since:

```text
3-SAT ∈ NP
```

therefore:

```text
3-SAT is NP-Complete
```

---

# 12.35 Important Note About 3-SAT Proofs

In a full theoretical proof, the transformation from SAT to 3-SAT replaces clauses containing fewer or more than three literals with equivalent collections of 3-literal clauses using additional variables.

For an exam answer, the key idea is:

```text
SAT ≤p 3-SAT
```

and the transformation is polynomial.

---

# 12.36 SAT vs 3-SAT

| SAT                                        | 3-SAT                              |
| ------------------------------------------ | ---------------------------------- |
| General Boolean formula                    | Each clause has exactly 3 literals |
| More general                               | Restricted version                 |
| NP-Complete                                | NP-Complete                        |
| Used as a foundational NP-Complete problem | Frequently used for reductions     |

---

# 12.37 2022 PYQ — SAT

> **"Explain 3-SAT problem using an example. Why is SAT so important in theoretical computer science?"** `[7 Marks]`

### Importance of SAT

SAT is important because:

1. It was the first problem proven to be NP-Complete.
2. Many other NP-Complete problems are proved by reductions from SAT.
3. It provides a foundation for complexity theory.
4. It is useful for proving computational hardness.
5. It appears in applications such as verification, planning and constraint solving.

---

# 12.38 Cook-Levin Theorem

The **Cook-Levin theorem** states:

> **SAT is NP-Complete.**

This was the first major NP-Completeness result.

It established that:

```text
SAT ∈ NP
```

and:

```text
Every problem in NP can be polynomially reduced to SAT
```

Therefore:

```text
SAT is NP-Complete
```

---

# 12.39 Why SAT Is So Important

SAT is historically and theoretically important because it provides a universal starting point for many NP-Completeness proofs.

The pattern is:

```text
Known NP-Complete Problem
          ↓
Polynomial Reduction
          ↓
New Problem
```

SAT is one of the most commonly used starting points.

---

# 12.40 NP-Complete and Optimization Problems

The formal definition of NP-Complete applies to decision problems.

For example:

### Vertex Cover Decision

> Does a vertex cover of size at most `k` exist?

This is NP-Complete.

### Vertex Cover Optimization

> Find the minimum vertex cover.

This is an optimization problem and is generally described separately from the formal NP-Complete decision classification.

---

# 12.41 Important Examples

## SAT

```text
Boolean satisfiability
```

## 3-SAT

```text
Satisfiability with three literals per clause
```

## Vertex Cover

```text
Cover all edges using at most k vertices
```

## Hamiltonian Cycle

```text
Visit every vertex exactly once and return to start
```

---

# 12.42 Common Properties of NP-Complete Problems

NP-Complete problems:

1. Are decision problems.
2. Belong to NP.
3. Are NP-Hard.
4. Have polynomial-time verification.
5. Can be used to prove other problems NP-Hard.
6. Are central to the P vs NP question.

---

# 12.43 What Happens If One NP-Complete Problem Is in P?

Suppose:

```text
SAT ∈ P
```

Since SAT is NP-Complete, every NP problem can be polynomially reduced to SAT.

Therefore every NP problem can also be solved in polynomial time.

Hence:

```text
P = NP
```

The same argument applies to any NP-Complete problem.

---

# 12.44 Important Theorem

> **If any NP-Complete problem can be solved in polynomial time, then every problem in NP can be solved in polynomial time.**

Therefore:

```text
One NP-Complete Problem ∈ P
             ↓
          P = NP
```

---

# 12.45 Common Mistakes

## Mistake 1 — NP-Complete means "hardest problems in all of computer science"

Not exactly.

They are the hardest problems **within NP**, under polynomial-time reductions.

---

## Mistake 2 — NP-Complete and NP-Hard are identical

Incorrect.

NP-Complete problems must be in NP.

NP-Hard problems do not necessarily have to be in NP.

---

## Mistake 3 — Only show B ∈ NP

That is insufficient.

You must also prove B is NP-Hard.

---

## Mistake 4 — Wrong reduction direction

To prove B is NP-Hard:

```text
Known NP-Complete A ≤p B
```

not:

```text
B ≤p A
```

---

## Mistake 5 — Forgetting polynomial time

The reduction must be computable in polynomial time.

---

## Mistake 6 — NP means non-polynomial

Wrong.

```text
NP = Nondeterministic Polynomial Time
```

---

# 12.46 Exam-Ready Definition

## What Is an NP-Complete Problem?

An NP-Complete problem is a decision problem that belongs to NP and is NP-Hard.

A problem is in NP if a proposed solution can be verified in polynomial time. It is NP-Hard if every problem in NP can be polynomially reduced to it.

Thus:

```text
NP-Complete = NP ∩ NP-Hard
```

Examples include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

If any NP-Complete problem is solved in polynomial time, then:

```text
P = NP
```

---

# 12.47 8-Mark Answer — Vertex Cover NP-Completeness

## Definition

A problem is NP-Complete if it is both in NP and NP-Hard.

### Step 1 — Vertex Cover ∈ NP

Given a set `C` of vertices:

```text
|C| ≤ k
```

verify every edge `(u,v)` and check:

```text
u ∈ C OR v ∈ C
```

for every edge.

This verification takes polynomial time.

Therefore:

```text
Vertex Cover ∈ NP
```

### Step 2 — Vertex Cover is NP-Hard

Take a known NP-Complete problem such as 3-SAT.

Construct a polynomial-time reduction:

```text
3-SAT ≤p Vertex Cover
```

such that:

```text
3-SAT formula is satisfiable
       ⇔
Constructed graph has a vertex cover
of size at most k
```

The construction takes polynomial time.

Therefore:

```text
Vertex Cover is NP-Hard
```

### Conclusion

Since:

```text
Vertex Cover ∈ NP
```

and:

```text
Vertex Cover is NP-Hard
```

therefore:

```text
Vertex Cover is NP-Complete
```

---

# 12.48 8-Mark Answer — 3-SAT NP-Completeness

## Definition

3-SAT is a Boolean satisfiability problem in which every clause contains exactly three literals.

Example:

```text
(x₁ ∨ x₂ ∨ ¬x₃)
∧
(¬x₁ ∨ x₄ ∨ x₅)
```

### Step 1 — 3-SAT ∈ NP

Given a truth assignment, we can evaluate every clause in polynomial time.

Therefore:

```text
3-SAT ∈ NP
```

### Step 2 — 3-SAT is NP-Hard

SAT is NP-Complete by the Cook-Levin theorem.

We can transform SAT into 3-SAT in polynomial time:

```text
SAT ≤p 3-SAT
```

Therefore:

```text
3-SAT is NP-Hard
```

### Conclusion

Since:

```text
3-SAT ∈ NP
```

and:

```text
3-SAT is NP-Hard
```

therefore:

```text
3-SAT is NP-Complete
```

---

# 12.49 Quick Revision Diagram

```text
                     NP
          ┌─────────────────────┐
          │                     │
          │   ┌─────────────┐   │
          │   │ NP-Complete │   │
          │   │             │   │
          │   │ SAT         │   │
          │   │ 3-SAT       │   │
          │   │ Vertex      │   │
          │   │ Cover       │   │
          │   │ Hamiltonian │   │
          │   └─────────────┘   │
          │                     │
          └─────────────────────┘
                    │
                    │
                 NP-Hard
```

More precisely:

```text
NP-Complete = NP ∩ NP-Hard
```

---

# 12.50 One-Minute Revision

```text
NP-COMPLETE
     ↓
Two conditions
     ↓
1. Problem ∈ NP
2. Problem is NP-Hard
     ↓
NP-Complete = NP ∩ NP-Hard
```

### To prove NP-Complete:

```text
Step 1:
B ∈ NP

Step 2:
Known NP-Complete A ≤p B

Step 3:
Therefore B is NP-Hard

Step 4:
B ∈ NP + NP-Hard
       ↓
B is NP-Complete
```

### Major Examples

```text
SAT
3-SAT
Vertex Cover
Hamiltonian Cycle
```

### Critical Relationship

```text
P ⊆ NP
```

### Open Problem

```text
P = NP ?
```

**Unknown.**

---

# 12.51 PYQ Priority

## 2022

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7]`

> **"What is NP-complete class problem? How would you prove vertex cover problem is NP-complete class problem?"** `[8]`

> **"Explain 3-SAT problem using an example. Why is SAT so important in theoretical computer science?"** `[7]`

---

## 2023

> **"What is SAT AND 3-SAT problem? Prove that 3-SAT problem is NP complete."** `[8]`

> **"Briefly explain P and NP problems in the context of complexity theory. Give suitable example."** `[8]`

---

## 2024

> **"What do you understand by NP complete and NP hard problems? Give examples."** `[6]`

---

## 2025

> **"Explain P, NP, NP-Hard and NP-Complex problems with example."** `[7]`

> **"What is NP-complete class problems? How would you prove vertex cover problem is NP-complete problem."** `[8]`

> **"Explain 3-SAT problem using an example."** `[7]`

---

# 12.52 Final Priority

**🔥🔥🔥 EXTREMELY IMPORTANT**

This is one of the **highest-priority topics in Unit II**.

You should be able to answer without hesitation:

1. Define NP-Complete.
2. Differentiate NP, NP-Hard and NP-Complete.
3. Explain `NP-Complete = NP ∩ NP-Hard`.
4. Explain the two conditions for NP-Completeness.
5. Prove Vertex Cover is NP-Complete.
6. Explain SAT.
7. Explain 3-SAT.
8. Prove 3-SAT is NP-Complete.
9. Explain Hamiltonian Cycle.
10. Explain polynomial-time reduction.
11. Remember the correct reduction direction.
12. Explain why one polynomial-time NP-Complete solution implies `P = NP`.

**Exam strategy:** This topic deserves **full preparation**, including the proof structures for **Vertex Cover and 3-SAT**, because both have appeared repeatedly in your PYQs.
