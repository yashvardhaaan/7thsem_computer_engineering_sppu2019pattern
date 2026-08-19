# UNIT II — Analysis of Algorithms and Complexity Theory

# 8. Deterministic and Non-Deterministic Algorithms

> **PYQ Status: No direct standalone PYQ**
>
> **Importance: HIGH — foundation for P, NP and complexity theory**

---

# 8.1 Introduction

Algorithms can be classified according to how they make decisions and process input.

Two important categories are:

1. **Deterministic Algorithms**
2. **Non-Deterministic Algorithms**

This distinction is particularly important in computational complexity theory because it forms the foundation for understanding:

* P
* NP
* NP-Complete
* NP-Hard
* Polynomial-time computation

---

# 8.2 Deterministic Algorithm

## Definition

A **deterministic algorithm** is an algorithm in which every step is uniquely determined by the current state and input.

For the same input, the algorithm always:

* Follows the same sequence of operations
* Produces the same output
* Takes the same logical path

In simple terms:

> Given the same input and initial state, a deterministic algorithm always behaves in a predictable way.

---

# 8.3 Example of a Deterministic Algorithm

Consider finding the maximum element in an array:

```text id="0k1j2d"
FindMax(A, n)

max = A[0]

for i = 1 to n-1
    if A[i] > max
        max = A[i]

return max
```

For the input:

```text id="g5v7a9"
A = [5, 2, 9, 1, 7]
```

the algorithm follows a fixed sequence of comparisons.

The result is always:

```text id="9a1q4f"
9
```

Therefore, it is deterministic.

---

# 8.4 Characteristics of Deterministic Algorithms

A deterministic algorithm has:

1. A clearly defined sequence of operations.
2. A unique next step for every state.
3. Predictable execution.
4. The same output for the same input.
5. No need for hypothetical or guessed computation paths.

Examples include:

* Linear search
* Binary search
* Selection sort
* Merge sort
* Dijkstra's algorithm
* Breadth-first search
* Depth-first search

---

# 8.5 Deterministic Computation

A deterministic algorithm can be represented conceptually as:

```text id="z8y8g4"
Input
  ↓
Step 1
  ↓
Step 2
  ↓
Step 3
  ↓
Output
```

There is one logical computation path for a given input.

---

# 8.6 Non-Deterministic Algorithm

## Definition

A **non-deterministic algorithm** is a theoretical computational model in which, at certain points, multiple possible choices may be considered.

It is not simply an algorithm that behaves randomly.

This distinction is very important.

In complexity theory, nondeterminism is usually understood as the ability to:

> **Guess a possible solution and then verify whether that solution is correct in polynomial time.**

---

# 8.7 Important: Non-Deterministic ≠ Randomized

These concepts are different.

### Randomized Algorithm

Uses randomness during actual execution.

Example:

```text id="2k7g3d"
Choose a random pivot in Quick Sort.
```

Different executions may take different paths.

### Non-Deterministic Algorithm

Is a theoretical model used in complexity theory.

It can conceptually choose a correct computation path if one exists.

Therefore:

```text id="n0x7v3"
Non-deterministic ≠ Randomized
```

This is an important exam point.

---

# 8.8 Conceptual Model of Nondeterminism

Suppose a problem has many possible candidate solutions.

A nondeterministic algorithm can be thought of as:

```text id="8f3s6k"
Input
  ↓
Guess a candidate solution
  ↓
Verify candidate
  ↓
YES / NO
```

The key idea is that the candidate solution can be selected conceptually without requiring the algorithm to systematically try every possibility.

---

# 8.9 Example — Vertex Cover

Suppose we are given:

* A graph `G`
* An integer `k`

The decision problem is:

> Does the graph contain a vertex cover of size at most `k`?

A nondeterministic approach can be described as:

```text id="4c7f1n"
1. Guess a set of at most k vertices.
2. Check whether every edge has at least one endpoint
   in the selected set.
3. If yes → accept.
4. Otherwise → reject.
```

