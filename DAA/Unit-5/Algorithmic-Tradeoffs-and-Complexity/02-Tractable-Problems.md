# Part C — Tractable and Non-Tractable Problems



Important SPPU topic — 4 PYQ occurrences

7–9 marks



This topic is important because your papers repeatedly ask about tractable and non-tractable problems, and the Nov/Dec 2024 paper specifically asks about Knapsack, SAT and MST.

## 1. Tractable Problems

A problem is called tractable if it can be solved efficiently using an algorithm whose running time is bounded by a polynomial function of the input size.

Polynomial-time complexity examples:

\\[ O(1),\quad O(n),\quad O(n^2),\quad O(n^3) \\]

These algorithms are generally considered computationally feasible.

Examples:

1. Sorting using Merge Sort — \\(O(n\log n)\\).
2. Binary Search — \\(O(\log n)\\).
3. Minimum Spanning Tree (MST) — polynomial time.
4. Shortest Path using Dijkstra's algorithm — polynomial time for non-negative edge weights.

## 2. Non-Tractable Problems

A problem is called non-tractable when no polynomial-time algorithm is known for solving it, or when it is computationally difficult under the usual complexity-theory assumptions.

Many important non-tractable problems require exponential or factorial time using known exact algorithms.

Examples of such time complexities:

\\[ O(2^n),\quad O(3^n),\quad O(n!) \\]

Examples:

1. Travelling Salesperson Problem (exact optimization version).
2. General 0/1 Knapsack optimization problem.
3. Boolean Satisfiability Problem (SAT).
4. Hamiltonian Cycle Problem.

Important: NP-hard and NP-complete are formal complexity classifications. They are not simply synonyms for exponential-time algorithms.

## 3. Difference between Tractable and Non-Tractable Problems

| Basis           | Tractable                            | Non-tractable                                 |
| --------------- | ------------------------------------ | --------------------------------------------- |
| Meaning         | Efficiently solvable                 | No known efficient exact algorithm in general |
| Time complexity | Polynomial                           | Often exponential or factorial                |
| Execution time  | Generally manageable                 | Can grow very rapidly                         |
| Input size      | Can handle larger inputs efficiently | Large inputs may become difficult             |
| Algorithm       | Polynomial-time algorithm            | Often requires exponential-time exact methods |
| Examples        | MST, sorting, shortest path          | SAT, TSP, general Knapsack                    |

## 4. Polynomial-Time Algorithms

An algorithm is called polynomial-time if its running time is bounded by:

\\[ \boxed{O(n^k)} \\]

Where:

- \\(n\\) = input size.
- \\(k\\) = constant.

Examples:

| Algorithm                        | Time complexity  |
| -------------------------------- | ---------------- |
| Linear Search                    | \\(O(n)\\)       |
| Binary Search                    | \\(O(\log n)\\)  |
| Merge Sort                       | \\(O(n\log n)\\) |
| Matrix multiplication (standard) | \\(O(n^3)\\)     |
| Kruskal's MST                    | \\(O(E\log E)\\) |

These are considered tractable because their running times grow polynomially with input size.

## 5. Exponential-Time Algorithms

An algorithm is exponential-time when its running time grows exponentially with input size.

Examples:

\\[ O(2^n),\quad O(3^n),\quad O(n!) \\]

| Algorithm / problem      | Typical complexity       |
| ------------------------ | ------------------------ |
| Subset enumeration       | \\(O(2^n)\\)             |
| Brute-force 0/1 Knapsack | \\(O(2^n)\\)             |
| Brute-force TSP          | \\(O(n!)\\)              |
| Brute-force SAT          | \\(O(2^n)\\) assignments |

Example:

If an algorithm takes \\(O(2^n)\\) time:

| Input size n | Operations    |
| ------------ | ------------- |
| 5            | 32            |
| 10           | 1,024         |
| 20           | 1,048,576     |
| 30           | 1,073,741,824 |

