# Asymmetric Key Cryptography

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐⭐☆☆
> **Expected Time:** 10–15 minutes

---

# Previous Year Questions (PYQs)

### 2025
- Describe Asymmetric Key Encryption with neat diagram. (4 Marks)

### 2024
- Differentiate between Symmetric and Asymmetric Key Cryptography. (5 Marks)

### 2022
- Differentiate Symmetric and Asymmetric Key Cryptography. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what Asymmetric Key Cryptography is.
- Understand the role of Public Key and Private Key.
- Explain the encryption and decryption process.
- Compare it with Symmetric Cryptography.
- Understand why Blockchain uses Asymmetric Cryptography.
- Answer all previous year questions.

---

# 1. Introduction

One of the biggest problems with Symmetric Key Cryptography is **key distribution**.

Imagine you want to send an encrypted message to someone on the other side of the world. Before communication begins, both of you must somehow exchange the same secret key securely. If an attacker intercepts this key, all encrypted messages become readable.

To solve this problem, **Asymmetric Key Cryptography**, also known as **Public Key Cryptography**, was introduced.

Instead of one key, it uses **two mathematically related keys**:

- **Public Key** → Can be shared with everyone.
- **Private Key** → Must always remain secret.

This eliminates the need to share the private key over the network.

---

# 2. Definition

**Asymmetric Key Cryptography** is an encryption technique that uses **a pair of keys**:

- **Public Key** for encryption.
- **Private Key** for decryption.

The two keys are mathematically related, but it is computationally infeasible to derive the private key from the public key.

---

# 3. Key Pair

Every user owns a unique key pair.

```
Public Key
    ↓
Can be Shared

Private Key
    ↓
Must Remain Secret
```

Think of it like a **mailbox**.

- Anyone can drop a letter into your mailbox (Public Key).
- Only you have the key to open the mailbox (Private Key).

---

# 4. Working of Asymmetric Key Cryptography

## Step 1

Bob generates two keys.

```
Public Key

Private Key
```

---

## Step 2

Bob shares only his **Public Key**.

```
Everyone

↓

Bob's Public Key
```

---

## Step 3

Alice wants to send a confidential message.

```
Plaintext

↓

Encrypt using Bob's Public Key

↓

Ciphertext
```

---

## Step 4

Ciphertext is sent through the Internet.

Even if someone intercepts it,

they **cannot decrypt it** because they do not have Bob's Private Key.

---

## Step 5

Bob receives the encrypted message.

```
Ciphertext

↓

Decrypt using Private Key

↓

Original Message
```

---

# Working Diagram

```text
                 Bob

      Public Key       Private Key
           │                 │
           │                 │
           ▼                 ▼

Alice

Plaintext
     │
Encrypt with Public Key
     │
Ciphertext
     │
Internet
     │
Decrypt with Private Key
     │
Plaintext
```

---

# Mathematical Representation

Encryption

```
C = Encrypt(P, Public Key)
```

Decryption

```
P = Decrypt(C, Private Key)
```

Where,

- P = Plaintext
- C = Ciphertext

---

# Real-Life Example

Imagine your house has:

- A **mail slot** that anyone can use to put letters inside.
- A **front door key** that only you possess.

Anyone can send you a letter, but only you can retrieve it.

Similarly,

- Public Key = Mail Slot
- Private Key = House Key

---

# Common Asymmetric Algorithms

| Algorithm | Usage |
|------------|------|
| RSA | Encryption & Digital Signature |
| ECC (Elliptic Curve Cryptography) | Blockchain, Bitcoin |
| DSA | Digital Signature |
| ElGamal | Encryption |
| Diffie-Hellman | Secure Key Exchange |

> **ECC is the most widely used asymmetric algorithm in Blockchain because it provides high security with smaller key sizes.**

---

# Features

- Uses two different keys.
- Public Key can be shared openly.
- Private Key remains confidential.
- Solves the key distribution problem.
- Supports Digital Signatures.
- Provides authentication and non-repudiation.

---

# Advantages

✅ Secure communication

✅ No need to exchange secret keys

✅ Enables Digital Signatures

✅ Provides Authentication

✅ Supports Non-repudiation

---

# Disadvantages

❌ Slower than Symmetric Cryptography.

❌ Requires more computational power.

❌ Not suitable for encrypting very large files directly.

---

# Applications

Asymmetric Cryptography is used in:

- Blockchain
- Bitcoin Wallets
- Ethereum Accounts
- HTTPS (SSL/TLS)
- Digital Signatures
- Email Encryption
- Secure Login Systems
- Online Banking

---

# Role in Blockchain

Blockchain heavily relies on **Asymmetric Cryptography**.

Each blockchain user has:

```
Public Key

↓

Wallet Address

Private Key

↓

Ownership of Funds
```

### Example

When Alice wants to send Bitcoin,

1. She signs the transaction using her **Private Key**.
2. Other nodes verify it using her **Public Key**.
3. If verification succeeds, the transaction is accepted.

This ensures:

- Authentication
- Integrity
- Non-repudiation

without revealing the Private Key.

---

# Symmetric vs Asymmetric Cryptography

| Feature | Symmetric | Asymmetric |
|----------|-----------|------------|
| Number of Keys | One | Two |
| Encryption Speed | Fast | Slower |
| Security | Lower | Higher |
| Key Distribution | Difficult | Easy |
| Digital Signature | Not Possible | Possible |
| Blockchain Usage | Limited | Extensive |

---

# Exam Answer (4–5 Marks)

## Describe Asymmetric Key Encryption with Neat Diagram.

**Definition**

Asymmetric Key Cryptography uses **two mathematically related keys**: a Public Key for encryption and a Private Key for decryption.

**Working**

1. Generate Public and Private Keys.
2. Share the Public Key.
3. Encrypt data using the Public Key.
4. Send the encrypted message.
5. Decrypt using the Private Key.

**Diagram**

```text
Plaintext
     │
Public Key
     │
Encryption
     │
Ciphertext
     │
Internet
     │
Private Key
     │
Decryption
     │
Plaintext
```

**Advantages**

- Secure key management
- Authentication
- Digital Signatures

---

# Interview Corner

### Why is Asymmetric Cryptography more secure?

Because the Private Key is never shared over the network.

---

### Why is it slower?

It involves complex mathematical operations such as modular arithmetic and elliptic curve computations, making encryption and decryption more computationally expensive.

---

### Can the Public Key decrypt data?

No. It is used for encryption (or signature verification). Only the corresponding Private Key can decrypt encrypted data.

---

### Why does Blockchain use Asymmetric Cryptography?

Blockchain needs every user to have a unique identity and the ability to digitally sign transactions without revealing their secret key. Asymmetric Cryptography provides both security and authentication.

---

# Key Points to Remember

- Uses two keys.
- Public Key is shared.
- Private Key is secret.
- Solves the key distribution problem.
- Supports Digital Signatures.
- Used extensively in Blockchain.
- ECC is preferred in modern Blockchain systems.

---

# 30-Second Revision

```text
Asymmetric Cryptography

↓

Two Keys

↓

Public Key
(Encrypt / Verify)

↓

Ciphertext

↓

Private Key
(Decrypt / Sign)

↓

Original Message

Advantages
✔ Secure
✔ Authentication
✔ Digital Signature

Disadvantages
✖ Slower
✖ Higher Computational Cost
```