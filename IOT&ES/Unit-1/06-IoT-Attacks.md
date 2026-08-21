````md id="m8x2qa"
# 9. Primer on Attacks and Countermeasures

## Part A — Attacks

### PYQs

### 2022
> **“Explain different attack types in IoT.”**

> **“Explain Common IoT attack types.”**

### 2023
> **“Explain common IoT attacks.”**

> **“Explain the main threats and attacks in IoT Environment.”**

### 2025
> **“Explain different attack types in IoT.”**

> **“Explain Common IoT attack types.”**

**Status: 🔥🔥🔥 EXTREMELY IMPORTANT — Repeated PYQ**

---

# 1. What is an IoT Attack?

An **IoT attack** is a deliberate attempt by an attacker to exploit a vulnerability in an IoT device, network, application, communication protocol, or cloud service in order to gain unauthorized access, steal or modify information, disrupt services, or manipulate the physical environment.

IoT attacks can target different layers of the IoT architecture, including:

- Devices and sensors
- Communication networks
- Gateways
- Applications
- Cloud platforms
- Data and APIs

---

# 2. General IoT Attack Process

An attacker generally follows a sequence in which a vulnerability is identified and exploited.

```text
┌─────────────────────┐
│ Identify Target     │
└──────────┬──────────┘
           ↓
┌─────────────────────┐
│ Find Vulnerability  │
└──────────┬──────────┘
           ↓
┌─────────────────────┐
│ Exploit Vulnerability│
└──────────┬──────────┘
           ↓
┌─────────────────────┐
│ Gain Unauthorized   │
│ Access / Control    │
└──────────┬──────────┘
           ↓
┌─────────────────────┐
│ Steal / Modify /    │
│ Destroy / Disrupt   │
│ Information         │
└─────────────────────┘
````

---

# 3. Common IoT Attack Types

## 3.1 Eavesdropping Attack

An **eavesdropping attack** occurs when an attacker secretly monitors communication between IoT devices to obtain information without the knowledge of the communicating parties.

If IoT communication is transmitted without adequate encryption, an attacker may capture sensitive information.

### Example

A sensor sends information to a gateway over an insecure wireless connection.

```text
IoT Sensor ─────────────► Gateway
       │
       │
       └──────► Attacker
                │
             Captures
               Data
```

### Impact

* Information disclosure
* Privacy violation
* Credential theft

### Prevention

* Encryption
* Secure communication protocols
* Strong authentication

---

# 3.2 Man-in-the-Middle Attack

A **Man-in-the-Middle (MITM) attack** occurs when an attacker positions themselves between two communicating IoT entities and intercepts their communication.

The attacker may not only read the information but may also modify it before forwarding it.

```text
Normal:

IoT Device ─────────────► Server


MITM:

IoT Device ───► Attacker ───► Server
                   │
              Read / Modify
                Messages
```

### Example

An attacker intercepts communication between an IoT sensor and its cloud server and modifies the sensor readings.

### Impact

* Data manipulation
* Information theft
* Unauthorized commands
* Loss of data integrity

### Prevention

* End-to-end encryption
* Digital certificates
* Mutual authentication
* Secure communication protocols

---

# 3.3 Denial-of-Service Attack

A **Denial-of-Service (DoS) attack** attempts to make an IoT device or service unavailable to legitimate users.

The attacker may overload the device with requests or exploit its limited resources.

```text
Attacker
   │
   │ Large number of requests
   ↓
┌───────────────┐
│  IoT Device   │
└───────┬───────┘
        ↓
   Resources
   Exhausted
        ↓
     Service
   Unavailable
```

### Impact

* Service interruption
* Resource exhaustion
* Reduced availability
* Operational failure

### Prevention

* Rate limiting
* Traffic filtering
* Firewalls
* Intrusion detection systems
* Network monitoring

---

# 3.4 Distributed Denial-of-Service Attack

A **Distributed Denial-of-Service (DDoS) attack** is a DoS attack launched from multiple compromised devices simultaneously.

IoT devices themselves can be infected and converted into a botnet.

```text
IoT Device ──┐
IoT Device ──┤
IoT Device ──┤
IoT Device ──┼────► Target Server
IoT Device ──┤
IoT Device ──┘
```

### Example

Thousands of compromised IoT cameras simultaneously send requests to a target server.

### Impact

* Network congestion
* Service unavailability
* Resource exhaustion
* Business disruption

### Prevention

* DDoS protection
* Traffic filtering
* Rate limiting
* Network monitoring
* Device security

---

# 3.5 Spoofing Attack

A **spoofing attack** occurs when an attacker impersonates a legitimate IoT device, user, or network entity.

The attacker creates a false identity to deceive the system.

### Example

An attacker creates a device that pretends to be a legitimate IoT sensor and sends false data to the IoT network.

```text
Legitimate Sensor
       │
       ▼
    IoT System
       ▲
       │
 Fake Sensor
  (Attacker)
