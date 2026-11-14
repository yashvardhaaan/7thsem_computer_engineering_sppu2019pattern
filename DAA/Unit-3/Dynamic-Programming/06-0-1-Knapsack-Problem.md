# 4. 0/1 Knapsack Problem Using Dynamic Programming



Very Important – Repeated PYQ

9–10 Marks



This is one of the important numerical topics in your SPPU Dynamic Programming syllabus.

Previous year questions:

1. Nov 2023 Q1(b): Find the optimal solution using Dynamic Programming for four items with capacity 5. (9 marks)
2. May 2023 Q1(a): Solve a Knapsack Problem using DP with capacity 5. (10 marks)
3. May 2025 Q2(b): Solve a 0/1 Knapsack Problem using DP with capacity 7. (10 marks)

All three questions test the same fundamental algorithm. Only the item weights, profits and knapsack capacity change.

Since the actual numerical tables are not included in your message, I'll demonstrate the complete SPPU solving method with an illustrative example.

## 1. Definition (1 Mark)

The 0/1 Knapsack Problem is an optimization problem in which we are given a set of items, each having a weight and profit, and a knapsack with limited capacity.

The objective is to select items such that the total profit is maximum without exceeding the capacity of the knapsack.

Important conditions:

- Each item can either be selected completely (1) or rejected (0).
- Items cannot be divided into fractions.
- Total selected weight must not exceed the knapsack capacity.
- The objective is to maximize total profit.

## 2. Mathematical Formulation

Let:

- \\(n\\) = Number of items.
- \\(W\\) = Knapsack capacity.
- \\(w_i\\) = Weight of item i.
- \\(p_i\\) = Profit of item i.
- \\(x_i\\) = Selection variable.

Objective function:

\\[ \boxed{\text{Maximize }Z=\sum\_{i=1}^{n}p_ix_i} \\]

Subject to:

\\[ \sum\_{i=1}^{n}w_ix_i\leq W \\]

Where:

\\[ x_i\in\\{0,1\\} \\]

## 3. Dynamic Programming Recurrence Relation (2 Marks)

Let:

\\[ DP[i][w] \\]

represent the maximum profit obtained using the first i items with knapsack capacity w.

Base conditions:

\\[ DP[0][w]=0 \\]

\\[ DP[i][0]=0 \\]

Recurrence relation:

If the weight of the current item is greater than the available capacity:

\\[ w_i>w \\]

Then:

\\[ \boxed{DP[i][w]=DP[i-1][w]} \\]

Otherwise, we have two choices:

1. Exclude the item.
2. Include the item.

Therefore:

\\[ \boxed{ DP[i][w]=\max \begin{cases} DP[i-1][w]\\\ p_i+DP[i-1][w-w_i] \end{cases} } \\]

This recurrence is the most important formula for the numerical problem.

## 4. Algorithm / Pseudocode (1 Mark)

```
Algorithm Knapsack(W, wt, profit, n)

{
    for i = 0 to n do
        DP[i][0] = 0;

    for w = 0 to W do
        DP[0][w] = 0;

    for i = 1 to n do
    {
        for w = 1 to W do
        {
            if wt[i] <= w then
            {
                DP[i][w] = max(
                    DP[i-1][w],
                    profit[i] + DP[i-1][w-wt[i]]
                );
            }
            else
            {
                DP[i][w] = DP[i-1][w];
            }
        }
    }

    return DP[n][W];
}
```

## 5. Solved Numerical Example (5 Marks)

Consider the following four items.

Illustrative example

Knapsack capacity:

\\[ W=5 \\]

Given data:

| Item | Weight | Profit |
| ---- | ------ | ------ |
| I1   | 2      | 12     |
| I2   | 1      | 10     |
| I3   | 3      | 20     |
| I4   | 2      | 15     |

Step 1: Initialize the DP table.

Number of items = 4.

Capacity = 5.

Create a table with 5 columns (capacity 1 to 5) and 4 item rows, along with the zero row and column.

Step 2: Fill the DP table.

Use the recurrence:

\\[ DP[i][w]=\max (DP[i-1][w],p_i+DP[i-1][w-w_i]) \\]

Table entries represent maximum profit.

