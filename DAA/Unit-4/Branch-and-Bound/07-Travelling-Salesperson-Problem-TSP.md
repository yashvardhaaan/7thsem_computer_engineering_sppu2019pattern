# 3. Travelling Salesperson Problem (TSP) using Branch and Bound



Important SPPU topic

8–9 marks



TSP is an important application of Branch and Bound. Your question papers contain two variations:

- Nov/Dec 2023 Q3(a): Apply Branch and Bound to TSP using a given distance graph (9 marks).
- Nov/Dec 2024 Q4(a): Find the shortest route using Branch and Bound, starting from city A (8 marks).

You should prepare the complete numerical method, especially the cost matrix reduction and lower-bound calculation.

## 1. Problem definition

The Travelling Salesperson Problem (TSP) is an optimization problem in which a salesperson must visit every city exactly once and return to the starting city, while minimizing the total travelling cost.

Objective:

- Start from a specified city.
- Visit all other cities exactly once.
- Return to the starting city.
- Find the minimum-cost tour.

Mathematical representation:

\\[ \text{Minimize } \sum\_{i=1}^{n}\sum\_{j=1}^{n}c\_{ij}x\_{ij} \\]

Where:

- \\(c\_{ij}\\) = cost of travelling from city \\(i\\) to city \\(j\\).
- \\(x\_{ij}=1\\) if the route from \\(i\\) to \\(j\\) is selected; otherwise 0.

## 2. Branch and Bound approach

Branch and Bound solves TSP by constructing a state-space tree and calculating a lower bound for each node.

Main steps:

1. Consider the starting city as the root node.
2. Generate branches representing possible next cities.
3. Calculate the lower bound of each node.
4. Select the most promising node (lowest lower bound).
5. Continue branching and calculating bounds.
6. Prune nodes whose lower bound is greater than or equal to the best complete tour cost.
7. Stop when the minimum-cost tour is established.

## 3. Cost calculation using reduced cost matrix

A common SPPU method uses row and column reduction.

Step 1: Create the cost matrix

- Put the distance between cities in each cell.
- Put infinity (\\(\infty\\)) on the diagonal because travelling from a city to itself is not allowed.

Step 2: Row reduction

- Find the smallest finite value in each row.
- Subtract it from every finite element in that row.
- Add all row minima.

Step 3: Column reduction

- Find the smallest finite value in each column of the row-reduced matrix.
- Subtract it from every finite element in that column.
- Add all column minima.

Step 4: Calculate lower bound

\\[ \boxed{LB=\text{Row reductions}+\text{Column reductions}} \\]

Step 5: Branch

- Select a possible next city.
- Fix that route.
- Set the selected row and column to infinity.
- Set the reverse edge to infinity to prevent an immediate return.
- Reduce the resulting matrix again.
- Calculate the new lower bound.

The node with the smallest lower bound is explored first.

## 4. Solved numerical example using Branch and Bound

Let's solve an illustrative four-city TSP problem.

Given distance matrix:

| City | A  | B  | C  | D  |
| ---- | -- | -- | -- | -- |
| A    | ∞  | 10 | 15 | 20 |
| B    | 10 | ∞  | 35 | 25 |
| C    | 15 | 35 | ∞  | 30 |
| D    | 20 | 25 | 30 | ∞  |

Starting city = A.

### Step 1: Row reduction

Find the minimum element of every row.

| Row | Minimum |
| --- | ------- |
| A   | 10      |
| B   | 10      |
| C   | 15      |
| D   | 20      |

Total row reduction:

\\[ 10+10+15+20=55 \\]

Subtract these values from their respective rows.

Row-reduced matrix

| City | A | B  | C  | D  |
| ---- | - | -- | -- | -- |
| A    | ∞ | 0  | 5  | 10 |
| B    | 0 | ∞  | 25 | 15 |
| C    | 0 | 20 | ∞  | 15 |
| D    | 0 | 5  | 10 | ∞  |

### Step 2: Column reduction

Find the minimum value of each column.

| Column | Minimum |
| ------ | ------- |
| A      | 0       |
| B      | 0       |
| C      | 5       |
| D      | 10      |

Total column reduction:

\\[ 0+0+5+10=15 \\]

Subtract these values from their respective columns.

Final reduced cost matrix

| City | A | B  | C  | D |
| ---- | - | -- | -- | - |
| A    | ∞ | 0  | 0  | 0 |
| B    | 0 | ∞  | 20 | 5 |
| C    | 0 | 20 | ∞  | 5 |
| D    | 0 | 5  | 5  | ∞ |

Therefore, the initial lower bound is:

\\[ LB=55+15 \\]

\\[ \boxed{LB=70} \\]

### Step 3: Branch from starting city A

Possible branches are:

- A → B
- A → C
- A → D

