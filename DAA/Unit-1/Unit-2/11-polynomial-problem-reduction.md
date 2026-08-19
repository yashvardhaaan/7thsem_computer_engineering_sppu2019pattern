# UNIT II — Analysis of Algorithms and Complexity Theory

# 11. Polynomial-Time Reduction

> **PYQ Frequency: 1/4 Years**
>
> **Priority: HIGH**
>
> **Direct PYQ: 2024**

---

# 11.1 What Is Polynomial-Time Reduction?

**Polynomial-time reduction** is a technique used in computational complexity theory to transform one problem into another problem in polynomial time.

It is mainly used to:

* Compare the difficulty of computational problems.
* Prove that a problem is NP-Hard.
* Prove that a problem is NP-Complete.
* Establish relationships between complexity classes.

The notation is:

```text id="a7m3x9"
A ≤p B
```

Read this as:

> **Problem A is polynomial-time reducible to problem B.**

---

# 11.2 Basic Idea

Suppose we have two problems:

```text id="r4c8q2"
Problem A
```

and:

```text id="m7x1v5"
Problem B
```

If we can transform every instance of A into an instance of B in polynomial time, then:

```text id="p9z3k6"
A ≤p B
```

The transformation looks like:

```text id="q5v8n2"
Input for A
     ↓
Polynomial-Time Transformation
     ↓
Input for B
     ↓
Solve B
     ↓
Answer for A
```

---

# 11.3 Meaning of `A ≤p B`

When we write:

```text id="x3m7q9"
A ≤p B
```

it means:

> There exists a polynomial-time computable transformation that converts instances of problem A into instances of problem B such that solving B gives the answer to A.

The important part is:

```text id="w8c2r4"
Transformation time = Polynomial
```

---

# 11.4 Why Is Reduction Important?

Polynomial-time reduction helps us determine how difficult a problem is relative to another problem.

If:

```text id="n6x4m8"
A ≤p B
```

then B is at least as difficult as A in the context of this reduction.

Why?

Because if B could be solved efficiently, then A could also be solved efficiently:

```text id="j2q7v5"
A ≤p B
        ↓
B has polynomial solution
        ↓
A has polynomial solution
```

---

# 11.5 Simple Analogy

Suppose:

```text id="r8c3m1"
Problem A = Convert apples into juice
Problem B = Use a juice machine
```

If converting A into B is easy, and B can be solved efficiently, then A can also be solved efficiently.

In computational complexity:

```text id="v5x9q2"
A → B
```

means:

> We can use a solution for B to solve A.

The conversion itself must be efficient.

---

# 11.6 Polynomial-Time Reduction vs Normal Reduction

Not every reduction is useful for complexity classification.

For complexity theory, we specifically care about **polynomial-time reductions**.

The transformation must be computable in:

```text id="m7q4x9"
O(n^k)
```

for some constant `k`.

If the transformation itself takes exponential time, it cannot establish the desired polynomial-time complexity relationship.

---

# 11.7 Formal Definition

A problem A is polynomial-time reducible to problem B if there exists a polynomial-time computable function `f` such that:

```text id="c8x2v6"
x ∈ A
```

if and only if:

```text id="p4m9q1"
f(x) ∈ B
```

Therefore:

```text id="w3r7m5"
A ≤p B
```

means:

```text id="z6x1c8"
x ∈ A ⇔ f(x) ∈ B
```

where `f` can be computed in polynomial time.

---

# 11.8 Decision-Problem Interpretation

Polynomial reductions are usually defined between **decision problems**.

Suppose:

### Problem A

```text id="q8m3v7"
YES / NO
```

We transform an instance of A into an instance of B.

### Problem B

```text id="r5x9c2"
YES / NO
```

The transformation must preserve the answer:

```text id="n7m4q1"
A = YES
⇔
B = YES
```

and:

```text id="c6x2v8"
A = NO
⇔
B = NO
```

---

# 11.9 Example of Reduction

Suppose:

```text id="y5q8m2"
A ≤p B
```

and we are given an instance:

```text id="a1"
I
```