```

### Impact

* False data
* Unauthorized access
* Device impersonation
* Incorrect decisions

### Prevention

* Strong authentication
* Digital certificates
* Device identity management
* Cryptographic verification

---

# 3.6 Replay Attack

A **replay attack** occurs when an attacker captures a valid message transmitted between IoT devices and later retransmits the same message to deceive the receiving system.

### Example

Suppose a legitimate command is:

```text
Unlock Door
```

An attacker captures the command and sends it again later.

```text
Legitimate Device ──► "Unlock"
                         │
                      Attacker
                      Captures
                         │
                         ▼
                 Replays Message
                         │
                         ▼
                    Smart Lock
```

### Impact

* Unauthorized actions
* Repeated commands
* Device manipulation

### Prevention

* Nonces
* Timestamps
* Sequence numbers
* Session tokens

---

# 3.7 Malware Attack

**Malware** is malicious software designed to compromise or control an IoT device.

IoT devices can be infected with:

* Worms
* Trojans
* Ransomware
* Botnet malware

### Example

An attacker exploits a vulnerable IoT camera and installs malware on it.

The compromised camera can then be remotely controlled by the attacker.

### Impact

* Unauthorized control
* Data theft
* Device malfunction
* Botnet formation

### Prevention

* Secure firmware
* Regular security updates
* Malware detection
* Application control
* Network monitoring

---

# 3.8 Password Attack

A **password attack** attempts to obtain or guess credentials used to access an IoT device.

Common methods include:

* Brute-force attacks
* Dictionary attacks
* Credential stuffing
* Default-password exploitation

### Example

An attacker tries common default passwords on an IoT camera.

### Impact

* Unauthorized access
* Device takeover
* Data theft

### Prevention

* Strong passwords
* Password changes from default credentials
* Account lockout
* Multi-factor authentication
* Rate limiting

---

# 3.9 Physical Attack

A **physical attack** occurs when an attacker gains direct physical access to an IoT device and attempts to compromise its hardware, firmware, memory, or stored information.

### Example

An attacker physically opens an IoT sensor and extracts stored credentials from its memory.

### Impact

* Credential theft
* Hardware manipulation
* Firmware modification
* Device compromise

### Prevention

* Tamper-resistant hardware
* Secure boot
* Hardware encryption
* Physical access control

---

# 3.10 Firmware Attack

IoT devices depend heavily on firmware to control their operation.

An attacker may exploit vulnerable firmware or attempt to replace legitimate firmware with malicious firmware.

### Example

```text
Legitimate Firmware
        ↓
   Vulnerability
        ↓
Attacker Exploitation
        ↓
Malicious Firmware
        ↓
Compromised Device
```

### Impact

* Persistent device compromise
* Unauthorized control
* Data theft
* Device malfunction

### Prevention

* Secure boot
* Signed firmware
* Secure firmware updates
* Firmware integrity verification

---

# 3.11 Data Injection Attack

In a **data injection attack**, an attacker introduces false or malicious data into an IoT system.

### Example

A smart agriculture sensor normally reports:

```text
Soil Moisture = 60%
```

An attacker injects:

```text
Soil Moisture = 10%
```

The system may incorrectly activate irrigation.

### Impact

* Incorrect decisions
* Incorrect automation
* Data integrity loss

### Prevention

* Data validation
* Authentication
* Digital signatures
* Integrity checks
* Anomaly detection

---

# 3.12 Botnet Attack

A **botnet** is a group of compromised devices controlled by an attacker.

IoT devices are attractive targets for botnets because many devices are poorly secured and remain connected to the Internet.

```text
                 Attacker
                    │
                    ▼
              ┌───────────┐
              │ Command &  │
              │ Control    │
              └─────┬─────┘
                    │
          ┌─────────┼─────────┐
          ▼         ▼         ▼
       Camera    Router     Sensor
          │         │         │
          └─────────┼─────────┘
                    ▼
                 Target
