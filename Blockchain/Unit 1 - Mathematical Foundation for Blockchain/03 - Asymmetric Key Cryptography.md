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

- Explain Asymmetric Key Cryptography.
- Understand the concept of Public and Private Keys.
- Explain the encryption and decryption process.
- Understand why Blockchain uses Asymmetric Cryptography.
- Compare Symmetric and Asymmetric Cryptography.
- Answer all previous year questions.

---

# 1. Introduction

In **Symmetric Key Cryptography**, both sender and receiver use the **same secret key**. The biggest challenge is **securely sharing this key** over the network.

To overcome this problem, **Asymmetric Key Cryptography** (also called **Public Key Cryptography**) was introduced.

Instead of one key, it uses **two different but mathematically related keys**:

- **Public Key** → Shared with everyone.
- **Private Key** → Kept secret by the owner.

Even if someone knows the Public Key, they **cannot derive the Private Key**.

---

# 2. Definition

**Asymmetric Key Cryptography** is an encryption technique that uses a **pair of keys**:

- **Public Key** for encryption (or signature verification).
- **Private Key** for decryption (or digital signing).

The two keys are mathematically related but computationally infeasible to derive one from the other.

---

# 3. Key Pair

Every user generates a **Key Pair**.

```text
        Key Pair
      ┌──────────┐
      │          │
      ▼          ▼
 Public Key   Private Key
 (Shared)       (Secret)
```

### Public Key

- Can be shared openly.
- Used to encrypt messages.
- Used to verify digital signatures.

### Private Key

- Known only to the owner.
- Used to decrypt messages.
- Used to create digital signatures.

---

# 4. Working of Asymmetric Key Cryptography

Suppose **Alice** wants to send a secure message to **Bob**.

## Step 1 – Bob Generates Key Pair

Bob generates:

```
Public Key

Private Key
```

Bob keeps the **Private Key** secret and shares the **Public Key**.

---

## Step 2 – Alice Encrypts the Message

Alice writes:

```
Hello Bob
```

She encrypts it using **Bob's Public Key**.

```text
Plaintext
     │
Public Key
     │
Encryption
     │
Ciphertext
```

---

## Step 3 – Ciphertext is Sent

The encrypted message travels through the Internet.

Even if an attacker intercepts it, they cannot read it because they do not possess Bob's Private Key.

---

## Step 4 – Bob Decrypts the Message

Bob uses his **Private Key**.

```text
Ciphertext
      │
Private Key
      │
Decryption
      │
Plaintext
```

Bob successfully recovers the original message.

---

# Working Diagram

```text
                  Bob

        Public Key      Private Key
             │                ▲
             │                │
             ▼                │

Alice                     Decryption
  │                             ▲
  │                             │
Plaintext                  Ciphertext
  │                             ▲
  └── Encryption ───────────────┘
      (Using Public Key)
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

Where:

- **P** = Plaintext
- **C** = Ciphertext

---

# Real-Life Analogy

Imagine a **mailbox**.

Anyone can put letters into it because the opening is public.

However, only the owner has the key to open the mailbox and read the letters.

```text
Mailbox Slot

↓

Public Key

Anyone Can Send

---------------------

Mailbox Key

↓

Private Key

Only Owner Can Read
```

This is exactly how Asymmetric Cryptography works.

---

# Common Algorithms

| Algorithm | Purpose |
|------------|----------|
| RSA | Encryption & Digital Signatures |
| ECC | Blockchain & Cryptocurrency |
| DSA | Digital Signatures |
| ElGamal | Encryption |
| Diffie-Hellman | Secure Key Exchange |

> **Note:** Blockchain mainly uses **Elliptic Curve Cryptography (ECC)** because it provides strong security with smaller key sizes.

---

# Features

- Uses two keys.
- Public Key can be shared.
- Private Key remains secret.
- Solves the key distribution problem.
- Supports Digital Signatures.
- Provides authentication.
- Provides non-repudiation.

---

# Advantages

✅ Secure communication

✅ No need to exchange secret keys

✅ Supports Digital Signatures

✅ Authentication

✅ Non-Repudiation

---

# Disadvantages

❌ Slower than Symmetric Cryptography.

❌ More computationally expensive.

❌ Not efficient for encrypting very large files directly.

---

# Applications

Asymmetric Cryptography is used in:

- Blockchain
- Bitcoin Wallets
- Ethereum
- HTTPS (SSL/TLS)
- Online Banking
- Secure Email
- Digital Certificates
- Digital Signatures

---

# Role in Blockchain

Blockchain heavily depends on Asymmetric Cryptography.

Every user owns:

```text
Private Key

↓

Public Key

↓

Wallet Address
```

### When Alice sends Bitcoin:

1. Alice creates the transaction.
2. Alice signs the transaction using her **Private Key**.
3. The transaction is broadcast to the network.
4. Other nodes verify the signature using Alice's **Public Key**.
5. If verification succeeds, the transaction is accepted.

```text
Transaction
      │
Private Key
      │
Digital Signature
      │
Broadcast
      │
Public Key
      │
Verification
      │
Transaction Accepted
```

This ensures:

- Authentication
- Integrity
- Ownership
- Non-Repudiation

without revealing the Private Key.

---

# Difference Between Symmetric and Asymmetric Cryptography

| Feature | Symmetric | Asymmetric |
|----------|-----------|------------|
| Number of Keys | One | Two |
| Encryption Speed | Fast | Slower |
| Key Distribution | Difficult | Easy |
| Security | Lower | Higher |
| Digital Signature | Not Supported | Supported |
| Blockchain Usage | Limited | Extensive |

---

# Exam Answer (4–5 Marks)

## Describe Asymmetric Key Encryption with Neat Diagram.

**Definition**

Asymmetric Key Cryptography is an encryption technique that uses **two mathematically related keys**—a Public Key for encryption and a Private Key for decryption.

**Working**

1. Generate Public and Private Keys.
2. Share the Public Key.
3. Encrypt the message using the Public Key.
4. Send the Ciphertext.
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
Private Key
    │
Decryption
    │
Plaintext
```

**Advantages**

- Secure communication
- Easy key distribution
- Supports Digital Signatures

---

# Interview Corner

### Why is Asymmetric Cryptography more secure?

Because the **Private Key is never shared** over the network.

---

### Why is it slower than Symmetric Cryptography?

It uses complex mathematical operations, such as modular arithmetic or elliptic curve point multiplication, which require more computation.

---

### Can the Public Key decrypt encrypted data?

No.

The Public Key is generally used for encryption (or signature verification), while the corresponding Private Key is used for decryption (or signing).

---

### Why does Blockchain use Asymmetric Cryptography?

Blockchain needs to verify ownership and authorize transactions without exposing secret credentials. Asymmetric Cryptography enables users to sign transactions with their Private Key while allowing everyone to verify them using the Public Key.

---

# Key Points to Remember

- Uses **two keys**.
- Public Key is shared.
- Private Key is secret.
- Solves the key distribution problem.
- Supports Digital Signatures.
- Provides Authentication and Non-Repudiation.
- Widely used in Blockchain.

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
✖ Higher Computation

Blockchain

Private Key → Sign

Public Key → Verify
```