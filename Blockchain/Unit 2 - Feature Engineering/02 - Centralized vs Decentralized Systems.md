# 02 - Centralized vs Decentralized Systems

> **Unit:** 2
> **Difficulty:** ⭐⭐☆☆☆
> **Expected Time:** 15 min

---

# Previous Year Questions (PYQs)

### 2025
- Discuss various limitations of centralized system with respect to decentralized system.

### 2024
- Differentiate between centralized and decentralized systems.
- What is decentralized system? Explain with diagram.

### 2023
- Discuss various limitations of centralized system with respect to decentralized system.

### 2022
- Differentiate centralized and decentralized systems.
- Discuss limitations of centralized systems.

---

# Learning Objective

After reading this note you should be able to:

- Understand centralized and decentralized systems.
- Differentiate between both architectures.
- Explain why Blockchain uses decentralization.
- Describe the limitations of centralized systems.
- Draw the architecture diagram in examinations.
- Answer all previous year questions.

---

# 1. Introduction

Before Blockchain, almost every digital system was **centralized**. Banks, governments, social media platforms, hospitals, and e-commerce websites all rely on a central authority to manage and control data.

While centralized systems are simple to manage, they suffer from problems such as **single point of failure**, **security risks**, **high maintenance costs**, and **lack of transparency**.

Blockchain introduced the concept of a **decentralized system**, where no single authority controls the network. Instead, multiple computers (called nodes) share responsibility for storing and validating data, making the system more secure, transparent, and reliable.

### Real-Life Analogy

**Centralized System:** A school where only the principal maintains all student records. If the principal's office is damaged, all records may become inaccessible.

**Decentralized System:** Every department maintains a synchronized copy of student records. Even if one department fails, the records remain available.

---

# 2. Core Concept

## What is a Centralized System?

A centralized system is a system where **one central server or authority** controls all data, decisions, and operations.

All users communicate through the central server.

### Examples

- Banks
- Facebook
- Instagram
- Amazon
- Government databases

### Characteristics

- Single authority
- Central database
- Easy management
- Faster decision making
- Single point of failure

---

## What is a Decentralized System?

A decentralized system distributes data and control among **multiple nodes** instead of relying on a single authority.

Each node maintains a copy of the ledger and participates in validating transactions.

### Examples

- Bitcoin
- Ethereum
- Blockchain networks
- IPFS

### Characteristics

- No central authority
- Distributed ledger
- High availability
- Transparent
- Fault tolerant

---

# 3. Working

## Centralized System

Step 1

User sends request.

↓

Step 2

Request reaches central server.

↓

Step 3

Server processes request.

↓

Step 4

Response is sent back to user.

If the server fails, the entire system stops functioning.

---

## Decentralized System

Step 1

User broadcasts request.

↓

Step 2

Multiple nodes receive it.

↓

Step 3

Nodes verify the transaction.

↓

Step 4

Consensus is achieved.

↓

Step 5

Transaction is stored on every node.

Even if some nodes fail, the network continues to work.

---

# Diagram

## Centralized Architecture

```text
          Users
      /    |    \
     /     |     \
    ▼      ▼      ▼
+----------------------+
|   Central Server     |
+----------------------+
          │
      Database
```

### Explanation

All users depend on one server. If it crashes, the entire system becomes unavailable.

---

## Decentralized Architecture

```text
        Node A -------- Node B
         /   \          /   \
        /     \        /     \
    Node C ---- Node D ---- Node E
         \        |        /
          \       |       /
             Node F
```

### Explanation

Each node communicates with others and stores the ledger. Failure of one node does not stop the network.

---

# Formula (Conceptual)

```text
Centralized:
Users → Server → Database

Decentralized:
Users ↔ Multiple Nodes ↔ Shared Ledger
```

### Explanation

- **Users** generate requests.
- **Server** is the single authority in centralized systems.
- **Nodes** collectively validate and store data in decentralized systems.
- **Shared Ledger** contains identical copies of the blockchain.

---

# Example

## Centralized Banking

You transfer ₹1000.

↓

Bank server verifies.

↓

Server updates the database.

↓

Money is transferred.

If the bank server is offline, the transaction cannot be completed.

