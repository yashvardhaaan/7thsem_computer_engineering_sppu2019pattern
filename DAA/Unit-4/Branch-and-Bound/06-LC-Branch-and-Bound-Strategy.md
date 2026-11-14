# 2. LC Branch and Bound (Least Cost Branch and Bound)



Very important — 7 PYQ occurrences

5–10 marks



This is one of the highest-priority topics in your Branch and Bound unit. The repeated 0/1 Knapsack questions mean you should especially practise the cost calculation, priority queue operations, and state-space tree.

## 1. Definition

Least Cost Branch and Bound (LC Branch and Bound) is an optimization technique in which the live node having the minimum cost or minimum bound is selected for expansion.

It uses a priority queue (min-heap) to select the most promising live node.

For minimization problems, the node with the smallest lower bound is expanded first.

For maximization problems such as 0/1 Knapsack, we commonly use an upper bound on profit. Therefore, we select the node with the highest upper bound (equivalently, the lowest negative upper-bound cost).

This distinction is important: LC search always minimizes its priority value, but a Knapsack implementation may store `cost = -upperBound`.

## 2. LC Branch and Bound principle

The algorithm works as follows:

1. Create the root node representing the initial problem.
2. Calculate its cost or bound.
3. Insert the root into a priority queue.
4. Remove the live node with the least priority cost.
5. Expand that node and generate children.
6. Calculate the cost/bound of each child.
7. Insert only promising children into the priority queue.
8. Repeat until the optimal solution is established.

## 3. Important terminology

| Term           | Meaning                                            |
| -------------- | -------------------------------------------------- |
| Live node      | Generated node that may still be explored          |
| E-node         | Live node currently being expanded                 |
| Dead node      | Node that will not be expanded further             |
| Bound          | Estimate of the best possible solution from a node |
| Priority queue | Stores live nodes according to their cost          |
| Pruning        | Discarding nodes that cannot improve the answer    |

## 4. Control abstraction for Least Cost Search

This is directly relevant to Nov/Dec 2022 Q4(a), 9 marks.

```

LC_Branch_And_Bound(root):

    Initialize priority queue PQ

    Calculate cost(root)
    Insert root into PQ

    while PQ is not empty:

        E = Delete node with minimum cost from PQ

        if E is a solution:
            return E

        Generate children of E

        for each child X of E:

            Calculate cost(X)

            if X is promising:
                Insert X into PQ

    return FAILURE

```

Explanation:

- The root is inserted first.
- The minimum-cost live node is selected.
- The selected node becomes the E-node.
- Its children are generated.
- Non-promising children are rejected.
- The process continues until the optimal solution is found.

