````md id="7k3pqa"
# 10. Common IoT Attack Types

## PYQs

### 2022
> **“Explain different attack types in IoT.”**

> **“Explain Common IoT attack types.”**

### 2023
> **“Explain common IoT attacks.”**

### 2025
> **“Explain different attack types in IoT.”**

> **“Explain Common IoT attack types.”**

**Status: 🔥🔥🔥 EXTREMELY IMPORTANT — Repeated PYQ**

---

# 1. Introduction

An **IoT attack** is a deliberate attempt to exploit a weakness in an IoT device, communication network, application, or cloud service in order to gain unauthorized access, steal or modify information, disrupt services, or manipulate connected devices.

IoT systems are particularly vulnerable because they consist of a large number of interconnected devices, often with limited computational resources, diverse communication protocols, weak default configurations, and long operational lifetimes.

Common IoT attacks can target the **device, network, communication, application, or data layer**.

---

# 2. Common IoT Attack Types

## 2.1 Eavesdropping Attack

An **eavesdropping attack** occurs when an attacker secretly monitors communication between IoT devices to obtain information without being detected.

If communication is not encrypted, the attacker may obtain sensitive information such as credentials, sensor readings, or personal data.

### Example

```text
IoT Device ───────────────► Cloud
      │
      └────────► Attacker
                  │
             Captures Data
````

### Effects

* Confidential information is exposed.
* User privacy may be violated.
* Credentials may be stolen.

### Countermeasure

* Encryption
* Secure communication protocols
* Authentication

---

# 2.2 Man-in-the-Middle Attack

A **Man-in-the-Middle (MITM) attack** occurs when an attacker secretly places themselves between two communicating IoT entities.

The attacker can intercept, read, and potentially modify the communication.

### Diagram

```text
Normal Communication:

IoT Device ─────────────────► Server


MITM Attack:

IoT Device ─────► Attacker ─────► Server
                     │
                 Intercept /
                  Modify Data
```

### Example

An attacker intercepts communication between a smart sensor and its cloud server and changes the sensor readings.

### Effects

* Data theft
* Data manipulation
* Unauthorized commands
* Loss of integrity

### Countermeasure

* End-to-end encryption
* Digital certificates
* Mutual authentication
* Secure protocols

---

# 2.3 Denial-of-Service Attack

A **Denial-of-Service (DoS) attack** attempts to make an IoT device or service unavailable to legitimate users.

The attacker may consume the device's:

* CPU resources
* Memory
* Network bandwidth
* Processing capacity

### Diagram

```text
             Large Number
             of Requests
                  │
                  ▼
             ┌──────────┐
Attacker ───►│ IoT      │
             │ Device   │
             └────┬─────┘
                  │
                  ▼
             Resources
              Exhausted
                  │
                  ▼
             Service Down
```

### Effects

* Loss of availability
* Service interruption
* Device malfunction

### Countermeasure

* Rate limiting
* Firewalls
* Traffic filtering
* IDS/IPS
* Network monitoring

---

# 2.4 Distributed Denial-of-Service Attack

A **Distributed Denial-of-Service (DDoS) attack** is an attack in which a large number of compromised devices simultaneously send malicious traffic toward a target.

IoT devices are frequently used to create botnets because many devices may have weak security.

### Diagram

```text
 IoT Camera ───┐
 IoT Router ───┤
 IoT Sensor ───┤
 IoT Device ───┼──────► Target Server
 IoT Device ───┤
 IoT Device ───┘
       │
    Botnet
```

### Effects

* Network congestion
* Service unavailability
* Resource exhaustion
* Business disruption

### Countermeasure

* DDoS protection
* Traffic filtering
* Rate limiting
* Network monitoring

---

# 2.5 Spoofing Attack

A **spoofing attack** occurs when an attacker impersonates a legitimate IoT device, user, or network entity.

The purpose is to deceive the system into believing that the attacker is a trusted entity.

### Example

An attacker creates a fake sensor that pretends to be a legitimate sensor and sends false information to the IoT system.

```text
Legitimate Sensor
       │
       ▼
   IoT Network

Fake Sensor
    ▲
    │
 Attacker
```

### Effects

* False information
* Unauthorized access
* Device impersonation
* Incorrect decisions

### Countermeasure

* Strong authentication
* Digital certificates
* Device identity verification

---

# 2.6 Replay Attack

A **replay attack** occurs when an attacker captures a legitimate message and retransmits it later to perform an unauthorized action.

The attacker does not necessarily need to understand the original message.

### Example

A smart door lock receives:

```text
"UNLOCK"
```

An attacker captures the valid command and sends it again later.

```text
Device ─────► "UNLOCK" ─────► Lock
                  │
                  ▼
               Attacker
               Captures
                  │
                  ▼
             Replays Later
                  │
                  ▼
                 Lock
