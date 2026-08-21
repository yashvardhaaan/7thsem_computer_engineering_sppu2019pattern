````md id="4rj7kp"
# 7. Threats

## PYQs

### 2022
> **“Explain the different threats in IoT.”**

### 2023
> **“Explain the main threats and attacks in IoT Environment.”**

### 2024
> **“What are the risks associated with IoT?”**

### 2024
> **“What are the vulnerability, and risks to IoT?”**

### 2025
> **“Explain the different threats in IoT.”**

**Status: 🔥🔥 VERY IMPORTANT — Repeated PYQ**

---

# 1. What is a Threat?

A **threat** is a potential event, action, or situation that can exploit a vulnerability and cause harm to an IoT system.

In simple words:

> **Threat = Something that can potentially cause damage to an IoT system.**

For example, an attacker may try to access an IoT camera using stolen credentials.

---

# 2. IoT Threat Environment

IoT systems contain many components such as:

- Sensors
- Devices
- Gateways
- Networks
- Cloud servers
- Mobile applications
- APIs
- Users

Each component can become a target for attackers.

### Simple IoT Threat Diagram

```text
                 ┌─────────────────┐
                 │   Cloud / Server│
                 └────────┬────────┘
                          │
                    Network Threats
                          │
                 ┌────────▼────────┐
                 │     Gateway     │
                 └────────┬────────┘
                          │
             ┌────────────┼────────────┐
             │            │            │
        ┌────▼────┐  ┌────▼────┐  ┌────▼────┐
        │ Sensor  │  │ Camera  │  │ Actuator│
        └─────────┘  └─────────┘  └─────────┘
             │            │            │
             └────── Device Threats ───┘
````

---

# 3. Major Threats in IoT

## 3.1 Unauthorized Access

Attackers may gain access to IoT devices without permission.

This can happen because of:

* Weak passwords
* Default passwords
* Poor authentication
* Stolen credentials
* Improper access control

### Example

An attacker discovers that an IoT camera still uses its default username and password.

The attacker logs into the camera and views its live feed.

---

## 3.2 Malware

**Malware** is malicious software designed to damage, control, or exploit a device.

IoT devices can be infected with:

* Viruses
* Worms
* Trojans
* Ransomware
* Botnet malware

### Example

An attacker infects thousands of vulnerable IoT cameras with malware and remotely controls them as a botnet.

---

## 3.3 Denial-of-Service (DoS)

A **DoS attack** attempts to make an IoT device or service unavailable by overwhelming it with requests or other malicious activity.

### Example

An attacker sends a large number of requests to an IoT gateway until it becomes unable to serve legitimate users.

```text
Attacker
   │
   │  Massive Requests
   ▼
┌──────────────┐
│ IoT Gateway  │
└──────┬───────┘
       │
       X
  Service Down
```

---

## 3.4 Distributed Denial-of-Service (DDoS)

A **DDoS attack** is similar to DoS, but the attack comes from **many compromised devices simultaneously**.

```text
 IoT Device ───┐
 IoT Device ───┤
 IoT Device ───┼──────► Target Server
 IoT Device ───┤
 IoT Device ───┘
       │
    Botnet
```

IoT devices themselves can also be compromised and used to launch DDoS attacks.

---

## 3.5 Man-in-the-Middle (MITM)

In a **Man-in-the-Middle attack**, an attacker secretly intercepts communication between two parties.

```text
IoT Device ─────► Attacker ─────► Server
                 ▲
                 │
          Intercepts Data