---

## Blockchain Transaction

You transfer 1 Bitcoin.

↓

Transaction is broadcast.

↓

Thousands of nodes verify it.

↓

Consensus is achieved.

↓

The block is added to the blockchain.

Even if hundreds of nodes fail, the transaction can still be processed.

---

# Comparison: Centralized vs Decentralized Systems

| Feature | Centralized | Decentralized |
|---------|-------------|---------------|
| Control | Single authority | Multiple nodes |
| Data Storage | One database | Distributed ledger |
| Failure | Single point of failure | Fault tolerant |
| Transparency | Low | High |
| Security | Easier to attack | More secure |
| Trust | Third party required | Trustless |
| Availability | Depends on server | High availability |
| Scalability | Easier | More complex |
| Maintenance | Simple | Complex |
| Examples | Banks, Facebook | Bitcoin, Ethereum |

---

# Limitations of Centralized Systems

## 1. Single Point of Failure

If the central server crashes, the entire system stops.

---

## 2. Security Risks

Attacking one server can compromise the whole system.

Example:

Database hacking.

---

## 3. Data Manipulation

The administrator can modify records without users knowing.

---

## 4. Lack of Transparency

Users cannot independently verify stored data.

---

## 5. Third-Party Dependency

Every transaction depends on an intermediary.

Example:

Banks.

---

## 6. Higher Operational Cost

Maintaining centralized infrastructure is expensive.

---

## 7. Downtime

Server maintenance affects all users.

---

## 8. Limited Trust

Users must trust the organization to protect and maintain data.

---

# Advantages of Decentralized Systems

- No single point of failure
- Better security
- Transparency
- High availability
- Data redundancy
- Trustless operation
- Tamper resistance
- Better fault tolerance

---

# Advantages

- Highly available
- Distributed control
- Increased security
- Better reliability
- Improved transparency

---

# Limitations

- Complex implementation
- Consensus takes time
- Higher storage requirement
- Network synchronization needed
- Lower transaction speed in some cases

---

# Interview Corner

### Q1. Why is Blockchain decentralized?

**Answer:** To eliminate single points of failure, improve security, increase transparency, and remove dependence on trusted third parties.

---

### Q2. What is a single point of failure?

A component whose failure causes the entire system to stop working.

---

### Q3. Which is more secure?

A decentralized system is generally more secure because an attacker must compromise many nodes instead of just one central server.

---

### Q4. Why do banks still use centralized systems?

Because they require strict control, regulatory compliance, faster transaction processing, and centralized governance.

---

# Exam Answer (6 Marks)

## Q. Differentiate between Centralized and Decentralized Systems.

A **centralized system** is controlled by a single authority that manages all data and operations. Users depend on a central server to access services. It is easy to manage but suffers from a single point of failure, lower transparency, and security risks.

A **decentralized system** distributes data and control among multiple nodes. Each node stores a copy of the ledger and participates in transaction validation. It provides higher security, transparency, fault tolerance, and eliminates dependence on a central authority.

### Differences

| Centralized | Decentralized |
|--------------|---------------|
| Single authority | Multiple nodes |
| Single database | Distributed ledger |
| Single point of failure | Fault tolerant |
| Less transparent | Highly transparent |
| Third-party trust | Trustless |
| Lower security | Higher security |

---

## Q. Discuss the limitations of centralized systems.

- Single point of failure
- Security vulnerabilities
- Data manipulation
- Lack of transparency
- Third-party dependency
- High maintenance cost
- Downtime during failures
- Limited trust

Blockchain addresses these limitations through decentralization.

---

# Key Points to Remember

✔ Centralized = One authority

✔ Decentralized = Multiple nodes

✔ Blockchain is decentralized.

✔ No single point of failure.

✔ Distributed ledger improves security.

✔ Consensus replaces central authority.

✔ Transparency is one of Blockchain's biggest advantages.

---

# Revision (30 Seconds)

Centralized System

↓

Single Server

↓

Single Database

↓

Single Point of Failure

↓

Less Transparent

↓

Blockchain introduces

↓

Decentralized Network

↓

Multiple Nodes

↓

Consensus

↓

Distributed Ledger

↓

High Security & Transparency