The verification step can be performed in polynomial time.

This is one reason Vertex Cover is important in NP theory.

---

# 8.10 Deterministic vs Non-Deterministic

| Feature       | Deterministic                 | Non-Deterministic                       |
| ------------- | ----------------------------- | --------------------------------------- |
| Nature        | Practical computational model | Theoretical computational model         |
| Next step     | Uniquely determined           | May have multiple possible choices      |
| Same input    | Predictable execution         | Conceptually multiple computation paths |
| Guessing      | No                            | Yes, conceptually                       |
| Verification  | Normal execution              | Candidate can be verified               |
| Used in       | Ordinary algorithms           | Complexity theory                       |
| Related class | P                             | NP                                      |

---

# 8.11 Deterministic Polynomial Time

Class **P** is formally associated with problems that can be solved by a deterministic algorithm in polynomial time.

In simplified form:

```text id="d8y5m4"
P =
Decision problems solvable
in deterministic polynomial time
```

Examples include many problems involving:

* Sorting
* Searching
* Shortest paths
* Minimum spanning trees
* Graph traversal

---

# 8.12 Nondeterministic Polynomial Time

Class **NP** is associated with decision problems for which a proposed solution can be verified in polynomial time by a deterministic algorithm.

The name comes from:

> **Nondeterministic Polynomial time**

Therefore:

```text id="d1o4s8"
NP ≠ Non-Polynomial
```

This is one of the most important facts in the entire topic.

---

# 8.13 P ⊆ NP

Every problem that can be solved in polynomial time can also have its solution verified in polynomial time.

Therefore:

```text id="0b6u5w"
P ⊆ NP
```

The major unresolved question is:

```text id="7z4n1c"
P = NP ?
```

We currently do not know whether the two classes are equal.

---

# 8.14 Why Does Nondeterminism Matter?

Nondeterminism provides a theoretical way to understand problems where:

* Finding a solution may appear difficult.
* But checking a proposed solution is relatively easy.

For example, consider a Sudoku-like decision problem.

Finding a solution may require substantial search.

But if someone gives you a completed grid, checking whether it satisfies all constraints can be done efficiently.

This distinction between:

```text id="z6j9h3"
finding
```

and:

```text id="1c5t7v"
verifying
```

is central to NP.

---

# 8.15 Example — SAT

Consider a Boolean formula:

```text id="7k4z3q"
(x₁ ∨ x₂) ∧ (¬x₁ ∨ x₃)
```

The question is:

> Is there an assignment of Boolean values that makes the formula true?

A nondeterministic approach can be viewed as:

```text id="2r7k8s"
1. Guess values for x₁, x₂, x₃.
2. Substitute the values into the formula.
3. Verify whether the formula evaluates to TRUE.
```

The verification step is polynomial in the size of the formula.

SAT is therefore a classic NP problem and, more specifically, an **NP-Complete** problem.

---

# 8.16 Deterministic Solution vs Nondeterministic Verification

Consider a problem with possible candidate solutions:

```text id="3x9q6k"
S₁
S₂
S₃
...
Sₘ
```

A deterministic brute-force algorithm might check:

```text id="f2g7h4"
S₁ → verify
S₂ → verify
S₃ → verify
...
```

This may require a large amount of time.

Conceptually, a nondeterministic algorithm can:

```text id="z5r8w1"
Guess Sᵢ
   ↓
Verify Sᵢ
   ↓
Accept if valid
```

The complexity-theory model treats the guessing step differently from ordinary deterministic search.

---

# 8.17 Nondeterministic Turing Machine

The formal theoretical model behind nondeterministic computation is the **Nondeterministic Turing Machine (NTM)**.

A deterministic Turing machine has one possible next transition for a given state and input symbol.

A nondeterministic Turing machine can have multiple possible transitions.

Conceptually:

