# 4. 8-Queen Problem — Backtracking



Important concept

Prepare for 8–10 marks



The 8-Queen Problem is a classic Backtracking problem in which eight queens must be placed on an \\(8\times8\\) chessboard so that no two queens attack each other.

## 1. Problem definition

Place 8 queens on an \\(8\times8\\) chessboard such that no two queens share:

1. The same row.
2. The same column.
3. The same diagonal.

Objective: Find all possible arrangements satisfying these constraints.

[File:Solution A for 8 Queen Puzzles.png - Wikimedia Commons](https://images.openai.com/static-rsc-4/J0l5ByGO7ZySVEm7Moo7NWQmgwcC-Gqa20pABpF4QY9UjNCFBwPzEQ_yfCR9paetWRCMlPsMOLxm1lp6O1b080cFC_Ind9C828aDaP607Z7BjUjk5Lj-CfkzA0q424hBtsCJGQbz8kCVE3pa0OH93D6QsAf1QNc2_DdNCNlBGdQ?purpose=inline)

[commons.wikimedia.org](https://commons.wikimedia.org/wiki/File%3ASolution_A_for_8_Queen_Puzzles.png?utm_source=chatgpt.com)

## 2. Backtracking approach

We place queens one row at a time.

- Start from the first row.
- Try placing a queen in each column.
- Check whether the position is safe.
- If safe, place the queen and move to the next row.
- If no safe position exists, backtrack to the previous row and try another column.
- When all eight queens are placed, a solution is found.

Representation:

Let `x[k]` represent the column in which the queen is placed in row `k`.

For example:

\\[ x=[1,5,8,6,3,7,2,4] \\]

This represents one valid solution.

## 3. Constraints / promising conditions

Suppose we are placing a queen in row \\(k\\), column \\(x[k]\\).

The position is safe if, for every previously placed queen \\(j\\):

Column condition:

\\[ x[k]\neq x[j] \\]

Diagonal condition:

\\[ |x[k]-x[j]|\neq |k-j| \\]

If both conditions are satisfied for all previous rows, the position is promising.

Otherwise, it is non-promising and is rejected.

## 4. Recursive Backtracking algorithm

```

NQueens(k):

    for col = 1 to 8:

        if Place(k, col) == TRUE:

            x[k] = col

            if k == 8:
                Print x[1...8]

            else:
                NQueens(k + 1)

            x[k] = 0


Place(k, col):

    for j = 1 to k-1:

        if x[j] == col:
            return FALSE

        if abs(x[j] - col) == abs(j - k):
            return FALSE

    return TRUE

```

Explanation:

- `NQueens(k)` tries placing a queen in row `k`.
- `Place()` checks column and diagonal conflicts.
- If the position is safe, recursion moves to the next row.
- If no position works, the algorithm backtracks.
- When `k = 8`, all eight queens are successfully placed.

## 5. State-space tree

Each level represents a row of the chessboard.

Each node represents a possible column selection for that row.

[CSE 143 Lecture 13 Recursive Backtracking slides created](https://images.openai.com/static-rsc-4/5GXfzYIMLBiQmlIEU8RC_p4hZP4_zf81y0XmjsEcFY3COY2ZQkHkHkCtzhjYrEDAQAU6DGWBwNmaZlsZEqLa2HV9l_eJGhXjvLTkIYm13pjEt2OD1UueoSgC5po_dROvB0cx9d-zjJiC7yFlsJVU7_Jc-Lz8n1827B7HsbjPXNY?purpose=inline)

[slidetodoc.com](https://slidetodoc.com/cse-143-lecture-13-recursive-backtracking-slides-created/?utm_source=chatgpt.com)

Example of the search process:

```
                 Start
                   |
                Row 1
                   |
              Q at column 1
                   |
                Row 2
              /    |    \
           C1     C2     C3
           X       X      ✓
                          |
                        Row 3
                       /  |  \
                      X   ✓   X
                          |
                        Row 4
                          |
                     Continue...
```

- Root node: Empty chessboard.
- Promising node: Partial arrangement in which no queens attack each other.
- Non-promising node: Arrangement containing a conflict.
- Leaf node: Either a complete solution or a dead end.

The actual state-space tree is much larger; this is a simplified representation.

## 6. One valid solution

One valid arrangement is:

\\[ \boxed{x=[1,5,8,6,3,7,2,4]} \\]

This means:

| Row | Queen column |
| --- | ------------ |
| 1   | 1            |
| 2   | 5            |
| 3   | 8            |
| 4   | 6            |
| 5   | 3            |
| 6   | 7            |
| 7   | 2            |
| 8   | 4            |

[Solving the 8 queens problem](https://images.openai.com/static-rsc-4/zaogPq--bo4ia8LLa96-ceMOonQRHT4Lug9bHSyElyuY1UVgEn3dik2QOUXlEr5gjFvl7AgRlv6Z-0PjpibUhPAZ61Ch3Bs2Yx71yhQb7rBrEUCeJNyxF4XetXzE33aTgE7rUCRD_2_PwGPZP7FNe_HScMR2sKkKg-llDbqCj3g?purpose=inline)

[coolbutuseless.bitbucket.io](https://coolbutuseless.bitbucket.io/2018/04/10/solving-the-8-queens-problem/?utm_source=chatgpt.com)

No two queens share the same row, column, or diagonal.

## 7. Time and space complexity

| Complexity | Explanation                                                 |
| ---------- | ----------------------------------------------------------- |
| Time       | \\(O(N!)\\) upper bound for the row-by-row search           |
| Space      | \\(O(N)\\) for the queen-position array and recursion stack |

For the 8-Queen problem, \\(N=8\\).

The algorithm uses pruning to eliminate invalid arrangements, making it more efficient than checking every possible board configuration.

## 8. Applications

1. Constraint satisfaction problems.
2. Scheduling and resource allocation.
3. Puzzle solving.
4. Combinatorial optimization.
5. AI search problems.

## Exam revision checklist

Preparation progress

0/8

Problem definition and three constraints

Backtracking approach, row by row

Recursive NQueens() algorithm

Place() safety-check algorithm

State-space tree and pruning

Promising and non-promising nodes

One valid 8-Queen arrangement

Time and space complexity

Exam tip: Even though no direct 8-Queen PYQ was found in your papers, prepare the algorithm and safety conditions thoroughly. The same Backtracking concepts are used in Graph Coloring and Sum of Subsets.