# Elliptic Curve Cryptography (ECC)

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐⭐⭐☆
> **Expected Time:** 15–20 minutes

---

# Previous Year Questions (PYQs)

### 2025
- Illustrate Elliptic Curve Cryptography (ECC) with detailed steps. (6 Marks)

### 2024
- Discuss Elliptic Curve Cryptography. (5 Marks)

### 2023
- Illustrate Elliptic Curve Cryptography. (6 Marks)

### 2022
- List and explain the advantages of ECC. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what Elliptic Curve Cryptography (ECC) is.
- Understand why ECC is preferred over RSA.
- Explain how ECC works.
- Draw the ECC workflow.
- List its advantages and applications.
- Understand why Bitcoin and Ethereum use ECC.

---

# 1. Introduction

As computers became faster, traditional public-key algorithms like **RSA** required increasingly larger key sizes to maintain security.

For example:

| Algorithm | Secure Key Size |
|------------|----------------:|
| RSA | 3072 bits |
| ECC | 256 bits |

A **256-bit ECC key provides security comparable to a 3072-bit RSA key**. Smaller keys mean faster computations, less storage, and lower power consumption.

This is why modern systems, especially **Blockchain**, prefer **Elliptic Curve Cryptography (ECC).**

---

# 2. Definition

**Elliptic Curve Cryptography (ECC)** is a type of **Asymmetric (Public Key) Cryptography** that uses the mathematics of **elliptic curves over finite fields** to generate public and private keys.

It provides the **same level of security as RSA but with much smaller keys**, making it faster and more efficient.

---

# 3. Why is it called an Elliptic Curve?

ECC is based on points lying on a mathematical curve represented by the equation:

\[
y^2 = x^3 + ax + b
\]

where,

- **a** and **b** are constants,
- the curve must satisfy:

\[
4a^3 + 27b^2 \neq 0
\]

This condition ensures the curve has **no sharp corners or breaks**, making it suitable for cryptographic operations.

> **Exam Tip:** You are **not expected to derive this equation** in SPPU exams. Just remember the equation and know that ECC uses mathematical operations on points of this curve.

---

# Simple Representation of an Elliptic Curve

```text
            y
            ↑

      •               •

  •                       •

------------------------------→ x

      •               •

          •       •
```

Each **•** represents a valid point on the curve.

ECC performs calculations using these points instead of large prime numbers (as RSA does).

---

# 4. Key Generation in ECC

Every user generates two keys.

## Step 1

Choose

- Elliptic Curve
- Generator Point (G)

---

## Step 2

Generate a random number.

```
Private Key = d
```

Only the owner knows this value.

---

## Step 3

Calculate

```
Public Key = d × G
```

where

- d = Private Key
- G = Generator Point

The multiplication here is **Elliptic Curve Point Multiplication**, **not ordinary arithmetic multiplication**.

---

# Key Generation Diagram

```text
Random Number

      │

Private Key (d)

      │

Point Multiplication

      │

Generator Point (G)

      │

Public Key (Q = dG)
```

---

# 5. Working of ECC

Suppose Alice wants to communicate securely with Bob.

### Step 1

Bob generates

```
Private Key

↓

Public Key
```

---

### Step 2

Bob shares only his

```
Public Key
```

---

### Step 3

Alice encrypts the message using Bob's Public Key.

```
Plaintext

↓

ECC Encryption

↓

Ciphertext
```

---

### Step 4

Ciphertext is sent over the Internet.

---

### Step 5

Bob decrypts the ciphertext using his Private Key.

```
Ciphertext

↓

Private Key

↓

Original Message
```

---

# Working Diagram

```text
             Bob

 Private Key      Public Key
      │                │
      │                │
      └──────┐         │
             │         ▼

Alice

Plaintext

↓

Encrypt with Public Key

↓

Ciphertext

↓

Internet

↓

Decrypt using Private Key

↓

Plaintext
```

---

# Why is ECC Secure?

ECC security is based on the **Elliptic Curve Discrete Logarithm Problem (ECDLP).**

