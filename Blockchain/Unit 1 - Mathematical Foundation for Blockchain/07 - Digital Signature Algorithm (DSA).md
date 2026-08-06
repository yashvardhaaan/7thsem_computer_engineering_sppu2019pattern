# Digital Signature Algorithm (DSA)

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐⭐⭐☆
> **Expected Time:** 15–20 minutes

---

# Previous Year Questions (PYQs)

### 2025
- How is Digital Signature and Verification carried out in Digital Signature Algorithm (DSA)? (4 Marks)

### 2024
- Explain Digital Signature Algorithm. (5 Marks)

### 2023
- Describe Digital Signature & Verification steps in Digital Signature Algorithm. (4 Marks)

### 2022
- Explain DSA Key Generation and Verification. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what a Digital Signature is.
- Understand why Digital Signatures are required.
- Explain the complete DSA process.
- Differentiate Digital Signature from Encryption.
- Understand how Blockchain uses Digital Signatures.
- Answer every previous year question.

---

# 1. Introduction

Imagine you receive an email from your bank asking you to transfer money.

How do you know the email is really from your bank?

A username or sender name can be faked.

This problem is solved using a **Digital Signature**.

A Digital Signature proves:

- ✅ Who sent the message.
- ✅ The message was not modified.
- ✅ The sender cannot later deny sending it.

Every Blockchain transaction is digitally signed before it is accepted by the network.

---

# 2. What is a Digital Signature?

A **Digital Signature** is a cryptographic technique used to verify:

- Identity of the sender (**Authentication**)
- Integrity of the message
- Non-Repudiation

A Digital Signature is created using the sender's **Private Key** and verified using the sender's **Public Key**.

> **Important:** A Digital Signature does **not encrypt** the message. It proves authenticity and integrity.

---

# 3. What is DSA?

**DSA (Digital Signature Algorithm)** is a public-key cryptographic algorithm specifically designed for generating and verifying digital signatures.

Unlike RSA, DSA is **not used for encryption**.

It is used only for:

- Signature Generation
- Signature Verification

---

# Why Do We Need Digital Signatures?

Without a digital signature:

❌ Anyone can pretend to send a message.

❌ Messages can be modified.

❌ Sender can deny sending the message.

With a digital signature:

✅ Sender is authenticated.

✅ Data integrity is maintained.

✅ Sender cannot deny sending the message.

---

# 4. Components Used in DSA

Every user has:

```
Private Key

↓

Used for Signing
```

and

```
Public Key

↓

Used for Verification
```

Hash Function (SHA-256) is also used.

```
Message

↓

SHA-256

↓

Hash

↓

Digital Signature
```

---

# 5. Working of Digital Signature Algorithm

The process has **three phases**:

1. Key Generation
2. Signature Generation
3. Signature Verification

---

# Phase 1 – Key Generation

Every user generates:

```
Private Key

↓

Public Key
```

- Private Key is secret.
- Public Key is shared.

---

# Phase 2 – Signature Generation

Suppose Alice wants to send a message.

### Step 1

Write the message.

```
Transfer ₹5000
```

↓

### Step 2

Generate its hash.

```
SHA-256

↓

Hash Value
```

↓

### Step 3

Encrypt the hash using Alice's Private Key.

```
Hash

+

Private Key

↓

Digital Signature
```

↓

### Step 4

Send

- Message
- Digital Signature

to Bob.

---

# Signature Generation Diagram

```text
Message

↓

SHA-256

↓

Hash

↓

Private Key

↓

Digital Signature

↓

Send to Receiver
```

---

# Phase 3 – Signature Verification

Bob receives:

- Message
- Signature

---

### Step 1

Hash the received message.

```
Message

↓

SHA-256

↓

Hash 1
```

---

### Step 2

Decrypt the signature using Alice's Public Key.

```
Digital Signature

↓

Public Key

↓

Hash 2
```

---

### Step 3

Compare both hashes.

```
Hash 1 == Hash 2

↓

Valid Signature
```

Otherwise,

```
Invalid Signature
```

---

# Verification Diagram

```text
                Sender

Message
    │
SHA-256
    │
Hash
    │
Private Key
    │
Digital Signature
    │
────────────────────────►

                Receiver

Message ──► SHA-256 ──► Hash 1

Signature ─► Public Key ─► Hash 2

Hash 1 == Hash 2

↓

Verified
```

---

# Complete Working Flow

