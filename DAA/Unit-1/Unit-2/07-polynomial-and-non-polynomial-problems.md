# UNIT II — Analysis of Algorithms and Complexity Theory

# 7. Polynomial and Non-Polynomial Problems

> **PYQ Status: No direct standalone PYQ**
>
> **Importance: HIGH — important foundation for P, NP, NP-Hard and NP-Complete**

---

# 7.1 Introduction

In computational complexity theory, problems are often classified according to how their computational requirements grow as the input size increases.

One important distinction is between:

* **Polynomial-time problems**
* **Non-polynomial-time problems**

This classification is especially important when studying:

* P
* NP
* NP-Hard
* NP-Complete
* Polynomial-time reduction

---

# 7.2 What Is a Polynomial-Time Problem?

A problem is considered to have a **polynomial-time solution** if there exists an algorithm whose running time can be bounded by a polynomial function of the input size.

A polynomial has the general form:

```text id="xv70j1"
an^k + a(n-1)^(k-1) + ... + a1n + a0
```

where `k` is a constant.

Examples of polynomial complexities include:

```text id="j5v5q3"
O(1)
O(log n)
O(n)
O(n log n)
O(n²)
O(n³)
O(n⁴)
```

More generally:

```text id="0x6oqj"
O(n^k)
```

for some constant `k`.

---

# 7.3 Examples of Polynomial Algorithms

## Linear Search

Worst-case complexity:

```text id="hkg0gi"
O(n)
```

Since `n` is a polynomial function:

```text id="8t7vwo"
n = n¹
```

linear search is polynomial-time.

---

## Selection Sort

Complexity:

```text id="n6m6ml"
O(n²)
```

Since:

```text id="i4q1ae"
n²
```

is polynomial, selection sort is a polynomial-time algorithm.

---

## Merge Sort

Complexity:

```text id="8z6g8t"
O(n log n)
```

This is also polynomially bounded because:

```text id="6e9hgo"
n log n = O(n²)
```

for sufficiently large `n`.

Therefore, merge sort is polynomial-time.

---

# 7.4 What Is a Non-Polynomial Problem?

A problem is often described as **non-polynomial-time** when no known polynomial-time algorithm is available for solving it, and known exact approaches require growth faster than polynomial time.

Common examples of faster growth include:

```text id="k6tt10"
O(2ⁿ)
```

and:

```text id="1l6xj6"
O(n!)
```

These are examples of exponential and factorial growth.

---

# 7.5 Exponential Complexity

An exponential-time algorithm may have complexity:

```text id="w1whxl"
O(2ⁿ)
```

Each increase in `n` can cause a substantial increase in the amount of work.

For example:

```text id="a2r4g7"
n = 10 → 2¹⁰ = 1,024
n = 20 → 2²⁰ = 1,048,576
n = 30 → 2³⁰ ≈ 1.07 billion
```

Therefore, exponential algorithms become impractical quickly.

---

# 7.6 Factorial Complexity

Factorial complexity is:

```text id="8v2s7j"
O(n!)
```

where:

```text id="7a1o0z"
n! = n × (n-1) × ... × 1
```

Factorial growth is extremely rapid.

For example:

```text id="p9o5y1"
5!  = 120
10! = 3,628,800
15! = 1,307,674,368,000
```

Brute-force generation of all permutations can have factorial complexity.

---

# 7.7 Polynomial vs Non-Polynomial

| Feature            | Polynomial                            | Non-Polynomial                                           |
| ------------------ | ------------------------------------- | -------------------------------------------------------- |
| Typical complexity | `O(n^k)`                              | `O(2ⁿ)`, `O(n!)`                                         |
| Growth             | Relatively slower                     | Very rapid                                               |
| Scalability        | Generally better                      | Generally poor                                           |
| Examples           | `O(n)`, `O(n²)`, `O(n³)`              | `O(2ⁿ)`, `O(n!)`                                         |
| Importance         | Associated with tractable computation | Often associated with computationally difficult problems |

---

# 7.8 Important Terminology: Tractable

A problem that can be solved in polynomial time is generally considered **tractable**.

For example:

```text id="8nbz9y"
O(n)
O(n²)
O(n³)
```

are polynomial.

Polynomial-time algorithms are generally considered computationally feasible as input size grows.

However, "polynomial" does not automatically mean "fast."

For example:

```text id="0xwqcc"
O(n^100)
```

is technically polynomial but can be impractical even for moderate input sizes.

---

# 7.9 Important Terminology: Intractable

Problems requiring exponential or factorial time using known exact approaches are often described as **intractable** for large inputs.

Examples include algorithms with:

```text id="y9qqp1"
O(2ⁿ)
```

or:

```text id="k7oc6h"
O(n!)
```

However, it is important to distinguish:

> "No known polynomial-time algorithm" from "proven that no polynomial-time algorithm exists."

This distinction is central to the **P vs NP problem**.

---

# 7.10 Polynomial Problems and Class P

Class **P** contains decision problems that can be solved by a deterministic algorithm in polynomial time.

In simplified form:

```text id="s3o8e6"
P = Problems solvable in polynomial time
```

Examples include many standard algorithmic problems such as:

* Sorting
* Searching
* Shortest path
* Minimum spanning tree
* Basic graph traversal

---

# 7.11 Non-Polynomial Problems and NP

It is important not to say:

> "Every NP problem is non-polynomial."

That is incorrect.

The class **NP** contains decision problems whose proposed solutions can be verified in polynomial time by a deterministic algorithm.

It is currently unknown whether:

```text id="c4i3ly"
P = NP
```

or:

```text id="x8e0qz"
P ≠ NP
```

This is one of the most important unsolved problems in theoretical computer science.

---

# 7.12 P vs NP

The central question is:

> **Can every problem whose solution can be verified quickly also be solved quickly?**

In notation:

```text id="2k9xj6"
P ?= NP
```

We know:

```text id="m8m8k7"
P ⊆ NP
```

because if a problem can be solved in polynomial time, its solution can also be verified in polynomial time.

But whether:

```text id="1i5m5a"
P = NP
```

is still unknown.

---

# 7.13 Relationship with NP-Complete Problems

NP-Complete problems are especially important because they represent the hardest problems within NP.

A problem is NP-Complete if:

1. It belongs to NP.
2. Every problem in NP can be polynomially reduced to it.

Examples include:

* SAT
* 3-SAT
* Vertex Cover
* Hamiltonian Cycle

If any NP-Complete problem is shown to have a polynomial-time algorithm, then:

```text id="n1h2xq"
P = NP
```

This is why NP-Complete problems are so important.

---

# 7.14 Polynomial-Time Reduction

Polynomial-time reduction is used to compare computational problems.

We write:

```text id="1v7g2a"
A ≤p B
```

to mean:

> Problem A can be transformed into problem B in polynomial time.

If:

```text id="3f6r7k"
A ≤p B
```

and B has a polynomial-time solution, then A can also be solved in polynomial time.

This concept is essential when proving NP-Completeness.

---

# 7.15 Polynomial vs Exponential Growth

Consider:

```text id="7n2w8x"
Polynomial:
n²
```

and:

```text id="5m3d7p"
Exponential:
2ⁿ
```

For:

```text id="4r5v9q"
n = 10
```

we get:

```text id="2xtq7m"
n² = 100
```

while:

```text id="0t9w2c"
2¹⁰ = 1024
```

For:

```text id="l8m6sa"
n = 30
```

we get:

```text id="v9h6w7"
n² = 900
```

while:

```text id="s6e4r0"
2³⁰ ≈ 1.07 × 10⁹
```

The difference becomes enormous as `n` increases.

---

# 7.16 Polynomial vs Factorial Growth

Consider:

```text id="a8t5x3"
n³
```

and:

```text id="6c0g5v"
n!
```

For small `n`, the difference may not seem dramatic.

But as `n` increases, factorial growth becomes extremely rapid.

For example:

```text id="q3r7v8"
10³ = 1,000
10! = 3,628,800
```

and:

```text id="0w6k7a"
20³ = 8,000
20! ≈ 2.43 × 10¹⁸
```

Therefore:

```text id="a4f9l8"
n³ << n!
```

for sufficiently large `n`.

---

# 7.17 Growth-Rate Hierarchy

The following ordering is important:

```text id="n5h3xk"
1
<
log n
<
n
<
n log n
<
n²
<
n³
<
...
<
2ⁿ
<
n!
```

Polynomial functions include:

```text id="p4m1q9"
n
n²
n³
n⁴
...
n^k
```

for a fixed constant `k`.

