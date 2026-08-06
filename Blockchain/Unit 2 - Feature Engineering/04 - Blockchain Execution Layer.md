# 04 - Blockchain Execution Layer

> **Unit:** 2
> **Difficulty:** ⭐⭐⭐☆☆
> **Expected Time:** 12 min

---

# Previous Year Questions (PYQs)

### 2025
- No direct questions found.

### 2024
- No direct questions found.

### 2023
- No direct questions found.

### 2022
- No direct questions found.

> **Note:** Although no direct SPPU questions have been asked on this topic (2022–2025), it is an important theoretical concept because it explains **how blockchain transactions and smart contracts are executed**. It is also frequently asked in interviews.

---

# Learning Objective

After reading this note you should be able to:

- Understand the Blockchain Execution Layer.
- Explain the role of the Execution Layer.
- Describe how transactions and smart contracts are executed.
- Understand the relationship between the Application Layer and Consensus Layer.
- Explain the Ethereum Virtual Machine (EVM).
- Identify real-world applications of the Execution Layer.

---

# 1. Introduction

Whenever a user sends cryptocurrency, swaps tokens, mints an NFT, or interacts with a decentralized application (DApp), something must actually **execute** that request. This responsibility belongs to the **Execution Layer**.

The Execution Layer receives requests from the Application Layer, executes smart contracts or transaction logic, updates the blockchain state, and passes the transaction to the Consensus Layer for validation.

Without the Execution Layer, blockchain would only be a storage system—it would not be able to perform computations or automate business logic.

### Real-Life Analogy

Imagine ordering food through a food delivery app.

- The **Application Layer** is the mobile app where you place the order.
- The **Execution Layer** is the restaurant kitchen where the food is prepared.
- The **Consensus Layer** checks that everything is correct.
- Finally, the order is delivered.

The kitchen (Execution Layer) is where the actual work happens.

---

# 2. Core Concept

## What is the Execution Layer?

**Definition**

The **Execution Layer** is the blockchain layer responsible for **executing transactions, running smart contracts, updating account balances, and modifying the blockchain state**.

It acts as the processing engine of the blockchain.

---

## Responsibilities of the Execution Layer

- Executes smart contracts
- Processes transactions
- Updates account balances
- Maintains blockchain state
- Verifies transaction validity
- Calculates transaction fees (Gas)
- Produces execution results

---

## Main Components

### 1. Smart Contract Engine

Runs the code stored in smart contracts.

Example:

When payment is received, automatically transfer ownership.

---

### 2. Virtual Machine

Executes blockchain programs in a secure environment.

Example:

- Ethereum → Ethereum Virtual Machine (EVM)

---

### 3. State Database

Stores current blockchain information.

Examples:

- Account balances
- Contract storage
- Token ownership

---

### 4. Transaction Executor

Processes user transactions one by one.

---

### 5. Gas Calculator

Calculates computational cost.

More computation = More gas fee.

---

# 3. Working

Step 1

User initiates a transaction through a wallet or DApp.

↓

Step 2

The transaction reaches the Execution Layer.

↓

Step 3

The smart contract code is executed.

↓

Step 4

The virtual machine processes all instructions.

↓

Step 5

Balances and blockchain state are updated.

↓

Step 6

Execution result is generated.

↓

Step 7

The transaction is forwarded to the Consensus Layer for validation.

↓

Step 8

After consensus, the block is permanently added.

---

# Diagram

```text
          User
            │
            ▼
   Application Layer
            │
            ▼
 +----------------------+
 |   Execution Layer    |
 | Smart Contract Engine|
 | Virtual Machine      |
 | Transaction Executor |
 +----------------------+
            │
            ▼
   Updated Blockchain
        State
            │
            ▼
   Consensus Layer
            │
            ▼
    Block Added
```

### Diagram Explanation

- The user initiates a transaction.
- The Application Layer forwards it.
- The Execution Layer performs all computations.
- The blockchain state is updated.
- Consensus verifies the transaction.
- The block is added permanently.

---

# Formula (Conceptual)

