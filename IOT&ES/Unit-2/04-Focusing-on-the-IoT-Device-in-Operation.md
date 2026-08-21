# 5. Safety and Security Design

## PYQ

**No direct PYQ**

---

# 1. Introduction

**Safety and security design** means designing an IoT system so that it remains safe and secure even when failures, attacks, or unexpected events occur.

In IoT systems, **safety** and **security** are closely related.

- **Safety** focuses on preventing harm to people, equipment, and the environment.
- **Security** focuses on protecting the system from unauthorized access, attacks, modification, and data theft.

A security attack can sometimes cause a safety problem.

### Example

Consider an IoT-connected industrial machine.

If an attacker gains control of the machine and changes its operating parameters, the attack may cause:

- Equipment damage
- Production failure
- Fire
- Injury to workers

Therefore, IoT systems must consider both safety and security during the design stage.

---

# 2. Safety vs Security

| Safety | Security |
|---|---|
| Protects people and environment from accidents | Protects systems from attacks |
| Deals mainly with accidental failures | Deals mainly with intentional attacks |
| Prevents unsafe operation | Prevents unauthorized operation |
| Focuses on reliability and safe behavior | Focuses on confidentiality, integrity, and availability |
| Example: Prevent machine overheating | Example: Prevent attacker from changing temperature |

### Important

Although safety and security are different, they can affect each other.

**Security failure → Unsafe condition**

Therefore:

> **Security must be considered as part of the overall safety design of an IoT system.**

---

# 3. Objectives of Safety and Security Design

The major objectives are:

1. Protect human life.
2. Protect physical equipment.
3. Protect the environment.
4. Prevent unauthorized access.
5. Prevent unauthorized modification.
6. Protect sensitive data.
7. Maintain system availability.
8. Detect failures and attacks.
9. Recover safely from failures.
10. Minimize the impact of security incidents.

---

# 4. Safety Design

Safety design ensures that an IoT system behaves safely even when something goes wrong.

Possible failures include:

- Hardware failure
- Sensor failure
- Network failure
- Power failure
- Software failure
- Communication failure
- Incorrect sensor readings

The system should be designed to enter a **safe state** when a dangerous condition is detected.

---

# 5. Fail-Safe Design

A **fail-safe system** moves to a safe condition when a failure occurs.

### Example

An IoT-controlled industrial machine detects that a critical sensor has stopped working.

Instead of continuing normal operation, the system may:

**Detect failure → Stop machine → Enter safe state → Generate alert**

This prevents the failure from causing physical harm.

---

# 6. Security Design

Security design protects the IoT system against intentional attacks.

Important security mechanisms include:

- Authentication
- Authorization
- Encryption
- Secure communication
- Secure Boot
- Access control
- Intrusion detection
- Secure firmware updates
- Logging
- Monitoring

---

# 7. Secure-by-Design Principle

Security should be considered **from the beginning of system design**.

It should not be added only after the IoT system has been completed.

The development process should consider:

**Requirements**

↓

**Threat Analysis**

↓

**Security Architecture**

↓

**Secure Implementation**

↓

**Security Testing**

↓

**Deployment**

↓

**Monitoring**

---

# 8. Defense in Depth

**Defense in depth** means using multiple layers of security rather than depending on a single security mechanism.

### Example

An IoT device may use:

1. Device authentication
2. Network firewall
3. Encryption
4. Authorization
5. Secure Boot
6. Intrusion detection
7. Monitoring

If one security layer fails, other layers can still protect the system.

---

# 9. Least Privilege

The **principle of least privilege** means that a user, device, or application should receive only the permissions necessary to perform its task.

### Example

A temperature sensor only needs permission to:

- Read temperature
- Send temperature data

It should not have permission to:

- Change firmware
- Modify system configuration
- Access unrelated devices

This reduces the potential damage caused by a compromised device.

---

# 10. Secure Authentication

Authentication ensures that only legitimate users and devices can access the IoT system.

Possible mechanisms include:

- Passwords
- Multi-factor authentication
- Digital certificates
- Cryptographic keys
- Device identities

For IoT systems, device-to-device authentication is also important.

---

# 11. Authorization

Authentication answers:

> **Who are you?**

Authorization answers:

> **What are you allowed to do?**

After authentication, the system should determine the permissions available to the user or device.

### Example

A technician may be allowed to change machine settings, while a normal user may only view machine status.

---

# 12. Secure Communication

IoT devices communicate over wired or wireless networks.

Communication should be protected against:

- Eavesdropping
- Data modification
- Man-in-the-middle attacks
- Replay attacks

