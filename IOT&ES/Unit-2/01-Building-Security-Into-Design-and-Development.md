# 1. Building Security into Design and Development

## PYQs

### 2022
> Discuss security challenges in IoT Development.

### 2024
> What are security issues in IoT?

### 2025
> Discuss security challenges in IoT Development.

---

# Explanation

Building security into design and development means **considering security from the beginning of an IoT system's development**, rather than adding security after the system has already been developed.

An IoT system contains many components such as:

- Sensors and actuators
- IoT devices
- Microcontrollers
- Communication networks
- Gateways
- Cloud platforms
- Mobile/web applications
- Databases

A weakness in any one of these components can compromise the entire IoT system.

Therefore, security should be included throughout the **design, development, testing, deployment, and maintenance** stages.

---

# Security Challenges in IoT Development

## 1. Resource Constraints

Many IoT devices have limited:

- Processing power
- Memory
- Battery capacity
- Storage

Therefore, implementing complex security algorithms can be difficult.

**Example:** A small battery-powered sensor may not have enough processing capability to perform heavy encryption continuously.

---

## 2. Large Number of Devices

IoT networks can contain thousands or millions of connected devices.

Managing security for such a large number of devices is difficult.

Security mechanisms must ensure:

- Secure device registration
- Authentication
- Secure configuration
- Software updates
- Device monitoring

---

## 3. Device Authentication

Every IoT device should be able to prove its identity before communicating with another device or server.

Weak authentication can allow an attacker to:

- Impersonate a device
- Access sensitive information
- Send malicious commands

Therefore, strong authentication mechanisms are required.

---

## 4. Data Security and Privacy

IoT devices continuously collect and transmit data.

This data may contain sensitive information.

Security must protect data:

- At rest
- During transmission
- During processing

Encryption should be used to prevent unauthorized access.

---

## 5. Insecure Communication

IoT devices communicate using networks such as:

- Wi-Fi
- Bluetooth
- Zigbee
- Cellular networks
- Ethernet

If communication is not properly secured, attackers may intercept or modify data.

Therefore, secure communication protocols and encryption should be used.

---

## 6. Vulnerable Firmware and Software

IoT devices run firmware and software that may contain security vulnerabilities.

Attackers can exploit these vulnerabilities to gain control of devices.

Therefore, developers should:

- Perform security testing
- Remove unnecessary services
- Fix vulnerabilities
- Provide regular security updates

---

## 7. Lack of Secure Updates

IoT devices need security patches when vulnerabilities are discovered.

However, some IoT devices do not have a proper mechanism for secure remote updates.

A secure update mechanism should provide:

- Authentication of updates
- Integrity verification
- Protection against malicious firmware
- Safe rollback when an update fails

---

## 8. Physical Security

IoT devices are often installed in public or remote locations.

Attackers may physically access a device and attempt to:

- Extract stored information
- Modify hardware
- Replace firmware
- Steal cryptographic keys

Therefore, physical security must also be considered during design.

---

## 9. Insecure Default Configuration

Some IoT devices are deployed with:

- Default usernames
- Default passwords
- Unnecessary services
- Open network ports

If users do not change these settings, attackers can easily compromise the device.

Therefore, devices should use secure-by-default configurations.

---

## 10. Third-Party Components

IoT applications often depend on:

- Third-party libraries
- Operating systems
- APIs
- Cloud services
- Hardware components

A vulnerability in a third-party component can introduce security problems into the complete IoT system.

Therefore, third-party components must be evaluated and regularly updated.

---

## 11. Scalability of Security

Security mechanisms should continue to work when the IoT system grows.

For example, security management for 10 devices should also be scalable to thousands of devices.

This requires centralized mechanisms for:

- Authentication
- Monitoring
- Key management
- Updates
- Access control

---

## 12. Lack of Security Awareness

IoT developers may focus mainly on:

- Functionality
- Performance
- Cost
- Time-to-market

Security may be treated as a secondary requirement.

Security should instead be considered a **core requirement from the beginning of development**.

---

# Security-by-Design Approach

Security-by-design means integrating security into every stage of IoT development.

### Main stages

```text
Requirements
     ↓
Threat Modeling
     ↓
Secure Architecture
     ↓
Secure Development
     ↓
Security Testing
     ↓
Secure Deployment
     ↓
Monitoring & Updates