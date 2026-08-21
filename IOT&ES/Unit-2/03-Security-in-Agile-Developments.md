# 3. Security in Agile Developments with Respect to IoT

## PYQs

- **2022:** Explain security in agile developments with respect to IoT.
- **2022:** Explain security in agile developments with respect to IoT.
- **2024:** Explain security in agile developments with respect to IoT.
- **2024:** Explain security in agile developments with respect to IoT.
- **2025:** Explain security in agile developments with respect to IoT.
- **2025:** Explain security in agile developments with respect to IoT.

---

## 1. Introduction

**Agile development** is a software development approach in which a system is developed incrementally through short development cycles called **iterations or sprints**.

In IoT, security must be considered throughout the Agile development process because IoT systems contain:

- Sensors and actuators
- Embedded devices
- Microcontrollers
- Communication networks
- Gateways
- Cloud services
- Mobile/web applications
- APIs
- Large amounts of sensitive data

Unlike traditional development, security in Agile IoT development is not performed only at the end. **Security activities are integrated into every stage of development.**

---

# 2. Need for Security in Agile IoT Development

IoT devices are exposed to several security threats because they are connected to networks and often operate continuously.

Important security concerns include:

1. **Unauthorized access**
   - Attackers may gain access to IoT devices.

2. **Data theft**
   - Sensitive information transmitted or stored by IoT systems may be stolen.

3. **Device tampering**
   - Attackers may physically or remotely modify IoT devices.

4. **Malware attacks**
   - Vulnerable IoT devices can be infected with malware.

5. **Denial-of-Service attacks**
   - Attackers may make devices or services unavailable.

6. **Privacy violations**
   - IoT devices can collect personal and sensitive information.

7. **Weak authentication**
   - Default passwords or weak authentication mechanisms can allow attackers to access devices.

Therefore, security must be incorporated into every Agile iteration.

---

# 3. Security in Agile Development

Security in Agile development means **continuously identifying, analyzing, implementing, testing, and improving security requirements during every development iteration.**

The main idea is:

> **Build security into the product from the beginning rather than adding security after development is completed.**

---

# 4. Security Activities in Agile IoT Development

## Step 1: Identify Security Requirements

Security requirements should be identified during the planning stage.

Examples:

- Authentication of users and devices
- Authorization
- Data encryption
- Secure communication
- Secure firmware updates
- Access control
- Privacy protection
- Device integrity
- Logging and monitoring

### Example

For a smart-home IoT system:

- Only authorized users should control devices.
- Communication between devices and the server should be encrypted.
- Firmware should be updated securely.

---

## Step 2: Threat Modeling

Threat modeling is performed to identify possible threats and vulnerabilities before implementation.

The development team identifies:

- Assets
- Attackers
- Entry points
- Vulnerabilities
- Possible attacks
- Security controls

### Example

For a smart camera:

**Asset:** Camera video

**Threat:** Unauthorized person accessing the camera

**Security control:** Authentication + authorization + encrypted communication

Threat modeling should be repeated whenever the IoT system changes significantly.

---

## Step 3: Secure Design

Security principles should be included while designing the IoT system.

Important principles include:

- Least privilege
- Defense in depth
- Secure defaults
- Fail securely
- Minimize attack surface
- Strong authentication
- Encryption
- Secure communication

The design should consider security for the complete IoT ecosystem rather than only the device.

---

## Step 4: Secure Coding

Developers should follow secure coding practices during implementation.

Examples:

- Validate input
- Avoid hard-coded passwords
- Avoid insecure APIs
- Properly handle errors
- Protect credentials
- Use secure cryptographic libraries
- Prevent buffer overflow
- Protect against injection attacks

For IoT devices, secure coding is particularly important because many embedded devices have limited resources and may remain deployed for many years.

---

## Step 5: Security Testing

Security testing should be performed during every Agile iteration.

Common security testing techniques include:

- Vulnerability scanning
- Static Application Security Testing (SAST)
- Dynamic Application Security Testing (DAST)
- Penetration testing
- Fuzz testing
- Authentication testing
- Authorization testing
- API security testing
- Communication security testing

Testing should not be postponed until the final release.

---

## Step 6: Continuous Integration and Security

Security checks can be incorporated into the **Continuous Integration (CI)** pipeline.

Whenever developers commit code:

1. Code is built.
2. Automated tests are executed.
3. Security scans are performed.
4. Vulnerabilities are reported.
5. Developers fix security issues.
6. The code is tested again.

This helps detect vulnerabilities early.

---

# 5. Security in Every Sprint

In Agile development, development is divided into short iterations called **sprints**.

Security should be included in every sprint.

### Example

Suppose an IoT smart-lock system is developed in four sprints.

### Sprint 1

Develop:

- Device registration
- Basic authentication

Security:

- Strong passwords
- Secure device identity

### Sprint 2

Develop:

- Mobile application
- Device control

Security:

- Authorization
- Access control

### Sprint 3

Develop:

- Cloud communication

Security:

- TLS encryption
- Certificate validation

### Sprint 4

Develop:

- Firmware update functionality

Security:

- Digitally signed firmware
- Secure update mechanism

Thus, security evolves along with the system.

---

# 6. Security User Stories

Security requirements can be represented as **security user stories**.

### Example

> As an IoT device owner, I want communication between my device and the cloud to be encrypted so that attackers cannot read the transmitted data.

Another example:

> As an administrator, I want only authorized users to access IoT devices so that unauthorized users cannot control them.

Security user stories make security requirements visible to the Agile team.

---

# 7. Security Backlog

Security tasks should be included in the Agile product backlog.

Example:

| Security Task | Priority |
|---|---|
| Implement device authentication | High |
| Enable encrypted communication | High |
| Implement authorization | High |
| Secure firmware update | High |
| Perform vulnerability scanning | Medium |
| Security logging | Medium |
| Penetration testing | Medium |

This ensures that security is treated as part of normal development work.

---

# 8. Definition of Done for Security

A security requirement should be considered complete only when it satisfies the security conditions defined by the team.

For example, a feature may be considered **Done** when:

- Authentication is implemented.
- Authorization is implemented.
- Security tests pass.
- No critical vulnerabilities are found.
- Sensitive data is encrypted.
- Code has been reviewed.
- Security documentation is completed.

This prevents incomplete security functionality from being released.

---

# 9. Continuous Security Monitoring

IoT security does not end after deployment.

After deployment, the system should continuously monitor:

- Device behavior
- Login attempts
- Network traffic
- Failed authentication attempts
- Security events
- Firmware integrity
- Vulnerabilities
- Suspicious activities

If a new vulnerability is discovered, the Agile team can create a new security task and address it in the next iteration.

---

# 10. Secure Firmware Updates

IoT devices may remain in operation for several years.

Therefore, Agile IoT development should provide a secure mechanism for updating firmware.

A secure update mechanism should provide:

- Authentication of the update source
- Digital signatures
- Integrity verification
- Encryption when necessary
- Protection against rollback attacks
- Recovery from failed updates

Only trusted firmware should be installed on the device.

---

# 11. Advantages of Security in Agile IoT Development

### 1. Early detection of vulnerabilities

Security problems can be identified early instead of after deployment.

### 2. Reduced cost

Fixing vulnerabilities during development is generally easier than fixing them after deployment.

### 3. Continuous improvement

Security can be improved in every sprint.

### 4. Better risk management

Threats are continuously identified and addressed.

### 5. Faster response

New vulnerabilities can be added to the backlog and handled quickly.

### 6. Improved IoT reliability

Secure development reduces the chances of attacks and system failures.

### 7. Better protection of user data

Security and privacy controls can be continuously improved.

---

# 12. Challenges

Security in Agile IoT development also has some challenges:

- Limited processing power of IoT devices
- Limited memory
- Large number of connected devices
- Physical exposure of devices
- Long device lifetimes
- Frequent software updates
- Changing security threats
- Need for security expertise
- Compatibility between different IoT devices
- Balancing security with development speed

---

# 13. Security Agile Development Process for IoT

The overall process can be represented as:

**Security Requirements**

↓

**Threat Modeling**

↓

**Secure Design**

↓

**Secure Coding**

↓

**Security Testing**

↓

**Security Review**

↓

**Deployment**

↓

**Continuous Monitoring**

↓

**New Threats / Vulnerabilities**

↓

**Update Backlog**

↓

**Next Agile Sprint**

This cycle continues throughout the IoT system's lifetime.

---

# 14. Example: Smart Home IoT System

Consider a smart-home system containing:

