# Compare Symmetric and Asymmetric Key Cryptography

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐☆☆☆
> **Expected Time:** 10 minutes

---

# Previous Year Questions (PYQs)

### 2024
- Differentiate between Symmetric and Asymmetric Key Cryptography. (5 Marks)

### 2022
- Differentiate between Symmetric and Asymmetric Key Cryptography. (5 Marks)

> **Note:** This question is also frequently asked in interviews and viva examinations.

---

# Learning Objectives

After completing this topic, you should be able to:

- Differentiate Symmetric and Asymmetric Cryptography.
- Know when each technique is used.
- Understand why Blockchain mainly uses Asymmetric Cryptography.
- Write a perfect 5-mark comparison answer.

---

# 1. Introduction

Cryptography mainly consists of **two encryption techniques**:

1. **Symmetric Key Cryptography**
2. **Asymmetric Key Cryptography**

Both are used to secure data, but they differ in how keys are managed, their speed, security, and applications.

---

# 2. What is Symmetric Key Cryptography?

Symmetric Cryptography uses **one secret key** for both encryption and decryption.

```text
Plaintext
      │
Secret Key
      │
Encryption
      │
Ciphertext
      │
Secret Key
      │
Decryption
      │
Plaintext
```

Example Algorithms

- AES
- DES
- 3DES
- Blowfish

---

# 3. What is Asymmetric Key Cryptography?

Asymmetric Cryptography uses **two mathematically related keys**.

- Public Key
- Private Key

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

Example Algorithms

- RSA
- ECC
- DSA
- ElGamal

---

# Why Do We Need Two Different Techniques?

## Symmetric Encryption

Best when:

- Large amount of data
- High speed required
- Both users already share a secret key

---

## Asymmetric Encryption

Best when:

- Secure communication over the Internet
- Digital Signatures
- Authentication
- Key exchange

---

# Complete Comparison

| Feature | Symmetric Cryptography | Asymmetric Cryptography |
|----------|------------------------|--------------------------|
| Number of Keys | One Secret Key | Two Keys (Public & Private) |
| Encryption Key | Same as Decryption Key | Different Keys |
| Speed | Very Fast | Slower |
| Security | Depends on Secret Key | Higher Security |
| Key Distribution | Difficult | Easy |
| Computational Cost | Low | High |
| Digital Signature | Not Supported | Supported |
| Authentication | No | Yes |
| Non-Repudiation | No | Yes |
| Suitable For | Large Data | Secure Communication |
| Key Size | Smaller | Larger (or mathematically stronger like ECC) |
| Blockchain Usage | Limited | Widely Used |

---

# Visual Comparison

```text
Symmetric

One Key

        K

Plaintext

↓

Encrypt

↓

Ciphertext

↓

Decrypt

↓

Plaintext



Asymmetric

Public Key

↓

Encrypt

↓

Ciphertext

↓

Private Key

↓

Plaintext
```

---

# Real-Life Analogy

## Symmetric Cryptography

Imagine a locker.

You lock it and unlock it using the **same key**.

If someone steals the key,

they can open the locker.

---

## Asymmetric Cryptography

Imagine a mailbox.

Everyone can put letters into the mailbox.

Only the owner has the key to open it.

- Mailbox = Public Key
- Mailbox Key = Private Key

This is why Asymmetric Cryptography is considered more secure.

---

# Blockchain Perspective

Blockchain mainly uses **Asymmetric Cryptography** because every user owns:

```
Private Key

↓

Ownership

Public Key

↓

Identity
```

Every transaction is signed using the Private Key.

The network verifies it using the Public Key.

However,

Symmetric Cryptography is still used in blockchain applications for:

- Wallet backups
- Off-chain storage encryption
- Secure communication
- Database encryption

---

# Advantages of Symmetric Cryptography

✅ Fast

✅ Less CPU usage

✅ Suitable for large files

✅ Efficient

---

# Disadvantages of Symmetric Cryptography

❌ Key distribution problem

❌ Lower security than Public Key Cryptography

❌ Difficult to manage many users

---

# Advantages of Asymmetric Cryptography

✅ Secure communication

✅ Authentication

✅ Digital Signatures

✅ Non-Repudiation

✅ Easy key distribution

---

# Disadvantages of Asymmetric Cryptography

❌ Slower

❌ Computationally expensive

❌ Not efficient for encrypting huge amounts of data

---

# Where are They Used?

## Symmetric

- Wi-Fi Encryption
- Hard Disk Encryption
- VPN
- File Encryption
- Cloud Storage

---

## Asymmetric

- Blockchain
- Bitcoin Wallets
- SSL/TLS
- HTTPS
- Online Banking
- Digital Certificates
- Digital Signatures

---

# Which One is Better?

There is **no universally better technique**.

Both solve different problems.

| Situation | Best Choice |
|-----------|-------------|
| Encrypting a 10 GB file | Symmetric |
| Sending data securely over the Internet | Asymmetric |
| Digital Signature | Asymmetric |
| Blockchain Wallet | Asymmetric |
| High-Speed Encryption | Symmetric |

In practice, **modern systems use both together**.

Example:

When you visit an HTTPS website:

1. **Asymmetric Cryptography** securely exchanges a session key.
2. **Symmetric Cryptography** encrypts the actual communication because it is much faster.

This combination provides both **security** and **performance**.

---

# Exam Answer (5 Marks)

## Differentiate between Symmetric and Asymmetric Cryptography.

| Symmetric | Asymmetric |
|------------|------------|
| One Secret Key | Two Keys |
| Fast | Slow |
| Low Computation | High Computation |
| Difficult Key Distribution | Easy Key Distribution |
| No Digital Signature | Supports Digital Signature |
| Suitable for Large Data | Suitable for Secure Communication |

---

# Interview Corner

### Why doesn't Blockchain use only Symmetric Cryptography?

Because every user would need to securely share a secret key with everyone else, which is impractical in a decentralized network.

---

### Why is Asymmetric Cryptography slower?

It performs more complex mathematical operations, such as modular arithmetic or elliptic curve point multiplication, compared to symmetric algorithms.

---

### Why do HTTPS websites use both techniques?

Asymmetric Cryptography securely exchanges a session key, and Symmetric Cryptography encrypts the actual data because it is much faster.

---

### Which is more secure?

Both are secure when used correctly.

- Symmetric Cryptography is secure if the secret key remains confidential.
- Asymmetric Cryptography is better suited for secure communication between parties that have never met because it avoids the key distribution problem.

---

# Key Points to Remember

- Symmetric → One Key
- Asymmetric → Two Keys
- Symmetric → Faster
- Asymmetric → More Secure for Communication
- Digital Signatures require Asymmetric Cryptography.
- Blockchain primarily uses Asymmetric Cryptography.
- Modern security protocols often combine both techniques.

---

# 30-Second Revision

```text
Symmetric

✔ One Key
✔ Fast
✔ Large Data
✖ Key Distribution

-------------------------

Asymmetric

✔ Two Keys
✔ Authentication
✔ Digital Signature
✔ Blockchain
✖ Slower

Real World

HTTPS = Asymmetric + Symmetric
Blockchain = Mostly Asymmetric
```