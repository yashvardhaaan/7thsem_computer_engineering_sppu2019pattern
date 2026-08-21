````markdown
# 18. Authentication / Authorization

## PYQ

**No PYQ**

---

# 1. Definition

**Authentication** and **Authorization** are important security mechanisms used to control access to IoT devices, networks, applications, and data.

### Authentication

**Authentication is the process of verifying the identity of a user, device, or application.**

It answers:

> **"Who are you?"**

### Authorization

**Authorization is the process of determining what an authenticated user, device, or application is allowed to access or perform.**

It answers:

> **"What are you allowed to do?"**

---

# 2. Difference Between Authentication and Authorization

| Authentication | Authorization |
|---|---|
| Verifies identity | Determines permissions |
| Happens before authorization | Happens after authentication |
| Answers "Who are you?" | Answers "What can you do?" |
| Uses passwords, certificates, biometrics, keys, etc. | Uses roles, permissions, policies, access rules, etc. |
| Example: Verify an IoT device | Example: Allow the device to send sensor data |

### Simple Example

```text
User
 ↓
Authentication
 ↓
"Is this really the user?"
 ↓
Authorization
 ↓
"What is the user allowed to access?"
````

---

# 3. Need for Authentication and Authorization in IoT

IoT systems contain many devices and services that communicate with each other.

Without authentication:

* Attackers may impersonate legitimate devices.
* Unauthorized users may access the system.
* Fake devices may connect to the network.

Without authorization:

* An authenticated user may access resources they should not access.
* A compromised device may perform unauthorized operations.
* Users may control critical IoT devices without permission.

Therefore, both mechanisms are required.

---

# 4. Authentication in IoT

Authentication verifies the identity of:

* Users
* IoT devices
* Applications
* Gateways
* Servers
* Services

The identity must be verified before access is granted.

---

# 5. Authentication Factors

Authentication can use different types of credentials.

## 5.1 Something You Know

Examples:

* Password
* PIN
* Security question

### Example

A user enters a password to access a smart-home application.

---

# 6. Something You Have

Examples:

* Security token
* Smart card
* Digital certificate
* Cryptographic key
* Mobile device

### Example

An IoT device may authenticate using a device certificate.

---

# 7. Something You Are

This refers to biometric characteristics.

Examples:

* Fingerprint
* Face
* Iris

Biometric authentication is mainly applicable to user-facing IoT systems.

---

# 8. Multi-Factor Authentication

**Multi-Factor Authentication (MFA)** uses two or more different authentication factors.

Example:

```text
Password
   +
OTP / Security Token
   ↓
Authenticated User
```

MFA provides stronger protection than relying only on a password.

---

# 9. Device Authentication

IoT devices should have unique identities.

A device can authenticate using:

* Unique credentials
* Digital certificates
* Cryptographic keys
* Secure hardware identities

### Example

```text
IoT Device
     ↓
Provides Certificate
     ↓
Server Verifies Certificate
     ↓
Device Authenticated
```

This prevents unauthorized devices from joining the IoT environment.

---

# 10. Mutual Authentication

In **mutual authentication**, both communicating parties verify each other's identities.

### Example

```text
IoT Device  →  Server
     ← Authentication →
```

The device verifies the server, and the server verifies the device.

This helps prevent attacks where an attacker pretends to be a legitimate server.

---

# 11. Authorization in IoT

After authentication, authorization determines what actions the authenticated entity can perform.

For example:

A user may be authenticated successfully but only have permission to:

* View temperature
* View device status

The user may not be authorized to:

* Change device configuration
* Install firmware
* Delete the device
* Control safety-critical equipment

---

# 12. Role-Based Access Control

**Role-Based Access Control (RBAC)** assigns permissions according to a user's or device's role.

Example:

| Role          | Permissions                   |
| ------------- | ----------------------------- |
| Administrator | Full device management        |
| Technician    | Maintenance and configuration |
| Operator      | Control permitted devices     |
| Viewer        | Read-only access              |

RBAC simplifies access management in large IoT environments.

---

# 13. Attribute-Based Access Control

**Attribute-Based Access Control (ABAC)** makes access decisions based on attributes.

Attributes may include:

* User identity
* Device identity
* Location
* Time
* Device type
* Security level
* Requested operation

### Example

A user may control an industrial machine only if:

```text
User is authenticated
AND
User has operator role
AND
User is inside the factory
AND
Machine is in maintenance mode
```

This provides more flexible access control.

---

# 14. Least Privilege

The **principle of least privilege** means giving a user or device only the permissions required to perform its task.

### Example

A temperature sensor only needs permission to:

> Send temperature readings.

It does not need permission to:

* Modify firmware
* Delete other devices
* Change security settings

Least privilege reduces the impact of compromised accounts or devices.

---

# 15. Access Control Policies

Authorization should be based on clearly defined policies.

A policy may specify:

* Who can access a resource
* What resource can be accessed
* What operation is allowed
* Under what conditions access is allowed

### Example

```text
User: Technician
Device: Industrial Sensor
Action: Read Configuration
Result: ALLOWED
```

---

# 16. Authentication and Authorization Process

A typical process is:

```text
User / Device
      ↓
