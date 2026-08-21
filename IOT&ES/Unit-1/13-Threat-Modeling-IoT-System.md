````md id="r5n8kc"
# 15. Threat Modeling an IoT System

## PYQs

### 2022
> **“Explain threat modeling for IoT system.”**

### 2023
> **“Explain IoT threat modeling.”**

### 2024
> **“Explain threat modeling an IoT system.”**

### 2025
> **“Explain threat modeling for IoT system.”**

**Status: 🔥🔥🔥 EXTREMELY IMPORTANT — Repeated PYQ**

---

# 1. What is Threat Modeling?

**Threat modeling** is a systematic process of identifying, analyzing, and evaluating potential security threats and vulnerabilities in a system before they are exploited by attackers.

In an IoT environment, threat modeling is used to identify possible threats to:

- IoT devices
- Sensors
- Actuators
- Gateways
- Communication networks
- APIs
- Cloud services
- Applications
- Data

The main objective is to understand:

> **What can go wrong, how can it happen, what can be affected, and how can it be prevented?**

---

# 2. Need for Threat Modeling in IoT

IoT systems are more complex than traditional computing systems because they contain a large number of interconnected physical and cyber components.

Threat modeling is required because:

1. IoT devices continuously communicate over networks.
2. Devices may have weak security configurations.
3. IoT systems handle sensitive information.
4. Devices may directly control physical systems.
5. IoT environments contain many different technologies and protocols.
6. A compromised device can be used to attack other devices.
7. Security vulnerabilities should ideally be identified before deployment.

Threat modeling therefore helps organizations design security into the IoT system rather than adding security only after an attack occurs.

---

# 3. Threat Modeling Process

A typical IoT threat modeling process consists of the following steps:

```text
┌──────────────────────────┐
│ 1. Identify IoT Assets   │
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 2. Understand Architecture│
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 3. Identify Threats      │
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 4. Identify Vulnerabilities│
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 5. Analyze and Prioritize│
│    Risks                 │
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 6. Select Countermeasures│
└────────────┬─────────────┘
             ↓
┌──────────────────────────┐
│ 7. Monitor and Review    │
└──────────────────────────┘
````

---

# 4. Step 1 — Identify Assets

The first step is to identify the assets that need protection.

An **asset** is anything valuable to the IoT system.

### IoT Assets Include

* IoT devices
* Sensors
* Actuators
* Gateway
* Network
* User credentials
* Applications
* APIs
* Cloud infrastructure
* Sensor data
* Personal information
* Control commands

### Example

For a smart home:

```text
Assets
 ├── Smart Camera
 ├── Smart Lock
 ├── Smart Thermostat
 ├── Home Gateway
 ├── Wi-Fi Network
 └── User Data
```

---

# 5. Step 2 — Understand the IoT Architecture

The security analyst must understand how different components interact with one another.

A basic IoT architecture may look like:

```text
┌───────────────┐
│ IoT Devices   │
│ Sensors       │
│ Actuators     │
└───────┬───────┘
        │
        ▼
┌───────────────┐
│   Gateway     │
└───────┬───────┘
        │
        ▼
┌───────────────┐
│ Communication  │
│ Network        │
└───────┬───────┘
        │
        ▼
┌───────────────┐
│ Cloud / Server │
└───────┬───────┘
        │
        ▼
┌───────────────┐
│ User / App     │
└───────────────┘
```

Understanding the architecture helps identify where attacks can occur.

---

# 6. Step 3 — Identify Threats

After understanding the architecture, possible threats are identified.

### Common IoT Threats

* Unauthorized access
* Malware
* Eavesdropping
* MITM
* DoS/DDoS
* Spoofing
* Replay attacks
* Data manipulation
* Physical tampering
* Firmware attacks
* Privacy attacks
* Botnets

Threat identification should consider both **cyber threats and physical threats**.

---

# 7. Step 4 — Identify Vulnerabilities

A vulnerability is a weakness that can be exploited by a threat.

### Common IoT Vulnerabilities

* Default passwords
* Weak authentication
* Unencrypted communication
* Outdated firmware
* Insecure APIs
* Poor access control
* Open ports
* Insecure services
* Lack of secure updates
* Physical access to devices

### Example

```text
Weak Password
      ↓
Vulnerability
      ↓