Non-polynomial growth examples include:

```text id="8y4r6e"
2ⁿ
3ⁿ
n!
```

---

# 7.18 Is `n log n` Polynomial?

Yes.

This is a common point of confusion.

Although:

```text id="0u7e8y"
n log n
```

is not itself a polynomial expression, it is polynomially bounded.

For example:

```text id="8x5z0n"
log n ≤ n
```

for sufficiently large `n`.

Therefore:

```text id="h3p9z5"
n log n ≤ n²
```

and:

```text id="d2m7q4"
n log n = O(n²)
```

Thus, `n log n` is considered **polynomial time**.

---

# 7.19 Is `n^0.5` Polynomial?

Yes.

Consider:

```text id="m9w2x5"
n^0.5 = √n
```

This is a polynomially bounded function because the exponent is a constant.

More generally:

```text id="e8n4y6"
n^k
```

is polynomial-time for any fixed constant `k ≥ 0`.

---

# 7.20 Is `2^n` Polynomial?

No.

`2ⁿ` grows faster than every fixed polynomial:

```text id="v6w8m1"
n
n²
n³
...
n^k
```

for any fixed `k`.

Therefore:

```text id="p2j7q5"
2ⁿ
```

is exponential, not polynomial.

---

# 7.21 Is `n!` Polynomial?

No.

Factorial growth is faster than exponential growth for sufficiently large `n`.

Therefore:

```text id="0x4j6p"
n!
```

is not polynomial.

---

# 7.22 PYQ Status

## Direct PYQ

**No direct standalone PYQ found.**

There is no direct question in the supplied papers asking:

> "Differentiate polynomial and non-polynomial problems."

However, this topic is strongly connected to the P/NP/NP-Hard/NP-Complete questions.

---

# 7.23 Connection to 2022 PYQ

The 2022 paper asks:

> **"Explain P, NP, NP-Hard and NP-Complete problems with examples."** `[7 Marks]`

To answer this properly, you need to understand what polynomial-time computation means.

Class P consists of decision problems solvable in polynomial time.

---

# 7.24 Connection to 2023 PYQ

The 2023 paper asks:

> **"Briefly explain P and NP problems in the context of complexity theory. Give suitable example."** `[8 Marks]`

Understanding polynomial-time computation is essential for differentiating P from NP.

---

# 7.25 Connection to 2024 PYQ

The 2024 paper asks:

> **"What is polynomial time reducibility? What is its importance in computational complexity theory?"** `[6 Marks]`

The term **polynomial time** is directly related to this topic.

A reduction must be computable in polynomial time.

---

# 7.26 Connection to NP-Complete Problems

The 2022, 2023, 2024 and 2025 papers contain questions about:

* NP-Complete
* NP-Hard
* SAT
* 3-SAT
* Vertex Cover

Understanding polynomial-time computation is necessary for these topics.

---

# 7.27 Important Difference: Problem vs Algorithm

Be careful with terminology.

A **problem** can have different algorithms.

For example, sorting is a problem.

Different algorithms can solve it:

```text id="q2z5b9"
Selection Sort → O(n²)
Merge Sort     → O(n log n)
```

The classification of a problem is based on whether an appropriate algorithm exists within the required complexity class, not merely on one inefficient algorithm.

Therefore, saying:

> "Selection sort is polynomial, therefore sorting is polynomial"

is not the best reasoning.

The important point is that sorting has known polynomial-time algorithms.

---

# 7.28 Decision Problems

Complexity classes such as P and NP are formally defined using **decision problems**.

A decision problem has an answer such as:

```text id="h5p4k8"
YES / NO
```

Example:

### Vertex Cover Decision Problem

Given a graph `G` and integer `k`:

> Does the graph contain a vertex cover of size at most `k`?

Answer:

```text id="j0n4q7"
YES
```

or:

```text id="m8z3q2"
NO
```

This decision version is the form used when discussing NP-Completeness.

---

# 7.29 Why Polynomial Time Matters

Polynomial time is important because algorithms with polynomial complexity generally scale much better than exponential or factorial algorithms.

For example:

```text id="5a9c8z"
O(n²)
```

is usually far more manageable than:

```text id="e3p7x4"
O(2ⁿ)
```

for large inputs.

Therefore, complexity theory studies whether difficult problems can be solved within polynomial time.

---

# 7.30 Common Misconceptions