```

### Effects

* Repeated unauthorized actions
* Device manipulation
* Security bypass

### Countermeasure

* Nonces
* Timestamps
* Sequence numbers
* Session tokens

---

# 2.7 Malware Attack

**Malware** is malicious software designed to compromise or control an IoT device.

Common forms include:

* Worms
* Trojans
* Ransomware
* Botnet malware

### Example

An attacker exploits a vulnerable smart camera and installs malware on it.

The compromised device can then be controlled remotely.

### Effects

* Device takeover
* Data theft
* Device malfunction
* Botnet formation

### Countermeasure

* Regular firmware updates
* Secure software
* Malware detection
* Network monitoring

---

# 2.8 Password Attack

A **password attack** attempts to obtain valid credentials and use them to gain unauthorized access.

Common techniques include:

* Brute-force attacks
* Dictionary attacks
* Credential stuffing
* Default-password exploitation

### Example

An attacker tries commonly used default credentials on an IoT router.

### Effects

* Unauthorized access
* Device takeover
* Data theft

### Countermeasure

* Strong passwords
* Multi-factor authentication
* Account lockout
* Rate limiting
* Changing default credentials

---

# 2.9 Physical Attack

A **physical attack** occurs when an attacker gains direct physical access to an IoT device and attempts to manipulate its hardware or extract sensitive information.

### Example

An attacker opens an IoT sensor and extracts stored credentials from its memory.

### Effects

* Credential extraction
* Hardware manipulation
* Firmware modification
* Device compromise

### Countermeasure

* Tamper-resistant hardware
* Secure enclosures
* Secure boot
* Restricted physical access

---

# 2.10 Firmware Attack

IoT devices depend on firmware to control their hardware and basic operations.

A **firmware attack** occurs when an attacker exploits vulnerable firmware or installs unauthorized firmware.

### Diagram

```text
Vulnerable Firmware
        │
        ▼
   Exploitation
        │
        ▼
Malicious Firmware
        │
        ▼
Compromised Device
```

### Effects

* Persistent compromise
* Unauthorized control
* Data theft
* Device malfunction

### Countermeasure

* Secure boot
* Signed firmware
* Secure firmware updates
* Firmware integrity verification

---

# 2.11 Data Injection Attack

A **data injection attack** occurs when an attacker inserts false or manipulated data into an IoT system.

### Example

A temperature sensor normally reports:

```text
Temperature = 25°C
```

An attacker injects:

```text
Temperature = 80°C
```

The IoT system may make an incorrect decision based on the false data.

### Effects

* Incorrect decisions
* Incorrect automation
* Loss of data integrity

### Countermeasure

* Data validation
* Authentication
* Digital signatures
* Integrity checks
* Anomaly detection

---

# 2.12 Botnet Attack

A **botnet** is a collection of compromised IoT devices that are remotely controlled by an attacker.

The attacker can use the compromised devices to perform coordinated malicious activities.

### Diagram

```text
                  Attacker
                     │
                     ▼
              Command & Control
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
     Camera        Router       Sensor
        │            │            │
        └────────────┼────────────┘
                     ▼
                 Target
```

### Effects

* DDoS attacks
* Malware distribution
* Spam
* Unauthorized activities
* Further device compromise

### Countermeasure

* Strong authentication
* Security updates
* Malware detection
* Network monitoring
* Removing default credentials

---

# 3. Classification of IoT Attacks

IoT attacks can be broadly classified according to what they primarily affect.

| Category                    | Common Attacks                     |
| --------------------------- | ---------------------------------- |
| **Confidentiality Attacks** | Eavesdropping, data theft          |
| **Integrity Attacks**       | MITM, data injection, replay       |
| **Availability Attacks**    | DoS, DDoS                          |
| **Authentication Attacks**  | Spoofing, password attacks         |
| **Device Attacks**          | Physical attacks, firmware attacks |
| **Software Attacks**        | Malware, ransomware                |
| **Network Attacks**         | MITM, DoS/DDoS                     |
| **Large-scale Attacks**     | Botnets                            |

---

# 4. Relationship with CIA Triad

IoT attacks can affect the three fundamental security properties:

```text
                 IoT Attacks
                     │
       ┌─────────────┼─────────────┐
       ▼             ▼             ▼
