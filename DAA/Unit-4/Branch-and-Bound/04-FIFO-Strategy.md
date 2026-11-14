# 5. FIFO and LIFO Approaches in Branch and Bound



Prepare as a short note

Potential 4–5 marks



Branch and Bound uses different strategies to select the next live node for expansion. Two common strategies are FIFO Branch and Bound and LIFO Branch and Bound.

## 1. FIFO Branch and Bound

FIFO (First In, First Out) Branch and Bound uses a queue to store live nodes.

- The node generated first is expanded first.
- Nodes are explored level by level.
- It follows Breadth-First Search (BFS).

Algorithm:

```
FIFO_Branch_And_Bound(root):

    Create an empty queue Q
    Insert root into Q

    while Q is not empty:

        E = Remove front node from Q

        Generate children of E

        for each child X:
            if X is promising:
                Insert X at rear of Q
```

## 2. LIFO Branch and Bound

LIFO (Last In, First Out) Branch and Bound uses a stack to store live nodes.

- The node generated last is expanded first.
- It explores one branch deeply before exploring others.
- It follows Depth-First Search (DFS).

Algorithm:

```
LIFO_Branch_And_Bound(root):

    Create an empty stack S
    Push root into S

    while S is not empty:

        E = Pop top node from S

        Generate children of E

        for each child X:
            if X is promising:
                Push X into S
```

## 3. Difference between FIFO and LIFO

| Feature        | FIFO                 | LIFO                            |
| -------------- | -------------------- | ------------------------------- |
| Full form      | First In First Out   | Last In First Out               |
| Data structure | Queue                | Stack                           |
| Node selection | First generated node | Last generated node             |
| Search style   | Breadth-First Search | Depth-First Search              |
| Exploration    | Level by level       | Goes deeper first               |
| Memory         | Can be high          | Usually lower for deep searches |
| Node removal   | From front           | From top                        |
| Implementation | Enqueue and Dequeue  | Push and Pop                    |

## 4. FIFO, LIFO and LC Branch and Bound comparison

This is particularly important because LC Branch and Bound appeared repeatedly in your papers.

| Feature         | FIFO                   | LIFO                   | LC                     |
| --------------- | ---------------------- | ---------------------- | ---------------------- |
| Selection basis | Arrival order          | Latest generated       | Least cost             |
| Data structure  | Queue                  | Stack                  | Priority queue         |
| Search          | BFS                    | DFS                    | Least-cost-first       |
| Node selected   | Oldest live node       | Newest live node       | Lowest-cost live node  |
| Main purpose    | Level-wise exploration | Depth-wise exploration | Cost-based exploration |

[Branch and bounding : Data structures | PPTX](https://images.openai.com/static-rsc-4/HAzhYpyd28p2gYMlfy2o99_WMiXZ55CNy13EpqNxPZ5HMIEndoExsqdVT7B8enFPO2yf5bVI2g_JPbxSJfhhLsNNzN_WpBm5LJtaqw85wt3RHn506xyWHJ0rwAz3jyTwEgtKkHg30cvPBUZ7GEPEdVeraeDSqTshSYUR6l3HZjQ?purpose=inline)

[slideshare.net](https://www.slideshare.net/slideshow/branch-and-bounding-data-structures/38930127?utm_source=chatgpt.com)

## 5. Advantages and disadvantages

| Method | Advantage                                      | Disadvantage                                       |
| ------ | ---------------------------------------------- | -------------------------------------------------- |
| FIFO   | Systematic level-wise exploration              | May require large memory                           |
| LIFO   | Often requires less memory                     | May explore an unpromising deep branch first       |
| LC     | Prioritizes the most promising cost-based node | Priority queue and bound calculations add overhead |

## 6. Conclusion

FIFO selects the oldest live node, LIFO selects the newest live node, and LC selects the live node with the least cost. All three are node-selection strategies used in Branch and Bound.

## Exam revision

Remember these three one-line rules:

- FIFO = Queue = BFS
- LIFO = Stack = DFS
- LC = Priority Queue = Least-cost-first

Preparation priority: Understand the comparison table and the control abstraction of all three methods. Since LC Branch and Bound has seven question occurrences in your papers, give it more numerical practice than FIFO and LIFO.