of problem A.

We apply a transformation:

```text id="m4r7x9"
f(I)
```

which produces an instance of B.

Then:

```text id="z3c6v1"
I is YES-instance of A
```

if and only if:

```text id="p8q2m5"
f(I) is YES-instance of B
```

Therefore, a solver for B can be used to solve A.

---

# 11.10 Important Direction of Reduction

This is one of the biggest exam traps.

If:

```text id="x7m3q8"
A ≤p B
```

then:

> **A reduces TO B.**

Think:

```text id="k5r9c2"
A → B
```

Therefore, B is at least as hard as A.

---

# 11.11 What Does NOT Follow?

From:

```text id="v8q4m1"
A ≤p B
```

you cannot automatically conclude:

```text id="c3x7n9"
B ≤p A
```

Polynomial reduction is not automatically symmetric.

---

# 11.12 Example of Direction

Suppose:

```text id="m6r2x8"
SAT ≤p 3-SAT
```

This means:

> SAT can be transformed into 3-SAT in polynomial time.

It does **not** mean that the notation directly says:

```text id="q9v4c1"
3-SAT ≤p SAT
```

The direction matters.

---

# 11.13 Transitivity of Polynomial Reduction

Polynomial-time reduction has the **transitivity property**.

If:

```text id="j4x8m2"
A ≤p B
```

and:

```text id="r7c3q9"
B ≤p C
```

then:

```text id="n5v1x6"
A ≤p C
```

because:

1. Transform A into B in polynomial time.
2. Transform B into C in polynomial time.
3. The composition of polynomial-time transformations is polynomial-time.

Therefore:

```text id="w8m4q2"
A ≤p B ≤p C
```

implies:

```text id="f6x9c3"
A ≤p C
```

---

# 11.14 Reduction and P

Suppose:

```text id="a5m8r1"
A ≤p B
```

and B belongs to P.

Since B has a polynomial-time algorithm:

```text id="v7q2x9"
B ∈ P
```

we can:

1. Transform A into B.
2. Solve B.
3. Return the result for A.

Both the transformation and solution take polynomial time.

Therefore:

```text id="c4n6m8"
A ∈ P
```

This is a fundamental property of polynomial-time reduction.

---

# 11.15 Why Reduction Is Used for NP-Hardness

Suppose we want to prove that problem B is NP-Hard.

We need to show that every problem in NP can be polynomially reduced to B.

In practice, it is usually enough to start with a known NP-Complete problem A.

If:

```text id="q8m3x7"
A is NP-Complete
```

and:

```text id="r5c9v2"
A ≤p B
```

then B is NP-Hard.

Why?

Because A is already at least as hard as every problem in NP.

If A can be transformed into B, B must be at least as hard as A.

Therefore:

```text id="m2x7q4"
A ≤p B
+
A is NP-Complete
↓
B is NP-Hard
```

---

# 11.16 Proving NP-Completeness Using Reduction

To prove a problem B is **NP-Complete**, two things are required.

## Step 1 — Show B ∈ NP

Demonstrate that a candidate solution for B can be verified in polynomial time.

```text id="x6m9c3"
B ∈ NP
```

---

## Step 2 — Show B is NP-Hard

Choose a known NP-Complete problem A and prove:

```text id="v4r8q1"
A ≤p B
```

Then:

```text id="n7x2m5"
A is NP-Complete
+
A ≤p B
↓
B is NP-Hard
```

Since:

```text id="c3q9v6"
B ∈ NP
```

and:

```text id="p8m4x2"
B is NP-Hard
```

we conclude:

```text id="z5r7n1"
B is NP-Complete
```

---

# 11.17 NP-Completeness Proof Structure

Remember this pattern:

```text id="w4m8x2"
              Prove B is NP-Complete
                         │
              ┌──────────┴──────────┐
              ↓                     ↓
           B ∈ NP               B is NP-Hard
              │                     │
       Verify solution        Choose known NP-C
        in polynomial         problem A
           time                     │
                                    ↓
                                 A ≤p B
```

Therefore:

