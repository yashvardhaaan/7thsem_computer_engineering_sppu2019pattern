# 1. Branch and Bound Fundamentals



Very important SPPU topic

9 marks



Branch and Bound is an algorithmic technique used to solve optimization problems such as 0/1 Knapsack and Travelling Salesperson Problem (TSP).

Your three PYQs cover three important areas:

1. Branch and Bound for 0/1 Knapsack.
2. Branch and Bound for TSP.
3. Control abstraction using Least Cost Search.

## 1. Definition

Branch and Bound is a systematic algorithmic technique that solves optimization problems by dividing them into smaller subproblems (branching) and eliminating subproblems that cannot produce a better solution than the current best solution (bounding).

It explores a state-space tree to find an optimal solution.

## 2. Basic principles

Branch and Bound works using four main operations:

1\. Branching

- Divide the main problem into smaller subproblems.
- Each branch represents a decision.

2\. Bounding

- Calculate an upper or lower bound on the best possible solution from a node.
- Use the bound to decide whether the node is worth exploring.

3\. Pruning

- Discard nodes that cannot improve the current best solution.
- This reduces unnecessary computation.

4\. Optimal solution

\- Continue exploring promising nodes until the optimal solution is established.

## 3. Important terminology

| Term             | Meaning                                          |
| ---------------- | ------------------------------------------------ |
| State-space tree | Tree representing all possible solutions         |
| Root node        | Initial problem                                  |
| Live node        | Generated node that may be explored              |
| E-node           | Live node currently being expanded               |
| Dead node        | Node that will not be explored further           |
| Bound            | Estimate of the best possible result from a node |
| Pruning          | Removing non-promising nodes                     |
| Incumbent        | Best feasible solution found so far              |

## 4. Types of Branch and Bound

There are three commonly discussed node-selection strategies.

| Strategy                    | Explanation                                                                 |
| --------------------------- | --------------------------------------------------------------------------- |
| FIFO Branch and Bound       | Uses a queue; explores nodes in breadth-first order                         |
| LIFO Branch and Bound       | Uses a stack; explores nodes in depth-first order                           |
| Least Cost Branch and Bound | Uses a priority queue; expands the live node with the lowest estimated cost |

