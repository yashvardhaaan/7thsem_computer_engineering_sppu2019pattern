# Classification of Problems

## 1. Introduction

In algorithm design, a **problem** is a task for which we need to find a solution using a systematic procedure or algorithm.

Before designing an algorithm, it is useful to **classify the problem** because different types of problems require different algorithmic techniques.

```text
                    PROBLEM
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
    Computational   Decision      Optimization
        │              │              │
        ▼              ▼              ▼
    Find a result   Yes / No      Best result
```

---

# 2. Classification of Problems

Problems can be broadly classified into the following categories:

1. **Sorting Problems**
2. **Searching Problems**
3. **String Processing Problems**
4. **Graph Problems**
5. **Combinatorial Problems**
6. **Geometric Problems**
7. **Numerical Problems**
8. **Optimization Problems**
9. **Decision Problems**
10. **Pattern Recognition / Machine Learning Problems**

---

# 3. Sorting Problems

A **sorting problem** requires arranging data according to a particular order.

### Example

Input:

```text
[40, 10, 30, 20]
```

Output:

```text
[10, 20, 30, 40]
```

### Common Algorithms

* Bubble Sort
* Selection Sort
* Insertion Sort
* Merge Sort
* Quick Sort
* Heap Sort

### Applications

* Arranging student marks
* Sorting database records
* Ranking players
* Organizing files

---

# 4. Searching Problems

A **searching problem** involves finding a particular element or determining whether an element exists.

### Example

```text
Array = [10, 20, 30, 40, 50]
Search = 30
```

Output:

```text
Found at index 2
```

### Common Algorithms

* Linear Search
* Binary Search
* Hash-based Search

### Applications

* Searching a database
* Finding a contact
* Searching files
* Web search

---

# 5. String Processing Problems

These problems involve processing or manipulating **text and characters**.

### Examples

* Find a substring
* Check whether a string is a palindrome
* Pattern matching
* Count characters
* Compare strings

Example:

```text
Text:    "HELLO WORLD"
Pattern: "WORLD"

Output: Pattern found
```

### Common Algorithms

* Naive String Matching
* KMP Algorithm
* Rabin-Karp
* Boyer-Moore

---

# 6. Graph Problems

A **graph problem** deals with vertices (nodes) and edges connecting them.

```text
        A
       / \
      B---C
       \
        D
```

### Examples

* Find the shortest path
* Find whether a path exists
* Find a minimum spanning tree
* Graph traversal

### Common Algorithms

* BFS
* DFS
* Dijkstra's Algorithm
* Bellman-Ford Algorithm
* Floyd-Warshall Algorithm
* Kruskal's Algorithm
* Prim's Algorithm

### Applications

* Google Maps
* Computer networks
* Social networks
* Route planning

---

# 7. Combinatorial Problems

These problems involve finding, selecting, arranging or counting **different combinations of objects**.

### Example

Suppose we have:

```text
A, B, C
```

Possible arrangements include:

```text
ABC
ACB
BAC
BCA
CAB
CBA
```

### Examples

* Traveling Salesman Problem
* Knapsack Problem
* N-Queens Problem
* Scheduling problems

These problems can become extremely difficult as the input size increases.

---

# 8. Geometric Problems

Geometric problems deal with **points, lines, distances, shapes and spatial relationships**.

### Examples

* Find the distance between two points.
* Find the closest pair of points.
* Find the convex hull.
* Determine whether two lines intersect.

### Applications

* Computer graphics
* CAD
* Robotics
* GPS
* Geographic Information Systems

### Common Algorithms

* Convex Hull algorithms
* Closest Pair algorithm
* Line intersection algorithms

---

# 9. Numerical Problems

Numerical problems involve **numbers and mathematical calculations**.

### Examples

* Finding GCD
* Finding prime numbers
* Solving equations
* Matrix multiplication
* Numerical integration

### Example

Find GCD of:

```text
48 and 18
```

Using Euclid's algorithm:

```text
48 mod 18 = 12
18 mod 12 = 6
12 mod 6 = 0

GCD = 6
```

---

# 10. Optimization Problems

An optimization problem asks for the **best possible solution** according to some objective.

The objective may be:

* Minimum cost
* Maximum profit
* Minimum distance
* Maximum efficiency

### Example