```text id="j6x3q9"
B ∈ NP
+
A ≤p B
+
A is NP-Complete
=
B is NP-Complete
```

---

# 11.18 Very Important: Reduction Direction for NP-Completeness

Suppose you want to prove:

```text id="v9m4x2"
B is NP-Complete
```

You must reduce a **known NP-Complete problem TO B**:

```text id="q7c3n8"
Known NP-Complete A
          ↓
        B
```

That is:

```text id="x5r8m1"
A ≤p B
```

### NOT:

```text id="m2q6v9"
B ≤p A
```

The wrong direction is a very common exam mistake.

---

# 11.19 Why Does the Direction Matter?

Suppose:

```text id="p3x7c2"
A ≤p B
```

This means:

> If we had an efficient solver for B, we could use it to solve A.

Therefore, B must be at least as difficult as A.

So:

```text id="n8m4r6"
A → B
```

means:

```text id="y5q2x9"
B is at least as hard as A
```

---

# 11.20 Example — SAT and 3-SAT

A classic result is:

```text id="k7x3m1"
SAT ≤p 3-SAT
```

This means a SAT instance can be transformed into a 3-SAT instance in polynomial time while preserving satisfiability.

Since SAT is NP-Complete:

```text id="r4q8c2"
SAT is NP-Complete
```

and:

```text id="m6x1v9"
SAT ≤p 3-SAT
```

we can establish that:

```text id="p8n3y5"
3-SAT is NP-Hard
```

Since 3-SAT is also in NP:

```text id="c2r7m4"
3-SAT is NP-Complete
```

---

# 11.21 Example — Vertex Cover

Suppose we want to prove:

```text id="x9m5q3"
Vertex Cover is NP-Complete
```

A common proof strategy is:

### Step 1

Show:

```text id="v4c8n1"
Vertex Cover ∈ NP
```

by showing that a proposed vertex cover can be verified in polynomial time.

### Step 2

Reduce a known NP-Complete problem to Vertex Cover.

For example:

```text id="q6x2m8"
3-SAT ≤p Vertex Cover
```

If the reduction is polynomial and correct, Vertex Cover is NP-Hard.

Therefore:

```text id="r7n3c5"
Vertex Cover ∈ NP
+
Vertex Cover is NP-Hard
```

so:

```text id="m8x4q1"
Vertex Cover is NP-Complete
```

---

# 11.22 What Makes a Reduction Valid?

A valid polynomial-time reduction must satisfy two major conditions.

## 1. Polynomial Transformation

The conversion from A to B must take polynomial time.

```text id="c5m9x2"
Time = O(n^k)
```

for some constant `k`.

---

## 2. Answer Preservation

The transformation must preserve the YES/NO answer.

```text id="w7q3r8"
x ∈ A
⇔
f(x) ∈ B
```

Both conditions are essential.

---

# 11.23 Reduction Function

Let:

```text id="p4x8m1"
f
```

be the transformation function.

For an input `x` belonging to problem A:

```text id="q6r2v9"
x
↓
f(x)
↓
instance of B
```

The function must satisfy:

```text id="m8c3x5"
x ∈ A ⇔ f(x) ∈ B
```

and:

```text id="v7n4q2"
f(x)
```

must be computable in polynomial time.

---

# 11.24 Reduction and Problem Difficulty

A useful way to remember the direction is:

```text id="x2m7c9"
Easier / Harder

A ─────────→ B
       reduction
```

If:

```text id="a8r3x5"
A ≤p B
```

then:

```text id="j4q9m2"
B is at least as hard as A
```

because a solution to B can be used to solve A.

---

# 11.25 If B Is Easy

Suppose:

```text id="m7x2q8"
A ≤p B
```

and B has a polynomial-time algorithm.

Then:

```text id="c5r9n3"
B ∈ P
```

Therefore:

```text id="x8q4m1"
A ∈ P
```

This is why reductions are so powerful.

---

# 11.26 If A Is Hard

Suppose:

```text id="q3m8x6"
A is NP-Complete
```

and:

```text id="v5r2c9"
A ≤p B
```