This shows how quickly exponential complexity grows.

## 6. Introduction to P and NP

These are important complexity classes used to classify computational problems.

### A. Class P

P (Polynomial Time) is the class of decision problems that can be solved by a deterministic algorithm in polynomial time.

Examples:

- Minimum Spanning Tree.
- Shortest Path.
- Sorting-related decision problems.
- Graph connectivity.

### B. Class NP

NP (Nondeterministic Polynomial Time) is the class of decision problems for which a proposed solution can be verified in polynomial time.

In simple words:

- Finding a solution may be difficult.
- Checking a given solution can be easy.

Example: In the Hamiltonian Cycle problem, checking whether a given cycle visits every vertex exactly once and returns to its starting vertex is polynomial-time.

### Difference between P and NP

| P                                        | NP                                                   |
| ---------------------------------------- | ---------------------------------------------------- |
| Solution can be found in polynomial time | Proposed solution can be verified in polynomial time |
| Efficiently solvable                     | Efficiently verifiable                               |
| \\(P\subseteq NP\\)                      | Contains P and potentially harder problems           |
| Example: MST                             | Example: SAT                                         |

Important relationship:

\\[ \boxed{P\subseteq NP} \\]

Whether \\(P=NP\\) is still an unsolved problem in computer science.

## 7. NP-Hard Problems

A problem is called NP-hard if every problem in NP can be reduced to it in polynomial time.

Characteristics:

1. At least as hard as every problem in NP.
2. It does not necessarily belong to NP.
3. Its solution may not be verifiable in polynomial time.
4. Optimization problems can be NP-hard.

Examples:

- Travelling Salesperson optimization problem.
- 0/1 Knapsack optimization problem.
- Job scheduling optimization problems.

## 8. NP-Complete Problems

A problem is called NP-complete if:

1. It belongs to NP.
2. It is NP-hard.

In other words:

\\[ \boxed{NP\text{-Complete}=NP\cap NP\text{-Hard}} \\]

Characteristics:

- A proposed solution can be verified in polynomial time.
- Every problem in NP can be reduced to it in polynomial time.
- If any NP-complete problem has a polynomial-time algorithm, then \\(P=NP\\).

Examples:

- Boolean Satisfiability Problem (SAT).
- 3-SAT.
- Hamiltonian Cycle (decision version).
- Clique (decision version).

### Difference between NP-Hard and NP-Complete

| NP-Hard                                 | NP-Complete                   |
| --------------------------------------- | ----------------------------- |
| At least as hard as every problem in NP | Both NP-hard and in NP        |
| Need not belong to NP                   | Must belong to NP             |
| May be an optimization problem          | Defined as a decision problem |
| Example: TSP optimization               | Example: SAT decision         |

