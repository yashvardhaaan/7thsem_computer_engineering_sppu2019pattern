# Control Abstraction and Time Analysis of Dynamic Programming — 8 Marks



SPPU End-Semester Answer

8 Marks



Question (May 2024 Q2(a)): Write control abstraction for Dynamic Programming and comment on its time complexity. (8 marks)

## 1. Definition of Dynamic Programming (1 Mark)

Dynamic Programming is an algorithmic technique used to solve complex problems by dividing them into smaller overlapping subproblems.

It solves each subproblem once, stores its result and reuses it whenever required.

Main objective: To avoid repeated calculations and improve the efficiency of an algorithm.

## 2. Control Abstraction of Dynamic Programming (3 Marks)

Control abstraction represents the general structure or framework used by a Dynamic Programming algorithm.

It consists of the following steps:

1. Divide the problem into smaller subproblems.
2. Solve the smaller subproblems.
3. Store their results in a table.
4. Use previously calculated results to solve larger subproblems.
5. Obtain the final optimal solution.

General Algorithm / Pseudocode:

```
Algorithm DynamicProgramming(n)

{
    Initialize DP table;

    for i = 1 to n do
    {
        for j = 1 to n do
        {
            if (subproblem is basic)
                DP[i][j] = BaseCondition;

            else
                DP[i][j] = OptimalValue(
                               previously calculated
                               subproblems
                           );
        }
    }

    return DP[n][n];
}
```

This is a general illustrative control structure. The actual loops and recurrence depend on the problem.

## 3. Explanation of Control Abstraction (1 Mark)

| Step               | Explanation                                   |
| ------------------ | --------------------------------------------- |
| Initialization     | Initialize the DP table with base conditions. |
| Subproblem solving | Solve smaller subproblems first.              |
| Storage            | Store calculated results in a table.          |
| Reuse              | Use stored results to avoid recalculation.    |
| Final solution     | Obtain the optimal answer from the DP table.  |

## 4. Time Complexity Analysis (2 Marks)

The time complexity of Dynamic Programming depends on:

1. Number of subproblems.
2. Time required to solve each subproblem.
3. Time required to combine previously calculated results.

General representation:

\\[ \boxed{ T(n)=\text{Number of subproblems} \times \text{Time per subproblem} } \\]

For example, consider a DP algorithm with:

- \\(n\\) states.
- Each state requires \\(O(n)\\) time to calculate.

Therefore:

\\[ T(n)=n\times O(n) \\]

\\[ \boxed{T(n)=O(n^2)} \\]

Important: Dynamic Programming does not have one fixed time complexity. It depends on the particular problem and its recurrence relation.

## 5. Examples of Dynamic Programming and Their Complexities (1 Mark)

| Problem                     | Time Complexity |
| --------------------------- | --------------- |
| Fibonacci using DP          | O(n)            |
| 0/1 Knapsack                | O(nW)           |
| Matrix Chain Multiplication | O(n³)           |
| Optimal Binary Search Tree  | O(n³)           |
| Floyd–Warshall Algorithm    | O(V³)           |

## 6. Advantages of Dynamic Programming

1. Avoids repeated calculations.
2. Reduces execution time for problems with overlapping subproblems.
3. Provides optimal solutions when the problem satisfies optimal substructure and is correctly formulated.
4. Stores intermediate results for future use.

## 7. Conclusion

Dynamic Programming solves complex problems by dividing them into smaller subproblems, storing their results and reusing them to obtain the final solution.

Its time complexity depends on the number of subproblems and the time required to solve each subproblem.

## SPPU Exam Revision

Important points to remember

1. Definition of Dynamic Programming.
2. Control abstraction pseudocode.
3. Initialization and base conditions.
4. Storage and reuse of subproblem results.
5. Time complexity formula.
6. Examples of DP algorithms.

Most important formula:

\\[ \boxed{ T(n)=\sum\_{\text{all states}} \text{Cost of calculating each state} } \\]

Exam tip

For this 8-mark question, give maximum attention to the control abstraction pseudocode and time complexity analysis. Also mention that DP has no universal fixed time complexity.

Next topic: Matrix Chain Multiplication using Dynamic Programming.