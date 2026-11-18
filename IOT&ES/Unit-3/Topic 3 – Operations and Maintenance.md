# **Topic 3 – Operations and Maintenance**

Very important – Repeated PYQs

This is the largest phase of the IoT Security Lifecycle. It focuses on maintaining the security of IoT devices, networks and applications after deployment.

We will combine related syllabus headings while keeping the important concepts separately understandable.

**PYQ coverage:**

| Previous-year question        | Year       | Marks                 |
| ----------------------------- | ---------- | --------------------- |
| Explain Security Monitoring   | 2022, 2024 | 8 (combined question) |
| Explain Penetration Testing   | 2022, 2024 | 8 (combined question) |
| Explain Incident Management   | 2023, 2024 | 8 (combined question) |
| Explain Compliance Monitoring | 2023, 2024 | 8 (combined question) |

Other syllabus topics covered here:

- Managing identities, roles and attributes
- Asset and configuration management
- Forensics

## **1. Managing Identities, Roles and Attributes**

### **Meaning**

Identity and access management (IAM) in IoT is the process of identifying users, devices and applications and controlling their access to IoT resources.

It ensures that only authorized entities can access specific devices, applications and data.

### **Main components**

**1. Identity Management**

- Assigns a unique identity to every IoT device, user or application.
- Maintains identity information.
- Verifies the identity before granting access.

**2. Role Management**

- Assigns roles according to responsibilities.
- Defines permissions for each role.
- Follows the principle of least privilege.

Example:

| Role          | Permissions                    |
| ------------- | ------------------------------ |
| Administrator | Full system access             |
| Operator      | Monitor and control devices    |
| Technician    | Configure and maintain devices |
| Guest         | Limited access                 |

**3. Attribute Management**

- Assigns attributes to users and devices.
- Attributes may include device type, location, time, department and security level.
- Access decisions are made using these attributes.

**4. Authentication**

- Verifies the identity of users and devices.
- Uses passwords, certificates, biometrics or multi-factor authentication.

**5. Authorization**

- Determines what an authenticated entity is allowed to access.
- Prevents unauthorized operations.

### **Example**

In a smart factory, an administrator can access all IoT devices, whereas a technician can access only the machines assigned to them.

### **Benefits**

1. Prevents unauthorized access.
2. Protects sensitive IoT information.
3. Provides controlled access to devices.
4. Reduces security risks.
5. Improves accountability.

## **2. Security Monitoring and Penetration Testing**

These two concepts are related because both help identify security weaknesses in an IoT system. However, monitoring observes ongoing activities, whereas penetration testing actively tests system security.

### **A. Security Monitoring**

Repeated PYQ – 2022 and 2024

**Meaning:**

Security monitoring is the continuous process of observing IoT devices, networks, applications and system activities to identify suspicious behaviour, security threats and unauthorized access.

It helps administrators detect attacks and take corrective actions before serious damage occurs.

### **Objectives**

1. Detect unauthorized access to IoT devices.
2. Identify suspicious network activities.
3. Monitor device health and security status.
4. Detect malware and cyberattacks.
5. Maintain system availability and data integrity.

### **Activities involved in Security Monitoring**

**1. Device Monitoring**

- Monitor the status and behaviour of IoT devices.
- Identify unusual device activities.
- Detect unauthorized configuration changes.

**2. Network Monitoring**

- Monitor incoming and outgoing network traffic.
- Identify unusual communication patterns.
- Detect suspicious connections and traffic spikes.

**3. Log Monitoring**

- Collect and analyse system logs.
- Monitor login attempts and access activities.
- Identify repeated failed authentication attempts.

**4. Vulnerability Monitoring**

- Identify outdated firmware and software.
- Track known security vulnerabilities.
- Ensure security patches are applied.

**5. Alert Generation**

- Generate alerts when suspicious activities are detected.
- Notify administrators about potential attacks.
- Support timely security responses.

**6. Reporting and Analysis**

- Prepare security monitoring reports.
- Analyse security events.
- Improve security controls based on findings.

### **Advantages**

