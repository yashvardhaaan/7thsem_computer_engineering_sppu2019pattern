# **Part G — Distributed Algorithms**

## **1. Introduction to Distributed Algorithms**



No direct standalone PYQ

Foundation topic



This topic introduces distributed computing. Understand how multiple independent computers communicate and cooperate to solve a common problem.

## **1. Definition of Distributed Algorithms**

A **distributed algorithm** is an algorithm that runs on multiple independent computers or processors (called nodes) that communicate with each other through a network to solve a common problem.

Each node performs a part of the computation and exchanges information with other nodes to coordinate the overall execution.

**Examples:**

- Google Search
- Distributed databases
- Cloud computing
- Online banking systems
- Blockchain networks
- Distributed file systems

[Distributed in Operating System](https://images.openai.com/static-rsc-4/Ik0KxMoJ6ncu9HfUFKtV57c7XwAr96oUbqVL1qh1ce3tv1IYfMQFYqr5PvhJBPD5ZIkgkscbFhZHn2Mv73EYmtkaxW4QO_Oj8-ddA-3RhsDbSSzvzkqlOsqktZ9HfzgYc3P4RxqHKOVOt7sZNGH93I5RwoIxz07HMewZuS5YjfI?purpose=inline)

[tutorialspoint.com](https://www.tutorialspoint.com/operating_system/os_distributed.htm?utm_source=chatgpt.com)

## **2. Distributed Systems**

A **distributed system** is a collection of independent computers connected through a communication network that work together and appear to users as a unified system.

Each computer in the system is called a **node**.

### **Main Components**

1. **Nodes:** Independent computers or processors that perform computations.
2. **Communication network:** Connects nodes and allows information exchange.
3. **Message passing:** Mechanism used by nodes to exchange information.
4. **Distributed data:** Data may be stored across multiple nodes.
5. **Coordination:** Nodes coordinate their activities to complete tasks.

### **Example**

Consider an online shopping application.

- Node 1 manages user information.
- Node 2 manages product information.
- Node 3 manages payments.
- Node 4 manages orders.

All nodes communicate through a network to complete a customer's order.

[Software Architecture Diagrams: From Simple to Complex](https://images.openai.com/static-rsc-4/N6rRn9xgbGXAk9t7fS5z7IFlPQKK0AqZ68uSRKSSPVc0A563NM32Ra4chobaMcLwmBQQbGJ4865T83AmSPTTlFVT9JmEWanL4gHICo4NW71wySzx_dhC8MOkwhgkjVKGcIyzOp4viob7asNxVUxh3sY-3oLDwESQp61RU0WEHzI?purpose=inline)

[draft1.ai](https://www.draft1.ai/blog/the-power-of-software-architecture-diagrams-from-simple-to-complex?utm_source=chatgpt.com)

## **3. Communication Between Processors / Nodes**

Communication is essential in distributed algorithms because nodes must exchange information to coordinate their operations.

Unlike shared-memory multithreading, distributed nodes generally communicate by sending and receiving messages.

### **A. Message Passing**

Message passing is a communication method in which one node sends data or instructions to another node through a network.

**Example:**

- Node A sends a request to Node B.
- Node B processes the request.
- Node B sends the result back to Node A.

### **B. Types of Communication**

**1. Synchronous Communication**

The sender and receiver coordinate their communication. The sender may wait until the receiver is ready or a response is received, depending on the communication mechanism.

**2. Asynchronous Communication**

The sender sends a message without waiting for the receiver to process it immediately.

### **Communication Diagram**

**Node A**

Sender

**Network**

Message passing

**Node B**

Receiver

Request message

Response message

## **4. Advantages of Distributed Algorithms**

1. **Scalability:** More nodes can be added to increase processing capacity.
2. **Resource sharing:** Nodes can share data, storage and computing resources.
3. **Reliability:** Some systems can continue operating even if individual nodes fail.
4. **Parallel processing:** Different nodes can perform separate tasks simultaneously.
5. **Geographical distribution:** Nodes can operate from different locations.
6. **Improved performance:** Large tasks can be divided among multiple machines.

## **5. Challenges of Distributed Algorithms**

1. **Network failure:** Communication links may fail.
2. **Node failure:** Individual computers may stop working.
3. **Communication delay:** Messages may take time to reach their destination.
4. **Synchronization:** Coordinating multiple nodes is difficult.
5. **Data consistency:** Maintaining consistent information across nodes is challenging.
6. **Security:** Communication and data must be protected from unauthorized access.
7. **Deadlocks:** Nodes may wait indefinitely for resources or messages under certain conditions.

## **6. Distributed Algorithms vs Multithreaded Algorithms**

Both approaches use multiple execution units to improve performance, but their architecture and communication methods are different.

| Feature               | Distributed Algorithms                          | Multithreaded Algorithms                   |
| --------------------- | ----------------------------------------------- | ------------------------------------------ |
| Execution environment | Multiple independent computers/nodes            | Multiple threads within a process          |
| Memory                | Usually separate memory per node                | Shared process memory                      |
| Communication         | Message passing over a network                  | Shared memory and synchronization          |
| Physical location     | Can be geographically distributed               | Usually on one computer                    |
| Network dependency    | Generally required for inter-node communication | Not necessarily required                   |
| Failure handling      | Must consider node and network failures         | Mainly thread and process failures         |
| Scalability           | Can scale across multiple machines              | Usually limited by one machine's resources |
| Example               | Distributed database                            | Multithreaded Merge Sort                   |

[PPT - Distributed Systems: Principles, Goals, and Challenges in Software Design PowerPoint Presentation - ID:557888](https://images.openai.com/static-rsc-4/UE92NOoLt3_X-8GXZYXLFWwNQRTFT2zFmI-LFOLza52lD7GHAlBra1OZuq1jXmShj38_bHZvZQsnRRTuk4s_XiLEdGs34OAYyTXiIx9u0hlLtZTGZ2RzOBWvYUU88A28dfqiaeJbps4Scix3Zij1jxQOa9LM4oQA8hf8kXW5bq0?purpose=inline)

[What Is A Multi-Core Processor at Wanda Hatton blog](https://images.openai.com/static-rsc-4/GMuYMPVa4eCbG-4KdlAsiVY79pvC86NPDfy53MgqfN_SffWjMktCrLPuPkYKDDv0tjTlgGMFXunBV6GTtQcAaN9PXhxiSOiCXx5eZrMz7R-JGRPv8ZO3NanayP79AMPT51Qa7wFPdnD20qV6adgEyq5-wQod8zjaaJbyiUiC23M?purpose=inline)

[Distributed System Diagram](https://images.openai.com/static-rsc-4/2XmmFjORsIz84MOdM4osgNjO-qpeymQor3TmqUnTd9u1QmcqKBwzk_BUh-IK6I4f8mfNoctILRIC0DY9GZtTocewsAdJijkqqa7wDGA6vE6JjY_3lTmUf70lojnRgSFX5nOeVF5O_w_9EyjCg3TDic1uaclJoIFxTUncf4Hw4dw?purpose=inline)

7

### **Important Difference**

- **Multithreading:** Multiple threads execute within a process and generally share memory.
- **Distributed computing:** Multiple independent nodes communicate using messages and generally have separate memory.

## **7. Applications of Distributed Algorithms**

[Cloudpionier Ionos: Versteckter Champion](https://images.openai.com/static-rsc-4/jJU4_f_GoByP7HfnmRDn5cDVpPu4nU-bQMugLJAWGqh7awygwn8bzT7E1JQJPjOFsZZmK2mAbqGSzoedyBxYOkBNAGqk8t9P-FKaSccSrlcQuH-Hw8SxeS2h7iTWid4AJVVTmW2alDCY7Yre40XboAcC9tkJcMcgkWxyT93Q-S4?purpose=inline)

**Cloud Computing**

Distributes computing and storage resources across multiple servers.

[PPT - Distributed DBMSs – Concepts and Design PowerPoint Presentation - ID:6192030](https://images.openai.com/static-rsc-4/mpVMD4qp8N7odbXfqiVQnCmBijKL6NvdRmtPNbYMxZJ-h8njeR4Bo_0saOtKVYVE09sjGHOChT_8d6ZTwEta4uaccRk_0FTo9kI1USY7CmnS_Il9s3A1eFflgZbgwTTrtor83xyLc3_mgmtByuBxnydQHa3PGL6_yXvZlhM0ldo?purpose=inline)

**Distributed Databases**

Stores and manages data across multiple machines.

[Implementation of High-Performance Blockchain Network Based on Cross-Chain Technology for IoT Applications | MDPI](https://images.openai.com/static-rsc-4/wBA4tCrvp8NYH2Tk7scTQ-FlXHBInG0xijzZLJYRIqlE4IgnmfouzjW33VxoFODR6QzZqbLkm2HzXUP1o-DQ8rqzyqzf9pV6Sd7iQ9yeY5EYPwVL-nAxV_eL57PUUUDAMoORbeBxNlQ9Up3TtVZE0whefweskt4axty9iy7G0lg?purpose=inline)

**Blockchain**

Multiple network nodes maintain and validate a shared ledger.

[Distributed File Systems (DFS) | Architecture & Consistency | Software System Design](https://images.openai.com/static-rsc-4/LmzTmVqlCIvYrjbtbjjrK-zxMjS9k2XOPl1lvMGFW3rTP1EU4S2OaJ3rLoaOTMuSgNAf6bcHZeU_-H0PAMqEWSYL8dwiLXu_UizK1n0QNkNimJ8Fao4j6MML9G0XSehvEmTmK7iS-Fyp4r_SlszfUFkdY3eEu-eSEJDnla7u5aA?purpose=inline)

**Distributed File Systems**

Stores and retrieves files across multiple computers.

## **8. Conclusion**

Distributed algorithms divide a computational problem among multiple independent nodes connected through a network. Nodes communicate using message passing and coordinate their activities to solve a common problem. They provide scalability, resource sharing and reliability, but face challenges such as communication delays, node failures, synchronization and data consistency.

## **Quick revision table**

| Concept                    | Key point                                     |
| -------------------------- | --------------------------------------------- |
| Distributed algorithm      | Computation across multiple independent nodes |
| Distributed system         | Network of cooperating computers              |
| Node                       | Individual computer or processor              |
| Message passing            | Communication between nodes                   |
| Synchronous communication  | Coordinated communication                     |
| Asynchronous communication | Sender need not wait for immediate processing |
| Main advantage             | Scalability and resource sharing              |
| Main challenge             | Network delay and node failure                |

## **Revision checklist**

**Preparation progress**

0/8

Definition of distributed algorithms

Distributed system and its components

Nodes and message passing

Synchronous vs asynchronous communication

Advantages of distributed algorithms

Challenges and limitations

Distributed vs multithreaded comparison

Applications and examples

**Exam tip:** Since there is no direct standalone PYQ, prepare the definition, distributed-system diagram, message passing, advantages/challenges and the comparison with multithreaded algorithms as a 5–7 mark short-note answer.