```text id="8v4c5k"
              ┌── Path 1
              │
Input → State ├── Path 2
              │
              └── Path 3
```

If at least one computation path reaches an accepting state, the nondeterministic machine accepts the input.

---

# 8.18 Acceptance in a Nondeterministic Model

Suppose the machine has multiple possible computation paths:

```text id="k8d1x5"
Path 1 → Reject
Path 2 → Reject
Path 3 → Accept
Path 4 → Reject
```

The input is considered accepted because **at least one path accepts**.

This is the theoretical interpretation of nondeterminism.

---

# 8.19 Deterministic Simulation

A deterministic machine can simulate a nondeterministic machine by exploring its possible computation paths.

However, if the number of possible paths is very large, this simulation can require exponential time.

This helps explain why:

```text id="a9q3f2"
verification can be polynomial
```

while:

```text id="s8y4v1"
finding a solution may appear much harder
```

This is deeply connected to the P vs NP question.

---

# 8.20 Nondeterministic Polynomial Verification

Suppose a problem has a certificate `C`.

A deterministic verifier:

```text id="c1x9q7"
Verify(input, C)
```

can check whether `C` is a valid solution in polynomial time.

The conceptual nondeterministic process is:

```text id="m6z4p2"
Input
  ↓
Guess certificate C
  ↓
Polynomial-time verification
  ↓
Accept / Reject
```

This is the basic intuition behind NP.

---

# 8.21 Certificate

A **certificate** is a piece of information that demonstrates that a solution exists.

For example, for Vertex Cover:

```text id="h4q7s9"
Certificate = selected set of vertices
```

The verifier checks:

1. The selected set contains at most `k` vertices.
2. Every edge has at least one endpoint in the selected set.

If both conditions hold:

```text id="p8f1c3"
YES
```

Otherwise:

```text id="r5t2x8"
NO
```

---

# 8.22 Certificate for SAT

For SAT:

```text id="y7m3k5"
Certificate = assignment of Boolean variables
```

The verifier evaluates the formula using that assignment.

If the formula evaluates to true:

```text id="q2x6v8"
YES
```

Otherwise:

```text id="z9c4w1"
NO
```

---

# 8.23 Deterministic vs Nondeterministic Search

Suppose there are many possible candidate solutions.

### Deterministic Approach

Try candidates systematically:

```text id="n4p8k2"
Candidate 1
Candidate 2
Candidate 3
...
Candidate m
```

If `m` is exponential in `n`, this may require exponential time.

### Nondeterministic Model

Conceptually:

```text id="u3k7x5"
Guess a candidate
       ↓
Verify in polynomial time
```

This is why nondeterminism is useful in defining NP.

---

# 8.24 Important Relationship with NP-Complete Problems

The following problems are classic NP-Complete problems:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

For each of them, a proposed solution can be verified in polynomial time.

For example:

### Vertex Cover

```text id="w6q2n8"
Guess:
A set of k vertices

Verify:
Every edge is covered
```

### 3-SAT

```text id="j5r8v3"
Guess:
Truth assignment

Verify:
Every clause is satisfied
```

### Hamiltonian Cycle

```text id="c7x4m9"
Guess:
A sequence of vertices

Verify:
Each vertex appears once
and consecutive vertices form edges
and the cycle returns to the start
```

---

# 8.25 Deterministic vs Nondeterministic — Exam Table

| Point            | Deterministic                      | Non-Deterministic                   |
| ---------------- | ---------------------------------- | ----------------------------------- |
| Definition       | Next operation uniquely determined | Multiple possible computation paths |
| Same input       | Same execution path                | Conceptually multiple paths         |
| Guessing         | Not used                           | Used conceptually                   |
| Verification     | Normal computation                 | Candidate verification              |
| Model            | Ordinary algorithms                | Nondeterministic Turing machine     |
| Complexity class | P                                  | NP                                  |
| Practical?       | Yes                                | Theoretical model                   |
| Example          | Binary search                      | Guess and verify Vertex Cover       |

