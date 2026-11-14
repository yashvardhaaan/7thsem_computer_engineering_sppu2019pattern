# 3. Sum of Subsets Problem — Backtracking



Important SPPU topic

8–9 marks



The Sum of Subsets problem is a classic Backtracking problem. It finds all subsets of a given set whose elements add up to a specified target sum.

It uses a state-space tree in which each element has two choices:

1. Include the element in the subset.
2. Exclude the element from the subset.

## 1. Problem definition

Given a set of positive integers:

\\[ W=\\{w_1,w_2,\ldots,w_n\\} \\]

and a target sum \\(M\\), find all subsets \\(S\subseteq W\\) such that:

\\[ \boxed{\sum\_{w_i\in S}w_i=M} \\]

Example:

Set = 10

Target sum = 10

Valid subsets are:

- 8 → 2 + 8 = 10
- 10 → 10
- 5 → 2 + 3 + 5 = 10

## 2. Backtracking principle

At every level of the state-space tree, we decide whether to include or exclude the current element.

A branch is stopped (pruned) when it cannot produce a valid solution.

Bounding conditions:

Let:

- `currentSum` = sum of selected elements.
- `remainingSum` = sum of elements not yet considered.
- `target` = required sum.

A node is promising when:

\\[ currentSum\leq target \\]

and

\\[ currentSum+remainingSum\geq target \\]

If either condition fails, that branch is abandoned.

## 3. Recursive Backtracking algorithm

```

SumOfSubsets(i, currentSum, remainingSum):

    if currentSum == target:
        Print selected subset
        return

    if i == n:
        return

    if currentSum > target:
        return

    if currentSum + remainingSum < target:
        return

    // Include current element
    selected[i] = 1
    SumOfSubsets(i+1,
                 currentSum + W[i],
                 remainingSum - W[i])

    // Exclude current element
    selected[i] = 0
    SumOfSubsets(i+1,
                 currentSum,
                 remainingSum - W[i])

```

Note: The algorithm assumes positive numbers. Initially, `currentSum = 0` and `remainingSum` is the sum of all elements.

## 4. Solved numerical example — May/June 2023 and Nov/Dec 2023

Question: Find the subsets of 10 whose sum is 10 using Backtracking.

Given:

\\[ W=\\{2,3,5,6,8,10\\},\quad M=10 \\]

Total sum = 34.

| Selected elements | Sum | Result |
| ----------------- | --- | ------ |
| 235               | 10  | Valid  |
| 28                | 10  | Valid  |
| 10                | 10  | Valid  |

Final answer: 3 subsets

### State-space tree — 10, target = 10

Here, `I` means include and `E` means exclude.

The successful paths are:

| Subset | Decisions        | Sum |
| ------ | ---------------- | --- |
| 235    | I, I, I          | 10  |
| 28     | I, E, E, E, I    | 10  |
| 10     | E, E, E, E, E, I | 10  |

A simplified view of the search tree:

```
                         (0)
                    /           \
                I:2               E:2
                (2)                (0)
              /     \            /    \
           I:3      E:3        I:3    E:3
           (5)       (2)       (3)     (0)
          /   \
       I:5    E:5
       (10)    (5)
        ✓
      {2,3,5}
```

The algorithm continues exploring the other branches, finding `{2,8}` and `{10}`. It prunes any branch where the sum exceeds 10 or where the remaining elements cannot bring the sum up to 10.

## 5. May/June 2024 — First subset with sum 30

Question: Find the first subset of 25 having sum 30. Draw the state-space tree.

Given:

\\[ W=\\{5,10,15,20,25\\},\quad M=30 \\]

Assume the algorithm explores the include branch first.

Step-by-step:

| Step | Decision   | Current subset | Sum |
| ---- | ---------- | -------------- | --- |
| 1    | Include 5  | 5              | 5   |
| 2    | Include 10 | 510            | 15  |
| 3    | Include 15 | 51015          | 30  |

First subset found

\\[ \boxed{\\{5,10,15\\},\quad 5+10+15=30} \\]

State-space tree (first successful path):

```
                       (0)
                         |
                       I:5
                         |
                        (5)
                         |
                      I:10
                         |
                       (15)
                         |
                      I:15
                         |
                    (30) ✓
                 {5,10,15}
```

The full state-space tree has additional include and exclude branches. The above shows the first solution path under include-first traversal.

## 6. Nov/Dec 2024 — Prove number of non-leaf nodes is \\(2^n-1\\)

Question: Prove that the number of non-leaf nodes in a full state-space tree is \\(2^n-1\\).

Proof:

In the Sum of Subsets problem, every element has two choices:

- Include the element.
- Exclude the element.

Therefore, the state-space tree is a binary tree.

For a complete binary tree with \\(n\\) levels of decisions:

- Level 0 has \\(2^0=1\\) node.
- Level 1 has \\(2^1=2\\) nodes.
- Level 2 has \\(2^2=4\\) nodes.
- Level \\(n-1\\) has \\(2^{n-1}\\) nodes.

The total number of non-leaf nodes is:

\\[ N=2^0+2^1+\cdots+2^{n-1} \\]

Using the geometric series formula:

\\[ N=\frac{2^n-1}{2-1} \\]

Hence,

\\[ \boxed{N=2^n-1} \\]

Hence proved.

Note: This result is for the full, unpruned binary state-space tree. Backtracking may visit fewer nodes because of pruning.

## 7. Time and space complexity

For \\(n\\) elements, each element has two possible choices: include or exclude.

| Complexity              | Result          | Explanation                                 |
| ----------------------- | --------------- | ------------------------------------------- |
| Time                    | \\(O(2^n)\\)    | In worst case, all subsets may be explored  |
| Space                   | \\(O(n)\\)      | Recursion depth and selected-element array  |
| Total state-space nodes | \\(2^{n+1}-1\\) | Complete binary tree with n decision levels |
| Non-leaf nodes          | \\(2^n-1\\)     | Sum of levels 0 to n−1                      |

Backtracking can reduce the actual execution time by pruning non-promising branches, but the worst-case time complexity remains exponential.

## 8. Applications

1. Knapsack problem.
2. Resource allocation.
3. Cryptography.
4. Combinatorial optimization.
5. Finding combinations satisfying a target value.

## 9. Exam preparation priority

| PYQ                     | What to prepare                          |
| ----------------------- | ---------------------------------------- |
| May/June 2023 — 8 marks | Numerical solution and backtracking tree |
| Nov/Dec 2023 — 8 marks  | Same numerical solution                  |
| May/June 2024 — 9 marks | First subset and state-space tree        |
| Nov/Dec 2024 — 4 marks  | Proof of \\(2^n-1\\)                     |
| May/June 2025 — 8 marks | Definition, algorithm and complexity     |

Important for the exam: Prepare the recursive algorithm, the two bounding conditions, one complete numerical example, and the non-leaf-node proof. These cover the main concepts tested across all five question occurrences.