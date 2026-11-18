# **Unit V – Topic 5: Account Monitoring and Control, Updates, Suspension, Deactivation and Deletion**

Important – 8/9 mark preparation

**Previous-year question:** Explain account monitoring and control for IoT. (8 marks – Nov/Dec 2022)

This topic covers how an IoT administrator manages device accounts and credentials throughout their operational life.

## **1. Account Monitoring and Control**

**Definition:** Account monitoring and control is the continuous process of observing, managing and regulating IoT device accounts to ensure that only authorized devices and users can access IoT resources.

### **Objectives**

1. Detect unauthorized access.
2. Identify compromised or inactive devices.
3. Monitor account activities.
4. Enforce access-control policies.
5. Prevent misuse of credentials.
6. Maintain security and compliance.

### **Account monitoring process**

**IoT Devices and Users**

**Activity and Login Monitoring**

**Log Analysis and Anomaly Detection**

**Policy Verification**

**Allow Access / Alert / Block Account**

### **Activities involved**

- **Login monitoring:** Tracks successful and failed authentication attempts.
- **Activity monitoring:** Records device communication and resource usage.
- **Anomaly detection:** Identifies unusual behaviour, such as a sensor sending excessive data.
- **Access review:** Checks whether devices have appropriate permissions.
- **Audit logging:** Maintains records of account activities.
- **Account control:** Locks, restricts or disables suspicious accounts.

**Example:** In a smart factory, if a temperature sensor suddenly starts sending data to an unknown server, the monitoring system generates an alert and can restrict that device.

## **2. Account Updates**

**Definition:** Account updates involve modifying the identity information, credentials, attributes or permissions associated with an IoT device or user.

### **Types of updates**

1. **Identity updates:** Changing ownership, device name or location.
2. **Credential updates:** Renewing passwords, keys or certificates.
3. **Attribute updates:** Modifying device type, role or security level.
4. **Permission updates:** Changing access rights.
5. **Configuration updates:** Updating security settings and policies.

**Example:** When a factory sensor is moved from Department A to Department B, its location attribute and associated access permissions must be updated.

## **3. Account Suspension**

**Definition:** Account suspension is the temporary disabling or restriction of an IoT account when suspicious activity or a security concern is detected.

### **Reasons for suspension**

- Suspicious login attempts.
- Device theft or loss.
- Compromised credentials.
- Violation of security policies.
- Temporary maintenance.
- Unusual network behaviour.

### **Suspension process**

1. Detect suspicious activity.
2. Generate a security alert.
3. Verify the incident.
4. Temporarily block or restrict the account.
5. Investigate the issue.
6. Restore access after resolving the problem, if safe.

**Example:** If an IoT smart camera is reported stolen, its account can be suspended to prevent unauthorized access.

## **4. Account and Credential Deactivation/Deletion**

These processes ensure that unused, compromised or retired IoT identities cannot access the system.

### **A. Account deactivation**

Account deactivation means permanently disabling an account so that it can no longer authenticate or access IoT resources.

Example: An organization retires an old industrial sensor and deactivates its account.

### **B. Credential deactivation**

Credential deactivation means invalidating authentication credentials such as passwords, cryptographic keys or digital certificates.

Example: If a device's private key is compromised, its certificate must be revoked and the key must no longer be trusted.

### **C. Account deletion**

Account deletion means removing an account and its associated identity information from the active identity management system, subject to applicable retention requirements.

Example: Removing the identity record of a permanently retired IoT device after required records have been retained.

### **D. Credential deletion**

Credential deletion involves securely removing stored credentials from devices, servers or key-management systems when they are no longer required.

Example: Securely erasing cryptographic keys from a retired smart meter.

## **5. Difference Between Suspension, Deactivation and Deletion**

| Parameter   | Suspension                        | Deactivation                              | Deletion                    |
| ----------- | --------------------------------- | ----------------------------------------- | --------------------------- |
| Meaning     | Temporarily restricts access      | Permanently disables access               | Removes account record      |
| Nature      | Temporary                         | Permanent                                 | Removal                     |
| Reversible? | Usually yes                       | May require reactivation or a new account | Generally difficult         |
| Example     | Stolen camera under investigation | Retired device                            | Old device identity removed |

**Important distinction:** Account deactivation disables the account; credential deactivation invalidates the authentication method. Both may be required when a device is compromised.

## **6. Security Best Practices**

- Use centralized identity management.
- Regularly review device accounts.
- Apply least-privilege access.
- Rotate cryptographic keys and credentials.
- Monitor login attempts and device behaviour.
- Revoke compromised certificates immediately.
- Maintain audit logs.
- Securely erase credentials during device retirement.
- Follow data-retention and disposal policies.

## **7. Exam-oriented conclusion**

Account monitoring and control are essential parts of IoT identity lifecycle management. Regular monitoring, timely account updates, temporary suspension and secure deactivation or deletion help prevent unauthorized access and protect IoT infrastructure.

Topic 5 completed

**Next: Topic 6 – Authentication Credentials**

We will cover:

1. Password-based authentication
2. Symmetric key-based authentication
3. X.509 digital certificates
4. IEEE 1609.2 security standard
5. Biometric authentication

IEEE 1609.2 is particularly important because it appeared repeatedly in your previous papers.