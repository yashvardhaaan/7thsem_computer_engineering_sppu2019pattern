# 07 - Blockchain Consensus Layer

> **Unit:** 2
> **Difficulty:** ⭐⭐⭐⭐☆
> **Expected Time:** 18 min

---

# Previous Year Questions (PYQs)

### 2025
- Define Consensus with suitable example.

### 2024
- Explain Consensus Layer in Blockchain.

### 2023
- List and explain algorithms of Consensus Layer.

### 2022
- Explain Consensus Layer in Blockchain.

---

# Learning Objective

After reading this note you should be able to:

- Understand the Blockchain Consensus Layer.
- Explain why consensus is required in decentralized systems.
- Describe the working of the Consensus Layer.
- Explain major consensus algorithms.
- Compare different consensus mechanisms.
- Answer all SPPU previous year questions.

---

# 1. Introduction

In a traditional banking system, the **bank** verifies every transaction before updating customer accounts. Since there is a trusted authority, making decisions is straightforward.

However, blockchain has **no central authority**. Thousands of computers (nodes) are spread across the world, and all of them must agree on whether a transaction is valid before it is permanently stored.

This agreement among all participating nodes is called **Consensus**.

The **Consensus Layer** is responsible for ensuring that every node agrees on the same version of the blockchain, preventing fraud, double spending, and invalid transactions.

### Real-Life Analogy

Imagine a classroom where students must choose the class representative.

Instead of one teacher making the decision, every student votes.

The candidate receiving the majority of votes becomes the representative.

Similarly, blockchain nodes collectively decide whether a transaction is valid.

---

# 2. Core Concept

## What is Consensus?

**Definition**

**Consensus** is the process through which all nodes in a blockchain network agree on the validity of transactions and the current state of the blockchain.

---

## What is the Consensus Layer?

**Definition**

The **Consensus Layer** is responsible for validating transactions, selecting valid blocks, and ensuring that every node maintains the same copy of the blockchain.

---

## Why is Consensus Needed?

Without consensus:

- Double spending becomes possible.
- Fake transactions could be accepted.
- Different nodes may store different blockchain versions.
- The network loses trust.

Consensus ensures:

- Security
- Trust
- Consistency
- Fault tolerance
- Decentralization

---

# 3. Working

Step 1

User creates a transaction.

↓

Step 2

Transaction is broadcast to the blockchain network.

↓

Step 3

Nodes verify the transaction.

↓

Step 4

Consensus algorithm decides whether the transaction is valid.

↓

Step 5

A valid block is selected.

↓

Step 6

The block is added to the blockchain.

↓

Step 7

Every node updates its blockchain copy.

---

# Diagram

```text
        Transaction
             │
             ▼
      Blockchain Nodes
      /   |   |   \
     ▼    ▼   ▼    ▼
 Verification by Nodes
             │
             ▼
   Consensus Algorithm
             │
             ▼
      Valid Block
             │
             ▼
     Blockchain Updated
```

### Diagram Explanation

- The transaction is received by multiple nodes.
- Every node verifies it independently.
- The consensus algorithm determines whether the transaction is valid.
- The accepted block is added to the blockchain.
- All nodes synchronize their copy of the ledger.

---

# Formula (Conceptual)

```text
Transaction
      ↓
Node Verification
      ↓
Consensus Algorithm
      ↓
Valid Block
      ↓
Blockchain Updated
```

### Explanation

- **Transaction** – User request.
- **Verification** – Nodes check signatures and validity.
- **Consensus Algorithm** – Decides whether to accept the transaction.
- **Valid Block** – Block approved by the network.
- **Blockchain Updated** – Ledger is synchronized across all nodes.

---

# Example

## Bitcoin Transaction

Alice sends **1 BTC** to Bob.

↓

The transaction is broadcast to Bitcoin nodes.

↓

Each node verifies:

- Digital signature
- Balance
- Transaction format

↓

Miners solve the Proof of Work puzzle.

↓

The winning miner creates a block.

↓

Other nodes verify the block.

↓

Consensus is achieved.

↓

The block is permanently added to the blockchain.

---

# Major Consensus Algorithms

## 1. Proof of Work (PoW)

### Definition

Proof of Work requires miners to solve complex mathematical puzzles before creating a new block.

### Working

1. Transactions are collected.
2. Miners solve a cryptographic puzzle.
3. First miner to solve it creates the block.
4. Other nodes verify the solution.
5. Block is added.

### Examples

- Bitcoin
- Litecoin

### Advantages

- Highly secure.
- Proven technology.
- Resistant to attacks.

### Limitations

- High electricity consumption.
- Slow transaction speed.
- Expensive mining hardware.

---

## 2. Proof of Stake (PoS)

### Definition

Validators are selected based on the amount of cryptocurrency they stake.

### Working

1. Users lock (stake) coins.
2. Network selects a validator.
3. Validator creates the block.
4. Other validators verify it.