```text
Transaction
      ↓
Execution Layer
      ↓
Execute Smart Contract
      ↓
Update State
      ↓
Consensus
      ↓
Block Added
```

### Explanation

- **Transaction** – User request.
- **Execution Layer** – Performs computation.
- **Smart Contract** – Executes business logic.
- **State Update** – Account balances and storage change.
- **Consensus** – Confirms validity.
- **Block Added** – Transaction becomes permanent.

---

# Example

## Sending Ethereum

Alice sends **5 ETH** to Bob.

↓

Wallet creates transaction.

↓

Execution Layer verifies:

- Alice has sufficient balance.
- Signature is valid.
- Gas fee is available.

↓

Balance changes:

Alice → -5 ETH

Bob → +5 ETH

↓

Transaction result is produced.

↓

Consensus validates it.

↓

Block is added.

---

## Smart Contract Example

A crowdfunding smart contract says:

"If total funding reaches ₹10,00,000, release money to the project owner."

The Execution Layer continuously checks this condition.

Once the target is reached:

↓

Smart contract executes automatically.

↓

Funds are transferred.

↓

Blockchain state is updated.

No human intervention is required.

---

# Ethereum Virtual Machine (EVM)

The **Ethereum Virtual Machine (EVM)** is the execution environment for Ethereum smart contracts.

It:

- Runs contract code.
- Prevents malicious programs from harming the network.
- Produces the same result on every node.
- Ensures deterministic execution.

### Why is EVM Important?

- Every Ethereum node executes the same instructions.
- Guarantees identical output on all nodes.
- Makes Ethereum decentralized and trustworthy.

---

# Applications

- Cryptocurrency transfers
- Smart contract execution
- NFT minting
- Decentralized Finance (DeFi)
- Decentralized exchanges (DEX)
- Gaming applications
- Supply chain automation
- Insurance claim processing
- Digital identity systems

---

# Advantages

- Executes business logic automatically.
- Eliminates intermediaries.
- Secure execution environment.
- Supports decentralized applications.
- Maintains consistent blockchain state.
- Enables automation through smart contracts.

---

# Limitations

- Complex smart contract development.
- High gas fees during network congestion.
- Execution speed depends on blockchain performance.
- Bugs in smart contracts can cause financial losses.
- Limited scalability on some blockchain networks.

---

# Interview Corner

### Q1. What is the Execution Layer?

The Execution Layer executes transactions, runs smart contracts, and updates the blockchain state before transactions are validated by consensus.

---

### Q2. What is the difference between the Application Layer and Execution Layer?

- **Application Layer** provides the user interface.
- **Execution Layer** performs the actual computation and executes smart contracts.

---

### Q3. What is the Ethereum Virtual Machine (EVM)?

The EVM is a secure virtual machine that executes Ethereum smart contracts in a deterministic manner on every node.

---

### Q4. Why is Gas required?

Gas prevents excessive computation, protects the network from spam attacks, and pays validators for executing transactions.

---

# Exam Answer (6 Marks)

## Q. Explain the Blockchain Execution Layer.

The **Execution Layer** is responsible for executing blockchain transactions and smart contracts. It receives requests from the Application Layer and performs all computations required to process them.

Its major components include the Smart Contract Engine, Virtual Machine, Transaction Executor, State Database, and Gas Calculator. After executing the transaction, it updates the blockchain state and forwards the result to the Consensus Layer for validation.

The Ethereum Virtual Machine (EVM) is a well-known execution environment that securely runs Ethereum smart contracts.

Applications include cryptocurrency transfers, NFTs, decentralized finance (DeFi), gaming, supply chain management, and digital identity systems.

---

# Key Points to Remember

✔ Execution Layer performs blockchain computation.

✔ Executes smart contracts.

✔ Updates blockchain state.

✔ Uses Virtual Machine (EVM).

✔ Calculates Gas fees.

✔ Works between the Application Layer and Consensus Layer.

✔ Produces deterministic execution on every node.

---

# Revision (30 Seconds)

User

↓

Application Layer

↓

Execution Layer

↓

Smart Contract

↓

Virtual Machine (EVM)

↓

State Update

↓

Consensus Layer

↓

Block Added