For example, select A → B.

When fixing this edge:

- Make row A infinity.
- Make column B infinity.
- Make B → A infinity to prevent an immediate return.

The remaining matrix is:

| City | A | C  | D |
| ---- | - | -- | - |
| B    | ∞ | 20 | 5 |
| C    | 0 | ∞  | 5 |
| D    | 0 | 5  | ∞ |

After further row and column reduction, the additional reduction is 10.

Thus:

\\[ LB(A\rightarrow B)=70+0+10 \\]

\\[ \boxed{LB=80} \\]

The other branches are evaluated similarly. The least-bound promising branch is expanded first.

### Step 4: Construct the complete tour

One optimal tour is:

\\[ A\rightarrow B\rightarrow D\rightarrow C\rightarrow A \\]

Calculate the actual travelling cost using the original distance matrix:

| Route | Distance |
| ----- | -------- |
| A → B | 10       |
| B → D | 25       |
| D → C | 30       |
| C → A | 15       |
| Total | 80       |

Optimal solution

\\[ \boxed{\text{Minimum cost}=80} \\]

\\[ \boxed{A\rightarrow B\rightarrow D\rightarrow C\rightarrow A} \\]

The tour has cost 80, equal to its lower bound, so it is optimal.

## 5. State-space tree

[Are you ready for solving the traveling salesman problem? | by Jimmy (xiaoke) Shen | Analytics Vidhya | Medium](https://images.openai.com/static-rsc-4/dTBugoV8HLpRBXT6vnmtyDoXpxofdQxzV5B3EUpoii1x1orlEBGSZjo-fpP2TAbL1CDlklGOlnmz30j6PjBoz_v8_gPA0iqUHqkSOzCRz8dauNf6agiEwzLkbVv8SWM-tRL6bX72nI9S6nC6fjR-q1Gf5H24SNGaTIAYFWWuprw?purpose=inline)

[medium.com](https://medium.com/analytics-vidhya/are-you-read-for-solving-the-traveling-salesman-problem-80e3c4ea45fc?utm_source=chatgpt.com)

Simplified state-space representation:

```
                       A
                  /    |    \
                 B     C     D
                / \   / \   / \
               C   D B   D B   C
               |   | |   | |   |
               D   C D   B C   B
                \  |  \  |  \  |
                   A     A     A
```

Each path represents a possible tour. Branches that cannot produce a better solution are pruned using their lower bounds.

Remember: The lower bound is used to decide which branch to explore. The final tour cost must always be calculated using the original distance matrix.

## 6. General algorithm for TSP using Branch and Bound

```

TSP_Branch_And_Bound(costMatrix):

    Create root node for starting city A

    Calculate lower bound using row and column reduction

    Insert root into priority queue

    bestCost = INFINITY

    while priority queue is not empty:

        E = Remove node with minimum lower bound

        if E.bound >= bestCost:
            continue

        if E contains a complete tour:
            Calculate actual tour cost

            if tour cost < bestCost:
                bestCost = tour cost
                Save the tour

        else:
            Generate children for unvisited cities

            for each child:
                Fix selected edge
                Update cost matrix
                Calculate lower bound

                if child.bound < bestCost:
                    Insert child into priority queue

    return best tour and bestCost

```

## 7. Time and space complexity

| Parameter         | Complexity                                                    |
| ----------------- | ------------------------------------------------------------- |
| Worst-case time   | \\(O(n!)\\)                                                   |
| State-space tree  | Factorial growth                                              |
| Space             | Exponential in the worst case, depending on live nodes stored |
| Bound calculation | Typically \\(O(n^2)\\) per node for matrix reduction          |

Branch and Bound reduces unnecessary exploration through pruning, but the worst-case complexity remains factorial.

## 8. Difference between TSP and 0/1 Knapsack in Branch and Bound

| 0/1 Knapsack                       | TSP                                      |
| ---------------------------------- | ---------------------------------------- |
| Maximization problem               | Minimization problem                     |
| Uses upper bound                   | Uses lower bound                         |
| Bound based on fractional knapsack | Bound commonly based on matrix reduction |
| Include/exclude an item            | Select next city                         |
| Highest upper bound explored first | Lowest lower bound explored first        |

## 9. PYQ-oriented revision checklist

Preparation progress

0/9

TSP definition and objective function

Cost matrix with diagonal infinity

Row reduction and column reduction

Initial lower-bound calculation

Branching from starting city A

Updating matrix after selecting an edge

Selecting least-bound live node

Calculating final tour cost

Pruning and optimality proof

My recommendation: Practise one complete 4-city or 5-city TSP numerical by hand. The most important skill is reducing the matrix correctly after every selected edge.

If you upload the Nov 2023 or Nov 2024 question image, I can solve its exact distance graph step by step, including every lower bound and pruned branch.