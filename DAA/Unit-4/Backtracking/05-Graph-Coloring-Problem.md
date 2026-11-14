# 2. Graph Coloring Problem Using Backtracking



Very Important – Repeated PYQ

8–10 Marks



Graph Coloring is one of the most frequently repeated topics in your SPPU Backtracking unit.

## Previous Year Questions

| Examination  | Question                                                                             | Marks |
| ------------ | ------------------------------------------------------------------------------------ | ----- |
| Nov/Dec 2022 | Q4(b): Explain Backtracking with graph coloring and solve the given graph.           | 8     |
| May/Jun 2024 | Q3(a): Color a graph using Red and Black; show the state-space diagram.              | 10    |
| Nov/Dec 2024 | Q3(a): Color the given graph using three colors R, G, B with recursive Backtracking. | 8     |
| May/Jun 2025 | Q3(a): Color a graph using two colors and show the stepwise state-space process.     | 10    |

Preparation strategy: Learn one common algorithm and practice both two-color and three-color numerical problems.

## 1. Definition of Graph Coloring (1 Mark)

Graph Coloring is a problem of assigning colors to the vertices of a graph such that no two adjacent vertices have the same color.

The objective is to color all vertices using a given number of colors while satisfying the coloring constraints.

The minimum number of colors required to color a graph is called its Chromatic Number, represented by:

\\[ \boxed{\chi(G)} \\]

Example: If a graph can be colored using three colors, its chromatic number is at most 3.

## 2. Principle of Graph Coloring Using Backtracking (2 Marks)

Graph Coloring is solved using the Backtracking technique.

The following steps are performed:

1. Start with the first vertex.
2. Assign a color from the available colors.
3. Check whether the assigned color is safe.
4. A color is safe if no adjacent vertex has the same color.
5. If safe, assign the color and move to the next vertex.
6. If no color is safe, backtrack to the previous vertex.
7. Try another available color.
8. Continue until all vertices are colored or no solution exists.

Important condition:

\\[ \boxed{Color[i]\neq Color[j]} \\]

For every pair of adjacent vertices \\(i,j\\).

## 3. Adjacency Matrix Representation (1 Mark)

An adjacency matrix is used to represent the connections between vertices of a graph.

For a graph with n vertices, the adjacency matrix is an \\(n\times n\\) matrix.

\\[ A[i][j]= \begin{cases} 1 & \text{if vertices i and j are adjacent}\\\ 0 & \text{otherwise} \end{cases} \\]

Example:

Consider a graph with four vertices and edges:

\\[ E=\\{(1,2),(1,3),(2,3),(2,4),(3,4)\\} \\]

Its adjacency matrix is:

\\[ A= \begin{bmatrix} 0&1&1&0\\\ 1&0&1&1\\\ 1&1&0&1\\\ 0&1&1&0 \end{bmatrix} \\]

## 4. Recursive Backtracking Algorithm (2 Marks)

Algorithm: GraphColoring(k)

```
Algorithm GraphColoring(k)

{
    for c = 1 to m do
    {
        if Safe(k, c) then
        {
            color[k] = c;

            if k == n then
                Print color[];

            else
                GraphColoring(k + 1);

            color[k] = 0;
        }
    }
}
```

Safe() function:

```
Algorithm Safe(k, c)

{
    for j = 1 to n do
    {
        if A[k][j] == 1 AND color[j] == c
            return false;
    }

    return true;
}
```

Explanation:

| Variable        | Meaning                                |
| --------------- | -------------------------------------- |
| n               | Number of vertices                     |
| m               | Number of available colors             |
| A[][]           | Adjacency matrix                       |
| color[]         | Stores assigned colors                 |
| Safe()          | Checks whether a color can be assigned |
| GraphColoring() | Recursively assigns colors             |

## 5. Solved Example: Graph Coloring Using Three Colors (2 Marks)

Consider the following graph:

Vertices:

\\[ V=\\{1,2,3,4\\} \\]

Edges:

\\[ E=\\{(1,2),(1,3),(2,3),(2,4),(3,4)\\} \\]

Available colors:

\\[ C=\\{R,G,B\\} \\]

Where R = Red, G = Green and B = Blue.

Step 1: Start with vertex 1.

Assign Red to vertex 1.

\\[ Color[1]=R \\]

Step 2: Color vertex 2.

Vertex 2 is adjacent to vertex 1.

Therefore, it cannot be Red.

Assign Green.

\\[ Color[2]=G \\]

Step 3: Color vertex 3.

Vertex 3 is adjacent to both vertex 1 and vertex 2.

Therefore, it cannot be Red or Green.