---

# 8.26 Important: Do Not Say "NP Uses Random Guessing"

A common incorrect explanation is:

> "NP algorithms randomly guess the answer."

This is not the formal meaning of nondeterminism.

The nondeterministic model conceptually chooses a correct computation path if one exists.

It is not equivalent to random guessing.

Therefore, in an exam, write:

> A nondeterministic algorithm can conceptually guess a candidate solution and verify it in polynomial time.

Do not describe nondeterminism simply as randomness.

---

# 8.27 Important: NP Does Not Mean Non-Polynomial

This is one of the most important exam traps.

Incorrect:

```text id="7g4j2m"
NP = Non-Polynomial
```

Correct:

```text id="s3v8x6"
NP = Nondeterministic Polynomial Time
```

Therefore:

```text id="y6r2k4"
P ⊆ NP
```

and:

```text id="z8c5m1"
P = NP ?
```

is an open question.

---

# 8.28 Connection with Polynomial Problems

The distinction between deterministic and nondeterministic algorithms helps explain why complexity theory separates:

```text id="4v7x9c"
P
```

from:

```text id="5b3n8m"
NP
```

### P

Polynomial-time deterministic solution.

### NP

Polynomial-time verification of a proposed solution.

Therefore:

```text id="a2m7k9"
P = deterministic polynomial solving
NP = nondeterministic polynomial verification
```

This is a simplified but useful exam-level interpretation.

---

# 8.29 Connection with P vs NP

The major question is:

> If a solution can be verified in polynomial time, can it also be found in polynomial time?

In other words:

```text id="q8w5z2"
P ?= NP
```

If:

```text id="n3x6v7"
P = NP
```

then every NP problem would have a polynomial-time deterministic solution.

If:

```text id="c5m9r1"
P ≠ NP
```

then some problems can be verified efficiently but cannot be solved efficiently by any polynomial-time deterministic algorithm.

The correct answer is:

> **The relationship between P and NP is still unknown.**

---

# 8.30 PYQ Status

## Direct PYQ

**No direct standalone PYQ found.**

None of the four supplied papers directly asks:

> "Differentiate deterministic and non-deterministic algorithms."

However, the concept is directly relevant to the P/NP questions.

---

# 8.31 Connection to 2022 PYQ

