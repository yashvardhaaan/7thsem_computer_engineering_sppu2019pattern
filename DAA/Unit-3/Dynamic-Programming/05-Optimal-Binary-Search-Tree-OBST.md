# 5. Principle of Optimality and Dynamic Programming Fundamentals



SPPU End-Semester Preparation

OBST – Important



Question (Nov 2022 Q2(b)): Explain the Dynamic Programming approach and write an algorithm for OBST.

This question has two parts:

1. Explain the Dynamic Programming approach and Principle of Optimality.
2. Explain Optimal Binary Search Tree (OBST) and write its algorithm.

Prepare both parts because the question specifically asks for the OBST algorithm.

## Part A: Dynamic Programming Approach

### 1. Definition of Dynamic Programming

Dynamic Programming (DP) is an algorithmic technique used to solve complex problems by dividing them into smaller overlapping subproblems.

It solves each subproblem only once, stores its result, and reuses the stored result whenever required.

Main objective: Avoid repeated calculations and improve the efficiency of an algorithm.

### 2. Principle of Optimality

The Principle of Optimality was introduced by Richard Bellman.

It states:

"An optimal solution to a problem contains optimal solutions to its subproblems."

In simple words, if a problem is divided into smaller subproblems, their optimal solutions can be combined to obtain the optimal solution to the original problem, provided the problem satisfies the required optimal substructure property.

### 3. Characteristics of Dynamic Programming

1. Optimal Substructure: An optimal solution can be constructed from optimal solutions of smaller subproblems.
2. Overlapping Subproblems: The same subproblems occur repeatedly.
3. Storage of Results: Previously calculated results are stored in a table or memory.
4. Avoid Recalculation: Stored results are reused instead of calculating them again.

### 4. Approaches of Dynamic Programming

| Approach               | Explanation                                                     |
| ---------------------- | --------------------------------------------------------------- |
| Top-Down (Memoization) | Uses recursion and stores previously calculated results.        |
| Bottom-Up (Tabulation) | Solves smaller subproblems first and stores results in a table. |

### 5. General Steps of Dynamic Programming

1. Identify the subproblems.
2. Define the recurrence relation.
3. Identify the base conditions.
4. Store the results of subproblems.
5. Construct the optimal solution using stored results.

## Part B: Optimal Binary Search Tree (OBST)

### 1. Definition

An Optimal Binary Search Tree (OBST) is a binary search tree constructed in such a way that the total expected search cost is minimum.

It is used when the search frequencies or probabilities of keys are known in advance.

Objective: Construct a binary search tree that minimizes the expected number of comparisons required to search for a key.

### 2. Example

Consider three keys:

\\[ K_1=10,\quad K_2=20,\quad K_3=30 \\]

Suppose their search frequencies are:

| Key | Frequency |
| --- | --------- |
| 10  | 30        |
| 20  | 20        |
| 30  | 50        |

The key with the highest search frequency should ideally be placed closer to the root.

