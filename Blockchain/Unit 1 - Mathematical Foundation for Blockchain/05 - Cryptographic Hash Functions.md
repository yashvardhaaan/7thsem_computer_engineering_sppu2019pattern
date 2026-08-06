# Cryptographic Hash Functions

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐⭐☆☆
> **Expected Time:** 15 minutes

---

# Previous Year Questions (PYQs)

### 2025
- List and explain the features of Hashing Functions. (5 Marks)

### 2024
- What is Hashing? Explain the role of Hashing in Blockchain. (5 Marks)

### 2023
- Justify the importance of Hashing in Blockchain. (4 Marks)

### 2022
- Discuss the properties of Hash Function. (5 Marks)
- Discuss the role of Hashing in Blockchain. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what a Hash Function is.
- Understand how hashing works.
- List the properties/features of a good hash function.
- Explain the role of hashing in Blockchain.
- Differentiate Hashing, Encryption, and Encoding.
- Answer all previous year questions.

---

# 1. Introduction

Suppose you download a **2 GB software file** from the internet.

How do you know the downloaded file hasn't been modified or corrupted?

Instead of comparing the entire file, the website provides a **hash value**.

If your computed hash matches the provided hash, the file is unchanged.

This is the power of **Cryptographic Hash Functions**.

In Blockchain, every block stores the **hash of the previous block**, making the chain secure against tampering.

---

# 2. Definition

A **Cryptographic Hash Function** is a mathematical algorithm that converts an input of **any size** into a **fixed-size output**, called a **Hash Value** or **Message Digest**.

The output uniquely represents the input.

> Even a tiny change in the input produces a completely different hash.

---

# Mathematical Representation

```
Hash Value = H(Message)
```

Where,

- **H** → Hash Function
- **Message** → Input Data
- **Hash Value** → Fixed-length Output

Example

```
H("Blockchain")
↓

9f86d081884c7...
```

---

# 3. How Hashing Works

### Step 1

Input Data

```
Hello Blockchain
```

↓

### Step 2

Apply Hash Function

```
SHA-256
```

↓

### Step 3

Generate Hash

```
A94F98E2A4F67...
```

---

# Working Diagram

```text
Input Message

      │

      ▼

Hash Function
(SHA-256)

      │

      ▼

Fixed-Length Hash
```

No matter how large the input is,

the output length remains fixed.

---

# Example

Input

```
HELLO
```

↓

Hash

```
185f8db32271fe25...
```

Now change one letter.

Input

```
HELLo
```

↓

Hash

```
6b7a72f3f52d4e...
```

Notice that the entire hash changes even though only one character changed.

This property is called the **Avalanche Effect**.

---

# 4. Features (Properties) of a Good Hash Function

## 1. Deterministic

The same input always produces the same output.

Example

```
H("ABC")

↓

12345
```

Running it again

```
H("ABC")

↓

12345
```

The output never changes.

---

## 2. Fixed-Length Output

No matter the input size,

the output size remains constant.

Example

```
Input = A

↓

256-bit Hash

-----------------

Input = 100 GB File

↓

256-bit Hash
```

---

## 3. Fast Computation

Hash functions should generate the hash quickly, even for very large files.

This makes them suitable for Blockchain and file verification.

---

## 4. One-Way Function

Given the input,

finding the hash is easy.

```
Input

↓

Hash
```

But,

```
Hash

↓

Original Input
```

is practically impossible.

This is called a **One-Way Function**.

---

## 5. Avalanche Effect

A small change in the input causes a completely different output.

Example

```
CAT

↓

Hash 1

----------------

cat

↓

Hash 2
```

Hash 1 and Hash 2 are completely different.

---

## 6. Collision Resistance

It should be extremely difficult to find two different inputs that produce the same hash.

```
Message A

↓

Hash X

--------------

Message B

↓

Hash X

❌ Should never happen in practice
```

---

## 7. Preimage Resistance

Given only the hash,

it should be impossible to determine the original input.

```
Hash

↓

Original Message

❌ Impossible
```