Security mechanisms include:

- TLS
- Encryption
- Digital certificates
- Message authentication codes

---

# 13. Data Integrity

Data integrity ensures that information has not been changed without authorization.

### Example

A temperature sensor sends:

**Temperature = 25°C**

If an attacker changes the message to:

**Temperature = 100°C**

the receiving system may take an incorrect action.

Integrity mechanisms can detect such modifications.

---

# 14. Data Confidentiality

Confidentiality prevents unauthorized people from accessing sensitive information.

Examples of sensitive IoT data include:

- Medical information
- Location
- Video
- Audio
- Industrial information
- User activity

Encryption can be used to protect confidential data.

---

# 15. Availability

IoT systems must remain available when required.

Attackers may attempt to make devices unavailable using:

- Denial-of-Service attacks
- Network attacks
- Resource exhaustion
- Malware

Availability can be improved using:

- Redundancy
- Network protection
- Rate limiting
- Fault tolerance
- Monitoring
- Recovery mechanisms

---

# 16. Safety Monitoring

IoT systems should continuously monitor safety-related parameters.

Examples:

- Temperature
- Pressure
- Gas concentration
- Voltage
- Speed
- Motion
- Water level

If a dangerous value is detected, the system should automatically take appropriate action.

### Example

If an industrial temperature sensor detects excessive temperature:

**High temperature detected**

↓

**Trigger alarm**

↓

**Stop machine**

↓

**Notify operator**

This prevents a dangerous condition from becoming an accident.

---

# 17. Redundancy

Redundancy means using more than one component to perform a critical function.

### Example

An industrial system may use two or three temperature sensors.

If one sensor fails:

- Other sensors can continue monitoring.
- The system can detect inconsistent readings.
- The failed sensor can be isolated.

Redundancy improves safety and reliability.

---

# 18. Secure Failure Handling

When a security attack or hardware failure occurs, the system should fail in a controlled manner.

For example:

If communication with a critical cloud service is lost, an industrial IoT device should not blindly continue a dangerous operation.

Instead, it may:

- Enter local safe mode.
- Stop the machine.
- Use backup controls.
- Generate an alert.

---

# 19. Protection Against Physical Attacks

IoT devices may be physically accessible to attackers.

Protection mechanisms include:

- Tamper-resistant hardware
- Secure enclosures
- Protected debug interfaces
- Secure storage
- Hardware-based cryptography
- Tamper detection

Physical security is particularly important for:

- Smart meters
- Industrial sensors
- Medical devices
- Vehicle systems
- Outdoor IoT devices

---

# 20. Secure Firmware

Firmware is responsible for controlling many IoT devices.

If malicious firmware is installed, an attacker may gain complete control of the device.

Therefore:

- Firmware should be digitally signed.
- Firmware integrity should be verified.
- Secure Boot should be used.
- Unauthorized firmware should be rejected.
- Updates should come from trusted sources.

---

# 21. Threat Modeling in Safety and Security Design

Threat modeling helps identify possible security threats before implementation.

The design team should identify:

1. Assets
2. Threats
3. Attack surfaces
4. Vulnerabilities
5. Possible consequences
6. Security controls

### Example

For an IoT medical device:

**Asset:** Patient information and device operation

**Threat:** Unauthorized access

**Impact:** Data leakage or incorrect device operation

**Control:** Authentication + authorization + encryption + monitoring

---

# 22. Safety and Security Risk Assessment

Risk assessment helps determine which threats and failures require the most attention.

A simple risk concept is:

**Risk = Probability × Impact**

High-risk problems should receive higher priority.

### Example

A vulnerability that could allow an attacker to remotely shut down a critical industrial machine has:

- High impact
- Potentially high risk

Therefore, it should be addressed immediately.

---

# 23. Safety Impact of Security Attacks

Security attacks can directly affect physical safety.

### Example 1: Smart Vehicle

An attacker gains control of vehicle systems.

**Security attack → Incorrect control → Physical accident**

### Example 2: Industrial IoT

An attacker changes pressure settings.

**Security attack → Excessive pressure → Equipment failure**

### Example 3: Medical IoT

An attacker changes the configuration of a medical device.

**Security attack → Incorrect operation → Patient risk**

Therefore, safety requirements must be considered when analyzing security threats.

---

# 24. Safety and Security Design Process

The overall process can be represented as:

**Identify System Requirements**

↓

**Identify Safety Requirements**

↓

**Identify Security Requirements**

↓

**Threat and Risk Analysis**

↓

**Design Safety Controls**