- Enables early detection of cyberattacks.
- Reduces the impact of security incidents.
- Improves system visibility.
- Supports continuous security management.
- Helps maintain IoT system reliability.

### **B. Penetration Testing**

Repeated PYQ – 2022 and 2024

**Meaning:**

Penetration testing is an authorized security testing process in which security professionals simulate real-world cyberattacks against an IoT system to identify vulnerabilities that attackers could exploit.

It is also known as ethical hacking.

### **Objectives**

1. Identify security vulnerabilities.
2. Evaluate the effectiveness of security controls.
3. Discover weaknesses in IoT devices and networks.
4. Determine the possible impact of cyberattacks.
5. Recommend corrective security measures.

### **Steps involved in Penetration Testing**

**1. Planning and Scope Definition**

- Define the IoT devices, networks and applications to be tested.
- Obtain proper authorization.
- Establish testing objectives and boundaries.

**2. Information Gathering**

- Collect information about IoT devices and network architecture.
- Identify operating systems, firmware and communication protocols.

**3. Vulnerability Identification**

- Scan devices and networks for weaknesses.
- Identify outdated firmware, weak passwords and insecure services.

**4. Exploitation**

- Attempt to exploit identified vulnerabilities within the authorized scope.
- Check whether unauthorized access or control is possible.

**5. Analysis of Results**

- Evaluate discovered vulnerabilities.
- Determine their severity and possible impact.
- Document successful and unsuccessful attack attempts.

**6. Reporting and Remediation**

- Prepare a penetration testing report.
- Recommend security improvements.
- Fix vulnerabilities and perform retesting.

### **Types of Penetration Testing**

| Type              | Description                                  |
| ----------------- | -------------------------------------------- |
| Black-box testing | Tester has no prior knowledge of the system. |
| White-box testing | Tester has complete knowledge of the system. |
| Grey-box testing  | Tester has partial knowledge of the system.  |

### **Advantages**

1. Identifies exploitable vulnerabilities.
2. Helps prevent real-world attacks.
3. Evaluates security mechanisms.
4. Improves network and device security.
5. Helps organizations strengthen their security policies.

### **Difference between Security Monitoring and Penetration Testing**

| Security Monitoring                          | Penetration Testing                                      |
| -------------------------------------------- | -------------------------------------------------------- |
| Continuous observation of system activities. | Periodic security assessment.                            |
| Detects suspicious activities.               | Identifies exploitable vulnerabilities.                  |
| Observes actual system behaviour.            | Simulates possible attacks.                              |
| Helps detect ongoing threats.                | Helps identify weaknesses before attackers exploit them. |
| Performed by security monitoring teams.      | Performed by authorized security testers.                |

**Conclusion:** Security monitoring continuously observes IoT systems to detect threats, whereas penetration testing simulates attacks to discover vulnerabilities and improve security.

## **3. Compliance Monitoring**

Repeated PYQ – 2023 and 2024

### **Meaning**

Compliance monitoring is the continuous process of checking whether an IoT system follows established security policies, standards, regulations and organizational requirements.

It ensures that IoT devices, networks and applications operate according to defined security rules.

### **Objectives**

1. Ensure compliance with security policies.
2. Identify violations of security standards.
3. Protect sensitive information.
4. Reduce legal and security risks.
5. Maintain proper security documentation.

### **Activities involved in Compliance Monitoring**

**1. Defining Security Standards**

- Establish security policies and requirements.
- Identify applicable regulations and standards.
- Define acceptable security practices.

**2. Security Auditing**

- Regularly examine IoT devices and networks.
- Check whether security controls are properly implemented.
- Identify policy violations.

**3. Configuration Checking**

- Verify that devices follow approved security configurations.
- Identify unauthorized configuration changes.
- Check firmware and software updates.

**4. Access Control Verification**

- Verify user permissions and access rights.
- Check whether unauthorized users have been restricted.
- Review authentication mechanisms.

**5. Risk Assessment**

- Identify compliance-related risks.
- Evaluate the impact of security violations.
- Recommend corrective measures.

**6. Reporting and Corrective Actions**

- Prepare compliance reports.
- Document security violations.
- Take corrective actions to achieve compliance.