## Misconception 1

> "NP means non-polynomial."

**False.**

NP stands for:

> **Nondeterministic Polynomial time**

It does **not** mean "non-polynomial."

---

## Misconception 2

> "Every NP problem requires exponential time."

**False.**

Some NP problems are already in P.

We know:

```text id="w7r4z2"
P ⊆ NP
```

The unresolved question is whether:

```text id="c3j6v9"
P = NP
```

---

## Misconception 3

> "If a problem has an exponential algorithm, it is automatically outside P."

**False.**

A problem can have both:

```text id="7k5q2x"
an exponential algorithm
```

and:

```text id="9r2m6w"
a polynomial-time algorithm
```

The existence of a slow algorithm does not prove that the problem is not in P.

---

## Misconception 4

> "Polynomial means practically fast."

Not necessarily.

For example:

```text id="0s4m2n"
O(n^100)
```

is polynomial but may be impractical.

Polynomial-time is a theoretical complexity classification.

---

# 7.31 Exam-Ready Answer

## What Are Polynomial and Non-Polynomial Problems?

A problem is considered polynomial-time solvable if there exists an algorithm whose running time is bounded by a polynomial function of the input size, such as:

```text id="2k6q9r"
O(n)
O(n²)
O(n³)
O(n^k)
```

where `k` is a constant.

Examples include many sorting, searching and graph problems.

Non-polynomial-time problems are problems for which known exact algorithms require growth faster than polynomial time, such as:

```text id="m5x8w1"
O(2ⁿ)
O(n!)
```

These algorithms become computationally expensive as the input size increases.

Polynomial-time computation is important because the complexity class **P** consists of decision problems that can be solved in polynomial time. The distinction between polynomial and non-polynomial computation is fundamental to the study of **P, NP, NP-Hard and NP-Complete problems**.

---

# 7.32 Short Comparison

| Aspect        | Polynomial                                      | Non-Polynomial                                                       |
| ------------- | ----------------------------------------------- | -------------------------------------------------------------------- |
| Complexity    | `O(n^k)`                                        | Often `O(2ⁿ)`, `O(n!)`                                               |
| Growth        | Relatively slow                                 | Very rapid                                                           |
| Scalability   | Generally better                                | Poor for large inputs                                                |
| Example       | `O(n²)`                                         | `O(2ⁿ)`                                                              |
| Relation to P | P consists of polynomial-time decision problems | Not automatically outside P merely because a slow algorithm is known |

---

# 7.33 Quick Revision

```text id="2r9v8a"
POLYNOMIAL
    ↓
O(n^k)
    ↓
k = constant
    ↓
Generally tractable
    ↓
Class P
```

```text id="5t8m1x"
NON-POLYNOMIAL GROWTH
    ↓
2ⁿ, 3ⁿ, n!, ...
    ↓
Rapid growth
    ↓
Often computationally difficult
    ↓
Important in NP / NP-Complete theory
```

---

# 7.34 Key Points to Remember

1. Polynomial time means complexity bounded by `O(n^k)` for a constant `k`.
2. `O(n)`, `O(n²)`, `O(n³)` are polynomial.
3. `O(n log n)` is also polynomial.
4. `O(2ⁿ)` is exponential and non-polynomial.
5. `O(n!)` is factorial and non-polynomial.
6. **NP does not mean non-polynomial.**
7. P contains problems solvable in polynomial time.
8. NP contains problems whose solutions can be verified in polynomial time.
9. `P ⊆ NP`.
10. Whether `P = NP` remains an open question.
11. Polynomial-time reduction is fundamental to NP-Completeness proofs.
12. Polynomial vs non-polynomial is a foundation for understanding NP-Hard and NP-Complete problems.

---

# 7.35 PYQ Priority

**Direct PYQ Frequency: 0/4 years**

### Indirectly required for:

* **2022:** P, NP, NP-Hard and NP-Complete `[7]`
* **2023:** P and NP `[8]`
* **2024:** Polynomial-time reducibility `[6]`
* **2024:** NP-Complete and NP-Hard `[6]`
* **2025:** P, NP, NP-Hard and NP-Complete `[7]`

### Priority: 🔥 HIGH

Although there is **no standalone PYQ**, this topic should be prepared before studying **P-Class, NP-Class, Polynomial Reduction and NP-Complete Problems**.
