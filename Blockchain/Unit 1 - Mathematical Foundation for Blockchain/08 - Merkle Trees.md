# Merkle Tree

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐⭐☆☆
> **Expected Time:** 15–20 minutes

---

# Previous Year Questions (PYQs)

### 2025
- What is Merkle Tree? Explain the structure of Merkle Tree. (5 Marks)

### 2024
- What is Merkle Tree? Explain with diagram. (5 Marks)
- What are the benefits of Merkle Tree in Blockchain? (5 Marks)

### 2023
- What is Merkle Tree? Explain the structure of Merkle Tree. (5 Marks)

### 2022
- List and discuss the benefits of Merkle Tree. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what a Merkle Tree is.
- Understand how a Merkle Tree is constructed.
- Explain the Merkle Root.
- Describe why Blockchain uses Merkle Trees.
- List its advantages and applications.
- Answer all previous year questions.

---

# 1. Introduction

Imagine a block contains **2,000 transactions**.

If someone asks,

> "Is Transaction #1450 present in this block?"

Would every node compare all 2,000 transactions?

No.

Blockchain uses a **Merkle Tree**, which allows verification of a transaction **without checking every transaction**.

It saves both **time** and **storage**.

---

# 2. What is a Merkle Tree?

A **Merkle Tree** (also called a **Hash Tree**) is a binary tree in which:

- Every **leaf node** contains the hash of a transaction.
- Every **parent node** contains the hash of its two child nodes.
- The **topmost node** is called the **Merkle Root**.

The Merkle Root represents all transactions inside a block.

---

# Definition

A **Merkle Tree** is a hierarchical tree structure that organizes transaction hashes to enable **efficient and secure verification of data integrity**.

---

# 3. Structure of a Merkle Tree

Suppose a block contains four transactions.

```
T1
T2
T3
T4
```

---

## Step 1 – Hash Every Transaction

```
T1 → H1

T2 → H2

T3 → H3

T4 → H4
```

---

## Step 2 – Combine Adjacent Hashes

```
H1 + H2

↓

Hash

↓

H12
```

Similarly,

```
H3 + H4

↓

Hash

↓

H34
```

---

## Step 3 – Generate the Root

```
H12 + H34

↓

Hash

↓

Merkle Root
```

---

# Complete Diagram

```text
                   Merkle Root
                       │
              Hash(H12 + H34)
                 /          \
              H12            H34
            /     \        /     \
          H1      H2     H3      H4
          │        │      │        │
         T1       T2     T3       T4
```

---

# Explanation of the Diagram

### Leaf Nodes

Contain hashes of individual transactions.

```
T1

↓

Hash

↓

H1
```

---

### Parent Nodes

Contain the hash of two child hashes.

```
H1 + H2

↓

Hash

↓

H12
```

---

### Merkle Root

Topmost hash.

It uniquely represents **all transactions** inside the block.

If even one transaction changes,

the Merkle Root changes immediately.

---

# 4. Working of Merkle Tree

## Step 1

Collect all transactions.

```
T1

T2

T3

T4
```

↓

---

## Step 2

Hash every transaction.

```
H1

H2

H3

H4
```

↓

---

## Step 3

Pair adjacent hashes.

```
H1 + H2

↓

H12

-----------------

H3 + H4

↓

H34
```

↓

---

## Step 4

Hash again.

```
H12 + H34

↓

Merkle Root
```

---

# What if One Transaction Changes?

Suppose

```
T3
```

changes.

Then

```
H3 changes

↓

H34 changes

↓

Merkle Root changes
```

Every node immediately detects that the block has been modified.

This ensures **data integrity**.

---

# Merkle Proof (Why Verification is Fast)

Suppose someone wants to verify **Transaction T2**.

Do we need all transactions?

No.

Only these hashes are required:

```
H1

H34
```

Using these,

the receiver can recompute the Merkle Root.

If it matches,

the transaction is genuine.

This process is called a **Merkle Proof**.

---

