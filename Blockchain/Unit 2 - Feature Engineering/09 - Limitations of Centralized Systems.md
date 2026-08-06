# 09 - Limitations of Centralized Systems

> **Unit:** 2
> **Difficulty:** ⭐⭐☆☆☆
> **Expected Time:** 10 min

---

# Previous Year Questions (PYQs)

### 2025
- Discuss various limitations of centralized system with respect to decentralized system.

### 2024
- No direct questions found.

### 2023
- Discuss various limitations of centralized system with respect to decentralized system.

### 2022
- Discuss limitations of centralized systems.

> **Note:** This topic is closely related to **"Centralized vs Decentralized Systems"**, but here the focus is **only on the disadvantages of centralized systems** and how blockchain overcomes them.

---

# Learning Objective

After reading this note you should be able to:

- Understand what a centralized system is.
- Explain the major limitations of centralized systems.
- Compare centralized systems with decentralized blockchain systems.
- Understand why Blockchain was developed.
- Answer all SPPU previous year questions related to this topic.

---

# 1. Introduction

Most traditional systems, such as banks, government databases, hospitals, and social media platforms, are **centralized systems**. In these systems, a **single authority** controls all data, decisions, and operations.

Although centralized systems are easy to implement and manage, they have several drawbacks, including **single points of failure, security risks, lack of transparency, and dependence on intermediaries**.

Blockchain technology was introduced to overcome these limitations by replacing a central authority with a decentralized network.

### Real-Life Analogy

Imagine all your college records are stored in a single office.

- If the office catches fire, records may be lost.
- If someone inside changes the records, it is difficult to detect.
- If the office closes for a day, no one can access the records.

Now imagine every department has an identical copy of the records.

Even if one office fails, the information remains available.

This is the idea behind decentralization.

---

# 2. Core Concept

## What is a Centralized System?

**Definition**

A **Centralized System** is a system in which a **single organization, server, or authority** controls the storage, processing, and management of all data.

Examples:

- Banks
- Facebook
- Instagram
- Government databases
- College ERP systems

---

## Why do Centralized Systems have Limitations?

Because every operation depends on a **single controlling entity**.

If that entity fails, is compromised, or behaves maliciously, the entire system is affected.

---

# 3. Working

Step 1

User sends a request.

↓

Step 2

Request reaches the central server.

↓

Step 3

Server processes the request.

↓

Step 4

Database is updated.

↓

Step 5

Response is returned to the user.

If the central server fails at any stage, the service becomes unavailable.

---

# Diagram

## Centralized Architecture

```text
        Users
      /   |   \
     /    |    \
    ▼     ▼     ▼
+----------------------+
|   Central Server     |
+----------------------+
          │
          ▼
     Central Database
```

### Diagram Explanation

- All users depend on one server.
- The server stores and manages all information.
- Failure of the server affects every user.

---

# Formula (Conceptual)

```text
Users
   ↓
Central Server
   ↓
Database
```

### Explanation

- **Users** send requests.
- **Central Server** processes every request.
- **Database** stores all information.

Since everything depends on one server, failures affect the complete system.

---

# Example

## Online Banking

Alice wants to transfer ₹5,000 to Bob.

↓

Alice sends the request.

↓

Bank server verifies the request.

↓

Server updates the database.

↓

Money is transferred.

If the bank server crashes during the transaction,

↓

The transaction cannot be completed.

---

# Major Limitations of Centralized Systems

## 1. Single Point of Failure

All operations depend on one central server.

If it crashes, the entire system stops working.

### Example

A bank server outage prevents customers from accessing accounts.

---

## 2. Security Risks

Since all data is stored in one location, hackers have a single target.

A successful attack can expose millions of records.

---

## 3. Data Manipulation

Administrators with high privileges may modify or delete records.

Users often cannot independently verify such changes.

---

## 4. Lack of Transparency

Users cannot directly verify stored information.

They must trust the organization.

---

## 5. Third-Party Dependency

Every transaction requires an intermediary.

Examples:

- Banks
- Government offices
- Payment gateways

This increases both time and cost.

---

## 6. High Maintenance Cost