Suppose several routes are available:

```text
A ─── 10 km ─── B
│                │
15 km            5 km
│                │
C ─── 8 km ──────┘
```

The problem may be:

> Find the shortest route from A to B.

### Common Techniques

* Greedy algorithms
* Dynamic Programming
* Branch and Bound
* Linear Programming

---

# 11. Decision Problems

A **decision problem** asks a question whose answer is generally:

> **YES or NO**

### Examples

* Is a number prime?
* Does a path exist between two nodes?
* Is a graph connected?
* Does the array contain `x`?
* Is there a solution satisfying the given constraints?

Example:

```text
Is 17 a prime number?

Answer → YES
```

Decision problems are important in **computational complexity theory**.

---

# 12. Search Problems

A search problem asks us to **find a solution** satisfying given conditions.

### Example

Given an array:

```text
[5, 8, 12, 20]
```

Find an element greater than `10`.

Possible answer:

```text
12
```

### Difference from Decision Problem

```text
Decision:
"Does a solution exist?"
        ↓
       YES/NO

Search:
"What is the solution?"
        ↓
      Solution
```

---

# 13. Optimization vs Decision vs Search

Consider the same problem:

> Find the shortest route between two cities.

### Decision

> Is there a route with distance ≤ 100 km?

Answer:

```text
YES / NO
```

### Search

> Find a route between the two cities.

Answer:

```text
A → C → B
```

### Optimization

> Find the shortest possible route.

Answer:

```text
Shortest route = A → C → B
Distance = 75 km
```

---

# 14. Classification Based on Solvability

Problems can also be classified according to whether they can be solved computationally.

```text
                    Problems
                       │
             ┌─────────┴─────────┐
             ▼                   ▼
        Solvable              Unsolvable
       (Computable)          (Non-computable)
             │
             ▼
      Algorithm exists
```

### Solvable Problem

A problem for which an algorithm exists that produces the required answer.

### Unsolvable Problem

A problem for which **no algorithm can solve every possible instance**.

A famous example is the:

**Halting Problem**

It asks whether an arbitrary program will eventually stop or continue forever.

---

# 15. Classification Based on Complexity

Problems can also be classified according to computational difficulty.

```text
Problem
   │
   ├── Easy / Efficiently Solvable
   │       └── Polynomial-time problems
   │
   └── Difficult
           └── NP-related problems
```

Important complexity classes include:

* **P**
* **NP**
* **NP-Complete**
* **NP-Hard**

These are studied in **computational complexity theory**.

---

# 16. Summary Table

| Problem Type      | Main Objective                   | Example           |
| ----------------- | -------------------------------- | ----------------- |
| **Sorting**       | Arrange data                     | Sort marks        |
| **Searching**     | Find an item                     | Find `x` in array |
| **String**        | Process text                     | Pattern matching  |
| **Graph**         | Solve network problems           | Shortest path     |
| **Combinatorial** | Arrange/select/count             | N-Queens          |
| **Geometric**     | Solve spatial problems           | Closest points    |
| **Numerical**     | Perform mathematical computation | GCD               |
| **Optimization**  | Find best solution               | Minimum cost      |
| **Decision**      | Answer YES/NO                    | Is number prime?  |
| **Search**        | Find a valid solution            | Find a route      |
| **Unsolvable**    | No general algorithm exists      | Halting Problem   |

---

# 17. Exam-Oriented Answer

### Definition

> **Problem classification** is the process of grouping computational problems according to their characteristics, objectives and solution requirements. It helps in selecting an appropriate algorithmic technique.

### Major Classes

1. **Sorting Problems** — arrange data in a particular order.
2. **Searching Problems** — find a required element or information.
3. **String Processing Problems** — process and analyze text.
4. **Graph Problems** — solve problems involving vertices and edges.
5. **Combinatorial Problems** — deal with arrangements, selections and combinations.
6. **Geometric Problems** — deal with points, lines and spatial objects.
7. **Numerical Problems** — involve mathematical computations.
8. **Optimization Problems** — find the best solution according to an objective.
9. **Decision Problems** — answer YES/NO questions.
10. **Search Problems** — find a solution satisfying given conditions.

### Key Point

> **Classifying a problem before designing an algorithm helps identify the appropriate algorithmic strategy and complexity requirements.**