```

The attacker may:

* Read information
* Modify information
* Inject malicious messages

### Example

An attacker intercepts communication between a smart sensor and its cloud server and changes the transmitted sensor data.

---

## 3.6 Eavesdropping

**Eavesdropping** occurs when an attacker secretly listens to or captures communication between IoT devices.

If communication is not properly encrypted, sensitive information can be exposed.

### Example

An attacker captures unencrypted communication from a smart home device and obtains sensitive information.

---

## 3.7 Spoofing

**Spoofing** occurs when an attacker pretends to be a legitimate device, user, or system.

### Example

An attacker creates a fake IoT device that appears to be a legitimate device on the network.

The system may mistakenly trust the fake device.

---

## 3.8 Data Manipulation

An attacker may modify data generated or transmitted by an IoT device.

### Example

A temperature sensor sends:

> **30°C**

An attacker modifies it to:

> **70°C**

This can cause incorrect decisions or automated actions.

---

## 3.9 Physical Tampering

IoT devices are often deployed in physical environments where attackers may directly access them.

An attacker may:

* Open the device
* Remove storage
* Modify hardware
* Extract credentials
* Replace firmware
* Damage sensors

### Example

An attacker physically accesses a smart meter and modifies its hardware to manipulate the recorded readings.

---

## 3.10 Firmware Attacks

IoT devices run firmware that controls their operation.

If firmware contains vulnerabilities, attackers may exploit them.

Attackers may also attempt to install **malicious firmware**.

### Example

An attacker replaces the legitimate firmware of an IoT device with malicious firmware that provides unauthorized access.

---

## 3.11 Privacy Threats

IoT devices continuously collect information about users and their environments.

Examples include:

* Location
* Health information
* Voice recordings
* Video
* Daily activities
* Usage patterns

If improperly protected, this information can be exposed.

### Example

A compromised smart speaker may expose information about the user's activities.

---

## 3.12 Botnet Threats

A **botnet** is a collection of compromised devices controlled by an attacker.

IoT devices with weak security can become part of botnets.

```text
             Attacker
                 │
          ┌──────▼──────┐
          │ Botnet C&C  │
          └──────┬──────┘
                 │
       ┌─────────┼─────────┐
       ▼         ▼         ▼
    Camera    Router     Sensor
       │         │         │
       └─────────┼─────────┘
                 │
            Attack Target
```

---

# 4. Major IoT Threat Categories

For exam preparation, IoT threats can be grouped into the following categories:

| Category                 | Examples                              |
| ------------------------ | ------------------------------------- |
| **Device Threats**       | Firmware attacks, physical tampering  |
| **Network Threats**      | MITM, eavesdropping, DoS/DDoS         |
| **Data Threats**         | Data theft, data manipulation         |
| **Access Threats**       | Password attacks, unauthorized access |
| **Software Threats**     | Malware, ransomware                   |
| **Privacy Threats**      | Leakage of personal information       |
| **Physical Threats**     | Device theft, hardware manipulation   |
| **Availability Threats** | DoS, DDoS                             |

---

# 5. Threat vs Attack

These two terms are often confused.

### Threat

A **potential possibility of harm**.

### Attack

An **actual attempt to exploit a vulnerability**.

### Example

A vulnerable IoT camera has a weak password.

* **Threat:** An attacker could gain unauthorized access.
* **Attack:** The attacker actually uses the weak password to log into the camera.

---

# 6. Exam Answer

## Explain the Different Threats in IoT

IoT systems consist of many interconnected devices, networks, applications, and cloud services. Because of this large and distributed environment, IoT systems are exposed to several security threats.

The major IoT threats are:

1. **Unauthorized Access** – Attackers gain access using weak passwords or stolen credentials.
2. **Malware** – Malicious software infects IoT devices and allows attackers to control them.
3. **DoS/DDoS Attacks** – Attackers make IoT services unavailable.
4. **Man-in-the-Middle Attack** – Attackers intercept and potentially modify communication.
5. **Eavesdropping** – Attackers secretly capture transmitted information.
6. **Spoofing** – Attackers pretend to be legitimate users or devices.
7. **Data Manipulation** – Attackers modify sensor data or commands.
8. **Physical Tampering** – Attackers physically manipulate IoT devices.
9. **Firmware Attacks** – Vulnerable or malicious firmware is used to compromise devices.
10. **Privacy Threats** – Personal and sensitive information collected by IoT devices may be exposed.
11. **Botnet Threats** – Compromised IoT devices can be controlled together and used to attack other systems.

### Conclusion

IoT threats can affect the **confidentiality, integrity, and availability** of IoT systems. Therefore, strong authentication, encryption, secure firmware, access control, regular updates, network security, and continuous monitoring are required to protect IoT environments.

---

## ⭐ Exam Memory Trick

Remember:

> **A M D M E S D P F P B**

**A** — Unauthorized Access
**M** — Malware
**D** — DoS/DDoS
**M** — Man-in-the-Middle
**E** — Eavesdropping
**S** — Spoofing
**D** — Data Manipulation
**P** — Physical Tampering
**F** — Firmware Attacks
**P** — Privacy Threats
**B** — Botnets

**Priority: 🔥🔥🔥 Learn this topic thoroughly because it appears repeatedly across 2022–2025.**

```
```
