# 6. Primer on Threats — Classic Pillars of Information Assurance

## PYQs

### 2022
> **“What is information assurance? Explain the classic pillars of Information Assurance.”**

### 2023
> **“Explain the classic pillars of information assurance.”**

### 2025
> **“What is information assurance? Explain the classic pillars of Information Assurance.”**

**Status: 🔥🔥 VERY IMPORTANT — Repeated PYQ**

---

## 1. What is Information Assurance?

**Information Assurance (IA)** is the practice of protecting information and information systems to ensure that information remains **confidential, accurate, available, authentic, and reliable**.

In IoT, Information Assurance is important because devices continuously **collect, transmit, store, and process information**.

The classic pillars of Information Assurance are:

1. **Confidentiality**
2. **Integrity**
3. **Availability**
4. **Authentication**
5. **Non-repudiation**

These are commonly remembered using the security concepts of the **CIA Triad** plus authentication and non-repudiation.

---

# 2. Classic Pillars of Information Assurance

## 2.1 Confidentiality

**Confidentiality** means ensuring that information is accessible only to **authorized users or devices**.

It prevents sensitive information from being disclosed to unauthorized parties.

### Example in IoT

A smart healthcare device may collect a patient's health information. This information should only be accessible to authorized doctors or healthcare systems.

### Methods

- Encryption
- Access control
- Authentication
- Secure communication

---

## 2.2 Integrity

**Integrity** means ensuring that information remains **accurate, complete, and unmodified** unless the modification is authorized.

It prevents attackers from changing or manipulating IoT data.

### Example in IoT

Suppose a temperature sensor reports:

> **25°C**

An attacker should not be able to modify the value to:

> **80°C**

without detection.

### Methods

- Hashing
- Digital signatures
- Message authentication codes
- Access control

---

## 2.3 Availability

**Availability** means ensuring that information, devices, and services are **accessible and operational whenever required by authorized users**.

IoT systems often need continuous availability because many devices perform real-time functions.

### Example in IoT

A smart security system should remain operational when a security event occurs.

A DDoS attack that makes the system unavailable can therefore be a serious problem.

### Methods

- Redundant systems
- Backup systems
- Fault tolerance
- Network monitoring
- DDoS protection

---

## 2.4 Authentication

**Authentication** is the process of **verifying the identity of a user, device, or system**.

It answers the question:

> **“Who are you?”**

### Example in IoT

Before allowing a smart lock to receive commands, the system verifies whether the requesting smartphone or user is authorized.

### Common Methods

- Passwords
- Digital certificates
- Biometrics
- Security tokens
- Multi-factor authentication

---

## 2.5 Non-Repudiation

**Non-repudiation** ensures that a person or device **cannot deny having performed a particular action or sent a particular message**.

It provides evidence that an action actually occurred.

### Example in IoT

If an authorized system sends a command to an industrial IoT machine, digital signatures can provide evidence about who sent the command.

### Methods

- Digital signatures
- Secure audit logs
- Timestamps
- Digital certificates

---

# 3. Summary Table

| Pillar | Meaning | IoT Example |
|---|---|---|
| **Confidentiality** | Prevent unauthorized disclosure of information | Protect patient data |
| **Integrity** | Prevent unauthorized modification of information | Prevent modification of sensor readings |
| **Availability** | Ensure systems and data are available when needed | Keep smart security system operational |
| **Authentication** | Verify identity | Verify an IoT device before allowing access |
| **Non-repudiation** | Prevent denial of an action | Prove which device sent a command |

---

# 4. Easy Way to Remember

### CIA + AN

**C — Confidentiality**  
→ Keep information **secret**

**I — Integrity**  
→ Keep information **correct**

**A — Availability**  
→ Keep systems **accessible**

**A — Authentication**  
→ Verify **identity**

**N — Non-repudiation**  
→ Prove **who performed the action**

---

# 5. Exam Answer

## What is Information Assurance? Explain the classic pillars of Information Assurance.

**Information Assurance (IA)** is the practice of protecting information and information systems to ensure that information remains secure, accurate, available, authentic, and reliable.

The classic pillars of Information Assurance are:

### 1. Confidentiality
Ensures that information is accessible only to authorized users. Encryption and access control are commonly used.

### 2. Integrity
Ensures that information is accurate and is not modified by unauthorized users. Hashing and digital signatures help maintain integrity.

### 3. Availability
Ensures that information, devices, and services remain available to authorized users when required. Redundancy and fault tolerance help maintain availability.

### 4. Authentication
Verifies the identity of users and devices before allowing them to access an IoT system.

### 5. Non-repudiation
Ensures that a user or device cannot deny performing an action. Digital signatures and audit logs can provide evidence of an action.

### Conclusion

The pillars of Information Assurance help protect IoT systems from **unauthorized access, data modification, information disclosure, service disruption, and denial of actions**. Together, they provide a foundation for securing IoT information and systems.

**Exam Tip:**  
This is a **high-priority repeated PYQ**. Learn the **5 pillars + meaning + one IoT example for each**.