Password Attack
      ↓
Unauthorized Access
```

---

# 8. Step 5 — Analyze and Prioritize Risks

Not every threat has the same importance.

Threats should be evaluated according to factors such as:

* Likelihood of occurrence
* Potential impact
* Exploitability
* Importance of affected assets

A simple conceptual model is:

```text
Risk ∝ Likelihood × Impact
```

### Example

Consider two vulnerabilities:

| Vulnerability                    | Likelihood | Impact    | Priority |
| -------------------------------- | ---------- | --------- | -------- |
| Weak smart bulb password         | High       | Low       | Medium   |
| Vulnerable industrial controller | Medium     | Very High | High     |

The industrial controller vulnerability should receive higher priority because its potential impact is much greater.

---

# 9. Step 6 — Select Countermeasures

After identifying and prioritizing risks, suitable security controls are selected.

### Examples

| Threat              | Countermeasure                    |
| ------------------- | --------------------------------- |
| Unauthorized access | Authentication + access control   |
| Eavesdropping       | Encryption                        |
| MITM                | Mutual authentication + TLS       |
| DoS/DDoS            | Traffic filtering + rate limiting |
| Malware             | Secure firmware + patching        |
| Spoofing            | Device authentication             |
| Replay              | Nonces + timestamps               |
| Data manipulation   | Integrity checks                  |
| Physical attack     | Tamper-resistant hardware         |
| Firmware attack     | Secure boot + signed firmware     |

The objective is to reduce the likelihood or impact of the identified threats.

---

# 10. Step 7 — Monitor and Review

Threat modeling is **not a one-time activity**.

IoT systems change over time because:

* New devices are added.
* Software is updated.
* New vulnerabilities are discovered.
* New attack techniques appear.
* Network architecture changes.

Therefore, threat models should be regularly reviewed and updated.

```text
Threat Model
     ↓
Deploy Security
     ↓
Monitor System
     ↓
New Threat / Vulnerability
     ↓
Update Threat Model
     ↺
```

---

# 11. STRIDE Model

One popular threat-modeling methodology is **STRIDE**.

STRIDE categorizes threats into six major types:

| Letter | Threat                 | Meaning                              |
| ------ | ---------------------- | ------------------------------------ |
| **S**  | Spoofing               | Pretending to be another entity      |
| **T**  | Tampering              | Unauthorized modification of data    |
| **R**  | Repudiation            | Denying an action that was performed |
| **I**  | Information Disclosure | Unauthorized exposure of information |
| **D**  | Denial of Service      | Making a service unavailable         |
| **E**  | Elevation of Privilege | Gaining unauthorized privileges      |

### Easy Memory

> **S T R I D E**

**Spoofing → Tampering → Repudiation → Information Disclosure → Denial of Service → Elevation of Privilege**

---

# 12. STRIDE Applied to IoT

Consider an IoT smart camera.

### Spoofing

An attacker pretends to be the legitimate camera or user.

### Tampering

An attacker modifies camera data or configuration.

### Repudiation

A user denies having performed a particular action.

### Information Disclosure

Private camera footage is exposed.

### Denial of Service

The camera is made unavailable.

### Elevation of Privilege

A normal user gains administrator privileges.

---

# 13. Threat Modeling Example — Smart Home

Consider a smart home containing:

* Smart camera
* Smart lock
* Smart thermostat
* Gateway
* Cloud server
* Mobile application

### Architecture

```text
              ┌───────────────┐
              │ Cloud Server  │
              └───────┬───────┘
                      │
                      │
              ┌───────▼───────┐
              │    Gateway    │
              └───────┬───────┘
                      │
       ┌──────────────┼──────────────┐
       ▼              ▼              ▼
   Smart Camera   Smart Lock    Thermostat
       │              │              │
       └──────────────┼──────────────┘
                      │
                Mobile App
```

---

# 14. Threat Identification for Smart Home

| Component    | Possible Threat      |
| ------------ | -------------------- |
| Smart Camera | Unauthorized access  |
| Smart Lock   | Replay / spoofing    |
| Thermostat   | Data manipulation    |
| Gateway      | DoS attack           |
| Network      | Eavesdropping / MITM |
| Cloud        | Data theft           |
| Mobile App   | Credential attack    |

---

# 15. Example Threat Modeling Chain

For the smart lock:

```text
Asset
  ↓