Then B must be at least as hard as A.

Therefore:

```text id="n7x4m1"
B is NP-Hard
```

This is the main technique used to prove NP-Hardness.

---

# 11.27 Polynomial Reduction and NP-Complete Problems

The general proof pattern is:

```text id="p6m9x2"
Known NP-Complete Problem
          │
          │ polynomial reduction
          ↓
      New Problem
```

If the new problem is also in NP:

```text id="x4q8r1"
New Problem ∈ NP
```

then:

```text id="m7c3v5"
New Problem = NP-Complete
```

---

# 11.28 Reduction vs Algorithm

A reduction is **not necessarily a solution algorithm for the original problem**.

Instead, it transforms one problem into another.

For example:

```text id="n5x2q8"
A instance
   ↓
Transformation
   ↓
B instance
   ↓
B solver
   ↓
A answer
```

The reduction allows us to use an algorithm for B to solve A.

---

# 11.29 PYQ — 2024

> **"What is polynomial time reducibility? What is its importance in computational complexity theory?"** `[6 Marks]`

This is the **direct PYQ** for this syllabus point.

---

# 11.30 PYQ Answer

## What Is Polynomial-Time Reducibility?

Polynomial-time reducibility is a technique used to transform one computational problem into another in polynomial time.

If problem A can be transformed into problem B in polynomial time while preserving the answer, we write:

```text id="r8m3x6"
A ≤p B
```

This means that A is polynomially reducible to B.

The transformation must be computable in polynomial time:

```text id="q5x9v2"
O(n^k)
```

for some constant `k`.

---

## Importance

Polynomial-time reduction is important because it:

1. Compares the computational difficulty of problems.
2. Helps prove that problems are NP-Hard.
3. Helps prove that problems are NP-Complete.
4. Establishes relationships between complexity classes.
5. Allows one problem to be solved using a solver for another problem.

For example:

```text id="m7c4x1"
A ≤p B
```

means that if B can be solved in polynomial time, then A can also be solved in polynomial time.

---

# 11.31 6-Mark Exam Answer

### Polynomial-Time Reducibility

Polynomial-time reducibility is a method of transforming an instance of problem A into an instance of problem B in polynomial time such that the answer is preserved.

It is represented as:

```text id="v2q8m5"
A ≤p B
```

where the transformation function `f` satisfies:

```text id="x7m3r9"
x ∈ A ⇔ f(x) ∈ B
```

and `f(x)` can be computed in polynomial time.

### Importance

Polynomial-time reduction is used to:

* Compare problem difficulty.
* Prove NP-Hardness.
* Prove NP-Completeness.
* Establish relationships among computational problems.

If:

```text id="c5n9x2"
A ≤p B
```

and B has a polynomial-time algorithm, then A also has a polynomial-time algorithm.

For proving NP-Completeness, a known NP-Complete problem A is reduced to the target problem B:

```text id="m8x4q1"
A ≤p B
```

and B is shown to belong to NP.

Thus B is NP-Complete.

---

# 11.32 Short 2-Mark Definition

> **Polynomial-time reduction is the process of converting an instance of problem A into an equivalent instance of problem B in polynomial time. It is denoted by `A ≤p B` and is widely used to prove NP-Hardness and NP-Completeness.**

---

# 11.33 Important Properties

### Property 1 — Transitivity

```text id="x7m4q9"
A ≤p B
B ≤p C
────────
A ≤p C
```

---

### Property 2 — If B ∈ P

```text id="m5c8r2"
A ≤p B
+
B ∈ P
↓
A ∈ P
```

---

### Property 3 — NP-Hardness

```text id="q3x9v6"
A is NP-Complete
+
A ≤p B
↓
B is NP-Hard
```

---

### Property 4 — NP-Completeness

```text id="r8m2c5"
B ∈ NP
+
B is NP-Hard
↓
B is NP-Complete
```

---

# 11.34 Common Mistakes

## Mistake 1 — Wrong Reduction Direction

To prove B is NP-Hard:

Correct:

```text id="v4x8m1"
Known NP-Complete A ≤p B
```

