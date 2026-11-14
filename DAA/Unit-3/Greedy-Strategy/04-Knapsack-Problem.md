# 3. Knapsack Problem Using Greedy Approach — 8 Marks



SPPU End-Semester Preparation

8 Marks



Question (Nov 2024 Q1(b)): Solve the given Knapsack Problem using the Greedy Approach. (8 marks)

This question is based on the Fractional Knapsack Problem, which is solved using the greedy strategy.

Since the actual numerical data from the question paper is not included here, I'll explain the complete method with an exam-style solved example.

## 1. Definition (1 Mark)

The Knapsack Problem is an optimization problem in which we are given a set of objects, each having a weight and profit.

The objective is to select objects to maximize the total profit without exceeding the capacity of the knapsack.

In the Fractional Knapsack Problem, objects can be divided into fractions.

Greedy principle: Select the object having the maximum profit-to-weight ratio first.

## 2. Mathematical Formulation

Let:

- \\(P_i\\) = Profit of object i.
- \\(W_i\\) = Weight of object i.
- \\(M\\) = Capacity of knapsack.
- \\(X_i\\) = Fraction of object selected.

Objective function:

\\[ \text{Maximize } Z=\sum\_{i=1}^{n}P_iX_i \\]

Subject to:

\\[ \sum\_{i=1}^{n}W_iX_i\leq M \\]

And:

\\[ 0\leq X_i\leq 1 \\]

## 3. Greedy Algorithm (2 Marks)

The following steps are used:

1. Calculate the profit-to-weight ratio for every object.
2. Sort objects in descending order of their ratios.
3. Select the object with the highest ratio.
4. If the complete object fits, add it to the knapsack.
5. Otherwise, take only the required fraction of the object.
6. Continue until the knapsack becomes full.

Formula:

\\[ \boxed{Ratio=\frac{Profit}{Weight}} \\]

## 4. Solved Numerical Example (4 Marks)

Consider the following objects with their respective profits and weights.

Knapsack capacity = 20 units.

Given data:

| Object | Profit (P) | Weight (W) |
| ------ | ---------- | ---------- |
| O1     | 25         | 5          |
| O2     | 24         | 4          |
| O3     | 15         | 6          |
| O4     | 30         | 10         |

Step 1: Calculate profit-to-weight ratio.

\\[ Ratio=\frac{P_i}{W_i} \\]

| Object | Profit | Weight | P/W Ratio |
| ------ | ------ | ------ | --------- |
| O1     | 25     | 5      | 5         |
| O2     | 24     | 4      | 6         |
| O3     | 15     | 6      | 2.5       |
| O4     | 30     | 10     | 3         |

Step 2: Arrange objects in descending order of ratio.

| Rank | Object | Profit | Weight | Ratio |
| ---- | ------ | ------ | ------ | ----- |
| 1    | O2     | 24     | 4      | 6     |
| 2    | O1     | 25     | 5      | 5     |
| 3    | O4     | 30     | 10     | 3     |
| 4    | O3     | 15     | 6      | 2.5   |

Step 3: Fill the knapsack.

Knapsack capacity = 20.

| Object | Weight selected | Profit earned | Remaining capacity |
| ------ | --------------- | ------------- | ------------------ |
| O2     | 4               | 24            | 16                 |
| O1     | 5               | 25            | 11                 |
| O4     | 10              | 30            | 1                  |
| O3     | 1               | 2.5           | 0                  |

Explanation:

- Select O2 completely: Weight = 4, Profit = 24.
- Select O1 completely: Weight = 5, Profit = 25.
- Select O4 completely: Weight = 10, Profit = 30.
- Remaining capacity = 1.
- O3 has weight 6, so select only 1/6 fraction.

Fraction of O3 selected:

\\[ X_3=\frac{1}{6} \\]

Profit obtained from O3:

\\[ 15\times\frac{1}{6}=2.5 \\]

Step 4: Calculate total profit.

\\[ Z=24+25+30+2.5 \\]

## Final Answer

Total weight\
20 units

Total profit

# 81.5

\\[ \boxed{Maximum\ Profit=81.5} \\]

\\[ \boxed{X=(1,1,\frac16,1)} \\]

Hence, the maximum profit obtained using the greedy approach is 81.5.

## 5. Time Complexity Analysis (1 Mark)

Let n be the number of objects.

| Operation           | Complexity |
| ------------------- | ---------- |
| Calculate P/W ratio | O(n)       |
| Sort objects        | O(n log n) |
| Select objects      | O(n)       |

Overall time complexity:

\\[ \boxed{O(n\log n)} \\]

Space complexity:

\\[ \boxed{O(n)} \\]

## 6. Advantages and Applications

Advantages:

1. Simple and efficient approach.
2. Produces an optimal solution for fractional knapsack.
3. Objects can be divided into fractions.

Applications:

1. Resource allocation.
2. Cargo loading.
3. Investment allocation.
4. Budget optimization.

## Important SPPU Exam Differences

Do not confuse these two problems:

Fractional Knapsack

Greedy gives optimal solution

- Objects can be divided.
- Uses profit/weight ratio.
- Time complexity: O(n log n).

0/1 Knapsack

Greedy is not always optimal

- Objects cannot be divided.
- Each object is either selected or rejected.
- Usually solved using Dynamic Programming.

## Practice: Check your understanding

In Fractional Knapsack, which object should be selected first?

Object with maximum weight.

Object with maximum profit-to-weight ratio.

Object with minimum profit.

Object with minimum weight only.

Check answer

Next topic: 0/1 Knapsack Problem — understand why the greedy method does not always produce the optimal solution.

If you upload the Nov 2024 Q1(b) question image, I can solve the exact numerical problem with the same SPPU answer format.