```

### Impact

* DDoS attacks
* Spam distribution
* Malware spreading
* Unauthorized activities

### Prevention

* Strong device authentication
* Firmware updates
* Network monitoring
* Malware detection
* Removal of default credentials

---

# 4. Summary of Common IoT Attacks

| Attack              | Main Objective                           |
| ------------------- | ---------------------------------------- |
| **Eavesdropping**   | Capture confidential information         |
| **MITM**            | Intercept and modify communication       |
| **DoS**             | Make a service unavailable               |
| **DDoS**            | Overwhelm a target using many devices    |
| **Spoofing**        | Impersonate a legitimate entity          |
| **Replay**          | Reuse previously captured messages       |
| **Malware**         | Compromise and control devices           |
| **Password Attack** | Obtain unauthorized access               |
| **Physical Attack** | Compromise device physically             |
| **Firmware Attack** | Exploit or replace firmware              |
| **Data Injection**  | Insert false information                 |
| **Botnet Attack**   | Control compromised devices collectively |

---

# 5. Theoretical Exam Answer

## Q. Explain different attack types in IoT.

An **IoT attack** is a deliberate attempt to exploit a vulnerability in an IoT device, communication network, application, or cloud infrastructure in order to obtain unauthorized access, steal or modify information, disrupt services, or gain control over connected devices.

IoT environments are particularly susceptible to attacks because they consist of a large number of heterogeneous devices that communicate continuously over networks. Many devices also have limited computational resources, weak default security configurations, and long operational lifetimes.

The major types of IoT attacks are as follows:

### 1. Eavesdropping Attack

In an eavesdropping attack, an attacker secretly monitors communication between IoT devices to obtain sensitive information. Unencrypted communication makes IoT systems particularly vulnerable to this attack.

### 2. Man-in-the-Middle Attack

In a MITM attack, an attacker intercepts communication between two legitimate entities and may read, modify, or inject messages. This attack can compromise the confidentiality and integrity of IoT communication.

### 3. Denial-of-Service Attack

A DoS attack attempts to make an IoT device or service unavailable by exhausting its computational, memory, network, or other resources.

### 4. Distributed Denial-of-Service Attack

A DDoS attack uses multiple compromised devices to simultaneously send malicious traffic toward a target. IoT devices can themselves be compromised and used as part of a botnet.

### 5. Spoofing Attack

In spoofing, an attacker impersonates a legitimate user or IoT device in order to deceive the system and gain unauthorized access or inject false information.

### 6. Replay Attack

In a replay attack, an attacker captures a valid message and retransmits it later to cause an unauthorized action. Timestamps, nonces, and sequence numbers can be used to prevent replay attacks.

### 7. Malware Attack

Malicious software can infect IoT devices and provide attackers with unauthorized control. Compromised devices may also be used to form botnets.

### 8. Password Attack

Attackers may exploit weak, default, or stolen credentials using brute-force, dictionary, or credential-based attacks.

### 9. Physical Attack

An attacker with physical access to an IoT device may tamper with its hardware, memory, storage, or firmware to extract information or compromise the device.

### 10. Firmware Attack

Vulnerable or malicious firmware can allow attackers to gain persistent control over an IoT device. Secure boot and signed firmware updates can reduce this risk.

### 11. Data Injection Attack

An attacker may introduce false or manipulated sensor data into the IoT system. This can cause incorrect decisions and potentially dangerous automated actions.

### 12. Botnet Attack

Compromised IoT devices can be grouped into a botnet and remotely controlled by an attacker. Botnets are commonly used to perform DDoS attacks and other malicious activities.

### Conclusion

IoT attacks can affect the **confidentiality, integrity, availability, authenticity, and privacy** of IoT systems. Therefore, IoT devices must be protected using strong authentication, encryption, secure communication protocols, access control, secure firmware, regular updates, intrusion detection, and continuous monitoring.

---

# ⭐ Quick Revision

```text
Eavesdropping → Steal information
MITM          → Intercept communication
DoS           → Make service unavailable
DDoS          → Overload using many devices
Spoofing      → Impersonate device/user
Replay        → Reuse captured message
Malware       → Infect device
Password      → Steal/guess credentials
Physical      → Tamper with device
Firmware      → Compromise device software
Data Injection→ Insert false data
Botnet        → Control many compromised devices
```

**Exam Priority: 🔥🔥🔥 EXTREMELY HIGH**

These attack types cover the repeated 2022, 2023, and 2025 PYQs. For the exam, focus especially on **MITM, DoS/DDoS, eavesdropping, spoofing, replay, malware, and botnet attacks**.

```
```