### **Advantages**

1. Ensures adherence to security policies.
2. Reduces legal and regulatory risks.
3. Improves data protection.
4. Identifies security policy violations.
5. Builds trust in IoT systems.

### **Example**

A healthcare organization using IoT patient-monitoring devices must ensure that patient information is protected according to applicable data protection and healthcare security requirements.

## **4. Asset and Configuration Management**

These two activities are closely related because organizations must know what devices they own and ensure that each device maintains an approved security configuration.

### **A. Asset Management**

**Meaning:**

Asset management is the process of identifying, recording, tracking and maintaining all hardware, software, devices and network resources used in an IoT system.

### **Major activities**

1. **Asset Identification:** Identify all IoT devices, sensors, gateways, servers and applications.
2. **Asset Inventory:** Maintain a record of device IDs, serial numbers, locations and ownership.
3. **Asset Classification:** Classify assets according to their importance and sensitivity.
4. **Asset Tracking:** Monitor the location, status and usage of IoT devices.
5. **Asset Maintenance:** Perform regular maintenance and security updates.
6. **Asset Retirement:** Identify devices that are no longer required and prepare them for secure disposal.

### **B. Configuration Management**

**Meaning:**

Configuration management is the process of establishing, maintaining and controlling the configuration settings of IoT devices, networks and applications to ensure security and consistency.

### **Major activities**

1. **Configuration Identification:** Identify the configuration settings of every IoT device.
2. **Baseline Configuration:** Establish an approved and secure configuration for devices.
3. **Configuration Control:** Control and authorize changes to device settings.
4. **Configuration Monitoring:** Regularly check whether devices follow approved configurations.
5. **Configuration Auditing:** Verify that configuration changes are properly documented and authorized.
6. **Configuration Backup:** Maintain backups to restore secure configurations when required.

### **Advantages**

- Maintains accurate device inventory.
- Prevents unauthorized configuration changes.
- Helps identify outdated devices and software.
- Improves security and system reliability.
- Simplifies maintenance and troubleshooting.

### **Difference between Asset and Configuration Management**

| Asset Management                    | Configuration Management                      |
| ----------------------------------- | --------------------------------------------- |
| Tracks IoT resources.               | Controls device settings.                     |
| Maintains asset inventory.          | Maintains configuration records.              |
| Focuses on ownership and lifecycle. | Focuses on secure configurations and changes. |
| Identifies what devices exist.      | Identifies how devices are configured.        |

## **5. Incident Management and Forensics**

High priority – Incident Management repeated in 2023 and 2024

These concepts are related because incident management handles security incidents, while digital forensics investigates the evidence associated with those incidents.

### **A. Incident Management**

**Meaning:**

Incident management is the systematic process of identifying, reporting, analysing, responding to and recovering from security incidents affecting IoT devices, networks and applications.

A security incident may include unauthorized access, malware infection, data theft, device compromise or denial-of-service attacks.

### **Objectives**

1. Detect and respond to security incidents quickly.
2. Minimize damage to IoT systems.
3. Prevent further attacks.
4. Restore normal system operations.
5. Identify the cause of security incidents.
6. Prevent similar incidents in the future.

### **Phases of Incident Management**