Organizations must invest in:

- Servers
- Data centers
- Security
- Backup systems
- IT staff

This significantly increases operational costs.

---

## 7. Downtime

Regular maintenance or unexpected failures can make services unavailable.

Examples:

- Banking maintenance
- Website downtime

---

## 8. Scalability Challenges

As the number of users increases, the central server becomes overloaded.

Organizations must continuously upgrade hardware.

---

## 9. Privacy Concerns

The organization controlling the system has access to user data.

Data may be collected, shared, or misused.

---

## 10. Trust Issues

Users must completely trust the central authority to:

- Store data correctly.
- Protect privacy.
- Prevent fraud.
- Maintain system availability.

---

# How Blockchain Solves These Problems

| Centralized Problem | Blockchain Solution |
|---------------------|--------------------|
| Single point of failure | Distributed network |
| Data tampering | Immutable ledger |
| Security attacks | Cryptography |
| Third-party dependency | Peer-to-Peer transactions |
| Lack of transparency | Shared ledger |
| Downtime | Multiple active nodes |
| Trust issues | Consensus mechanism |
| Privacy concerns | Cryptographic identities |

---

# Applications

Understanding centralized system limitations is important in:

- Banking
- Cloud Computing
- Cybersecurity
- Blockchain
- Distributed Systems
- Digital Payments
- Government Services

---

# Advantages of Centralized Systems (For Comparison)

Although they have limitations, centralized systems also offer some benefits:

- Easy management
- Faster decision making
- Simpler implementation
- Lower initial complexity
- Easier software updates

These are the reasons why many organizations still use centralized architectures.

---

# Limitations

- Single point of failure
- Security vulnerabilities
- Data manipulation
- Lack of transparency
- High operational cost
- Third-party dependency
- Downtime
- Scalability issues
- Privacy concerns
- Trust issues

---

# Interview Corner

### Q1. What is the biggest limitation of a centralized system?

The biggest limitation is the **single point of failure**, where failure of one server affects the entire system.

---

### Q2. Why did Blockchain replace centralized systems?

Blockchain reduces dependence on a central authority by using decentralization, consensus, and distributed ledgers.

---

### Q3. Are centralized systems always bad?

No.

They are easier to manage and are suitable for organizations requiring strict control and regulatory compliance.

---

### Q4. Can centralized systems be secure?

Yes.

Strong security measures can improve security, but the central server remains a single attractive target for attackers.

---

# Exam Answer (6 Marks)

## Q. Discuss the limitations of centralized systems.

A centralized system depends on a single authority for storing and managing data. Although simple to manage, it has several limitations.

### Limitations

1. Single point of failure.
2. High security risks.
3. Data manipulation by administrators.
4. Lack of transparency.
5. Dependence on third parties.
6. High maintenance costs.
7. System downtime.
8. Scalability challenges.
9. Privacy concerns.
10. Trust issues.

Blockchain overcomes these limitations through decentralization, distributed ledgers, consensus mechanisms, and cryptographic security.

---

## Q. Discuss various limitations of centralized systems with respect to decentralized systems.

| Centralized System | Decentralized (Blockchain) |
|--------------------|----------------------------|
| Single server | Multiple nodes |
| Single point of failure | Fault tolerant |
| Easy to tamper | Immutable records |
| Requires trust | Trustless |
| Less transparent | Transparent |
| High maintenance | Shared infrastructure |
| Third-party dependency | Peer-to-Peer transactions |

Thus, decentralized blockchain systems provide higher security, transparency, reliability, and fault tolerance compared to traditional centralized systems.

---

# Key Points to Remember

✔ One central authority controls everything.

✔ Single point of failure is the biggest disadvantage.

✔ Security attacks target one server.

✔ Data manipulation is possible.

✔ Blockchain solves these problems using decentralization.

✔ Consensus replaces trust in a central authority.

---

# Revision (30 Seconds)

Centralized System

↓

Single Server

↓

Single Point of Failure

↓

Security Risks

↓

Data Manipulation

↓

Lack of Transparency

↓

Blockchain Solves Using

↓

Decentralization

↓

Consensus

↓

Distributed Ledger