- Smart door lock
- Smart camera
- Temperature sensor
- Mobile application
- Cloud server

Security can be integrated into Agile development as follows:

### Sprint 1

Implement device registration.

**Security:**

- Device authentication
- Unique device identity

### Sprint 2

Implement mobile application.

**Security:**

- User authentication
- Authorization

### Sprint 3

Implement cloud communication.

**Security:**

- TLS
- Encryption
- Certificate validation

### Sprint 4

Implement firmware updates.

**Security:**

- Signed firmware
- Integrity verification
- Secure update process

### Sprint 5

Security testing.

**Security:**

- Vulnerability scanning
- Penetration testing
- Fuzz testing

### After Deployment

**Security:**

- Monitoring
- Logging
- Vulnerability management
- Security updates

---

# 15. Key Points to Remember

- Security should be integrated into **every Agile sprint**.
- Security should not be treated as a final-stage activity.
- Security requirements should be identified early.
- **Threat modeling** helps identify possible IoT attacks.
- Secure design and secure coding reduce vulnerabilities.
- Automated security testing can be integrated into CI/CD.
- Security tasks should be included in the **product backlog**.
- Security user stories can represent security requirements.
- Secure firmware updates are important for long-lived IoT devices.
- Continuous monitoring is required after deployment.
- Security should be continuously improved as new threats appear.

---

# 16. Exam Answer — 10/12 Marks

## Explain Security in Agile Developments with Respect to IoT

**Security in Agile development with respect to IoT** means integrating security activities throughout the Agile software development lifecycle instead of implementing security only at the end of development. Since IoT systems consist of connected devices, networks, gateways, cloud services, and applications, security must be considered at every level.

The major steps are:

1. **Security requirement identification:** Identify requirements such as authentication, authorization, encryption, privacy, secure communication, and secure firmware updates.

2. **Threat modeling:** Identify IoT assets, attackers, entry points, vulnerabilities, and possible attacks. Appropriate security controls are then selected.

3. **Secure design:** Security principles such as least privilege, defense in depth, secure defaults, and attack-surface reduction are incorporated into the system design.

4. **Secure coding:** Developers use secure programming practices such as input validation, secure APIs, proper error handling, and protection of credentials.

5. **Security testing:** Security testing is performed during every iteration using vulnerability scanning, penetration testing, fuzz testing, SAST, DAST, and other techniques.

6. **Security backlog:** Security tasks and vulnerabilities are added to the Agile product backlog and prioritized along with functional requirements.

7. **Security in every sprint:** Each sprint should contain appropriate security requirements and security testing. Security therefore evolves continuously with the IoT system.

8. **Continuous integration:** Automated security checks can be incorporated into the CI/CD pipeline to identify vulnerabilities whenever code changes are committed.

9. **Secure firmware updates:** IoT devices should support authenticated and digitally signed firmware updates to prevent malicious software from being installed.

10. **Continuous monitoring:** After deployment, IoT devices should be monitored for suspicious behavior, vulnerabilities, failed authentication attempts, and security events.

### Conclusion

Thus, Agile IoT security follows a **continuous and iterative approach**. Security requirements, threat modeling, secure design, secure coding, testing, deployment, and monitoring are integrated into every development cycle. This helps detect vulnerabilities early, reduce security risks, and provide better protection for IoT devices and user data.

---

# 17. Short Exam Answer — 5 Marks

**Security in Agile development for IoT** means integrating security into every Agile iteration rather than adding it at the end.

The main activities are:

1. Identify security requirements.
2. Perform threat modeling.
3. Apply secure design principles.
4. Follow secure coding practices.
5. Perform security testing in every sprint.
6. Maintain a security backlog.
7. Integrate automated security checks into CI/CD.
8. Provide secure firmware updates.
9. Continuously monitor deployed IoT devices.
10. Fix newly discovered vulnerabilities through subsequent sprints.

**Therefore, Agile IoT security provides continuous security improvement throughout the complete IoT lifecycle.**

---

# Important Keywords for Exam

**Agile Security →**

`Security Requirements → Threat Modeling → Secure Design → Secure Coding → Security Testing → Security Backlog → CI/CD Security → Secure Updates → Continuous Monitoring`

### Status

🔥 **VERY IMPORTANT PYQ**

This question appeared repeatedly in **2022, 2024, and 2025**, so it should be prepared as a high-priority exam topic.