---

## 8. Second Preimage Resistance

If one message is known,

finding another message with the same hash should be practically impossible.

---

# Role of Hashing in Blockchain

Hashing is one of the most important technologies used in Blockchain.

## 1. Linking Blocks

Every block stores the hash of the previous block.

```text
Block 1

↓

Hash

↓

Block 2

↓

Hash

↓

Block 3
```

If Block 1 changes,

its hash changes,

which breaks the entire chain.

---

## 2. Data Integrity

Hashing ensures that data has not been modified.

If even one bit changes,

the hash changes completely.

---

## 3. Block Identification

Every block has its own unique hash,

which acts like its fingerprint.

---

## 4. Mining

Bitcoin miners repeatedly calculate hashes to find a valid block.

This process is called **Proof of Work (PoW)**.

---

## 5. Merkle Trees

Transactions inside a block are hashed together to create the **Merkle Root**.

This allows efficient transaction verification.

---

## 6. Digital Signatures

Before signing a transaction,

the transaction data is hashed.

Instead of signing the entire data,

the hash is signed,

making the process faster.

---

# Real-Life Analogy

Imagine placing a **tamper-proof seal** on a package.

If someone opens the package,

the seal breaks immediately.

A hash works in a similar way.

If the data changes,

the hash changes instantly.

---

# Hashing vs Encryption

| Feature | Hashing | Encryption |
|----------|----------|------------|
| Reversible | No | Yes |
| Keys Required | No | Yes |
| Output | Fixed Length | Variable |
| Purpose | Integrity | Confidentiality |
| Used For | Blockchain, Passwords | Secure Communication |

---

# Applications

- Blockchain
- Password Storage
- Digital Signatures
- Data Integrity Verification
- File Verification
- Merkle Trees
- Digital Certificates
- Version Control Systems (Git)

---

# Advantages

✅ Fast computation

✅ Detects tampering

✅ Fixed-size output

✅ Strong security

✅ Efficient storage

---

# Limitations

❌ Original message cannot be recovered.

❌ Weak hash algorithms (like MD5) are vulnerable to collisions.

❌ Hashing alone does not provide confidentiality.

---

# Exam Answer (5 Marks)

## What is Hashing? Explain the role of Hashing in Blockchain.

**Definition**

Hashing is the process of converting data of any size into a fixed-length hash value using a hash function.

**Role in Blockchain**

- Links blocks together.
- Ensures data integrity.
- Detects tampering.
- Supports Proof of Work.
- Used in Merkle Trees.
- Used in Digital Signatures.

---

## List the Features of Hash Functions

1. Deterministic
2. Fixed-Length Output
3. Fast Computation
4. One-Way Function
5. Avalanche Effect
6. Collision Resistance
7. Preimage Resistance
8. Second Preimage Resistance

---

# Interview Corner

### Is Hashing Encryption?

No.

Hashing is **one-way** and cannot be reversed.

Encryption is **two-way** and allows decryption using a key.

---

### Why is hashing used before Digital Signatures?

Signing a small fixed-length hash is much faster than signing the entire message.

---

### Can two different messages have the same hash?

In theory, yes (called a **collision**).

A good cryptographic hash function makes finding such collisions computationally infeasible.

---

### Why is SHA-256 preferred over MD5?

SHA-256 provides much stronger collision resistance and is considered secure for modern cryptographic applications, whereas MD5 has known vulnerabilities.

---

# Key Points to Remember

- Converts any input into a fixed-length output.
- One-way mathematical function.
- Same input → Same hash.
- Small input change → Completely different hash.
- Used for integrity, not confidentiality.
- Essential for Blockchain security.

---

# 30-Second Revision

```text
Message

↓

Hash Function

↓

Fixed-Length Hash

Properties

✔ Deterministic
✔ Fixed Length
✔ One-Way
✔ Avalanche Effect
✔ Collision Resistant

Blockchain Uses

✔ Block Linking
✔ Integrity
✔ Mining
✔ Merkle Tree
✔ Digital Signatures
```