[What Are the 5 Key CompTIA Security+ Domains You Must Know?](https://images.openai.com/static-rsc-4/_zrhyk6UpJCfpi-cidn7Z4L1i-Hf01BUgu3Pv_yTkUAj8jWAHVGYqWBlenHHSX6TiQRMJvN9DYHkQAO7IuUPLxfOEKUXoNGGQIR34aGXfgJWS6qM8p5_WtfgMMA4N5j1oN6dc61bAFTE-ThxlfpGy9_khSxcrOAoBJoTbwWBbkA?purpose=inline)

[stationx.net](https://www.stationx.net/comptia-security-plus-domains/?utm_source=chatgpt.com)

**1. Preparation**

- Develop an incident response plan.
- Assign responsibilities to the security team.
- Prepare monitoring and response tools.

**2. Identification**

- Detect suspicious activities through security monitoring.
- Identify affected IoT devices and networks.
- Confirm whether a security incident has occurred.

**3. Containment**

- Isolate affected devices from the network.
- Restrict unauthorized access.
- Prevent the incident from spreading to other devices.

**4. Eradication**

- Remove malware and malicious files.
- Eliminate the root cause of the incident.
- Fix identified security vulnerabilities.

**5. Recovery**

- Restore affected devices and services.
- Apply security patches and updates.
- Verify that the system is functioning securely.

**6. Lessons Learned**

- Analyse the incident.
- Prepare an incident report.
- Improve security policies and response procedures.

### **Advantages**

- Reduces the impact of cyberattacks.
- Minimizes downtime.
- Protects sensitive information.
- Improves recovery time.
- Strengthens future security measures.

### **B. Digital Forensics**

**Meaning:**

Digital forensics is the process of identifying, collecting, preserving, examining and analysing digital evidence from IoT devices, networks and storage systems to investigate security incidents.

It helps determine how an attack occurred, which devices were affected and what information was compromised.

### **Steps involved in Digital Forensics**

**1. Identification**

- Identify devices and systems containing relevant evidence.
- Determine the source and nature of the incident.

**2. Evidence Collection**

- Collect logs, network traffic, memory data and device information.
- Acquire relevant digital evidence using appropriate forensic methods.

**3. Evidence Preservation**

- Protect collected evidence from modification or deletion.
- Maintain evidence integrity using hashing techniques.
- Maintain chain of custody records.

**4. Examination**

- Extract useful information from collected evidence.
- Examine system logs and communication records.
- Identify suspicious activities.

**5. Analysis**

- Determine how the attack occurred.
- Identify the attacker's activities where possible.
- Determine the extent of damage and data compromise.

**6. Documentation and Reporting**

- Document investigation findings.
- Prepare a forensic report.
- Present evidence for security investigation or legal proceedings.

### **Importance of Digital Forensics**

1. Helps identify the cause of cyberattacks.
2. Provides reliable digital evidence.
3. Helps determine the extent of security breaches.
4. Supports incident investigation.
5. Helps prevent similar attacks in the future.

### **Difference between Incident Management and Digital Forensics**

| Incident Management                  | Digital Forensics                            |
| ------------------------------------ | -------------------------------------------- |
| Handles security incidents.          | Investigates digital evidence.               |
| Focuses on containment and recovery. | Focuses on evidence collection and analysis. |
| Restores normal operations.          | Determines how and why an incident occurred. |
| Uses incident response procedures.   | Uses forensic investigation techniques.      |

## **Quick Revision – Topic 3**

| Syllabus topic                 | Important keywords                                              |
| ------------------------------ | --------------------------------------------------------------- |
| Identity, Roles and Attributes | Identification, authentication, authorization, permissions      |
| Security Monitoring            | Device monitoring, network monitoring, logs, alerts             |
| Penetration Testing            | Planning, scanning, exploitation, reporting                     |
| Compliance Monitoring          | Standards, auditing, policies, corrective actions               |
| Asset Management               | Identification, inventory, tracking, maintenance                |
| Configuration Management       | Baseline, configuration control, auditing                       |
| Incident Management            | Preparation, identification, containment, eradication, recovery |
| Forensics                      | Identification, collection, preservation, examination, analysis |

## **PYQ answer strategy**

| Question                                 | Prepare from |
| ---------------------------------------- | ------------ |
| Security Monitoring (8 marks combined)   | Section 2A   |
| Penetration Testing (8 marks combined)   | Section 2B   |
| Incident Management (8 marks combined)   | Section 5A   |
| Compliance Monitoring (8 marks combined) | Section 3    |

**Unit III progress**

**3 of 5 topics completed**

60%

IoT Security Lifecycle

Implementation and Integration

Operations and Maintenance

Secure Device Disposal

Data Archiving and Records Management

**Next: Topic 4 – Secure Device Disposal**

We will cover:

1. Secure device disposal
2. Zeroization
3. Data purging
4. Inventory control

This topic is particularly important because secure device disposal and data purging have appeared repeatedly in your previous papers.