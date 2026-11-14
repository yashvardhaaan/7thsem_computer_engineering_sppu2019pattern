# **Part G — Distributed Algorithms**

## **3. Distributed Minimum Spanning Tree (MST)**



High priority

Repeated in 2 papers



**PYQ pattern:** Both questions ask you to explain an algorithm for Distributed Minimum Spanning Tree. Prepare the definition, algorithm, node communication and working with an example.

| Exam         | Actual question                                                       | Marks      |
| ------------ | --------------------------------------------------------------------- | ---------- |
| Nov/Dec 2023 | Q7(a)(i): Explain an algorithm for Distributed Minimum Spanning Tree. | Part of 10 |
| May/Jun 2023 | Q7(b)(i): Explain an algorithm for Distributed Minimum Spanning Tree. | 8          |

### **1. Minimum Spanning Tree (MST) Fundamentals**

A **Minimum Spanning Tree (MST)** is a spanning tree of a connected, undirected, weighted graph that connects all vertices with the minimum possible total edge weight.

**Properties:**

1. It connects all vertices.
2. It contains exactly \\(V-1\\) edges.
3. It has no cycles.
4. Its total edge weight is minimum.
5. A connected graph can have more than one MST if edge weights are equal.

**Example:**

[Minimum Spanning Tree | Algorithms & Examples | Study.com](https://images.openai.com/static-rsc-4/MyvmMcoFj_R4i-fCcNqKz8_-8hwj0JXMmQMtHFmeodOG1BIkn6Xs_d2B9-sC8LViY01-tZyoP4CKITVkRS5gWCQUBxbYq3nu9xyOqBeRuj-gTaE8vwEHzHBQcNrKQ98ar1FFZeA0wq3WfVzyOZZC_99eo2MaHl1V464QIuStHm0?purpose=inline)

[study.com](https://study.com/academy/lesson/minimum-spanning-tree-algorithms-examples.html?utm_source=chatgpt.com)

### **2. What is Distributed MST?**

**Distributed Minimum Spanning Tree** is an algorithm in which multiple interconnected computing nodes cooperate to find the minimum spanning tree of a distributed weighted graph.

In this approach:

- Each node stores information about itself and its neighbouring nodes.
- Nodes communicate by exchanging messages.
- Each node independently participates in selecting minimum-weight edges.
- The nodes coordinate to construct a global MST without relying on one central processor.

**Main objective:** Find the MST while minimizing communication overhead and computation time.

### **3. Distributed MST Algorithm — GHS Algorithm**

A commonly studied distributed MST algorithm is the **Gallager–Humblet–Spira (GHS) algorithm**.

It constructs an MST using distributed fragments, minimum outgoing edges and message passing.

**Important terminology:**

| Term                        | Meaning                                                            |
| --------------------------- | ------------------------------------------------------------------ |
| Fragment                    | A partial MST formed by a group of connected nodes                 |
| Minimum outgoing edge (MOE) | Minimum-weight edge connecting a fragment to another fragment      |
| Root                        | Leader node of a fragment                                          |
| Initiate                    | Message used to initialize fragment processing                     |
| Test                        | Message used to check whether an edge connects different fragments |
| Accept/Reject               | Response indicating whether an edge is eligible                    |
| Connect                     | Message used to merge two fragments                                |

### **4. Working of GHS Algorithm**

The algorithm works in the following stages.

**Step 1: Initialization**

- Initially, each node forms an individual fragment.
- Each node knows the weights of its incident edges.
- Each node identifies its minimum-weight adjacent edge.

**Step 2: Find Minimum Outgoing Edge**

- Each fragment searches for its minimum-weight outgoing edge.
- Nodes exchange Test messages to check whether an edge connects different fragments.
- If an edge connects nodes in the same fragment, it is rejected.
- Otherwise, it can be selected for merging.

**Step 3: Fragment Merging**

- The fragment sends a Connect message through its selected minimum outgoing edge.
- Two fragments merge into a larger fragment.
- The merged fragment updates its root and fragment information.

**Step 4: Repeat**

- The new fragment again searches for its minimum outgoing edge.
- The process continues until all nodes belong to one fragment.

**Step 5: Termination**

- When no outgoing edge exists, all nodes are connected in one fragment.
- The selected edges form the Minimum Spanning Tree.

### **5. Distributed MST Flowchart**

**Start**

Initialize each node as a separate fragment

Find minimum outgoing edge using messages

Exchange Connect messages and merge fragments

Update fragment information and repeat

**All nodes connected — MST obtained**

### **6. Pseudocode — Simplified Distributed MST**

The following is exam-oriented pseudocode describing the fragment-merging concept, not the complete message-state implementation of GHS.

```
Distributed_MST(G):

1. For each node v:
       Create a separate fragment F(v).

2. Repeat:

       For every fragment F in parallel:

           Find minimum-weight outgoing edge (u, v).

           Exchange messages with neighbouring nodes.

           Verify that u and v belong to
           different fragments.

           If the edge is valid:
               Select edge (u, v).
               Send CONNECT message.
               Merge the two fragments.

       Update fragment information.

3. Until all nodes belong to one fragment.

4. Return all selected edges as MST.
```

**Note:** A complete GHS implementation uses additional message handling, fragment levels, edge states and synchronization rules. For an 8-mark university answer, explain the core process and message exchange clearly.

### **7. Stepwise Example**

Consider the following weighted graph:

[Minimum Spanning Trees (MST) | Learn Graph Theory](https://images.openai.com/static-rsc-4/c3e7DOvVAr6dHjqnOZ3YupEc6Xd9U6wAm--yVh3a0yp-fs0oGsNJQ2CmXSGS4yFT-yxjhGmJW5n8ueEAsnFBrDRjDVA-xVbiGjicf7b2R6sojTPyHHd6ocann1S1s1td4xlzPvet39WKNrsbdj-BlvtcNtA_UPf_nCuTbuvDv30?purpose=inline)

[learngraphtheory.org](https://learngraphtheory.org/articles/minimum-spanning-trees.html?utm_source=chatgpt.com)

Assume the edges have these weights:

| Edge | Weight |
| ---- | ------ |
| A–B  | 2      |
| A–C  | 3      |
| B–C  | 1      |
| B–D  | 4      |
| C–D  | 5      |
| C–E  | 6      |
| D–E  | 2      |

**Initial fragments:**

\\[ F(A), F(B), F(C), F(D), F(E) \\]

Each node is initially its own fragment.

**Round 1 — Select minimum outgoing edges**

- A selects A–B (weight 2).
- B selects B–C (weight 1).
- C selects B–C (weight 1).
- D selects D–E (weight 2).
- E selects D–E (weight 2).

The fragments begin merging through their selected edges.

**Round 2 — Merge fragments**

The selected connections form:

\\[ F_1=\\{A,B,C\\} \\]

\\[ F_2=\\{D,E\\} \\]

**Round 3 — Connect remaining fragments**

The minimum edge between the two fragments is B–D (weight 4).

The fragments merge:

\\[ F=\\{A,B,C,D,E\\} \\]

**Final MST edges:**

\\[ \\{B-C,\ A-B,\ D-E,\ B-D\\} \\]

**Final MST weight**

# **9**

\\[ 1+2+2+4=9 \\]

Illustrative example. The fragment selections are simplified to show the MST concept; they are not a full simulation of GHS message ordering.

### **8. Communication Between Nodes**

Communication is the most important part of a distributed MST algorithm.

| Message     | Purpose                                          |
| ----------- | ------------------------------------------------ |
| Initiate    | Starts fragment processing                       |
| Test        | Checks whether an edge leads to another fragment |
| Accept      | Confirms an edge connects different fragments    |
| Reject      | Rejects an edge within the same fragment         |
| Connect     | Requests merging of fragments                    |
| Report      | Reports minimum outgoing edge information        |
| Change-root | Changes the root to facilitate merging           |

The messages help nodes coordinate without requiring a central controller.

### **9. Advantages of Distributed MST**

1. **Scalability:** Can handle large graphs distributed across multiple machines.
2. **Parallel processing:** Multiple fragments can search for outgoing edges simultaneously.
3. **Decentralized operation:** No central processor is required to perform all computations.
4. **Resource sharing:** Uses the processing and memory resources of different nodes.
5. **Efficiency:** Distributed processing can reduce computation time for large graphs.
6. **Suitable for networks:** Useful when graph information is stored across interconnected computers.

**Limitations:**

- Message-passing overhead.
- Synchronization complexity.
- Network delays and node failures.
- More difficult implementation than conventional MST algorithms.

### **10. Applications**

- Communication network design
- Computer network connectivity
- Electrical power distribution networks
- Road and transportation network planning
- Distributed sensor networks
- Network topology optimization

## **11. Distributed MST vs Conventional MST**

| Conventional MST                             | Distributed MST                         |
| -------------------------------------------- | --------------------------------------- |
| Runs on one machine                          | Runs across multiple nodes              |
| Uses centralized graph information           | Graph information is distributed        |
| Uses algorithms such as Prim's and Kruskal's | Uses distributed algorithms such as GHS |
| Local computation                            | Message-based coordination              |
| Simpler implementation                       | More complex implementation             |
| Limited by one machine's resources           | Can use multiple machines' resources    |

## **PYQ preparation checklist**

**Revision progress**

0/8 completed

Define MST and state its properties.

Explain Distributed MST.

Explain GHS algorithm and fragment formation.

Explain minimum outgoing edge selection.

Explain Test, Accept, Reject and Connect messages.

Show stepwise fragment merging using a weighted graph.

Write simplified distributed MST pseudocode.

Explain advantages and applications.

**Exam tip:** For an 8-mark answer, prioritize the definition, GHS algorithm, fragment formation, minimum outgoing edge selection, message communication, stepwise example and advantages. Remember that the GHS algorithm is the named distributed algorithm; Prim's and Kruskal's are conventional MST algorithms.