[File:P np np-complete np-hard.svg - Wikimedia Commons](https://images.openai.com/static-rsc-4/HG9fhMvCDFy8V8Hc7l0Oq8nar_nT-W3oUiIOmrFN9knDgeREhXO3cBpxzuAF1s-gyhQB1wqes7e6091TKD44ph-3IvX-wmvjcyD9YEQpsW1mNI2YNGuv_If-j4tGjkgkigTvyuTIBpVHJI5dDz8H6b9M_gwflzRkevmXKLdXXPE?purpose=inline)

[commons.wikimedia.org](https://commons.wikimedia.org/wiki/File%3AP_np_np-complete_np-hard.svg?utm_source=chatgpt.com)

## 9. Important PYQ: Comment on Knapsack, SAT and MST

Nov/Dec 2024 Q6(b) — 9 marks combined

This is particularly important. Prepare the following three explanations.

### A. Knapsack Problem — NP-Hard

The general 0/1 Knapsack optimization problem is NP-hard.

- It selects items with given weights and profits.
- The total weight must not exceed the capacity.
- The objective is to maximize total profit.
- Its optimization version is NP-hard.
- Its decision version is NP-complete (specifically, weakly NP-complete).

The standard dynamic programming algorithm takes \\(O(nW)\\) time, where \\(W\\) is the capacity. This is pseudo-polynomial time because it depends on the numerical value of \\(W\\), not just the number of bits needed to represent it.

### B. SAT — NP-Complete

SAT (Boolean Satisfiability Problem) determines whether there exists an assignment of TRUE or FALSE values to Boolean variables that makes a given Boolean formula true.

- A proposed assignment can be verified in polynomial time.
- SAT belongs to NP.
- SAT is NP-hard.
- Therefore, SAT is NP-complete.

### C. MST — Tractable

MST (Minimum Spanning Tree) is a tractable problem.

It finds a minimum-weight spanning tree connecting all vertices of a connected, weighted, undirected graph.

- Kruskal's algorithm solves MST in \\(O(E\log E)\\).
- Prim's algorithm can solve it in polynomial time.
- Therefore, MST belongs to P and is tractable.

### Summary for this PYQ

| Problem                   | Classification | Reason                                                                    |
| ------------------------- | -------------- | ------------------------------------------------------------------------- |
| 0/1 Knapsack optimization | NP-hard        | Optimization problem; exact general solution is computationally difficult |
| Knapsack decision         | NP-complete    | Belongs to NP and is NP-hard                                              |
| SAT                       | NP-complete    | Solution is verifiable in polynomial time and SAT is NP-hard              |
| MST                       | P / Tractable  | Polynomial-time algorithms exist                                          |

## 10. Overall classification diagram

[P versus NP problem. In the world of theoretical computer… | by Shlok Bhatt | Medium](https://images.openai.com/static-rsc-4/mwLvuH7_UNdTJEcQ5PUrp-vOZJoUx1Lp_acsu1zHyG7iz1dcUbnWOBBPJJt29ijXSPSbwBEcYdbqdaHFRY7FBi4Fad_Dy1WbXc_uMuFtprT9Xzxx_MFOcjvp09ValquLDZzJbw4n8uvdm-LfBy5IjUsVvT_MnZnmSmzU4o484Gg?purpose=inline)

[medium.com](https://medium.com/%40bhattshlok12/p-versus-np-problem-49677c304e60?utm_source=chatgpt.com)

Remember these relationships:

\\[ P\subseteq NP \\]

\\[ NP\text{-Complete}\subseteq NP \\]

\\[ NP\text{-Complete}\subseteq NP\text{-Hard} \\]

## 11. Advantages of polynomial-time algorithms

1. Efficient for large input sizes.
2. Require manageable computational resources.
3. Generally practical to implement.
4. Provide predictable performance as input grows.

## 12. PYQ preparation checklist

Preparation progress

0/10

Definition of tractable problems

Definition of non-tractable problems

Polynomial-time algorithms and examples

Exponential-time algorithms and examples

P and NP definitions

Relationship between P and NP

NP-hard and NP-complete definitions

Knapsack classification

SAT classification

MST classification

### Final exam strategy

| PYQ           | What to write                                               |
| ------------- | ----------------------------------------------------------- |
| Nov/Dec 2022  | Tractable vs non-tractable definitions and examples         |
| Nov/Dec 2023  | Same definitions with polynomial and exponential complexity |
| Nov/Dec 2024  | Explain Knapsack, SAT and MST classifications               |
| May/June 2025 | Definitions, differences and examples                       |

Most important points to memorize:

- Tractable = Polynomial-time solvable.
- Non-tractable = No known polynomial-time solution in general.
- P = Polynomial-time solvable decision problems.
- NP = Polynomial-time verifiable decision problems.
- NP-hard = At least as hard as every problem in NP.
- NP-complete = Both NP-hard and in NP.
- MST = P.
- SAT = NP-complete.
- 0/1 Knapsack optimization = NP-hard.

Exam tip: Be careful not to write that every NP problem is non-tractable. Whether P equals NP is still unknown.