↓

**Design Security Controls**

↓

**Implement the System**

↓

**Test Safety and Security**

↓

**Deploy**

↓

**Monitor**

↓

**Update and Improve**

---

# 25. Example: IoT Industrial Control System

Consider an IoT-based industrial machine.

### Safety requirements

- Detect excessive temperature.
- Detect excessive pressure.
- Stop the machine during dangerous conditions.
- Generate alarms.

### Security requirements

- Authenticate operators.
- Encrypt communication.
- Restrict access.
- Protect firmware.
- Monitor suspicious activity.

### Combined design

If an attacker attempts to increase the machine's pressure:

**Authentication**

↓

**Authorization**

↓

**Command validation**

↓

**Safety limit checking**

↓

**Reject unsafe command**

↓

**Generate security alert**

This demonstrates how security and safety can work together.

---

# 26. Benefits of Safety and Security Design

### 1. Reduced risk

Potential attacks and failures are identified early.

### 2. Protection of human life

Dangerous system behavior can be prevented.

### 3. Better reliability

Fault-tolerant and fail-safe mechanisms improve system reliability.

### 4. Protection against attacks

Authentication, encryption, and access control reduce security risks.

### 5. Reduced damage

If an attack occurs, multiple security layers can limit its impact.

### 6. Better system availability

Redundancy and recovery mechanisms help maintain operation.

### 7. Improved trust

Secure and safe IoT systems increase user confidence.

---

# 27. Important Principles

Remember these principles for the exam:

- **Secure by design**
- **Safety by design**
- **Defense in depth**
- **Least privilege**
- **Fail-safe**
- **Secure failure handling**
- **Authentication**
- **Authorization**
- **Encryption**
- **Integrity protection**
- **Secure Boot**
- **Secure firmware updates**
- **Monitoring**
- **Redundancy**
- **Risk assessment**
- **Threat modeling**

---

# 28. Exam Answer — 10/12 Marks

## Explain Safety and Security Design in IoT

Safety and security design means designing an IoT system so that it remains protected from intentional attacks and also operates safely when failures or unexpected conditions occur.

**Safety** protects people, equipment, and the environment from accidents and failures, whereas **security** protects the system from unauthorized access, modification, data theft, and malicious attacks.

The important principles of safety and security design are:

1. **Secure by design:** Security should be incorporated from the beginning of the IoT system design.

2. **Fail-safe design:** When a failure occurs, the system should move to a safe state instead of continuing dangerous operation.

3. **Authentication:** Users and IoT devices should be authenticated before accessing the system.

4. **Authorization:** Users and devices should receive only the permissions required for their functions.

5. **Secure communication:** Data transmitted between IoT devices, gateways, and cloud systems should be protected using encryption and secure protocols.

6. **Data integrity and confidentiality:** IoT data should be protected against unauthorized modification and disclosure.

7. **Defense in depth:** Multiple security mechanisms should be used so that failure of one mechanism does not compromise the entire system.

8. **Least privilege:** Devices and users should have only the minimum permissions required.

9. **Secure firmware:** Only trusted and authenticated firmware should be executed, using mechanisms such as Secure Boot and digital signatures.

10. **Safety monitoring:** Critical parameters such as temperature, pressure, voltage, and speed should be continuously monitored.

11. **Redundancy:** Critical functions can use multiple sensors or components to tolerate failures.

12. **Threat and risk analysis:** Possible threats, vulnerabilities, and safety consequences should be identified during the design stage.

13. **Incident response:** The system should detect attacks, isolate affected devices, recover safely, and continue monitoring.

### Conclusion

Safety and security design is essential in IoT because a security attack can sometimes create a physical safety hazard. Therefore, IoT systems should combine **secure design, safety mechanisms, threat modeling, authentication, authorization, encryption, fail-safe operation, monitoring, and recovery mechanisms** to provide safe and secure operation.

---

# 29. Quick Revision

**Safety + Security Design →**

`Safety Requirements`

+

`Security Requirements`

↓

`Threat & Risk Analysis`

↓

`Secure Architecture`

↓

`Authentication + Authorization`

↓

`Encryption + Integrity`

↓

`Fail-Safe Mechanisms`

↓

`Secure Firmware`

↓

`Monitoring`

↓

`Testing`

↓

`Safe & Secure IoT Operation`

---

## Exam Status

❌ **No direct PYQ**

### Priority

🟡 **Medium Priority**

Even though there is no direct PYQ, this topic is important because it connects **IoT safety, security, threat modeling, risk assessment, and secure design**.