# Principle of Optimality — 7 Marks



SPPU End-Semester Answer

7 Marks



Question (May 2025 Q2(a)): Explain the Principle of Optimality and give its mathematical representation. (7 marks)

## 1. Definition (2 Marks)

The Principle of Optimality was introduced by Richard Bellman as a fundamental concept of Dynamic Programming.

It states:

"An optimal solution to a problem contains optimal solutions to its subproblems."

In simple words, if a problem is divided into smaller subproblems, the optimal solution of the original problem can be constructed using the optimal solutions of those subproblems.

This principle is also known as Optimal Substructure.

## 2. Explanation (2 Marks)

The Principle of Optimality works as follows:

1. Divide the main problem into smaller subproblems.
2. Find the optimal solution for each subproblem.
3. Store the results of the subproblems.
4. Combine the optimal solutions to obtain the optimal solution to the original problem.

Important characteristics:

- The problem must have optimal substructure.
- Subproblems may overlap.
- Previously calculated results can be reused.
- It helps avoid repeated calculations.

## 3. Mathematical Representation (2 Marks)

Consider a multistage decision problem.

Let:

- \\(S\\) = Current state.
- \\(a\\) = Decision or action.
- \\(R(S,a)\\) = Immediate cost or reward.
- \\(S'\\) = Next state.
- \\(V(S)\\) = Optimal value of the current state.

The general Bellman recurrence relation for a minimization problem is:

\\[ \boxed{ V(S)=\min\_{a\in A(S)} \left[R(S,a)+V(S')\right] } \\]

Where:

- \\(A(S)\\) represents the set of possible decisions.
- \\(R(S,a)\\) represents the immediate cost.
- \\(V(S')\\) represents the optimal future cost.

For a maximization problem:

\\[ \boxed{ V(S)=\max\_{a\in A(S)} \left[R(S,a)+V(S')\right] } \\]

This means the optimal value is obtained by selecting the decision that gives the minimum total cost or maximum total reward.

## 4. Example: Shortest Path Problem (1 Mark)

Consider a graph with three vertices A, B and C.

Illustrative weighted graph

Possible paths from A to C:

- A → B → C = 2 + 3 = 5
- A → C = 8

Therefore, the shortest path is:

\\[ \boxed{A\rightarrow B\rightarrow C} \\]

Minimum cost:

\\[ \boxed{5} \\]

The shortest path from A to C through B contains the shortest path from A to B. This demonstrates the Principle of Optimality.

## 5. Applications

1. Shortest path algorithms.
2. Matrix Chain Multiplication.
3. Optimal Binary Search Tree.
4. 0/1 Knapsack Problem.
5. Travelling Salesperson Problem.

## Quick Revision for SPPU

Remember these points for 7 marks:

| Topic             | Key point                                      |
| ----------------- | ---------------------------------------------- |
| Scientist         | Richard Bellman                                |
| Main concept      | Optimal substructure                           |
| Statement         | Optimal solution contains optimal subsolutions |
| Mathematical form | Bellman recurrence                             |
| Example           | Shortest path                                  |
| Applications      | OBST, Knapsack, MCM                            |

Most important formula:

\\[ V(S)=\min_a[R(S,a)+V(S')] \\]

Exam tip: Do not write only the definition. For 7 marks, include the mathematical recurrence, explain every symbol, and draw the shortest-path example.