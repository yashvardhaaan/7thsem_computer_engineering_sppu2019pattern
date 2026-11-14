# 2. Approximation Algorithms



5 question occurrences

High priority



This topic is important for 7–9 mark answers, particularly the classification based on approximation ratio and performance ratio.

## 1. Definition of Approximation Algorithm

An approximation algorithm is an algorithm designed to find a near-optimal solution to an optimization problem in polynomial time, when finding the exact optimal solution is computationally expensive or impractical.

It produces a solution close to the optimal solution, with a measurable guarantee on its quality.

Example: In the Travelling Salesman Problem (TSP), instead of finding the absolute shortest possible tour, an approximation algorithm finds a tour whose cost is guaranteed to be within a specified factor of the optimal cost.

## 2. Need for Approximation Algorithms

Approximation algorithms are required because:

1. NP-hard problems: Many optimization problems are NP-hard and do not have known polynomial-time exact algorithms.
2. Large input size: Exact algorithms may take exponential time for large inputs.
3. Practical solutions: Real-world applications often need a good solution quickly rather than an exact solution after a long time.
4. Time constraints: Approximation algorithms provide solutions within a reasonable time.
5. Performance guarantee: They provide a mathematical guarantee about how close the obtained solution is to the optimal solution.

Applications:

- Travelling Salesman Problem
- Knapsack Problem
- Vertex Cover Problem
- Set Cover Problem
- Scheduling problems

## 3. Approximation Ratio

The approximation ratio measures how close the solution produced by an approximation algorithm is to the optimal solution.

It is the ratio between the approximate solution and the optimal solution.

For a minimization problem:

\\[ \rho = \frac{C\_{\text{approx}}}{C\_{\text{optimal}}} \\]

For a maximization problem:

\\[ \rho = \frac{C\_{\text{optimal}}}{C\_{\text{approx}}} \\]

Here:

- \\(C\_{\text{approx}}\\) = cost/value of approximate solution.
- \\(C\_{\text{optimal}}\\) = cost/value of optimal solution.
- \\(\rho\\) = approximation ratio.

A ratio closer to 1 indicates a better approximation.

Example (Minimization):

Suppose:

- Optimal solution cost = 100
- Approximate solution cost = 120

\\[ \rho = \frac{120}{100}=1.2 \\]

Therefore, the approximation ratio is 1.2, or a factor of 1.2.

The algorithm gives a solution whose cost is at most 1.2 times the optimal cost, if this is a proven worst-case guarantee.

## 4. Performance Ratio

The performance ratio is a measure used to evaluate the quality of an approximation algorithm by comparing its solution with the optimal solution.

For a minimization problem:

\\[ R = \frac{\text{Approximate Cost}}{\text{Optimal Cost}} \\]

For a maximization problem:

\\[ R = \frac{\text{Optimal Value}}{\text{Approximate Value}} \\]

An algorithm with performance ratio \\(R\\) guarantees that its solution is no worse than a factor \\(R\\) from the optimal solution.

Example:

Suppose a minimization algorithm produces a solution of cost 150, while the optimal cost is 100.

\\[ R = \frac{150}{100}=1.5 \\]

The performance ratio is 1.5.

Important distinction: Approximation ratio and performance ratio are often used interchangeably in algorithm textbooks. Both describe solution quality relative to the optimum. The term approximation ratio commonly refers to the theoretical worst-case guarantee, whereas performance ratio may also describe the ratio for a particular instance.

## 5. Classification Based on Approximation Ratio

Approximation algorithms can be classified according to the guarantee they provide.

### A. Constant-Factor Approximation Algorithm

An algorithm is called a constant-factor approximation algorithm if its approximation ratio is bounded by a constant independent of input size.

\\[ \rho \leq c \\]

where \\(c\\) is a constant.

Example: A 2-approximation algorithm guarantees a solution no worse than twice the optimal cost for a minimization problem.

### B. PTAS — Polynomial Time Approximation Scheme

A PTAS is an algorithm that produces a solution within a factor of \\(1+\epsilon\\) of the optimal solution for minimization problems, for any fixed \\(\epsilon>0\\).

\\[ \rho \leq 1+\epsilon \\]

- For every fixed \\(\epsilon\\), the algorithm runs in polynomial time in input size.
- Smaller \\(\epsilon\\) generally gives a better solution but requires more computation.

Example: If \\(\epsilon=0.1\\), the solution cost is at most 1.1 times the optimal cost.

### C. FPTAS — Fully Polynomial Time Approximation Scheme

An FPTAS is a stronger approximation scheme in which the running time is polynomial in both the input size and \\(1/\epsilon\\).

\\[ \rho \leq 1+\epsilon \\]

Its running time is:

\\[ O\left(\operatorname{poly}(n,\frac{1}{\epsilon})\right) \\]

Example: The 0/1 Knapsack problem has an FPTAS.

