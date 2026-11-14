# Backtracking: Principle, Control Abstraction and Time Analysis — 8 Marks



SPPU End-Semester Answer

Repeated 3 Times



Question: Explain Backtracking with a suitable example, principle, control abstraction and time analysis. (8 Marks)

Asked in: Nov 2022 Q3(b), May 2023 Q3(a), Nov 2023 Q3(b).

You can prepare one common answer for all three questions, as they cover the same concepts.

## 1. Definition of Backtracking (1 Mark)

Backtracking is an algorithmic technique used to solve problems by constructing a solution step by step.

If a partial solution cannot lead to a valid complete solution, the algorithm goes back to the previous step and tries another possible choice.

Backtracking follows the Depth First Search (DFS) approach to explore the state-space tree.

Main idea: Choose → Check → Explore → Backtrack.

## 2. Principle of Backtracking (2 Marks)

Backtracking works on the principle of systematically exploring possible solutions and rejecting those that do not satisfy the given constraints.

Steps:

1. Start with an empty solution.
2. Select a possible candidate.
3. Check whether the candidate satisfies the constraints.
4. If valid, add it to the partial solution.
5. Recursively explore the next possible choices.
6. If the candidate is invalid or cannot lead to a solution, reject it.
7. Return to the previous state and try another candidate.
8. Continue until a solution is found or all possibilities are explored.

Important terms:

| Term             | Meaning                                                    |
| ---------------- | ---------------------------------------------------------- |
| State-space tree | Tree representing all possible choices                     |
| Live node        | Node that may still be explored                            |
| Dead node        | Node that cannot lead to a valid solution                  |
| Promising node   | Node that satisfies the conditions for further exploration |
| Pruning          | Eliminating branches that cannot lead to a valid solution  |

## 3. Control Abstraction of Backtracking (2 Marks)

Control abstraction represents the general structure of the backtracking algorithm without implementation-specific details.

Algorithm: Recursive Backtracking

```
Algorithm Backtrack(k)

{
    for each candidate x at level k do
    {
        if Promising(x) then
        {
            Add x to current solution;

            if SolutionComplete() then
                PrintSolution();

            else
                Backtrack(k + 1);

            Remove x from current solution;
        }
    }
}
```

Explanation of functions:

| Function             | Purpose                                                       |
| -------------------- | ------------------------------------------------------------- |
| `Backtrack(k)`       | Explores possible choices at level k                          |
| `Promising(x)`       | Checks whether the candidate is valid for further exploration |
| `SolutionComplete()` | Checks whether a complete solution has been obtained          |
| `PrintSolution()`    | Displays the valid solution                                   |
| `Remove(x)`          | Undoes the previous choice and tries another                  |

The algorithm uses recursion to explore possible solutions and backtracks when necessary.

## 4. Suitable Example: 4-Queens Problem (2 Marks)

The N-Queens problem is a classic application of backtracking.

Problem: Place four queens on a 4 × 4 chessboard such that no two queens attack each other.

Constraints:

- No two queens can be in the same row.
- No two queens can be in the same column.
- No two queens can be on the same diagonal.

Steps:

1. Place the first queen in row 1.
2. Try placing the next queen in row 2.
3. Check whether the placement is safe.
4. If safe, proceed to the next row.
5. If no safe position exists, backtrack to the previous row.
6. Continue until all four queens are placed safely.

One valid solution:

### 4-Queens Solution

Queens are placed at (1,2), (2,4), (3,1), (4,3).

Solution representation:

\\[ \boxed{X=[2,4,1,3]} \\]

Where \\(X[i]\\) represents the column position of the queen in row \\(i\\).

All four queens are placed without attacking one another.

Therefore, the solution satisfies all constraints.

## 5. Time Complexity Analysis (1 Mark)

The time complexity of backtracking depends on the number of possible choices and the depth of the state-space tree.

Let:

- \\(b\\) = Maximum branching factor.
- \\(d\\) = Maximum depth of the tree.

In the worst case, the number of nodes explored is:

\\[ 1+b+b^2+\cdots+b^d \\]

For \\(b>1\\):

\\[ \boxed{O(b^d)} \\]

assuming constant work per node.

For the N-Queens problem, if we place one queen per row and avoid reusing columns, at most \\(n!\\) complete arrangements are considered.

Thus, the search has a factorial worst-case upper bound of:

\\[ \boxed{O(n!)} \\]

when candidate checking is treated as constant time. Actual running time also depends on the cost of checking whether a placement is safe.

Space complexity: \\(O(d)\\) for the recursion stack, excluding additional storage for the solution.

## 6. Applications of Backtracking

1. N-Queens Problem.
2. Graph Coloring Problem.
3. Hamiltonian Cycle Problem.
4. Sum of Subsets Problem.
5. Sudoku Solver.
6. Maze Solving.

## SPPU Exam: 8-Mark Answer Structure

| Section                   | Marks |
| ------------------------- | ----- |
| Definition                | 1     |
| Principle of Backtracking | 2     |
| Control Abstraction       | 2     |
| Example (4-Queens)        | 2     |
| Time Complexity           | 1     |
| Total                     | 8     |

Important points to memorize

Principle:

Choose → Check → Explore → Backtrack

Control abstraction:

```
if Promising(x):
    Add(x)
    Backtrack(k + 1)
    Remove(x)
```

General worst-case time complexity:

\\[ \boxed{O(b^d)} \\]

Example: N-Queens Problem.

Exam tip: For all three PYQs, write the same definition, principle and control abstraction. Draw the 4-Queens board as the suitable example, and explain the worst-case time complexity.

This gives you a complete answer covering all the points asked in the three SPPU questions.