Confidentiality   Integrity    Availability
       │             │             │
 Eavesdropping    MITM         DoS / DDoS
 Data Theft       Replay
                  Injection
```

### Confidentiality

Protects information from unauthorized disclosure.

**Attacks:** Eavesdropping, data theft.

### Integrity

Protects information from unauthorized modification.

**Attacks:** MITM, replay, data injection.

### Availability

Ensures systems remain operational.

**Attacks:** DoS, DDoS.

---

# 5. Theoretical Exam Answer

## Q. Explain Common IoT Attack Types.

The **Internet of Things (IoT)** consists of a large number of interconnected physical devices, sensors, gateways, communication networks, applications, and cloud services. Due to the distributed nature of IoT and the presence of numerous connected devices, IoT systems are exposed to different types of security attacks.

An **IoT attack** is a deliberate attempt to exploit a vulnerability in an IoT system to gain unauthorized access, steal or manipulate information, disrupt services, or control connected devices.

The common IoT attacks are as follows:

### 1. Eavesdropping Attack

In an eavesdropping attack, an attacker secretly monitors communication between IoT devices to obtain sensitive information. Encryption and secure communication protocols are used to prevent such attacks.

### 2. Man-in-the-Middle Attack

In a MITM attack, an attacker intercepts communication between two legitimate entities and may read or modify the transmitted information. Authentication and encryption are important countermeasures.

### 3. Denial-of-Service Attack

A DoS attack attempts to make an IoT device or service unavailable by exhausting its resources. Rate limiting, traffic filtering, and intrusion detection mechanisms can reduce the impact.

### 4. Distributed Denial-of-Service Attack

A DDoS attack uses multiple compromised devices to generate malicious traffic against a target. IoT devices can themselves be used as botnets to launch such attacks.

### 5. Spoofing Attack

In a spoofing attack, the attacker impersonates a legitimate user or IoT device to deceive the system. Strong authentication and digital certificates can help prevent spoofing.

### 6. Replay Attack

In a replay attack, an attacker captures a valid message and retransmits it later to perform an unauthorized action. Nonces, timestamps, and sequence numbers can prevent replay attacks.

### 7. Malware Attack

Malware is malicious software that can infect IoT devices and provide unauthorized control to attackers. Security updates, secure firmware, and malware detection are used to reduce this threat.

### 8. Password Attack

Attackers may exploit weak, default, or stolen credentials through brute-force, dictionary, or credential-based attacks. Strong passwords and multi-factor authentication can provide protection.

### 9. Physical Attack

Physical attacks involve direct manipulation of IoT hardware by an attacker. Secure hardware, tamper protection, and restricted physical access can reduce these attacks.

### 10. Firmware Attack

Attackers may exploit vulnerable firmware or install malicious firmware to gain persistent control over an IoT device. Secure boot and signed firmware updates help protect against such attacks.

### 11. Data Injection Attack

In this attack, false or manipulated information is inserted into the IoT system. This can result in incorrect decisions and unsafe automated operations. Data validation and integrity mechanisms are used as countermeasures.

### 12. Botnet Attack

A botnet consists of multiple compromised IoT devices controlled by an attacker. These devices can be used to perform DDoS attacks, distribute malware, or conduct other malicious activities.

---

# 6. Conclusion

IoT attacks can compromise the **confidentiality, integrity, availability, authentication, privacy, and safety** of connected systems. Since IoT devices interact with both digital and physical environments, a successful attack can result in consequences ranging from data theft and privacy violations to service disruption and physical damage.

Therefore, IoT systems require **strong authentication, encryption, secure communication, access control, secure firmware, regular updates, network monitoring, intrusion detection, and physical protection**.

---

# ⭐ Quick Revision

```text
Eavesdropping  → Secretly capture communication
MITM           → Intercept and modify communication
DoS            → Make service unavailable
DDoS           → Overload target using many devices
Spoofing       → Pretend to be a trusted device/user
Replay         → Reuse a captured valid message
Malware        → Infect and control device
Password       → Obtain credentials
Physical       → Directly tamper with hardware
Firmware       → Compromise device firmware
Data Injection → Insert false information
Botnet         → Control many compromised devices
```

### Most Important for PYQ

**🔥 Eavesdropping**
**🔥 MITM**
**🔥 DoS / DDoS**
**🔥 Spoofing**
**🔥 Replay Attack**
**🔥 Malware**
**🔥 Password Attack**
**🔥 Botnet**

**Exam Priority: 🔥🔥🔥 EXTREMELY HIGH**

```
```