### D. Logarithmic-Factor Approximation

Some algorithms provide a logarithmic approximation guarantee.

\\[ \rho = O(\log n) \\]

Example: The standard greedy algorithm for Set Cover has an approximation guarantee of \\(H_n\\), which is at most \\(1+\ln n\\).

## 6. Comparison of Approximation Algorithm Classifications

| Classification     | Approximation guarantee | Running time                               |
| ------------------ | ----------------------- | ------------------------------------------ |
| Constant factor    | \\(\rho \leq c\\)       | Polynomial                                 |
| PTAS               | \\(1+\epsilon\\)        | Polynomial for fixed \\(\epsilon\\)        |
| FPTAS              | \\(1+\epsilon\\)        | Polynomial in \\(n\\) and \\(1/\epsilon\\) |
| Logarithmic factor | \\(O(\log n)\\)         | Usually polynomial                         |

Remember:

- PTAS: Polynomial time for each fixed \\(\epsilon\\).
- FPTAS: Polynomial time in both \\(n\\) and \\(1/\epsilon\\).
- FPTAS is stronger than PTAS.
- A constant-factor guarantee is independent of input size.

## 7. Suitable Examples of Approximation Algorithms

### Example 1: Vertex Cover — 2-Approximation

A Vertex Cover is a set of vertices such that every edge in a graph has at least one endpoint in the selected set.

Algorithm:

1. Start with an empty vertex cover.
2. Select any uncovered edge \\((u,v)\\).
3. Add both vertices \\(u\\) and \\(v\\) to the cover.
4. Remove all edges incident on either selected vertex.
5. Repeat until no edges remain.

Pseudocode:

```
ApproxVertexCover(G):
    C = empty set

    while E is not empty:
        Select any edge (u, v)
        Add u and v to C
        Remove all edges incident on u or v

    return C
```

Approximation guarantee:

\\[ |C| \leq 2|C^\*| \\]

Where:

- \\(C\\) = approximate vertex cover.
- \\(C^\*\\) = minimum vertex cover.

Therefore, it is a 2-approximation algorithm.

Time Complexity: \\(O(V+E)\\) with a suitable graph representation and implementation.

### Example 2: Travelling Salesman Problem (Metric TSP)

The TSP aims to find the minimum-cost tour that visits every city exactly once and returns to the starting city.

For metric TSP, distances satisfy the triangle inequality.

A common approximation approach is:

1. Construct a Minimum Spanning Tree (MST).
2. Perform a preorder traversal of the MST.
3. Visit vertices in preorder sequence.
4. Return to the starting vertex.
5. Use shortcutting to avoid repeated vertices.

Approximation guarantee:

\\[ C\_{\text{approx}} \leq 2C\_{\text{optimal}} \\]

Therefore, this is a 2-approximation algorithm for metric TSP.

Important: This guarantee does not apply to general TSP without the triangle inequality.

## 8. Advantages and Disadvantages

Advantages

1. Provides solutions in polynomial time for difficult optimization problems.
2. Reduces computational complexity compared with exact methods.
3. Gives guaranteed solution quality.
4. Useful for large-scale real-world problems.
5. Provides a practical balance between accuracy and execution time.

Disadvantages

1. Does not always produce the optimal solution.
2. Some approximation ratios may be large.
3. Designing approximation algorithms can be difficult.
4. Better accuracy may require significantly more computation.
5. Not every optimization problem has a useful approximation scheme.

## 9. Conclusion

Approximation algorithms are important for solving computationally difficult optimization problems. They provide near-optimal solutions in polynomial time with a mathematical performance guarantee. Their quality is measured using approximation or performance ratios. Important classifications include constant-factor approximation, PTAS, FPTAS and logarithmic-factor approximation.

## PYQ mapping and preparation checklist

| Exam         | Question       | What to write                                   |
| ------------ | -------------- | ----------------------------------------------- |
| Nov/Dec 2022 | Q5(b)(ii)      | Definition, need and example                    |
| May/Jun 2023 | Q6(b)(ii)      | Definition, need and example                    |
| Nov/Dec 2023 | Q6(b)(ii)      | Definition, need and example                    |
| May/Jun 2024 | Q5(b), 9 marks | Definition, approximation ratio, classification |
| May/Jun 2025 | Q6(b), 7 marks | Definition, performance ratio and examples      |

Revision checklist

0/7 completed

Definition and need for approximation algorithms

Approximation ratio with minimization and maximization formulas

Performance ratio and its distinction

Constant-factor approximation

PTAS and FPTAS comparison

Vertex Cover 2-approximation algorithm

Metric TSP 2-approximation algorithm

Exam tip: For a 9-mark question, give the definition, need, both ratio formulas, classification table, and explain at least one approximation algorithm with its guarantee. For 7 marks, prioritise the ratios, classification and examples.