[What Is State Space Tree at Charles Kintore blog](https://images.openai.com/static-rsc-4/eM_IqeYUErG2HiHhU9pGHSaUocJL4-kKq6i9pfUjppSUG8rIS7E9Y6VKd0hbK0XmTb3smQ6zGuOC2poI1_W4aUbzxN5otsJlKCMB2_VQyskCkM15VAlqO5D6C_ml6__6jl_JmR6tsWvwS3XXE8vcJDJ_h14nC_yob0AYLovRA8o?purpose=inline)

[storage.googleapis.com](https://storage.googleapis.com/depstokhegpmge/what-is-state-space-tree.html?utm_source=chatgpt.com)

# PYQ 1: Nov 2022 Q3(a) — Branch and Bound for 0/1 Knapsack (9 marks)

## 5. 0/1 Knapsack problem

Given `n` items, each item has:

- Weight \\(w_i\\)
- Profit \\(p_i\\)

A knapsack has maximum capacity \\(W\\).

The objective is to maximize total profit without exceeding capacity.

Mathematical representation:

\\[ \text{Maximize } \sum\_{i=1}^{n}p_ix_i \\]

Subject to:

\\[ \sum\_{i=1}^{n}w_ix_i\leq W \\]

\\[ x_i\in\\{0,1\\} \\]

Here, 1 means the item is selected and 0 means it is not selected.

## 6. Branch and Bound approach for Knapsack

1. Start with the root node representing an empty knapsack.
2. Sort items in decreasing order of profit-to-weight ratio.
3. For each item, generate two branches:
   - Include the item.
   - Exclude the item.
4. Calculate the upper bound of each node using the fractional knapsack method.
5. If the upper bound is less than or equal to the current maximum profit, prune that node.
6. Continue until no promising live nodes remain.

Upper bound calculation:

The upper bound is calculated by filling the remaining capacity fractionally, even though the actual problem is 0/1 Knapsack.

\\[ UB = \text{Current Profit}+\text{Maximum possible additional fractional profit} \\]

## 7. Algorithm for 0/1 Knapsack using Branch and Bound

```

Knapsack_BB():

    Sort items by decreasing profit/weight ratio

    Create root node:
        level = 0
        profit = 0
        weight = 0
        bound = CalculateBound(root)

    Insert root into priority queue

    maxProfit = 0

    while priority queue is not empty:

        u = Remove node with highest bound

        if u.bound <= maxProfit:
            continue

        // Include next item
        v.level = u.level + 1
        v.weight = u.weight + weight[v.level]
        v.profit = u.profit + profit[v.level]

        if v.weight <= W:
            maxProfit = max(maxProfit, v.profit)

        v.bound = CalculateBound(v)

        if v.bound > maxProfit:
            Insert v into priority queue

        // Exclude next item
        v.weight = u.weight
        v.profit = u.profit
        v.bound = CalculateBound(v)

        if v.bound > maxProfit:
            Insert v into priority queue

    return maxProfit

```

Note: `CalculateBound()` uses the fractional knapsack upper-bound calculation. The pseudocode assumes items are processed in sorted order and that nodes at the final level are not expanded further.

## 8. Illustrative numerical example

Consider the following items:

| Item | Weight | Profit | Profit/Weight |
| ---- | ------ | ------ | ------------- |
| I1   | 2      | 40     | 20            |
| I2   | 3      | 50     | 16.67         |
| I3   | 5      | 60     | 12            |

Knapsack capacity:

\\[ W=5 \\]

Possible selections:

| Selected items | Total weight | Total profit |
| -------------- | ------------ | ------------ |
| I1             | 2            | 40           |
| I2             | 3            | 50           |
| I3             | 5            | 60           |
| I1, I2         | 5            | 90           |
| I1, I3         | 7            | Invalid      |
| I2, I3         | 8            | Invalid      |

Optimal solution

\\[ \boxed{\text{Select I1 and I2}} \\]

\\[ \boxed{\text{Maximum profit}=90} \\]

This is an illustrative example, not the numerical data from your Nov 2022 paper.

# PYQ 2: Nov 2023 Q3(a) — Apply Branch and Bound to TSP (9 marks)

## 9. Travelling Salesperson Problem (TSP)

The Travelling Salesperson Problem is an optimization problem in which a salesperson must:

- Start from a city.
- Visit every other city exactly once.
- Return to the starting city.
- Minimize the total travelling cost.

Mathematical objective:

\\[ \text{Minimize }\sum\_{i=1}^{n}\sum\_{j=1}^{n}c\_{ij}x\_{ij} \\]

Subject to visiting every city exactly once and forming a single tour.

Here, \\(c\_{ij}\\) is the cost of travelling from city \\(i\\) to city \\(j\\).

## 10. Branch and Bound approach for TSP

1. Consider the initial city as the root node.
2. Generate branches for possible next cities.
3. Calculate a lower bound on the cost of completing the tour from each node.
4. Select the most promising node.
5. Prune a node if its lower bound is greater than or equal to the best complete tour cost found so far.
6. Continue until the optimal tour is determined.

Lower bound:

A lower bound estimates the minimum possible total cost of a tour through a particular node.

One common method uses a reduced cost matrix.

- Subtract the smallest finite value in each row from that row.
- Subtract the smallest finite value in each column from that column.
- Add all reductions to obtain a lower bound.

## 11. Illustrative TSP example

Consider four cities with the following cost matrix:

| City | A  | B  | C  | D  |
| ---- | -- | -- | -- | -- |
| A    | ∞  | 10 | 15 | 20 |
| B    | 10 | ∞  | 35 | 25 |
| C    | 15 | 35 | ∞  | 30 |
| D    | 20 | 25 | 30 | ∞  |

Possible tours starting from A:

| Tour              | Total cost |
| ----------------- | ---------- |
| A → B → C → D → A | 95         |
| A → B → D → C → A | 80         |
| A → C → B → D → A | 95         |
| A → C → D → B → A | 80         |
| A → D → B → C → A | 95         |
| A → D → C → B → A | 95         |

Optimal tour cost

\\[ \boxed{80} \\]

One optimal tour is:

\\[ \boxed{A\rightarrow B\rightarrow D\rightarrow C\rightarrow A} \\]

Branch and Bound avoids exploring every tour by pruning branches whose lower bounds cannot beat the best known tour.

[Travelling Salesman Problem using Branch and Bound approach](https://images.openai.com/static-rsc-4/n-EjcTSdV6sCU_SxiDad88Csa_Ch-nkKZfUWuWoiSNGf8TjRbU7ImxT_j6kbRxE1dJn3c8pad4oBghrifaJT0tu5H-5rL8v3_wl09C9SQocKOeYS6GJ6dVElRRf9_EC78dljH-wRwQBh-ZI8j1eQT1el3Xw8ykF0kuM1bldutlk?purpose=inline)

[iq.opengenus.org](https://iq.opengenus.org/travelling-salesman-branch-bound/?utm_source=chatgpt.com)

This is an illustrative example. The actual Nov 2023 question's cost matrix was not supplied.

# PYQ 3: Nov 2023 Q4(a) — Control Abstraction for Least Cost Search (9 marks)

## 12. Least Cost Search

Least Cost Search is a Branch and Bound strategy in which the live node having the minimum cost or minimum lower-bound value is selected for expansion.

It uses a priority queue.

Working:

1. Insert the root node into the priority queue.
2. Select the live node with the minimum cost.
3. Expand that node.
4. Generate its children.
5. Calculate the cost or bound of each child.
6. Insert promising children into the priority queue.
7. Repeat until the optimal solution is found.

## 13. Control abstraction algorithm

```

LeastCostBranchAndBound(root):

    Initialize priority queue PQ

    Insert root into PQ

    while PQ is not empty:

        E = Remove node with least cost from PQ

        if E is a solution:
            return E

        Generate children of E

        for each child X of E:

            if X is promising:
                Calculate cost(X)
                Insert X into PQ

    return FAILURE

```

Explanation:

- `PQ` stores all live nodes.
- `E` is the current E-node.
- The least-cost node is selected first.
- Non-promising nodes are discarded.
- The process continues until an optimal solution is obtained.

[Least Cost Branch and Bound - CodeCrucks](https://images.openai.com/static-rsc-4/Ekdoy14IpmQoqQwLtzWM_1WKUquDvQKz5SfRe9dbdPvV1JlEFeFrINwUrEXenorHgOHjP0D9z-3Y_5ZDIhUig8adN4ggfWqqD3joa5bFTFvIKLmFfltkiT5NdkUKZFBG16eIHRWYH8Nty5GASyZiKH9D1OXi34_6RpH5qAzAlbw?purpose=inline)

[codecrucks.com](https://codecrucks.com/least-cost-branch-and-bound/?utm_source=chatgpt.com)

## 14. Complexity analysis

| Problem / strategy         | Worst-case time complexity                                             |
| -------------------------- | ---------------------------------------------------------------------- |
| Branch and Bound — general | Exponential, problem-dependent                                         |
| 0/1 Knapsack               | \\(O(2^n)\\)                                                           |
| TSP                        | \\(O(n!)\\)                                                            |
| Least Cost Search          | Depends on the number of generated nodes and priority queue operations |

For a search tree with \\(N\\) generated nodes, a priority queue typically requires \\(O(\log N)\\) time per insertion or removal. Therefore, the queue-operation cost is approximately \\(O(N\log N)\\), excluding the cost of calculating bounds.

Important: Branch and Bound improves practical performance through pruning, but it does not generally remove the exponential worst-case complexity.

## 15. Branch and Bound vs Backtracking

This is a useful comparison for exams.

| Backtracking                                     | Branch and Bound                                 |
| ------------------------------------------------ | ------------------------------------------------ |
| Mainly used for constraint satisfaction problems | Mainly used for optimization problems            |
| Checks whether a partial solution is feasible    | Uses bounds to estimate the best possible result |
| Prunes non-promising or infeasible nodes         | Prunes nodes that cannot improve the incumbent   |
| Often uses DFS                                   | Can use FIFO, LIFO or Least Cost Search          |
| Example: N-Queens, Graph Coloring                | Example: 0/1 Knapsack, TSP                       |

## 16. Important exam preparation checklist

Preparation progress

0/7

Definition and basic principles of Branch and Bound

Live node, E-node, dead node and state-space tree

FIFO, LIFO and Least Cost Search

0/1 Knapsack: upper-bound calculation and algorithm

TSP: lower-bound calculation and pruning

Least Cost Search control abstraction

Time complexity and Backtracking comparison

### My recommendation

Prioritize these three answers in this order:

1. 0/1 Knapsack using Branch and Bound — understand upper-bound calculation and the include/exclude tree.
2. TSP using Branch and Bound — understand lower bounds and pruning.
3. Least Cost Search — memorize the control abstraction and priority queue working.

These three areas cover all the Branch and Bound PYQs you listed.


# 6. Difference Between Backtracking and Branch and Bound



PYQ: May/June 2024 Q4(a)

8 marks



## 1. Introduction

Backtracking: Backtracking is an algorithmic technique that builds a solution step by step and abandons a partial solution when it cannot lead to a valid solution.

Branch and Bound: Branch and Bound is an optimization technique that divides a problem into smaller subproblems and uses bounds to eliminate branches that cannot produce a better solution.

Both techniques use a state-space tree, but their objectives and pruning methods are different.

## 2. Comparison between Backtracking and Branch and Bound

| Basis                      | Backtracking                                     | Branch and Bound                                            |
| -------------------------- | ------------------------------------------------ | ----------------------------------------------------------- |
| 1. Main purpose            | Finds feasible solutions                         | Finds optimal solutions                                     |
| 2. Problem type            | Constraint satisfaction problems                 | Optimization problems                                       |
| 3. Search technique        | Generally Depth-First Search                     | FIFO, LIFO or Least Cost Search                             |
| 4. State-space exploration | Explores a branch until it becomes non-promising | Explores nodes according to the selected search strategy    |
| 5. Pruning condition       | Rejects nodes violating constraints              | Rejects nodes whose bounds cannot improve the best solution |
| 6. Bounding function       | Uses feasibility or promising conditions         | Uses upper or lower bounds                                  |
| 7. Data structures         | Usually recursion or stack                       | Queue, stack or priority queue                              |
| 8. Optimality              | Does not necessarily optimize the objective      | Finds an optimal solution when correctly implemented        |
| 9. Memory usage            | Usually lower with DFS                           | Can be high, especially with best-first search              |
| 10. Examples               | N-Queens, Graph Coloring, Sum of Subsets         | 0/1 Knapsack, TSP, scheduling                               |

## 3. Difference in state-space exploration

Backtracking:

- Starts from the root node.
- Explores one branch deeply.
- Checks whether the partial solution is feasible.
- Backtracks when a constraint is violated.

[module5_backtrackingnbranchnbound_2022.pdf](https://images.openai.com/static-rsc-4/8LjmCv5erhdQDGCFmtxHJSdO763vBzyptViitJZN3QiziWtulVwko3NAOOXRJjCUCBSSvApITTxqWtuOw-AJtMnB30qrzN85jmVCgkpqDyxJZY711mYXfZo3ykuW-NFfuqJN0nkuoIqZnganksrhe66uaT29Dj3KQSldfedUglc?purpose=inline)

[slideshare.net](https://www.slideshare.net/slideshow/module5backtrackingnbranchnbound2022pdf/252492783?utm_source=chatgpt.com)

Branch and Bound:

- Starts from the root node.
- Generates multiple live nodes.
- Calculates bounds for each node.
- Selects the next node using FIFO, LIFO or Least Cost Search.
- Prunes nodes that cannot improve the current best solution.

[PPT - Branch &amp; Bound PowerPoint Presentation, free download - ID:2084597](https://images.openai.com/static-rsc-4/yMswgodhBw9pUrEKwWI0rEd7dL-ShxKp3arTuzGjg7333HWfCp9ZrIAvMBkPDY05QBYFx-GjvSyM8O-RKlWipSHo-nTsaC6xuRWZ8GO5xRzLKMc1LomfDLwVyK7G5GTA6i-iYkGP0cLEbOgQkd0VSN4er4c2pHBUHk3pegEDM1U?purpose=inline)

[slideserve.com](https://www.slideserve.com/avak/branch-bound?utm_source=chatgpt.com)

## 4. Examples

| Backtracking      | Branch and Bound               |
| ----------------- | ------------------------------ |
| 8-Queen Problem   | 0/1 Knapsack                   |
| Graph Coloring    | Travelling Salesperson Problem |
| Sum of Subsets    | Job Scheduling                 |
| Hamiltonian Cycle | Combinatorial optimization     |

## 5. Conclusion

Backtracking is mainly used to find feasible solutions by checking constraints, whereas Branch and Bound is mainly used to find optimal solutions by calculating bounds and pruning non-promising nodes.

Exam tip: For an 8-mark answer, write the introduction, at least eight comparison points, state-space exploration differences, examples and conclusion. Pay particular attention to the distinction between constraint-based pruning and bound-based pruning.