```text
Sender

Message

↓

SHA-256

↓

Hash

↓

Private Key

↓

Digital Signature

↓

Internet

↓

Receiver

↓

Message

↓

SHA-256

↓

Hash 1

Digital Signature

↓

Public Key

↓

Hash 2

↓

Compare

↓

Valid / Invalid
```

---

# Mathematical Representation

Signature Generation

```
Signature = Sign(Hash, Private Key)
```

Verification

```
Verify(Signature, Public Key)

↓

True / False
```

---

# Real-Life Analogy

Think of a handwritten signature on a cheque.

The bank verifies whether the signature matches the one stored in its records.

Similarly,

Digital Signature

↓

Proves ownership

↓

Without revealing the Private Key.

---

# Security Properties

## 1. Authentication

Confirms the identity of the sender.

---

## 2. Integrity

Ensures the message has not been modified.

Even changing one letter changes the hash.

---

## 3. Non-Repudiation

The sender cannot deny sending the message because only they possess the Private Key.

---

# Digital Signature vs Encryption

| Feature | Digital Signature | Encryption |
|----------|------------------|------------|
| Purpose | Authentication | Confidentiality |
| Uses Private Key | Yes (Signing) | No |
| Uses Public Key | Yes (Verification) | Yes (Encryption) |
| Ensures Integrity | ✔ | ✖ |
| Ensures Confidentiality | ✖ | ✔ |

> **Exam Tip:** This comparison is commonly asked as a theory or viva question.

---

# DSA in Blockchain

Every Blockchain transaction is digitally signed.

Example:

Alice wants to send Bitcoin.

```
Transaction

↓

SHA-256

↓

Hash

↓

Private Key

↓

Digital Signature

↓

Broadcast to Network
```

Every node verifies the signature using Alice's Public Key.

If verification succeeds:

```
Transaction Accepted
```

Otherwise:

```
Rejected
```

This prevents anyone else from spending Alice's funds.

---

# Applications

Digital Signatures are used in:

- Blockchain Transactions
- Bitcoin & Ethereum
- Online Banking
- E-Governance
- Software Distribution
- Digital Certificates
- Secure Email
- Electronic Contracts

---

# Advantages

✅ Authentication

✅ Integrity

✅ Non-Repudiation

✅ Difficult to Forge

✅ Fast Verification

---

# Limitations

❌ Requires secure protection of the Private Key.

❌ If the Private Key is stolen, signatures can be forged.

❌ Does not encrypt the message.

---

# Exam Answer (5–6 Marks)

## Explain Digital Signature Algorithm.

**Definition**

Digital Signature Algorithm (DSA) is an asymmetric cryptographic algorithm used for generating and verifying digital signatures.

**Working**

1. Generate Public and Private Keys.
2. Compute the hash of the message.
3. Sign the hash using the Private Key.
4. Send the message and signature.
5. Receiver hashes the message.
6. Receiver verifies the signature using the Public Key.
7. Compare both hashes.
8. If both hashes match, the signature is valid.

**Diagram**

```text
Message
   │
SHA-256
   │
Hash
   │
Private Key
   │
Signature
   │
────────────►
Public Key
   │
Verification
   │
Valid / Invalid
```

---

# Interview Corner

### Why do we hash the message before signing it?

Hashing produces a fixed-length output, making the signing process much faster and more efficient than signing the entire message.

---

### Can a Digital Signature provide confidentiality?

No.

It provides **authentication**, **integrity**, and **non-repudiation**.

Encryption is used for confidentiality.

---

### Can anyone verify a Digital Signature?

Yes.

Anyone with the sender's **Public Key** can verify it.

---

### Why is DSA important in Blockchain?

Because every transaction must prove ownership of the sender's funds. Digital Signatures ensure that only the owner of the Private Key can authorize a transaction.

---

# Key Points to Remember

- DSA = Digital Signature Algorithm.
- Uses Public Key Cryptography.
- Private Key signs.
- Public Key verifies.
- Uses SHA-256 (or another hash function) before signing.
- Ensures Authentication.
- Ensures Integrity.
- Ensures Non-Repudiation.
- Used in every Blockchain transaction.

---

# 30-Second Revision

```text
Message

↓

SHA-256

↓

Hash

↓

Private Key

↓

Digital Signature

↓

Receiver

↓

SHA-256

↓

Hash

↓

Public Key

↓

Verify

↓

Authentication ✔
Integrity ✔
Non-Repudiation ✔
```