Smart Lock
  ↓
Threat
  ↓
Unauthorized Access
  ↓
Vulnerability
  ↓
Weak Authentication
  ↓
Attack
  ↓
Password / Credential Attack
  ↓
Impact
  ↓
Unauthorized Door Access
  ↓
Countermeasure
  ↓
Strong Authentication + MFA
```

This demonstrates how threat modeling connects the **asset, threat, vulnerability, attack, impact, and countermeasure**.

---

# 16. Benefits of Threat Modeling

## 1. Early Identification of Threats

Security problems can be discovered before deployment.

## 2. Better Security Design

Security requirements can be incorporated into the architecture from the beginning.

## 3. Risk Prioritization

Critical vulnerabilities can be addressed before less important issues.

## 4. Improved Protection

Appropriate security controls can be selected based on identified threats.

## 5. Reduced Security Costs

Fixing security issues during the design stage is generally easier than fixing them after deployment.

## 6. Better Understanding of Attack Paths

Security teams can understand how attackers might move through an IoT environment.

## 7. Continuous Security Improvement

Threat models can be updated as the IoT environment and threat landscape change.

---

# 17. Theoretical Exam Answer

## Q. Explain Threat Modeling for an IoT System.

**Threat modeling** is a systematic process of identifying, analyzing, evaluating, and mitigating potential security threats to a system. In an IoT environment, threat modeling is used to identify threats and vulnerabilities affecting devices, sensors, actuators, gateways, communication networks, applications, cloud services, and data.

The primary objective of IoT threat modeling is to identify potential attack paths and determine appropriate security controls before attackers can exploit the system.

The major steps involved in threat modeling an IoT system are:

### 1. Identify Assets

The first step is to identify valuable IoT assets such as devices, sensors, actuators, gateways, networks, applications, cloud services, credentials, and sensitive data.

### 2. Understand the Architecture

The architecture and communication relationships between devices, gateways, networks, cloud services, and users are analyzed. This helps identify possible attack surfaces.

### 3. Identify Threats

Potential threats such as unauthorized access, malware, eavesdropping, MITM, DoS/DDoS, spoofing, replay attacks, data manipulation, physical attacks, and privacy attacks are identified.

### 4. Identify Vulnerabilities

Security weaknesses that can be exploited by the identified threats are determined. Examples include weak passwords, insecure APIs, outdated firmware, unencrypted communication, poor access control, and insecure network services.

### 5. Analyze and Prioritize Risks

Each identified threat is evaluated based on its likelihood and potential impact. High-risk threats are given higher priority for mitigation.

### 6. Select Countermeasures

Appropriate security mechanisms are selected to reduce the identified risks. These may include authentication, authorization, encryption, secure firmware, network segmentation, firewalls, intrusion detection, and physical security.

### 7. Monitor and Review

Threat modeling must be continuously reviewed because IoT environments change over time and new vulnerabilities and attack techniques may appear.

The overall process can be represented as:

```text
Identify Assets
      ↓
Understand Architecture
      ↓
Identify Threats
      ↓
Identify Vulnerabilities
      ↓
Analyze & Prioritize Risks
      ↓
Select Countermeasures
      ↓
Monitor & Review
      ↺
```

A commonly used threat-modeling methodology is **STRIDE**, which classifies threats into **Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, and Elevation of Privilege**.

### Conclusion

Threat modeling provides a systematic approach to securing IoT systems by identifying **assets, threats, vulnerabilities, attack paths, and risks** before they can be exploited. It helps organizations select appropriate security controls and build security into the IoT system from the design stage.

---

# ⭐ Quick Revision

### Threat Modeling =

> **Identify → Analyze → Prioritize → Protect → Monitor**

### Remember the 7 steps:

```text
1. Assets
2. Architecture
3. Threats
4. Vulnerabilities
5. Risks
6. Countermeasures
7. Monitoring
```

### STRIDE:

```text
S → Spoofing
T → Tampering
R → Repudiation
I → Information Disclosure
D → Denial of Service
E → Elevation of Privilege
```

**Exam Priority: 🔥🔥🔥 EXTREMELY HIGH — Asked in 2022, 2023, 2024, and 2025.**

```
```
