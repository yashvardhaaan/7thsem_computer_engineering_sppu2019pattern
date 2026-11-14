# **Part G — Distributed Algorithms**

## **2. Distributed Breadth First Search (BFS)**



Very high priority

Repeated in 4 papers



**PYQ pattern:** The university has repeatedly asked for stepwise traversal of a given graph. Prepare the algorithm and practise graph-based problems thoroughly.

### **1. BFS Fundamentals**

**Breadth First Search (BFS)** is a graph traversal algorithm that visits vertices level by level, starting from a selected source vertex.

It first visits all immediate neighbours of the source, then the neighbours of those vertices, and continues until all reachable vertices are visited.

**Example:** If traversal starts from A:

### **BFS traversal example**

[BFS vs DFS: Diferencias Clave | Learn Graph Theory](https://images.openai.com/static-rsc-4/Zim5fD9tiHtMGHs12GhzH4CA_4WZ7-i5ODfBbzvKfFRjcipq5lhsDSX2rLAsCF3rdZXZ1guNsubFpWvrLkgRd4aENqbqzCsi2Dxxi5_8C2Ai1DVxIRvjvogf4Wn0XCqx_l8IuO5uFKGhEhkY-337QNYWXE0W2UiTD1L3Xv2uHlI?purpose=inline)

[learngraphtheory.org](https://learngraphtheory.org/articles/es/bfs-vs-dfs.html?utm_source=chatgpt.com)

Illustrative graph only; actual traversal depends on the given graph and neighbour ordering.

**BFS uses a Queue (FIFO):**

- Enqueue: Insert a vertex into the queue.
- Dequeue: Remove the front vertex.
- Visited: Prevent visiting the same vertex repeatedly.

**Conventional BFS complexity:**

- Time: \\(O(V+E)\\) using an adjacency list.
- Space: \\(O(V)\\).

Where \\(V\\) = number of vertices and \\(E\\) = number of edges.

### **2. What is Distributed BFS?**

**Distributed Breadth First Search (Distributed BFS)** is a graph traversal algorithm in which multiple processors or computing nodes cooperate to explore a graph level by level.

Instead of one processor exploring all vertices, different nodes process different vertices or partitions of the graph simultaneously.

Nodes exchange messages to share information about newly discovered vertices.

**Main idea:**

1. Divide the graph among multiple processors.
2. Select a source vertex.
3. Mark the source as visited.
4. Explore neighbouring vertices in parallel.
5. Exchange messages to inform other nodes about newly discovered vertices.
6. Continue level by level until no new vertices are discovered.

### **3. Distributed BFS Architecture**

**Source Vertex (A)**

Level 0

Distribute neighbouring vertices

**Node 1**

Partition 1

**Node 2**

Partition 2

**Node 3**

Partition 3

Message exchange and synchronization

**Next BFS Level**

Newly discovered vertices

### **4. Distributed BFS Algorithm**

**Algorithm: Distributed_BFS(G, source)**

```
1. Divide graph G among P processors.

2. For each vertex v:
       visited[v] = false
       distance[v] = infinity

3. Mark source as visited.
   distance[source] = 0

4. Place source in the frontier.

5. While frontier is not empty:

       In parallel, for each vertex u in frontier:

           For each neighbour v of u:

               If visited[v] == false:

                   Mark v as visited.
                   distance[v] = distance[u] + 1.

                   Send message to the processor
                   responsible for vertex v.

       Exchange messages between processors.

       Synchronize all processors.

       Construct the next frontier using
       newly discovered vertices.

6. Stop when no new vertices are discovered.
```

**Important:** In a real distributed implementation, checking and marking `visited[v]` must be coordinated across processors. Two processors may discover the same vertex simultaneously. An atomic operation, lock, or ownership-based update prevents duplicate discovery.

### **5. Stepwise Graph Traversal**

Consider this illustrative undirected graph:

[Problem Solving through Search - Uninformed Search | PPTX](https://images.openai.com/static-rsc-4/7pbAcKeu0KTjJ7QDEaFxvj48g7dauI371TZ7N3fo-gd6A_kbvC27KJWKm3Rc3QOKtp06BRUr---E0pdPCa9CT-jOa8xb0UJ1KDyh4gBwEwGq6xxT7x1fkF7CaWg7MOjjPT8hRHmdLX4zZpHy-F6NAK2A42m_MUNHV3nGlv7e0x4?purpose=inline)

[slideshare.net](https://www.slideshare.net/slideshow/problem-solving-through-search-uninformed-search/274355443?utm_source=chatgpt.com)

Assume the source vertex is **A** and neighbours are processed alphabetically.

**Step 1: Initialization**

- Mark A as visited.
- Distance of A = 0.
- Frontier = .

**Step 2: Explore A**

- Discover B and C.
- Assign distance 1.
- Frontier = .

**Step 3: Explore B and C in parallel**

- B discovers D and E.
- C discovers F.
- Assign distance 2.
- Frontier = .

**Step 4: Explore D, E and F**

- No new vertices are discovered.
- Frontier becomes empty.
- Traversal terminates.

**Final BFS traversal:**

\\[ A \rightarrow B \rightarrow C \rightarrow D \rightarrow E \rightarrow F \\]

### **6. Visited and Distance Table**

| Vertex | Distance | Status  |
| ------ | -------- | ------- |
| A      | 0        | Visited |
| B      | 1        | Visited |
| C      | 1        | Visited |
| D      | 2        | Visited |
| E      | 2        | Visited |
| F      | 2        | Visited |

The order within a level can vary depending on how processors process and communicate vertices. The BFS distances remain the same.

### **7. Communication Between Nodes**

Communication is essential because vertices belonging to different processors may be connected.

For example:

- Processor 1 discovers vertex B.
- Processor 1 sends a message to the processor responsible for B.
- That processor checks whether B is already visited.
- If not, it marks B visited and adds it to the next frontier.
- Processors synchronize before moving to the next BFS level.

**Common communication mechanisms:**

- Message passing
- MPI (Message Passing Interface)
- Shared-memory communication
- Synchronization barriers

### **8. Distributed BFS vs Conventional BFS**

| Conventional BFS            | Distributed BFS                    |
| --------------------------- | ---------------------------------- |
| Runs on one processor       | Runs on multiple processors        |
| Usually uses one queue      | Uses local frontiers/queues        |
| Sequential exploration      | Parallel exploration within levels |
| No inter-node communication | Requires communication             |
| Limited by one processor    | Can handle larger graphs           |
| Simpler implementation      | More complex implementation        |

### **9. Advantages of Distributed BFS**

1. **Faster processing:** Multiple processors explore vertices simultaneously.
2. **Scalability:** Suitable for very large graphs.
3. **Load distribution:** Work can be divided among multiple nodes.
4. **Resource utilization:** Uses the combined memory and processing power of multiple computers.
5. **Large graph handling:** Graph partitions can be stored across different machines.
6. **Parallel exploration:** Vertices at the same BFS level can be processed concurrently.

**Limitations:** Communication overhead, synchronization delays, load imbalance and duplicate vertex discoveries can reduce performance.

### **10. Applications**

- Social network analysis
- Web page crawling
- Shortest path calculation in unweighted graphs
- Network routing
- Distributed graph processing
- Recommendation systems

## **PYQ-wise preparation strategy**

| Exam         | Question        | What to write                                 |
| ------------ | --------------- | --------------------------------------------- |
| Nov/Dec 2022 | Q8(a), 10 marks | Algorithm + full stepwise graph traversal     |
| May/Jun 2023 | Q8(a)(iii)      | Definition + working + advantages             |
| May/Jun 2024 | Q8(a), 10 marks | Algorithm + graph traversal + visited table   |
| May/Jun 2025 | Q8(a), 8 marks  | Pseudocode + advantages over conventional BFS |

## **Important exam points**

- BFS uses a FIFO queue in its conventional implementation.
- Distributed BFS uses multiple processors and communication.
- Traversal proceeds level by level.
- Maintain visited and distance information.
- Synchronization is needed between BFS levels.
- Avoid duplicate discovery of vertices.
- For an unweighted graph, BFS finds shortest-path distances from the source.

## **Practice question**

Let's practise the most repeated 10-mark question. Consider this adjacency matrix:

\\[ A= \begin{bmatrix} 0&1&1&0&0\\\ 1&0&0&1&1\\\ 1&0&0&0&1\\\ 0&1&0&0&0\\\ 0&1&1&0&0 \end{bmatrix} \\]

Vertices: A, B, C, D, E.

**Starting vertex: A**

**Your task:** What is the BFS traversal order if neighbours are processed alphabetically?

A → B → C → D → E

A → C → B → E → D

A → B → D → E → C

A → B → C → E → D

Check answer



Next, we can practise a more complex 10-mark adjacency-matrix question, including processor assignment, message exchange and a level-by-level traversal.