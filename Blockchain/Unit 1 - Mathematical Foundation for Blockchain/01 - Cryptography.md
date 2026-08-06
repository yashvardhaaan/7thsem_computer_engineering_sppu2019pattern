# Symmetric Key Cryptography

> **Unit:** 1 - Mathematical Foundation for Blockchain
> **Difficulty:** ⭐⭐☆☆☆
> **Expected Time:** 10–15 minutes

---

# Previous Year Questions (PYQs)

### 2023
- Describe Symmetric Key Encryption with neat diagram. (5 Marks)

### 2024
- Differentiate between Symmetric and Asymmetric Key Cryptography. (5 Marks)

### 2022
- Differentiate Symmetric and Asymmetric Key Cryptography. (5 Marks)

---

# Learning Objectives

After completing this topic, you should be able to:

- Explain what Symmetric Key Cryptography is.
- Understand how encryption and decryption work.
- Draw the encryption process.
- State its advantages and disadvantages.
- Compare it with Asymmetric Cryptography.
- Answer every previous year question.

---

# 1. Introduction

Cryptography is the science of protecting information from unauthorized access.

One of the oldest and fastest encryption methods is **Symmetric Key Cryptography**, where **the same secret key is used for both encryption and decryption**.

Only the sender and receiver know this secret key.

> Think of it like a **locker with one key**. The same key is used to lock and unlock it.

---

# 2. Definition

**Symmetric Key Cryptography** is an encryption technique in which **a single shared secret key** is used for both:

- Encryption (Converting plaintext into ciphertext)
- Decryption (Converting ciphertext back into plaintext)

Mathematically,

```
Ciphertext = Encrypt(Plaintext, Key)

Plaintext = Decrypt(Ciphertext, Key)
```

Both operations use the **same key**.

---

# 3. Working of Symmetric Key Cryptography

### Step 1

Sender has original message.

```
Plaintext

↓

HELLO
```

---

### Step 2

Sender encrypts the message using the secret key.

```
Plaintext + Secret Key

↓

Encryption Algorithm

↓

Ciphertext
```

Example

```
HELLO

↓

X7A91KQ
```

---

### Step 3

Ciphertext is transmitted over the network.

Even if an attacker captures it,

```
X7A91KQ
```

it cannot be understood without the secret key.

---

### Step 4

Receiver uses the **same secret key**.

```
Ciphertext

↓

Decryption Algorithm

↓

HELLO
```

The original message is recovered.

---

# Working Diagram

```text
                Secret Key (K)
                      │
                      ▼
Sender                         Receiver

Plaintext                     Ciphertext
    │                               │
    ▼                               ▼
Encryption -----------------> Decryption
    │                               │
    ▼                               ▼
Ciphertext                   Plaintext
```

### Explanation

- Sender encrypts using key **K**.
- Receiver decrypts using the **same key K**.
- Security depends entirely on keeping **K** secret.

---

# Real-Life Example

Suppose two friends decide that

```
Key = 5
```

Every alphabet is shifted by five positions.

Original

```
HELLO
```

Encrypted

```
MJQQT
```

Receiver already knows the key.

Using the same key,

```
MJQQT

↓

HELLO
```

This is a simple example of symmetric encryption (Caesar Cipher).

Modern algorithms are much more secure.

---

# Common Symmetric Encryption Algorithms

| Algorithm | Key Size | Status |
|------------|---------:|--------|
| DES | 56 bits | Obsolete |
| 3DES | 112/168 bits | Slow |
| AES | 128/192/256 bits | Most widely used |
| Blowfish | 32–448 bits | Secure |
| Twofish | Up to 256 bits | Secure |

> **AES (Advanced Encryption Standard)** is the most commonly used symmetric encryption algorithm today.

---

# Features

- Same key is used for encryption and decryption.
- Very fast.
- Efficient for large amounts of data.
- Simple implementation.
- Low computational cost.

---

# Advantages

✅ Fast encryption

✅ Less CPU usage

✅ Suitable for large files

✅ Efficient for real-time communication

✅ Widely used in banking and networking

---

# Disadvantages

❌ Key distribution is difficult.

❌ Both users must securely share the key.

❌ If the key is leaked, anyone can read the data.

❌ Not suitable for communication with many users because each pair needs a unique shared key.

---

# Applications

Symmetric encryption is used in:

- Wi-Fi Security (WPA2/WPA3)
- File Encryption
- Hard Disk Encryption
- VPN Communication
- SSL/TLS (for encrypting session data)
- Cloud Storage
- Database Encryption

---

# Blockchain Connection

Blockchain mainly uses **asymmetric cryptography** for identities and digital signatures.

However, **symmetric encryption** is still useful in blockchain-based applications for:

- Encrypting wallet backups
- Protecting off-chain data
- Encrypting communication between blockchain nodes
- Secure storage of sensitive information

---

# Symmetric vs Asymmetric Cryptography

| Feature | Symmetric | Asymmetric |
|----------|-----------|------------|
| Keys Used | One | Two |
| Encryption Speed | Fast | Slower |
| Security | Depends on key secrecy | Higher for key exchange |
| Key Distribution | Difficult | Easier |
| Computational Cost | Low | High |
| Used For | Large data encryption | Digital signatures & key exchange |

---

# Exam Answer (5 Marks)

## Describe Symmetric Key Encryption with Neat Diagram.

**Definition**

Symmetric Key Cryptography is an encryption technique in which the **same secret key** is used for encryption and decryption.

**Working**

1. Sender prepares plaintext.
2. Plaintext is encrypted using the secret key.
3. Ciphertext is transmitted.
4. Receiver uses the same secret key.
5. Original plaintext is recovered.

**Diagram**

```text
Plaintext
    │
Encryption
    │
Secret Key
    │
Ciphertext
    │
Transmission
    │
Secret Key
    │
Decryption
    │
Plaintext
```

**Advantages**

- Fast
- Efficient
- Suitable for large data

**Limitation**

Key distribution is the major challenge.

---

# Interview Corner

### Why is symmetric encryption faster?

Because only one key is used and the mathematical operations are less computationally intensive than public-key cryptography.

---

### Why isn't symmetric encryption used alone on the Internet?

The biggest problem is **securely sharing the secret key** between two parties.

---

### Which algorithm is most commonly used today?

AES (Advanced Encryption Standard).

---

### Does blockchain use symmetric encryption?

Not for transaction signing. Blockchain primarily uses asymmetric cryptography, but symmetric encryption may be used to protect private or off-chain data.

---

# Key Points to Remember

- One secret key is used.
- Same key encrypts and decrypts.
- Fastest encryption method.
- Best for encrypting large amounts of data.
- Major drawback: secure key distribution.
- AES is the modern standard.

---

# 30-Second Revision

```text
Symmetric Key Cryptography

↓

One Secret Key

↓

Encrypt

↓

Ciphertext

↓

Transmit

↓

Decrypt

↓

Original Message

Advantages:
✔ Fast
✔ Efficient

Disadvantage:
✖ Key Distribution Problem
```