Submit Credentials
      ↓
Authentication
      ↓
Identity Verified?
    ↙       ↘
  No         Yes
  ↓           ↓
Reject     Authorization
              ↓
        Check Permissions
              ↓
       Permission Granted?
          ↙        ↘
        No          Yes
        ↓            ↓
      Deny         Allow
                    Access
```

---

# 17. Authentication Technologies Used in IoT

Common technologies include:

* Passwords
* Digital certificates
* Public-key cryptography
* Cryptographic keys
* Tokens
* Multi-factor authentication
* Device identity systems
* Secure hardware

The appropriate mechanism depends on the IoT device and security requirements.

---

# 18. Authorization Technologies Used in IoT

Common mechanisms include:

* Access Control Lists (ACLs)
* Role-Based Access Control (RBAC)
* Attribute-Based Access Control (ABAC)
* Policy-based access control
* Identity and Access Management (IAM)

---

# 19. Authentication and Authorization at Different IoT Layers

Authentication and authorization may be required at multiple levels.

## Device Level

Verify that the device is legitimate.

## Network Level

Control which devices can join or communicate with the network.

## Application Level

Verify users and applications.

## Cloud Level

Control access to cloud resources and IoT data.

## API Level

Ensure only authorized applications can call specific APIs.

---

# 20. Example — Smart Home

Consider a smart-home system containing:

* Smart lock
* Smart camera
* Smart lights
* Temperature sensors

### Authentication

The user logs into the mobile application using:

```text
Username + Password + OTP
```

The system verifies the user's identity.

### Authorization

The system then checks permissions:

```text
User
 ↓
Can view camera? YES
 ↓
Can control lights? YES
 ↓
Can configure security settings? NO
```

Thus, authentication identifies the user while authorization controls what the user can do.

---

# 21. Example — Industrial IoT

Consider an industrial IoT system.

### Authentication

Each controller has a unique cryptographic identity.

### Authorization

Permissions are assigned according to roles:

```text
Administrator
→ Full access

Engineer
→ Configuration access

Operator
→ Machine control

Viewer
→ Read-only access
```

A compromised operator account therefore cannot automatically perform administrator-level operations.

---

# 22. Security Requirements

A strong authentication and authorization system should provide:

* Unique identities
* Strong authentication
* Secure credential storage
* Least privilege
* Role or policy-based access
* Secure communication
* Credential revocation
* Session management
* Logging
* Monitoring

---

# 23. Credential Management

Credentials should be securely managed throughout the device lifecycle.

Important activities include:

1. Credential generation
2. Secure storage
3. Credential distribution
4. Credential rotation
5. Credential revocation
6. Credential replacement
7. Secure deletion

When an IoT device is retired, its credentials should no longer remain active.

---

# 24. Authentication and Authorization Failures

Poor implementation can lead to:

* Unauthorized device access
* Device impersonation
* Credential theft
* Privilege escalation
* Unauthorized control
* Data exposure
* Account takeover

### Example

If all IoT devices use the same password:

```text
One Device Compromised
        ↓
Password Discovered
        ↓
Attacker Tries Same Password
        ↓