Incorrect:

```text id="q7m3c9"
B ≤p A
```

---

## Mistake 2 — Forgetting Polynomial Time

The transformation itself must be polynomial-time.

A transformation that takes exponential time is not a polynomial-time reduction.

---

## Mistake 3 — Forgetting Answer Preservation

The reduction must preserve the YES/NO answer:

```text id="n6x2r8"
x ∈ A ⇔ f(x) ∈ B
```

---

## Mistake 4 — Thinking Reduction Means Equality

If:

```text id="m9c4x7"
A ≤p B
```

it does not mean:

```text id="p5r8q2"
A = B
```

It means A can be transformed into B efficiently.

---

## Mistake 5 — Assuming Reduction Is Symmetric

From:

```text id="x3q7m1"
A ≤p B
```

we cannot automatically conclude:

```text id="v8c2r5"
B ≤p A
```

---

# 11.35 Reduction Direction Memory Trick

Remember:

> **To prove B is hard, bring a known hard problem TO B.**

```text id="m6x2q9"
KNOWN HARD PROBLEM
        ↓
        B
```

Therefore:

```text id="r4c8v1"
Known NP-Complete A ≤p B
```

This is probably the single most important thing to remember about reductions for your exam.

---

# 11.36 NP-Completeness Proof Template

Use this exact structure in an exam:

```text id="x7m3q8"
To prove B is NP-Complete:

Step 1:
Show B ∈ NP.

Step 2:
Select a known NP-Complete problem A.

Step 3:
Construct a polynomial-time reduction:
A ≤p B.

Step 4:
Show that the transformation preserves
the YES/NO answer.

Therefore:
B is NP-Hard.

Since:
B ∈ NP
and
B is NP-Hard,

B is NP-Complete.
```

---

# 11.37 Quick Example

Suppose:

```text id="n5x8c2"
A = 3-SAT
B = Vertex Cover
```

To prove Vertex Cover is NP-Complete:

```text id="q7m4r9"
3-SAT ≤p Vertex Cover
```

Then:

```text id="x3c8v1"
3-SAT is NP-Complete
        ↓
Vertex Cover is NP-Hard
```

Also show:

```text id="m9q2x6"
Vertex Cover ∈ NP
```

Therefore:

```text id="r5v7c3"
Vertex Cover is NP-Complete
```

---

# 11.38 PYQ Priority

### Direct PYQ

**2024:**

> **"What is polynomial time reducibility? What is its importance in computational complexity theory?"** `[6 Marks]`

### Frequency

```text id="w8x4m2"
1/4 years
```

### Priority

**🔥 HIGH**

Although it has appeared only once directly, it is extremely important because it is required for understanding and proving:

* NP-Hard
* NP-Complete
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

---

# 11.39 What to Prepare for the Exam

You should be able to explain:

1. Definition of polynomial-time reduction.
2. Meaning of `A ≤p B`.
3. Polynomial-time transformation.
4. Answer preservation.
5. Importance of reduction.
6. Reduction direction.
7. Transitivity.
8. Relationship with P.
9. How reduction proves NP-Hardness.
10. How reduction proves NP-Completeness.
11. Difference between `A ≤p B` and `B ≤p A`.
12. A general NP-Completeness proof structure.

---

# 11.40 One-Minute Revision

```text id="c7m2x9"
POLYNOMIAL-TIME REDUCTION

A ≤p B
   ↓
Transform A → B
   ↓
Transformation takes polynomial time
   ↓
YES/NO answer is preserved
   ↓
If B is easy → A is easy
   ↓
If A is NP-Complete → B is NP-Hard
```

### To prove B is NP-Complete:

```text id="q8x3m5"
1. B ∈ NP
2. Known NP-Complete A ≤p B
3. Therefore B is NP-Hard
4. Therefore B is NP-Complete
```

### Memory Rule

> **Known Hard → Target**

```text id="m4r9x1"
A ───────→ B
↑           ↑
Known       Target
Hard        Problem
```

**PYQ Priority: 🔥 HIGH**