[PPT - Ch22.Branch and Bound PowerPoint Presentation, free download - ID:5776693](https://images.openai.com/static-rsc-4/2UuVA4n8NHV4Cnxft6e0W1cpknRvI1cYw6WAGNV6rpo2S1OoZT9r3Oka7ZPIJgiJVUA7237wIIhgOKU1tRva3FKaJR7f7oDDf7Fm4LO6_WHTHkWD6sbaOhngaYW72SV8S7cru32or5p5B_7UitLnPItSvXe5Q4WRjDtW__k5cv0?purpose=inline)

[slideserve.com](https://www.slideserve.com/erna/ch22-branch-and-bound?utm_source=chatgpt.com)

# PYQs: 0/1 Knapsack using LC Branch and Bound

Highest-priority numerical question

This question appears repeatedly in your papers: Nov 2022, May 2023, May 2024, Nov 2024 and May 2025.

## 5. 0/1 Knapsack problem

Given `n` items, each item has a weight and profit. A knapsack has a fixed capacity \\(W\\).

The objective is to maximize profit without exceeding the capacity.

\\[ \text{Maximize }P=\sum\_{i=1}^{n}p_ix_i \\]

Subject to:

\\[ \sum\_{i=1}^{n}w_ix_i\leq W \\]

\\[ x_i\in\\{0,1\\} \\]

Here, \\(x_i=1\\) means the item is selected, and \\(x_i=0\\) means it is rejected.

## 6. Cost / bound calculation

For 0/1 Knapsack, the bound is calculated using the Fractional Knapsack method.

The items are first sorted in decreasing order of:

\\[ \frac{p_i}{w_i} \\]

To calculate the upper bound of a node:

1. Start with its current profit and weight.
2. Add the profits of the remaining items fully while capacity permits.
3. If the next item cannot fit completely, add its fractional profit.
4. The resulting value is the upper bound.

\\[ \boxed{UB=P+\text{maximum possible additional fractional profit}} \\]

Pruning condition:

\\[ UB\leq \text{Current Maximum Profit} \\]

If this condition is true, discard the node because it cannot improve the best known solution.

Important: Since Knapsack is a maximization problem, the most promising node has the highest upper bound. An implementation can use a max-priority queue, or a min-priority queue with priority equal to \\(-UB\\).

## 7. Algorithm for 0/1 Knapsack using LC Branch and Bound

```

LC_Knapsack(W, items):

    Sort items by decreasing profit/weight ratio

    maxProfit = 0

    Create root:
        level = 0
        profit = 0
        weight = 0
        bound = CalculateBound(root)

    Insert root into priority queue
    // Highest upper bound gets highest priority

    while priority queue is not empty:

        u = Remove node with highest upper bound

        if u.bound <= maxProfit:
            continue

        if u.level == n:
            continue

        i = u.level + 1

        // Branch 1: Include item i
        v.level = i
        v.weight = u.weight + weight[i]
        v.profit = u.profit + profit[i]

        if v.weight <= W:
            maxProfit = max(maxProfit, v.profit)

            v.bound = CalculateBound(v)

            if v.bound > maxProfit:
                Insert v into priority queue

        // Branch 2: Exclude item i
        v.level = i
        v.weight = u.weight
        v.profit = u.profit

        v.bound = CalculateBound(v)

        if v.bound > maxProfit:
            Insert v into priority queue

    return maxProfit

```

Note: `CalculateBound()` greedily fills the remaining capacity fractionally, starting with the next unprocessed item. The priority queue is ordered by decreasing upper bound.

## 8. Solved numerical example

Consider the following illustrative problem:

- Knapsack capacity = 16
- Four items are given.

| Item | Weight | Profit | P/W |
| ---- | ------ | ------ | --- |
| I1   | 2      | 40     | 20  |
| I2   | 5      | 30     | 6   |
| I3   | 10     | 50     | 5   |
| I4   | 5      | 10     | 2   |

The items are already sorted in decreasing profit/weight ratio.

Step 1: Calculate the root bound

Capacity = 16

- Take I1 fully: weight 2, profit 40.
- Take I2 fully: weight 5, profit 30.
- Remaining capacity = 9.
- Take 9/10 of I3: profit = 45.

Therefore:

\\[ UB=40+30+45=\boxed{115} \\]

Step 2: Branch on I1

Include I1

\\[ P=40,\quad W=2 \\]

Remaining capacity = 14.

\\[ UB=40+30+50=120 \\]

Exclude I1

\\[ P=0,\quad W=0 \\]

\\[ UB=30+50+\frac{1}{5}(10)=82 \\]

The include branch is more promising and is explored first.

Step 3: Branch on I2 after including I1

| Decision               | Weight | Profit | Upper bound |
| ---------------------- | ------ | ------ | ----------- |
| Include I1, I2         | 7      | 70     | 115         |
| Include I1, exclude I2 | 2      | 40     | 98          |

Step 4: Branch on I3

- Including I3 with I1 and I2 gives weight \\(2+5+10=17\\), which exceeds capacity. Reject.
- Excluding I3 leaves I1, I2 and I4: weight \\(2+5+5=12\\), profit \\(40+30+10=80\\).

The other promising branch is I1, exclude I2, include I3:

\\[ W=2+10=12 \\]

\\[ P=40+50=\boxed{90} \\]

This is a feasible solution.

Step 5: Check I4

Adding I4 to this selection gives weight:

\\[ 2+10+5=17>16 \\]

Therefore, I4 cannot be included.

The remaining branches cannot produce a profit greater than 90 and are pruned.

Optimal solution

\\[ \boxed{\text{Select I1 and I3}} \\]

\\[ \boxed{\text{Total weight}=12} \\]

\\[ \boxed{\text{Maximum profit}=90} \\]

This is an illustrative example, not the exact numerical data from your question papers.

### State-space tree for the example

Each node is represented as `(weight, profit, upper bound)`.

```
                         Root
                     (0, 0, 115)
                     /          \
                Include I1     Exclude I1
                (2,40,115)     (0,0,82)
                    |
              Include I2
               (7,70,115)
                /       \
          Include I3   Exclude I3
          (17,120)     (7,70,80)
          Infeasible       |
                        Include I4
                        (12,80)
```

Another promising branch:

```
             Include I1
             (2,40,115)
                  |
             Exclude I2
              (2,40,98)
                  |
             Include I3
              (12,90)
                  |
             Exclude I4
             (12,90)
                  ✓
```

The tree is simplified to show the important branches; infeasible and non-promising branches are pruned.

## 9. Time and space complexity

| Complexity                 | Result                                         |
| -------------------------- | ---------------------------------------------- |
| Worst-case time            | \\(O(2^n)\\)                                   |
| Worst-case space           | \\(O(2^n)\\) for storing live nodes            |
| Bound calculation per node | \\(O(n)\\) in a straightforward implementation |

Branch and Bound reduces the number of nodes explored in practice, but its worst-case complexity remains exponential.

## 10. Short note: LC Branch and Bound (5 marks)

Definition: LC Branch and Bound is a search technique that expands the live node with the least cost using a priority queue.

Characteristics:

1. Uses a priority queue to store live nodes.
2. Selects the minimum-cost node for expansion.
3. Calculates bounds to identify promising nodes.
4. Prunes nodes that cannot lead to an optimal solution.
5. Continues until the optimal solution is found.

Applications:

- 0/1 Knapsack.
- Travelling Salesperson Problem.
- Scheduling problems.
- Other combinatorial optimization problems.

Advantages:

- Avoids exploring unnecessary nodes.
- Finds optimal solutions when the bounding method is valid.
- Often performs better than exhaustive search.

## 11. PYQ preparation checklist

Preparation progress

0/9

LC Branch and Bound definition and principle

Priority queue and live-node selection

Control abstraction for Least Cost Search

Fractional Knapsack upper-bound calculation

Include and exclude branching

Complete numerical 0/1 Knapsack solution

State-space tree with pruning

Worst-case time and space complexity

5-mark short note

One important correction to remember: In the numerical example, the upper bound after including I1 is 115, not 120:

\\[ 40+30+\frac{9}{10}(50)=115 \\]

For your exams, focus most on solving a complete Knapsack numerical with the priority queue and state-space tree. This is the recurring 9–10 mark question.



# 4. Drawbacks of Branch and Bound



4 marks

Repeated PYQ — 2 occurrences



Definition: Branch and Bound is an optimization technique that explores a state-space tree and eliminates non-promising nodes using bounding functions to find an optimal solution.

## Major drawbacks

1\. High memory requirements: It stores many live nodes in a priority queue or other data structures, requiring large memory.

2\. Exponential worst-case complexity: In the worst case, it may explore almost all possible solutions, resulting in exponential or factorial time complexity.

3\. Large state-space trees: For complex problems, the number of nodes grows rapidly, making exploration time-consuming.

4\. Dependence on bounding functions: Efficiency depends on the quality of the bounds. Weak bounds result in less pruning and more node exploration.

5\. High computational overhead: Calculating bounds and maintaining priority queues requires additional processing.

6\. Not suitable for all problems: It is most useful when a problem has a manageable search space and effective bounding techniques.

## Conclusion

Branch and Bound guarantees an optimal solution when correctly implemented with valid bounds, but its high memory consumption and exponential worst-case complexity can make it inefficient for large problems.

Exam tip

For a 4-mark answer, write the definition followed by the first four drawbacks with one-line explanations. That is sufficient for a well-structured answer.