Multiple Devices Compromised
```

Therefore, each device should have an appropriate unique identity and credentials.

---

# 25. Best Practices

## 1. Use unique device identities

Avoid shared default credentials.

## 2. Use strong authentication

Use appropriate credentials and cryptographic mechanisms.

## 3. Use MFA for sensitive user access

Especially for administrative accounts.

## 4. Apply least privilege

Give only required permissions.

## 5. Use secure credential storage

Protect keys and credentials from extraction.

## 6. Revoke credentials

Remove access when devices or users are retired.

## 7. Monitor access

Log authentication and authorization events.

## 8. Protect communication

Use secure communication protocols.

## 9. Regularly review permissions

Remove unnecessary privileges.

---

# 26. Advantages

Authentication and authorization provide:

* Protection against unauthorized access
* Device identity verification
* Controlled resource access
* Reduced attack impact
* Better privacy
* Improved data protection
* Better security monitoring
* Stronger overall IoT security

---

# 27. Exam Answer — 10 Marks

## Explain Authentication and Authorization in IoT

**Authentication** is the process of verifying the identity of a user, device, application, or service. **Authorization** is the process of determining what an authenticated entity is permitted to access or perform.

Authentication answers **"Who are you?"**, while authorization answers **"What are you allowed to do?"**

### Authentication

Authentication can be performed using:

1. **Something you know:** Password or PIN.
2. **Something you have:** Token, certificate, or cryptographic key.
3. **Something you are:** Biometric information.
4. **Multi-factor authentication:** Combination of two or more authentication factors.

In IoT, devices can be authenticated using unique identities, digital certificates, and cryptographic keys. Mutual authentication can also be used so that both the device and server verify each other's identity.

### Authorization

After successful authentication, authorization determines which resources and operations are available to the entity.

Common authorization mechanisms include:

1. **RBAC:** Permissions are assigned according to roles.
2. **ABAC:** Access decisions are based on attributes such as identity, location, time, and device type.
3. **ACL:** Defines which entities can access particular resources.

The principle of **least privilege** should be applied so that each user or device receives only the permissions required for its task.

### Authentication and Authorization Process

```text
User / Device
      ↓
Authentication
      ↓
Identity Verified
      ↓
Authorization
      ↓
Check Permissions
      ↓
Allow / Deny Access
```

### Security Best Practices

* Use unique device identities.
* Use strong authentication.
* Use MFA for sensitive accounts.
* Protect credentials and cryptographic keys.
* Apply least privilege.
* Use secure communication.
* Regularly review permissions.
* Revoke credentials when devices or users are retired.
* Log and monitor access attempts.

### Conclusion

Authentication and authorization are essential for protecting IoT systems from unauthorized access. Authentication verifies the identity of users and devices, while authorization controls their permissions. Together they provide **secure identity management and controlled access to IoT resources**.

---

# 28. Short Exam Answer — 5 Marks

**Authentication** verifies the identity of a user or device, while **authorization** determines what that authenticated entity is allowed to access.

Authentication methods include:

* Passwords
* Digital certificates
* Cryptographic keys
* Tokens
* Biometrics
* Multi-factor authentication

Authorization methods include:

* RBAC
* ABAC
* ACL
* Policy-based access control

The process is:

```text
Identity
   ↓
Authentication
   ↓
Authorization
   ↓
Access Granted / Denied
```

IoT systems should use **unique device identities, strong authentication, least privilege, secure credential storage, access monitoring, and credential revocation**.

---

# 29. Quick Revision

## Authentication

**Who are you?**

→ Verifies identity.

Examples:

`Password`

`Certificate`

`Cryptographic Key`

`Token`

`Biometric`

`MFA`

---

## Authorization

**What can you do?**

→ Determines permissions.

Examples:

`RBAC`

`ABAC`

`ACL`

`Policy-Based Access Control`

---

## Remember

```text
Authentication
       ↓
Identity Verified
       ↓
Authorization
       ↓
Permission Checked
       ↓
Allow / Deny
```

### Key Principle

**Least Privilege**

> Give each user or device only the permissions required to perform its task.

---

## Exam Status

❌ **No PYQ**

### Priority

🟡 **MEDIUM**

Prepare the **difference between authentication and authorization, methods, process, RBAC/ABAC, least privilege, and the 10-mark answer**.

```
```
