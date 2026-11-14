# 1. Greedy Strategy — SPPU Exam Notes



Important topic

6–8 Marks



This topic has appeared in:

- Nov 2022: Explain greedy strategy: principle, control abstraction and time analysis with an example. (8 marks)
- May 2024: Write control abstraction for greedy method and comment on its time complexity. (6 marks)

Let's prepare it in an exam-oriented format so you can write the answer directly in SPPU.

## 1. Definition of Greedy Strategy

The Greedy Strategy is an algorithmic technique used to solve optimization problems by making the best possible choice at each step.

It selects the locally optimal choice at every stage with the hope of obtaining a globally optimal solution.

Once a choice is made, it is generally not changed later.

In simple words: Greedy means choosing the best available option at every step to get the overall best solution.

## 2. Principle of Greedy Method

The greedy method follows these principles:

1. Divide the problem into smaller stages.
2. At each stage, select the best possible choice (locally optimal choice).
3. Check whether the selected choice is feasible.
4. If feasible, include it in the solution.
5. Repeat until the solution is complete.

Important properties:

- Greedy Choice Property: A globally optimal solution can be obtained by making locally optimal choices.
- Optimal Substructure: An optimal solution contains optimal solutions to its subproblems.

Note: Not every optimization problem can be solved using the greedy method.

## 3. Control Abstraction of Greedy Method

Control abstraction describes the general structure or steps followed by a greedy algorithm.

Algorithm (Exam Important)

```
Algorithm Greedy(a, n)

{
    solution = empty;

    for i = 1 to n do
    {
        x = Select(a);

        if Feasible(solution, x) then
            solution = Union(solution, x);
    }

    return solution;
}
```

Explanation of functions:

| Function   | Description                                         |
| ---------- | --------------------------------------------------- |
| Select(a)  | Selects the best available candidate.               |
| Feasible() | Checks whether the candidate satisfies constraints. |
| Union()    | Adds the selected candidate to the solution.        |
| Solution   | Stores the final result.                            |

The algorithm continues selecting candidates until all candidates are considered or the solution is completed.

## 4. Example: Activity Selection Problem

Suppose we have activities with starting and finishing times. We need to select the maximum number of non-overlapping activities.

| Activity | Start Time | Finish Time |
| -------- | ---------- | ----------- |
| A1       | 1          | 2           |
| A2       | 3          | 4           |
| A3       | 0          | 6           |
| A4       | 5          | 7           |
| A5       | 8          | 9           |
| A6       | 5          | 9           |

Greedy approach: Always select the activity that finishes earliest among the available activities.

[DSA Part 12: Graphs, DP, Greedy & Backtracking | Wasil Zafar](https://images.openai.com/static-rsc-4/-P4Y8WNCvMoL0-I-YicVkD04KqQh6O6NkUC0vndIKh2AD2s1Qce0-5_6pqiTuvLMeBv8LWRgqsLtYQ51TUH51Z7Sji66U6S32EgtaXQKioql2fh_JdPF1FaShrpEc8VH05a2W7V7VvcNMCRQVyjcvaeLcHHcTlWFjP7Y003hGUM?purpose=inline)

[wasilzafar.com](https://www.wasilzafar.com/pages/series/data-structures/dsa-graphs-dp-greedy-backtracking.html?utm_source=chatgpt.com)

Step-by-step selection:

1. Select A1 (1–2), as it finishes earliest.
2. Select A2 (3–4), because its start time is after A1 finishes.
3. Reject A3 (0–6), because it overlaps with selected activities.
4. Select A4 (5–7), because it starts after A2 finishes.
5. Select A5 (8–9), because it starts after A4 finishes.
6. Reject A6 (5–9), because it overlaps with A4 and A5.

Final solution:

\\[ S = \\{A1,A2,A4,A5\\} \\]

Maximum number of compatible activities = 4.

## 5. Time Complexity Analysis

Let n be the total number of candidates.

| Operation            | Time Complexity |
| -------------------- | --------------- |
| Select candidate     | O(1)            |
| Feasibility checking | O(n) in general |
| Union operation      | O(1)            |
| Loop execution       | O(n)            |

Therefore, the general greedy control abstraction takes:

\\[ T(n)=O(n \times (T\_{select}+T\_{feasible}+T\_{union})) \\]

If selection, feasibility checking and union each take constant time:

\\[ \boxed{T(n)=O(n)} \\]

For the activity selection example:

- Sorting activities by finishing time: O(n log n)
- Selecting compatible activities: O(n)

Overall time complexity:

\\[ \boxed{O(n\log n)} \\]

If activities are already sorted, complexity becomes O(n).

## 6. Advantages and Disadvantages

Advantages:

1. Simple and easy to implement.
2. Requires less memory in many applications.
3. Efficient for suitable optimization problems.
4. Often provides solutions in polynomial time.

Disadvantages:

1. Does not always produce an optimal solution.
2. Decisions are generally irreversible.
3. Correct greedy choice must be mathematically justified.

## 7. Applications of Greedy Method

1. Fractional Knapsack Problem.
2. Job Sequencing with Deadlines.
3. Activity Selection Problem.
4. Prim's Minimum Spanning Tree Algorithm.
5. Kruskal's Minimum Spanning Tree Algorithm.
6. Dijkstra's Shortest Path Algorithm (for non-negative edge weights).
7. Huffman Coding.

## How to write this in SPPU exam

| Question           | What to write                                                             |
| ------------------ | ------------------------------------------------------------------------- |
| Nov 2022 (8 marks) | Definition + Principle + Control Abstraction + Example + Time Complexity  |
| May 2024 (6 marks) | Definition + Control Abstraction + Function Explanation + Time Complexity |

Exam tip

For an 8-mark question, give special attention to the control abstraction, example with steps, and time complexity. Draw the activity selection timeline for better presentation.

## Practice check

Question: What is the main principle of the Greedy Method?

It considers all possible solutions before selecting one.

It makes the locally optimal choice at each step.

It always uses recursion to solve problems.

It changes previously selected choices repeatedly.

Check answer

Next: We can study the next topic, Fractional Knapsack using Greedy Strategy, in the same SPPU exam-oriented format.