### PYQ

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7 Marks]`

To explain P and NP correctly, you should understand:

* Deterministic computation
* Nondeterministic computation
* Polynomial-time solving
* Polynomial-time verification

---

# 8.32 Connection to 2023 PYQ

### PYQ

> **"Briefly explain P and NP problems in the context of complexity theory. Give suitable example."** `[8 Marks]`

The deterministic/non-deterministic distinction helps explain why P and NP are different complexity classes.

---

# 8.33 Connection to 2024 PYQs

### Polynomial-Time Reducibility

> **"What is polynomial time reducibility? What is its importance in computational complexity theory?"** `[6 Marks]`

Polynomial reductions are used to establish relationships between complexity problems.

### NP-Complete / NP-Hard

> **"What do you understand by NP complete and NP hard problems? Give examples."** `[6 Marks]`

Understanding nondeterministic polynomial verification is necessary for understanding NP-Completeness.

---

# 8.34 Connection to 3-SAT

The 2023 paper asks:

> **"What is SAT AND 3-SAT problem? Prove that 3-SAT problem is NP complete."** `[8 Marks]`

The nondeterministic viewpoint can be used to explain why 3-SAT belongs to NP.

A certificate is:

```text id="v4z8k2"
Truth assignment
```

The verifier checks all clauses in polynomial time.

---

# 8.35 Connection to Vertex Cover

The 2022 and 2025 papers ask about proving Vertex Cover is NP-Complete.

A certificate is:

```text id="b5n9x3"
A set of at most k vertices
```

Verification:

```text id="m7c2q8"
Check whether every edge has
at least one endpoint in the selected set.
```

This can be done in polynomial time.

Therefore, Vertex Cover belongs to NP.

---

# 8.36 Connection to Hamiltonian Cycle

Although there is no direct PYQ for Hamiltonian Cycle in the supplied papers, it is explicitly part of the syllabus.

A certificate is:

```text id="r9w4p1"
A proposed cycle containing all vertices
```

Verification checks:

1. Every vertex appears exactly once.
2. Consecutive vertices are connected by edges.
3. The final vertex connects back to the first.

These checks can be performed in polynomial time.

Therefore, Hamiltonian Cycle belongs to NP.

---

# 8.37 Exam-Ready Answer

## Differentiate Deterministic and Non-Deterministic Algorithms

A **deterministic algorithm** is an algorithm in which every step is uniquely determined by the current state and input. For the same input, it follows the same logical sequence and produces the same output.

A **non-deterministic algorithm** is a theoretical computational model in which multiple possible computation paths may exist. It can be viewed as guessing a candidate solution and verifying the candidate in polynomial time.

### Comparison

| Deterministic                            | Non-Deterministic                         |
| ---------------------------------------- | ----------------------------------------- |
| Next step is uniquely determined         | Multiple possible paths                   |
| Same input gives a predictable execution | Conceptually multiple computation paths   |
| No guessing                              | Guessing is part of the theoretical model |
| Used in ordinary algorithms              | Used in complexity theory                 |
| Associated with P                        | Associated with NP                        |
| Example: Binary Search                   | Example: Guess and verify Vertex Cover    |

Thus, deterministic computation is the standard model of algorithm execution, while nondeterministic computation is an important theoretical model used to define and study the complexity class NP.

---

# 8.38 Short 2-Mark Answer

### What is a Deterministic Algorithm?

An algorithm in which the next operation is uniquely determined for every state and input. The same input always follows the same computation path.

### What is a Non-Deterministic Algorithm?

A theoretical algorithmic model in which multiple computation paths can be considered. It can be viewed as guessing a candidate solution and verifying it in polynomial time.

---

# 8.39 Quick Revision

```text id="h7k3p1"
DETERMINISTIC
      ↓
One input
      ↓
One fixed computation path
      ↓
Predictable execution
      ↓
P
```

```text id="x4m8q2"
NON-DETERMINISTIC
      ↓
One input
      ↓
Multiple possible computation paths
      ↓
Guess + Verify
      ↓
NP
```

---

# 8.40 Most Important Concepts

Remember these points:

1. Deterministic algorithms have a uniquely determined next step.
2. Nondeterministic algorithms are primarily a theoretical model.
3. Nondeterminism is **not the same as randomness**.
4. NP does **not** mean non-polynomial.
5. NP means **Nondeterministic Polynomial Time**.
6. P is associated with deterministic polynomial-time computation.
7. NP is associated with polynomial-time verification.
8. `P ⊆ NP`.
9. Whether `P = NP` remains unknown.
10. SAT, 3-SAT and Vertex Cover are important NP problems.
11. A certificate is a proposed solution that can be verified efficiently.
12. Nondeterministic computation is fundamental to understanding NP-Complete problems.

---

# 8.41 PYQ Priority

**Direct PYQ Frequency: 0/4 years**

### Indirectly required for:

* **2022:** P, NP, NP-Hard, NP-Complete `[7]`
* **2023:** P and NP `[8]`
* **2023:** 3-SAT NP-Completeness `[8]`
* **2024:** NP-Complete and NP-Hard `[6]`
* **2025:** P, NP, NP-Hard, NP-Complete `[7]`
* **2022/2025:** Vertex Cover NP-Completeness `[8]`

### Priority: 🔥 HIGH

This topic should be studied **before P-Class and NP-Class Problems**, because it provides the conceptual foundation for understanding why P and NP are defined differently.
