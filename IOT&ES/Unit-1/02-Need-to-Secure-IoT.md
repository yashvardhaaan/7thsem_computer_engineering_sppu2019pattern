# 5. Need to Secure IoT

## PYQs

### 2023
> **“Explain the need to secure IoT.”**

### 2024
> **“Why IoT does require a security?”**

**Status: 🔥 VERY IMPORTANT — Repeated PYQ**

---

## Explanation

The **Internet of Things (IoT)** connects a large number of physical devices such as sensors, smart appliances, medical devices, vehicles, industrial machines, and cameras to networks and the Internet.

These devices **collect, process, transmit, and sometimes control sensitive information or physical systems**. Therefore, security is essential to protect IoT devices, data, networks, and users from unauthorized access and attacks.

---

## Why Does IoT Need Security?

### 1. Protection of Sensitive Data

IoT devices may collect sensitive information such as:

- Personal information
- Location data
- Health information
- Financial information
- Business data
- Device activity

Security protects this information from unauthorized access and theft.

---

### 2. Prevention of Unauthorized Access

Attackers may attempt to gain control of IoT devices.

For example, an attacker could gain access to:

- Smart cameras
- Smart locks
- Industrial machines
- Medical devices
- Connected vehicles

Strong authentication and access control prevent unauthorized users from controlling devices.

---

### 3. Protection Against Cyber Attacks

IoT devices can become targets of attacks such as:

- Malware
- Denial-of-Service (DoS)
- Distributed Denial-of-Service (DDoS)
- Man-in-the-Middle attacks
- Password attacks
- Botnet attacks

Security mechanisms help detect, prevent, and reduce the impact of these attacks.

---

### 4. Maintaining Confidentiality

**Confidentiality** ensures that information is accessible only to authorized users.

For example, data transmitted by a healthcare IoT device should not be readable by an unauthorized attacker.

Encryption is commonly used to provide confidentiality.

---

### 5. Maintaining Integrity

**Integrity** ensures that IoT data is not modified or manipulated without authorization.

For example, an attacker should not be able to modify sensor readings or change commands sent to an industrial machine.

---

### 6. Maintaining Availability

**Availability** ensures that IoT devices and services remain operational when required.

An attack such as a DDoS attack can make IoT services unavailable.

Security mechanisms help maintain the availability of IoT systems.

---

### 7. Safety of Physical Systems

Unlike traditional computers, IoT devices can directly interact with the physical world.

For example:

- Industrial controllers can operate machines.
- Smart locks can control doors.
- Medical devices can affect patients.
- Connected vehicles can control vehicle functions.

If these systems are compromised, an attack can cause **physical damage or threaten human safety**.

---

### 8. Protection of Large IoT Networks

An IoT environment may contain thousands or millions of connected devices.

If one vulnerable device is compromised, it can potentially be used to attack other devices or systems.

Therefore, IoT security is required to protect the **entire IoT ecosystem**.

---

### 9. Preventing IoT Devices from Becoming Botnets

Compromised IoT devices can be controlled by attackers and combined into a **botnet**.

The attacker can then use these devices to launch large-scale attacks such as DDoS attacks.

Proper security reduces the possibility of devices being recruited into botnets.

---

### 10. Ensuring Trust and Reliability

Users and organizations must be able to trust IoT systems.

Secure IoT systems ensure that:

- Devices behave as expected.
- Data is trustworthy.
- Communication is protected.
- Unauthorized users cannot manipulate the system.

---

## Key Security Requirements of IoT

| Requirement | Purpose |
|---|---|
| **Confidentiality** | Protect data from unauthorized access |
| **Integrity** | Prevent unauthorized modification of data |
| **Availability** | Keep devices and services operational |
| **Authentication** | Verify the identity of users/devices |
| **Authorization** | Control what an authenticated entity can access |
| **Privacy** | Protect users' personal and sensitive information |
| **Non-repudiation** | Prevent entities from denying performed actions |

---

# Exam Answer

### Why does IoT require security?

IoT requires security because a large number of connected devices continuously collect, process, and exchange data over networks. These devices may contain sensitive information and may also control physical systems.

The major reasons for securing IoT are:

1. **Protection of sensitive data** from theft and unauthorized access.
2. **Prevention of unauthorized access** to IoT devices.
3. **Protection against cyber attacks** such as malware, DoS, DDoS, and botnet attacks.
4. **Confidentiality** of data transmitted between devices.
5. **Integrity** of data and commands.
6. **Availability** of IoT services and devices.
7. **Protection of physical systems and human safety.**
8. **Protection of large IoT networks** from compromised devices.
9. **Protection against privacy violations.**
10. **Maintaining trust and reliability** of IoT systems.

### Conclusion

Security is a critical requirement of IoT because compromising an IoT device can result in **data loss, privacy violations, service disruption, unauthorized control, financial loss, and even physical damage**. Therefore, IoT systems must use proper authentication, authorization, encryption, secure communication, access control, and continuous monitoring.

**Exam Tip:**  
For a **5-mark answer**, write the definition/introduction + **5–7 reasons** + a short conclusion.