[Optimal binary search tree   dynamic programming | PDF](https://images.openai.com/static-rsc-4/G2jCBoSpJRPS-Gc8RpHTIPP9CaRgD9Sq0lsSpMTvuHYcsm6MJ906ytymKuraoHYlLSlExTEqLfNA9G57lGBdje_Km9_gejhovVjOITazqJ_rOqH0qpWInOp4Hjaek2VjRa_aTPbBvN4IyWKuPGzwH83QkW4JRg6aq545bU5Ag3A?purpose=inline)

[slideshare.net](https://www.slideshare.net/slideshow/optimal-binary-search-tree-dynamic-programming/231567170?utm_source=chatgpt.com)

The exact optimal structure is determined by calculating the cost of possible roots and selecting the minimum-cost arrangement.

### 3. OBST Algorithm (Very Important)

The Dynamic Programming approach uses three tables:

- C[i,j]: Stores the minimum search cost.
- W[i,j]: Stores the sum of frequencies.
- R[i,j]: Stores the root that gives minimum cost.

For successful searches only, the recurrence relation is:

\\[ C[i,j]=\min\_{i\leq k\leq j} \\{C[i,k-1]+C[k+1,j]\\} +\sum\_{m=i}^{j}p_m \\]

Where:

- \\(p_m\\) = Search frequency of key m.
- \\(k\\) = Possible root of the subtree.
- \\(C[i,j]\\) = Minimum cost of the subtree.

Base condition:

\\[ C[i,i-1]=0 \\]

### 4. Pseudocode for OBST

The following is the standard simplified DP algorithm for successful search frequencies.

```
Algorithm OBST(p, n)

{
    for i = 1 to n+1 do
        C[i, i-1] = 0;

    for i = 1 to n do
        C[i, i] = p[i];

    for length = 2 to n do
    {
        for i = 1 to n-length+1 do
        {
            j = i + length - 1;

            C[i,j] = infinity;

            for k = i to j do
            {
                cost = C[i,k-1]
                     + C[k+1,j]
                     + sum(p[i...j]);

                if cost < C[i,j] then
                {
                    C[i,j] = cost;
                    R[i,j] = k;
                }
            }
        }
    }

    return C[1,n], R;
}
```

Explanation:

1. Initialize the cost of an empty tree to zero.
2. Calculate the cost of individual keys.
3. Consider subtrees of increasing lengths.
4. Try every key as the root.
5. Calculate the total search cost.
6. Select the root having minimum cost.
7. Store the minimum cost and corresponding root in the tables.

### 5. Solved Example

Consider three keys with frequencies:

| Key     | Frequency |
| ------- | --------- |
| K1 = 10 | 30        |
| K2 = 20 | 20        |
| K3 = 30 | 50        |

We calculate the minimum search cost for different roots.

Case 1: K1 as root

Optimal arrangement:

```
       10
         \
          30
         /
        20
```

\\[ Cost=30(1)+50(2)+20(3) \\]

\\[ Cost=190 \\]

Case 2: K2 as root

```
       20
      /  \
    10    30
```

\\[ Cost=20(1)+30(2)+50(2) \\]

\\[ Cost=120 \\]

Case 3: K3 as root

```
        30
       /
      20
     /
    10
```

\\[ Cost=50(1)+20(2)+30(3) \\]

\\[ Cost=180 \\]

Comparison of search costs

| Root | Total cost |
| ---- | ---------- |
| K1   | 190        |
| K2   | 120        |
| K3   | 180        |

Minimum search cost

# 120

Optimal root = K2 (20).

Therefore, the optimal binary search tree is:

```
       20
      /  \
     10   30
```

The minimum weighted search cost is:

\\[ \boxed{120} \\]

Note: The example uses frequencies rather than normalized probabilities. If probabilities are used, the same calculation gives an expected cost of 1.2 comparisons.

### 6. Time and Space Complexity

For the straightforward DP implementation:

| Complexity       | Value        |
| ---------------- | ------------ |
| Time Complexity  | \\(O(n^3)\\) |
| Space Complexity | \\(O(n^2)\\) |

Time complexity is cubic because:

- Two nested loops calculate subproblems.
- An inner loop tries every possible root.

### 7. Applications of OBST

1. Database searching.
2. Dictionary implementation.
3. Compiler symbol tables.
4. Searching frequently accessed records.
5. Information retrieval systems.

## Part C: Important Differences — Greedy vs Dynamic Programming

This is useful for understanding why OBST uses DP.

| Greedy Method                             | Dynamic Programming                                                     |
| ----------------------------------------- | ----------------------------------------------------------------------- |
| Makes locally optimal choices.            | Solves overlapping subproblems.                                         |
| Decisions are generally not reconsidered. | Stores results of subproblems.                                          |
| May not always give optimal results.      | Gives optimal results when the recurrence correctly models the problem. |
| Usually uses less memory.                 | Often requires additional memory.                                       |
| Example: Fractional Knapsack.             | Example: OBST, Matrix Chain Multiplication.                             |

## SPPU Exam: 12-mark preparation strategy

For the Nov 2022 question, prepare these sections:

| Section                           | Importance     |
| --------------------------------- | -------------- |
| Definition of Dynamic Programming | Must write     |
| Principle of Optimality           | Must write     |
| Characteristics and approaches    | Important      |
| OBST definition                   | Must write     |
| Recurrence relation               | Very important |
| OBST algorithm                    | Very important |
| Example with calculations         | Very important |
| Time and space complexity         | Must write     |

Exam tip

Remember these three things particularly:

1. Principle of Optimality: Optimal solution contains optimal solutions to subproblems.
2. OBST objective: Minimize expected search cost.
3. OBST complexity: Standard DP implementation takes \\(O(n^3)\\) time and \\(O(n^2)\\) space.

One technical note: The algorithm above considers successful searches only. The full OBST formulation also includes unsuccessful search probabilities \\(q_0,q_1,\ldots,q_n\\). If your SPPU textbook includes those, learn that version too.

Next topic: Matrix Chain Multiplication using Dynamic Programming.


# Principle of Optimality — 4 Marks

SPPU End-Semester Answer

Question (May 2024 Q1(c)): Comment on the statement: "A problem which does not satisfy the principle of optimality cannot be solved by dynamic programming." (4 Marks)

## Answer

The given statement is TRUE in the standard Dynamic Programming framework.

### 1. Principle of Optimality

The Principle of Optimality was introduced by Richard Bellman.

It states that:

"An optimal solution to a problem contains optimal solutions to its subproblems."

In simple words, the optimal solution of a problem can be obtained by combining the optimal solutions of its smaller subproblems.

### 2. Explanation

1. Dynamic Programming divides a complex problem into smaller subproblems.
2. It solves each subproblem and stores its result.
3. The stored results are used to construct the final solution.
4. For this approach to produce an optimal solution, the problem must have optimal substructure.
5. If the principle of optimality does not hold for the chosen state formulation, combining optimal subproblem solutions may not produce a globally optimal solution.

### 3. Example

Shortest Path Problem:

Suppose the shortest path from A to C passes through B.

\\[ A\rightarrow B\rightarrow C \\]

For this path to be optimal:

- The path from A to B must also be shortest.
- The path from B to C must also be shortest.

This demonstrates the Principle of Optimality.

### 4. Conclusion

Therefore, a problem must satisfy the Principle of Optimality (optimal substructure) for standard Dynamic Programming to guarantee an optimal solution.

\\[ \boxed{\text{Principle of Optimality is essential for optimal DP solutions.}} \\]

Exam tip

For 4 marks, remember these four keywords:

1. Richard Bellman.
2. Optimal substructure.
3. Optimal solution of subproblems.
4. Construction of globally optimal solution.

Important conceptual clarification: The statement is slightly absolute. A problem lacking optimal substructure in one particular formulation may sometimes be reformulated using richer DP states. So the principle is essential to the DP formulation, not a claim that no possible DP formulation can ever solve such a problem.




# Optimal Binary Search Tree (OBST) Using Dynamic Programming — 10 Marks



SPPU End-Semester Answer

10 Marks



Question (Nov 2022 Q2(a)): Write a DP algorithm for constructing an Optimal Binary Search Tree and construct one for four keys with given probabilities. (10 marks)

This is an important numerical question from Dynamic Programming.

The question has two parts:

1. Write the Dynamic Programming algorithm for OBST.
2. Construct an optimal binary search tree for four keys using given probabilities.

Since the actual four probabilities are not included in your message, I'll demonstrate the complete method using an illustrative set of probabilities. The same steps can be applied to the actual exam values.

## 1. Definition of Optimal Binary Search Tree (1 Mark)

An Optimal Binary Search Tree (OBST) is a Binary Search Tree constructed in such a way that the expected search cost is minimum.

It is used when the search probabilities of keys are known in advance.

Objective: To arrange keys in a binary search tree such that frequently searched keys are placed closer to the root, minimizing the total expected search cost.

## 2. Dynamic Programming Approach (2 Marks)

The OBST problem is solved using Dynamic Programming because:

1. It has optimal substructure.
2. It contains overlapping subproblems.
3. The optimal solution can be constructed using optimal solutions of smaller subtrees.
4. Intermediate results are stored in tables to avoid repeated calculations.

Three tables are used:

| Table  | Purpose                                |
| ------ | -------------------------------------- |
| C[i,j] | Stores minimum search cost             |
| W[i,j] | Stores sum of probabilities            |
| R[i,j] | Stores the optimal root of the subtree |

## 3. Mathematical Recurrence Relation (2 Marks)

Let:

- \\(K_1,K_2,\ldots,K_n\\) = Sorted keys.
- \\(p_i\\) = Successful search probability of key \\(K_i\\).
- \\(C[i,j]\\) = Minimum cost of subtree containing keys \\(K_i\\) to \\(K_j\\).
- \\(R[i,j]\\) = Root that gives minimum cost.

Weight calculation:

\\[ W[i,j]=\sum\_{k=i}^{j}p_k \\]

Base condition:

\\[ C[i,i-1]=0 \\]

Cost recurrence:

\\[ \boxed{ C[i,j]=W[i,j]+ \min\_{i\leq r\leq j} \left(C[i,r-1]+C[r+1,j]\right) } \\]

Where \\(r\\) represents the possible root of the subtree.

The root is selected as:

\\[ R[i,j]=\arg\min\_{i\leq r\leq j} \left(C[i,r-1]+C[r+1,j]\right) \\]

This recurrence is for successful searches only.

## 4. Algorithm for Constructing OBST (2 Marks)

Pseudocode:

```
Algorithm OBST(p, n)

{
    for i = 1 to n+1 do
        C[i, i-1] = 0;

    for i = 1 to n do
    {
        W[i,i] = p[i];
        C[i,i] = p[i];
        R[i,i] = i;
    }

    for length = 2 to n do
    {
        for i = 1 to n-length+1 do
        {
            j = i + length - 1;

            W[i,j] = W[i,j-1] + p[j];
            C[i,j] = infinity;

            for r = i to j do
            {
                cost = C[i,r-1]
                     + C[r+1,j]
                     + W[i,j];

                if cost < C[i,j] then
                {
                    C[i,j] = cost;
                    R[i,j] = r;
                }
            }
        }
    }

    return C[1,n], R;
}
```

Explanation:

- Initialize the cost of an empty subtree to zero.
- Calculate the cost of individual keys.
- Consider subtrees of increasing lengths.
- Try every possible key as the root.
- Select the root that produces minimum cost.
- Store the minimum cost and root in the respective tables.

## 5. Numerical Example: Construct OBST for Four Keys (2 Marks)

Consider four sorted keys with the following successful search probabilities.

Illustrative example — actual question probabilities were not supplied.

| Key     | Probability |
| ------- | ----------- |
| K1 = 10 | 0.10        |
| K2 = 20 | 0.20        |
| K3 = 30 | 0.40        |
| K4 = 40 | 0.30        |
| Total   | 1.00        |

We need to construct an OBST with minimum expected search cost.

Step 1: Calculate individual costs.

For a single key:

\\[ C[i,i]=p_i \\]

| Key | Cost |
| --- | ---- |
| K1  | 0.10 |
| K2  | 0.20 |
| K3  | 0.40 |
| K4  | 0.30 |

Step 2: Calculate costs for two-key subtrees.

Using the recurrence relation:

\\[ C[i,j]=W[i,j]+\min_r(C[i,r-1]+C[r+1,j]) \\]

| Subtree | Minimum Cost | Root |
| ------- | ------------ | ---- |
| K1, K2  | 0.40         | K2   |
| K2, K3  | 0.80         | K3   |
| K3, K4  | 1.00         | K3   |

Step 3: Calculate costs for three-key subtrees.

| Subtree    | Minimum Cost | Root |
| ---------- | ------------ | ---- |
| K1, K2, K3 | 1.10         | K3   |
| K2, K3, K4 | 1.40         | K3   |

Step 4: Calculate cost for all four keys.

Total probability:

\\[ W[1,4]=0.1+0.2+0.4+0.3=1 \\]

Try all possible roots:

| Root | Calculation     | Cost |
| ---- | --------------- | ---- |
| K1   | 1.40 + 1        | 2.40 |
| K2   | 0.10 + 1.00 + 1 | 2.10 |
| K3   | 0.40 + 0.30 + 1 | 1.70 |
| K4   | 1.10 + 1        | 2.10 |

Minimum cost:

\\[ \boxed{C[1,4]=1.70} \\]

Therefore, K3 is selected as the root.

## 6. Construct the Optimal Binary Search Tree

The root is K3 (30).

- Left subtree contains K1 and K2, with K2 as its root.
- Right subtree contains K4.

## Optimal Binary Search Tree

The correct tree has K3 as root, K2 as its left child, K1 as K2's left child, and K4 as K3's right child.

Correction to the diagram: The left subtree is K2 with K1 as its left child. There is no right child of K2.

The final tree is:

```
          K3 (30)
         /       \
     K2 (20)    K4 (40)
      /
   K1 (10)
```

Step 5: Calculate the final search cost.

| Key   | Probability | Level | Weighted Cost |
| ----- | ----------- | ----- | ------------- |
| K3    | 0.40        | 1     | 0.40          |
| K2    | 0.20        | 2     | 0.40          |
| K1    | 0.10        | 3     | 0.30          |
| K4    | 0.30        | 2     | 0.60          |
| Total | 1.00        |       | 1.70          |

\\[ Cost=\sum p_i\times Level_i \\]

\\[ =0.4(1)+0.2(2)+0.1(3)+0.3(2) \\]

\\[ \boxed{Minimum\ Search\ Cost=1.70} \\]

Hence, the optimal BST has K3 as its root and minimum weighted search cost of 1.70 comparisons.

## 7. Time and Space Complexity (1 Mark)

| Complexity       | Value        |
| ---------------- | ------------ |
| Time Complexity  | \\(O(n^3)\\) |
| Space Complexity | \\(O(n^2)\\) |

Reason:

- Two loops generate all possible subproblems.
- One additional loop checks all possible roots.
- Two-dimensional tables store costs and roots.

\\[ \boxed{T(n)=O(n^3)} \\]

\\[ \boxed{S(n)=O(n^2)} \\]

## Important: Successful and Unsuccessful Search Probabilities

There are two versions of OBST. Check which probabilities are provided in the examination.

| Successful searches only  | Successful and unsuccessful searches               |
| ------------------------- | -------------------------------------------------- |
| Uses \\(p_1,\ldots,p_n\\) | Uses \\(p_1,\ldots,p_n\\) and \\(q_0,\ldots,q_n\\) |
| Simpler recurrence        | Full OBST recurrence                               |
| Empty subtree cost = 0    | Empty subtree cost = \\(q_i\\)                     |

For the full OBST version, the recurrence is:

\\[ W[i,j]=W[i,j-1]+p_j+q_j \\]

\\[ C[i,j]=\min\_{r=i}^{j} \\{C[i,r-1]+C[r+1,j]\\}+W[i,j] \\]

with:

\\[ C[i,i-1]=W[i,i-1]=q\_{i-1} \\]

If your question paper provides unsuccessful search probabilities, use this full version instead.

## SPPU 10-Mark Revision Checklist

Preparation progress

0/9

Definition of OBST

Dynamic Programming approach

Three tables: C, W and R

Mathematical recurrence relation

OBST pseudocode

Cost calculation for four keys

Final tree diagram

Minimum search cost

Time and space complexity

One thing I need for exact PYQ preparation: Upload the Nov 2022 Q2(a) question-paper image containing the four keys and probabilities. I'll solve the actual numerical question using the exact given values, including the DP tables and final tree.



# Optimal Binary Search Tree (OBST) — 10 Marks



SPPU End-Semester Answer

10 Marks



Question (May 2023 Q2(b)): Explain OBST and construct it using given keys and frequencies. (10 marks)

This question has two parts:

1. Explain the concept of Optimal Binary Search Tree.
2. Construct an OBST using the given keys and their search frequencies.

Since the actual keys and frequencies are not provided here, we will solve an illustrative example using four keys.

## 1. Definition of OBST (2 Marks)

An Optimal Binary Search Tree (OBST) is a Binary Search Tree constructed in such a way that the total expected search cost is minimum.

In an ordinary BST, keys are arranged according to their values. However, in OBST, the search frequencies of keys are also considered.

Frequently searched keys are generally placed closer to the root to minimize the number of comparisons.

Objective: Minimize the total weighted search cost.

## 2. Characteristics of OBST

1. It follows the Binary Search Tree property.
2. Every left child contains a smaller key than its parent.
3. Every right child contains a greater key than its parent.
4. Frequently searched keys are given higher priority.
5. Dynamic Programming is used to construct the optimal tree.

## 3. Mathematical Representation (2 Marks)

Let:

- \\(K_i\\) = Keys arranged in sorted order.
- \\(f_i\\) = Search frequency of key \\(K_i\\).
- \\(C[i,j]\\) = Minimum search cost for keys \\(K_i\\) to \\(K_j\\).
- \\(W[i,j]\\) = Sum of frequencies.
- \\(R[i,j]\\) = Root of the optimal subtree.

Weight formula:

\\[ W[i,j]=\sum\_{k=i}^{j}f_k \\]

Base condition:

\\[ C[i,i-1]=0 \\]

Recurrence relation:

\\[ \boxed{ C[i,j]=W[i,j]+\min\_{r=i}^{j} \\{C[i,r-1]+C[r+1,j]\\} } \\]

The root that gives the minimum cost is selected as the optimal root.

## 4. Algorithm for OBST Using Dynamic Programming (2 Marks)

```
Algorithm OBST(f, n)

{
    for i = 1 to n+1 do
        C[i, i-1] = 0;

    for i = 1 to n do
    {
        W[i,i] = f[i];
        C[i,i] = f[i];
        R[i,i] = i;
    }

    for length = 2 to n do
    {
        for i = 1 to n-length+1 do
        {
            j = i + length - 1;

            W[i,j] = W[i,j-1] + f[j];
            C[i,j] = infinity;

            for r = i to j do
            {
                cost = C[i,r-1]
                     + C[r+1,j]
                     + W[i,j];

                if cost < C[i,j] then
                {
                    C[i,j] = cost;
                    R[i,j] = r;
                }
            }
        }
    }

    return C[1,n], R;
}
```

## 5. Numerical Example: Construct OBST Using Four Keys (3 Marks)

Consider the following four keys and their search frequencies.

Illustrative example — not the actual May 2023 question-paper values.

| Key   | Frequency |
| ----- | --------- |
| 10    | 10        |
| 20    | 20        |
| 30    | 30        |
| 40    | 40        |
| Total | 100       |

Step 1: Calculate the cost of individual keys.

For a single key:

\\[ C[i,i]=f_i \\]

| Key | Frequency | Cost |
| --- | --------- | ---- |
| 10  | 10        | 10   |
| 20  | 20        | 20   |
| 30  | 30        | 30   |
| 40  | 40        | 40   |

Step 2: Calculate the cost of two-key subtrees.

Using:

\\[ C[i,j]=W[i,j]+\min_r(C[i,r-1]+C[r+1,j]) \\]

| Keys   | Total Frequency | Minimum Cost | Root |
| ------ | --------------- | ------------ | ---- |
| 10, 20 | 30              | 40           | 20   |
| 20, 30 | 50              | 80           | 30   |
| 30, 40 | 70              | 100          | 30   |

For example, for keys 10 and 20:

- Root = 10: Cost = 10 + 2(20) = 50.
- Root = 20: Cost = 20 + 2(10) = 40.

Therefore, the optimal root is 20 and minimum cost is 40.

Step 3: Calculate the cost of three-key subtrees.

| Keys       | Total Frequency | Minimum Cost | Root |
| ---------- | --------------- | ------------ | ---- |
| 10, 20, 30 | 60              | 100          | 30   |
| 20, 30, 40 | 90              | 160          | 30   |

Step 4: Calculate the cost of all four keys.

Total frequency:

\\[ W[1,4]=10+20+30+40=100 \\]

Try each key as the root:

| Root | Calculation    | Cost |
| ---- | -------------- | ---- |
| 10   | 160 + 100      | 260  |
| 20   | 10 + 100 + 100 | 210  |
| 30   | 40 + 40 + 100  | 180  |
| 40   | 100 + 100      | 200  |

Therefore, minimum cost is:

\\[ \boxed{C[1,4]=180} \\]

Optimal root = 30.

## 6. Final Optimal Binary Search Tree

The final tree is constructed using the selected roots.

## Optimal Binary Search Tree

Root = 30; left subtree = 20 with left child 10; right child = 40.

Minimum weighted search cost

# 180

Verification:

| Key   | Frequency | Level | Weighted Cost |
| ----- | --------- | ----- | ------------- |
| 30    | 30        | 1     | 30            |
| 20    | 20        | 2     | 40            |
| 10    | 10        | 3     | 30            |
| 40    | 40        | 2     | 80            |
| Total | 100       |       | 180           |

\\[ Cost=\sum f_i\times Level_i \\]

\\[ =30(1)+20(2)+10(3)+40(2) \\]

\\[ \boxed{Minimum\ Cost=180} \\]

Hence, the optimal BST has key 30 as its root and the minimum weighted search cost is 180.

## 7. Time and Space Complexity (1 Mark)

| Complexity       | Value        |
| ---------------- | ------------ |
| Time Complexity  | \\(O(n^3)\\) |
| Space Complexity | \\(O(n^2)\\) |

\\[ \boxed{T(n)=O(n^3)} \\]

\\[ \boxed{S(n)=O(n^2)} \\]

## 8. Applications of OBST

1. Database searching.
2. Compiler symbol tables.
3. Dictionary implementation.
4. Information retrieval.
5. Frequently accessed records.

## Important revision: OBST numerical questions

You now have two OBST PYQs to prepare:

| PYQ            | Question                                                     |
| -------------- | ------------------------------------------------------------ |
| Nov 2022 Q2(a) | Construct OBST for four keys with given probabilities.       |
| May 2023 Q2(b) | Explain OBST and construct using given keys and frequencies. |

Important difference:

- If probabilities are given, calculate expected search cost.
- If frequencies are given, calculate weighted search cost.
- The optimal tree structure can be the same whether frequencies or normalized probabilities are used.

Exam strategy

For 10 marks, prioritize:

1. Definition and objective.
2. Recurrence relation.
3. DP algorithm.
4. Cost calculation tables.
5. Final tree diagram.
6. Complexity.

Next step: Upload the May 2023 Q2(b) question image containing the actual keys and frequencies. I'll construct the exact OBST and calculate every DP table entry for your exam preparation.