# Why is Merkle Tree Used in Blockchain?

## 1. Efficient Transaction Verification

Nodes can verify one transaction without downloading the complete block.

---

## 2. Data Integrity

If any transaction changes,

the Merkle Root changes,

making tampering easy to detect.

---

## 3. Faster Synchronization

Lightweight (SPV) nodes verify transactions using only the Merkle Proof instead of downloading the entire blockchain.

---

## 4. Reduced Storage

Only a few hashes are needed for verification.

This saves memory and bandwidth.

---

## 5. Faster Searching

Finding a transaction becomes much faster than checking every transaction individually.

---

# Real-Life Analogy

Imagine a university stores the marks of **10,000 students**.

Instead of checking all records,

the system follows a hierarchy:

```
Department

↓

Class

↓

Student
```

Similarly,

Merkle Tree uses a hierarchy of hashes to quickly verify information.

---

# Advantages

✅ Fast transaction verification

✅ Detects tampering immediately

✅ Saves storage

✅ Reduces network bandwidth

✅ Efficient for large datasets

✅ Improves blockchain scalability

---

# Limitations

❌ More complex than storing transactions in a simple list.

❌ Updating a transaction requires recalculating hashes up to the Merkle Root.

❌ Additional computation is needed while constructing the tree.

---

# Applications

Merkle Trees are used in:

- Bitcoin
- Ethereum
- Blockchain
- Distributed Databases
- Git Version Control
- IPFS
- Certificate Transparency Logs

---

# Merkle Tree in Bitcoin

Every Bitcoin block contains:

- Block Header
- Transactions

The **Block Header** stores only the **Merkle Root**, not every transaction.

```text
Block

├── Block Header
│      │
│      ├── Previous Block Hash
│      ├── Timestamp
│      ├── Nonce
│      └── Merkle Root
│
└── Transactions
```

When miners mine a block,

they calculate the Merkle Root from all transactions and include it in the block header.

---

# Exam Answer (5 Marks)

## What is a Merkle Tree? Explain its structure.

**Definition**

A Merkle Tree is a binary tree in which the leaf nodes contain transaction hashes, parent nodes contain hashes of child nodes, and the topmost node is called the Merkle Root.

**Structure**

1. Hash every transaction.
2. Pair adjacent hashes.
3. Hash each pair.
4. Continue until only one hash remains.
5. The final hash is called the **Merkle Root**.

**Diagram**

```text
        Merkle Root
          /      \
       H12        H34
      /   \      /   \
     H1   H2    H3   H4
     │     │     │    │
    T1    T2    T3   T4
```

---

## Benefits of Merkle Tree

- Fast verification
- Data integrity
- Efficient storage
- Faster synchronization
- Reduced bandwidth
- Supports SPV (Simplified Payment Verification)

---

# Interview Corner

### What is the Merkle Root?

The Merkle Root is the single top hash that represents all transactions in a block.

---

### Why doesn't Blockchain store all transaction hashes in the block header?

Storing only the Merkle Root reduces the size of the block header while still allowing efficient verification of all transactions.

---

### What happens if one transaction changes?

The transaction hash changes, which changes its parent hashes and eventually the Merkle Root, making tampering immediately detectable.

---

### Why are Merkle Trees important in Bitcoin?

They allow lightweight nodes (SPV clients) to verify transactions efficiently without downloading the complete blockchain.

---

# Key Points to Remember

- Merkle Tree is also called a **Hash Tree**.
- Leaf nodes store transaction hashes.
- Parent nodes store hashes of child hashes.
- Top node is the **Merkle Root**.
- Used for fast transaction verification.
- Detects data tampering.
- Used in Bitcoin, Ethereum, and many distributed systems.

---

# 30-Second Revision

```text
Transactions

↓

Hash Each Transaction

↓

Pair Hashes

↓

Hash Again

↓

Merkle Root

Uses

✔ Fast Verification
✔ Data Integrity
✔ SPV
✔ Reduced Storage
✔ Efficient Blockchain
```