### Examples

- Ethereum 2.0
- Cardano
- Solana (variant)

### Advantages

- Energy efficient.
- Faster than PoW.
- Lower hardware cost.

### Limitations

- Wealthier users may gain more influence.
- Requires staking assets.

---

## 3. Delegated Proof of Stake (DPoS)

### Definition

Token holders vote for a small group of delegates who validate transactions.

### Examples

- EOS
- TRON

### Advantages

- High speed.
- Efficient.
- Low energy consumption.

### Limitations

- Less decentralized.
- Depends on elected delegates.

---

## 4. Practical Byzantine Fault Tolerance (PBFT)

### Definition

Nodes exchange messages and agree on the validity of transactions even if some nodes behave maliciously.

### Examples

- Hyperledger Fabric
- Enterprise Blockchains

### Advantages

- Very fast.
- Low energy usage.
- Suitable for permissioned blockchains.

### Limitations

- Difficult to scale.
- Communication overhead increases with more nodes.

---

# Comparison of Consensus Algorithms

| Feature | PoW | PoS | DPoS | PBFT |
|---------|-----|-----|------|------|
| Validator Selection | Mining | Staking | Voting | Agreement |
| Energy Consumption | High | Low | Low | Very Low |
| Speed | Slow | Fast | Very Fast | Very Fast |
| Security | Very High | High | High | High |
| Example | Bitcoin | Ethereum | EOS | Hyperledger |

---

# Importance of the Consensus Layer

- Prevents double spending.
- Maintains one version of the blockchain.
- Eliminates need for central authority.
- Ensures trust among unknown participants.
- Validates transactions.
- Protects against fraud.
- Maintains network consistency.

---

# Applications

- Bitcoin
- Ethereum
- Hyperledger Fabric
- Cryptocurrency payments
- NFT transactions
- Decentralized Finance (DeFi)
- Supply Chain
- Banking
- Digital Identity

---

# Advantages

- Secure transaction validation.
- Prevents fraud.
- Maintains consistency.
- Supports decentralization.
- Eliminates trusted intermediaries.
- Fault tolerant.
- Increases network reliability.

---

# Limitations

- Some algorithms consume high energy (PoW).
- Consensus takes time.
- Scalability challenges.
- Hardware costs for mining.
- Complex implementation.

---

# Interview Corner

### Q1. What is Consensus?

Consensus is the process by which all blockchain nodes agree on the validity of transactions and maintain the same blockchain state.

---

### Q2. Why is Consensus important?

It prevents double spending, ensures consistency, and allows blockchain to function without a central authority.

---

### Q3. Which consensus algorithm does Bitcoin use?

**Proof of Work (PoW).**

---

### Q4. Which consensus algorithm does Ethereum currently use?

**Proof of Stake (PoS).**

---

### Q5. Which algorithm is more energy efficient?

**Proof of Stake (PoS)** because it does not require computational mining.

---

# Exam Answer (6 Marks)

## Q. Explain the Consensus Layer in Blockchain.

The **Consensus Layer** is responsible for validating transactions and ensuring that all nodes agree on a common version of the blockchain. It enables decentralized decision-making without requiring a central authority.

When a transaction is broadcast, blockchain nodes verify its validity. A consensus algorithm such as **Proof of Work (PoW)** or **Proof of Stake (PoS)** is then used to determine whether the transaction should be accepted. Once consensus is achieved, the block is added to the blockchain, and all nodes update their ledger.

The Consensus Layer ensures security, consistency, fault tolerance, and prevents double spending.

---

## Q. Define Consensus with a suitable example.

**Consensus** is the process through which all blockchain nodes agree on the validity of transactions before they are permanently recorded.

**Example:** In Bitcoin, miners compete to solve a cryptographic puzzle using the Proof of Work algorithm. The first miner to solve the puzzle creates the next block, which is verified by other nodes before being added to the blockchain.

---

## Q. List and explain the algorithms of the Consensus Layer.

1. **Proof of Work (PoW)** – Uses computational mining to validate blocks.
2. **Proof of Stake (PoS)** – Validators are selected based on staked cryptocurrency.
3. **Delegated Proof of Stake (DPoS)** – Token holders elect delegates to validate transactions.
4. **Practical Byzantine Fault Tolerance (PBFT)** – Nodes exchange messages and agree on valid transactions, commonly used in permissioned blockchains.

---

# Key Points to Remember

✔ Consensus means agreement among blockchain nodes.

✔ Prevents double spending.

✔ Maintains one blockchain copy.

✔ No central authority is required.

✔ Bitcoin uses Proof of Work.

✔ Ethereum uses Proof of Stake.

✔ PBFT is common in enterprise blockchains.

---

# Revision (30 Seconds)

Transaction

↓

Node Verification

↓

Consensus Algorithm

↓

PoW / PoS / DPoS / PBFT

↓

Valid Block

↓

Blockchain Updated

↓

All Nodes Synchronized