Suppose

```
Public Key = d × G
```

Everyone knows

- G
- Public Key

But finding **d (Private Key)** from these values is **computationally infeasible**, even with modern computers.

This "one-way" property provides ECC's security.

---

# Comparison with RSA

| Feature | ECC | RSA |
|----------|-----|-----|
| Key Size | Small | Large |
| Security | High | High |
| Speed | Faster | Slower |
| Storage | Less | More |
| Power Consumption | Low | High |
| Mobile Devices | Excellent | Less Suitable |
| Blockchain | Preferred | Rarely Used |

---

# Advantages of ECC

✅ Smaller key size

✅ Faster encryption and decryption

✅ Lower memory usage

✅ Better performance

✅ Lower bandwidth requirement

✅ Lower power consumption

✅ Suitable for IoT devices

✅ Strong security

---

# Limitations

❌ More mathematically complex than RSA.

❌ Difficult to implement correctly.

❌ Errors in implementation can reduce security.

---

# Applications

ECC is widely used in:

- Bitcoin
- Ethereum
- Blockchain Wallets
- SSL/TLS
- Mobile Banking
- Smart Cards
- IoT Devices
- Secure Messaging Applications

---

# ECC in Blockchain

ECC is one of the **most important cryptographic techniques used in Blockchain**.

### Example: Bitcoin

Each Bitcoin wallet contains

```
Private Key

↓

ECC

↓

Public Key

↓

Wallet Address
```

When sending Bitcoin:

1. Transaction is signed using the **Private Key**.
2. Network verifies the signature using the **Public Key**.
3. Ownership is confirmed without revealing the Private Key.

This ensures:

- Authentication
- Integrity
- Non-repudiation

---

# Real-Life Analogy

Imagine you have a **master stamp**.

- The stamp itself (Private Key) never leaves your possession.
- Anyone can see the impression it makes (Public Key).
- Others can verify the stamp belongs to you but cannot recreate the original stamp.

ECC works similarly.

---

# Exam Answer (6 Marks)

## Illustrate Elliptic Curve Cryptography with detailed steps.

**Definition**

Elliptic Curve Cryptography (ECC) is an asymmetric cryptographic algorithm based on mathematical operations over elliptic curves.

**Working**

1. Select an elliptic curve and generator point.
2. Generate a random private key.
3. Calculate the public key using point multiplication.
4. Encrypt data using the public key.
5. Decrypt data using the private key.

**Diagram**

```text
Private Key

↓

Point Multiplication

↓

Public Key

↓

Encryption

↓

Ciphertext

↓

Private Key

↓

Plaintext
```

**Advantages**

- Small keys
- Faster computation
- Strong security
- Low memory usage
- Ideal for Blockchain

---

# Interview Corner

### Why does Blockchain prefer ECC over RSA?

Because ECC provides the same security with much smaller keys, making transactions faster and reducing storage and bandwidth requirements.

---

### What mathematical problem makes ECC secure?

The **Elliptic Curve Discrete Logarithm Problem (ECDLP)**.

---

### Does Bitcoin use ECC?

Yes. Bitcoin uses the **secp256k1 elliptic curve** to generate key pairs and digital signatures.

> **Note:** The exact curve name is additional knowledge and is generally not required for SPPU exams.

---

### Is ECC symmetric or asymmetric?

ECC is an **Asymmetric (Public Key) Cryptography** algorithm.

---

# Key Points to Remember

- ECC is Public Key Cryptography.
- Uses Elliptic Curves.
- Smaller keys than RSA.
- Faster and more efficient.
- Security based on ECDLP.
- Used in Bitcoin and Ethereum.
- Excellent for mobile and IoT devices.

---

# 30-Second Revision

```text
ECC

↓

Elliptic Curve

↓

Private Key (d)

↓

Public Key = d × G

↓

Encryption

↓

Ciphertext

↓

Private Key

↓

Plaintext

Advantages

✔ Small Keys
✔ Fast
✔ Secure
✔ Blockchain Preferred
```