| Items / Capacity | 0 | 1  | 2  | 3  | 4  | 5  |
| ---------------- | - | -- | -- | -- | -- | -- |
| No item          | 0 | 0  | 0  | 0  | 0  | 0  |
| I1 (2,12)        | 0 | 0  | 12 | 12 | 12 | 12 |
| I1, I2           | 0 | 10 | 12 | 22 | 22 | 22 |
| I1, I2, I3       | 0 | 10 | 12 | 22 | 30 | 32 |
| I1, I2, I3, I4   | 0 | 10 | 15 | 25 | 30 | 37 |

Step 3: Explain some calculations.

For item I1, weight = 2 and profit = 12.

At capacity 2:

\\[ DP[1][2]=\max(0,12)=12 \\]

For item I2, weight = 1 and profit = 10.

At capacity 3:

\\[ DP[2][3]=\max(12,10+12) \\]

\\[ =22 \\]

For item I3, weight = 3 and profit = 20.

At capacity 5:

\\[ DP[3][5]=\max(22,20+12) \\]

\\[ =32 \\]

For item I4, weight = 2 and profit = 15.

At capacity 5:

\\[ DP[4][5]=\max(32,15+22) \\]

\\[ =37 \\]

## 6. Find the Optimal Solution (1 Mark)

The maximum profit is obtained from the last cell:

\\[ DP[4][5]=37 \\]

Now perform backtracking to identify selected items.

1. Compare DP[4][5] = 37 with DP[3][5] = 32. Different, so select I4.
2. Remaining capacity = 5 − 2 = 3.
3. Compare DP[3][3] = 25 with DP[2][3] = 22. Different, so select I3.
4. Remaining capacity = 3 − 3 = 0.
5. Stop.

## Final Optimal Solution

Selected items\
I3 and I4

Total weight\
3 + 2 = 5

Total profit

# 35

Correction: The DP table's last cell should be 35, not 37. The correct final row is 0, 10, 15, 25, 32, 35.

\\[ \boxed{\text{Maximum Profit}=35} \\]

Therefore, the optimal selection is:

\\[ \boxed{X=(0,0,1,1)} \\]

The selected items are I3 and I4.

## 7. Time and Space Complexity (1 Mark)

Let:

- n = Number of items.
- W = Knapsack capacity.

| Complexity       | Value       |
| ---------------- | ----------- |
| Time Complexity  | \\(O(nW)\\) |
| Space Complexity | \\(O(nW)\\) |

Reason:

- Outer loop runs n times.
- Inner loop runs W times.
- Each cell requires constant-time calculation.

Therefore:

\\[ \boxed{T(n)=O(nW)} \\]

\\[ \boxed{S(n)=O(nW)} \\]

## 8. Important Differences: Fractional vs 0/1 Knapsack

| Fractional Knapsack           | 0/1 Knapsack              |
| ----------------------------- | ------------------------- |
| Greedy approach               | Dynamic Programming       |
| Items can be divided          | Items cannot be divided   |
| Uses profit/weight ratio      | Uses DP recurrence        |
| Greedy gives optimal solution | DP gives optimal solution |
| \\(O(n\log n)\\)              | \\(O(nW)\\)               |

## SPPU PYQ Preparation Strategy

All three questions are based on the same algorithm.

| PYQ            | Capacity | What changes?                  |
| -------------- | -------- | ------------------------------ |
| Nov 2023 Q1(b) | 5        | Four items and their values    |
| May 2023 Q1(a) | 5        | Given weights and profits      |
| May 2025 Q2(b) | 7        | Capacity and given item values |

For every numerical question, follow this exact order:

1. Write the given item table.
2. Write the recurrence relation.
3. Draw the DP table.
4. Fill all cells row by row.
5. Identify the maximum profit.
6. Backtrack to find selected items.
7. Write time and space complexity.

## Test your understanding

Question: In 0/1 Knapsack, what does DP[i][w] represent?

Total weight of all items.

Maximum profit using first i items with capacity w.

Minimum number of items selected.

Profit-to-weight ratio.

Check answer

Next step: Upload the three actual PYQ numerical questions. We can solve Nov 2023, May 2023 and May 2025 separately with their exact values and complete DP tables, so you have the exact answers ready for your SPPU examination.