Assign Blue.

\\[ Color[3]=B \\]

Step 4: Color vertex 4.

Vertex 4 is adjacent to vertices 2 and 3.

It cannot be Green or Blue.

Assign Red.

\\[ Color[4]=R \\]

Final coloring:

| Vertex | Assigned Color |
| ------ | -------------- |
| V1     | Red            |
| V2     | Green          |
| V3     | Blue           |
| V4     | Red            |

## Final colored graph

Red

Green

Blue

Number of colors used\
3

Valid coloring

Yes

Therefore, the graph can be colored using three colors.

\\[ \boxed{Color=[R,G,B,R]} \\]

The chromatic number of this graph is:

\\[ \boxed{\chi(G)=3} \\]

## 6. State-Space Tree (Important for 10 Marks)

A state-space tree represents all possible color assignments explored by the backtracking algorithm.

For the above graph, using three colors:

Stepwise state-space exploration

1. Level 1: Vertex 1

   Assign R.

   V1 = R
2. Level 2: Vertex 2

   R is not allowed because V1 and V2 are adjacent. Assign G.

   V2 = G
3. Level 3: Vertex 3

   R and G are not allowed. Assign B.

   V3 = B
4. Level 4: Vertex 4

   G and B are not allowed. Assign R.

   V4 = R
5. Complete solution

   All vertices are colored without violating any edge constraint.

   Solution found

State-space tree representation:

```
             Start
               |
            V1 = R
               |
            V2 = G
               |
            V3 = B
               |
            V4 = R
               |
          Valid Solution
```

In a complete search tree, alternative color assignments are also explored. Invalid branches are pruned through backtracking.

## 7. Graph Coloring Using Two Colors

This is particularly important for the May 2024 and May 2025 PYQs.

Consider the same graph with edges:

\\[ E=\\{(1,2),(1,3),(2,3),(2,4),(3,4)\\} \\]

Available colors:

\\[ C=\\{R,B\\} \\]

Try assigning colors:

| Vertex | Attempted Color    | Result    |
| ------ | ------------------ | --------- |
| V1     | R                  | Selected  |
| V2     | B                  | Selected  |
| V3     | R or B             | Rejected  |
| V3     | No available color | Backtrack |

Reason:

- V3 is adjacent to V1, so it cannot be Red.
- V3 is also adjacent to V2, so it cannot be Blue.

Therefore, no valid coloring exists using only two colors for this graph.

\\[ \boxed{\text{No solution using 2 colors}} \\]

This demonstrates why backtracking is required.

Important: This does not mean every graph needs three colors. A bipartite graph can be colored using two colors.

For example, consider a graph with edges (1,2), (1,3), (2,4), (3,4).

Example of valid two-coloring

Red

Black/Blue

\\[ Color=[R,B,B,R] \\]

Valid two-coloring

## 8. Time and Space Complexity (1 Mark)

Let:

- n = Number of vertices.
- m = Number of available colors.

Each vertex can potentially receive any of m colors.

Therefore, the worst-case number of color combinations is:

\\[ m^n \\]

Using an adjacency matrix, checking whether a color is safe takes \\(O(n)\\) time.

Hence, a general worst-case upper bound is:

\\[ \boxed{O(n\times m^n)} \\]

Space complexity:

\\[ \boxed{O(n^2)} \\]

Including the adjacency matrix. The recursion and color arrays require \\(O(n)\\) additional space.

## 9. Applications of Graph Coloring

1. Examination timetable scheduling.
2. Register allocation in compilers.
3. Frequency assignment in wireless networks.
4. Map coloring.
5. Scheduling conflicting tasks.

## SPPU PYQ Preparation Checklist

Your preparation

0/8

Definition and principle of graph coloring

Adjacency matrix representation

Recursive Backtracking algorithm

Safe() function

Two-color numerical problem

Three-color numerical problem

State-space tree diagram

Time and space complexity

### Important differences between the four PYQs

| PYQ      | What needs special attention                   |
| -------- | ---------------------------------------------- |
| Nov 2022 | Principle, algorithm and solving given graph   |
| May 2024 | Red/Black coloring and state-space diagram     |
| Nov 2024 | Three colors R, G, B and recursive algorithm   |
| May 2025 | Two-coloring with stepwise state-space process |

My exam recommendation

Prepare one complete three-color example and one two-color example. Memorize the recursive algorithm and Safe() function. These cover the common requirements of all four questions.

Next: The actual graph diagrams are essential for exact numerical solutions. Upload the four PYQ graph images, and we can solve each graph vertex by vertex, including every rejected branch and the complete state-space tree.