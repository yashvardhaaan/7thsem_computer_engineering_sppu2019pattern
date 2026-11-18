# **Unit V – Topic 2: Identity Lifecycle in IoT**

Important – Repeated 9-mark PYQ

**PYQ:** Explain Identity Lifecycle with a suitable diagram. (9 marks)

This question appeared in the November/December 2023 and November/December 2024 papers.

## **1. What is Identity Lifecycle?**

The **Identity Lifecycle** is the complete process of managing the identity of an IoT device, user or application from its initial creation and registration until its suspension, deactivation or deletion.

It ensures that every IoT entity has a valid identity and only authorized entities can access IoT resources.

**Example:** When a new temperature sensor is installed in a factory, it receives a unique identity, gets registered, receives credentials and permissions, is monitored during operation, and is eventually deactivated when replaced.

## **2. Phases of Identity Lifecycle**

1

**Identity Creation**

Assign a unique identity

2

**Secure Bootstrap**

Establish initial trust

3

**Credential and Attribute Provisioning**

Assign credentials and permissions

4

**Account Monitoring and Control**

Monitor identity and access activity

5

**Account Updates**

Modify identity information and permissions

6

**Account Suspension**

Temporarily block access

7

**Deactivation and Deletion**

Permanently disable and remove identity

Identity lifecycle – exam-oriented flow diagram

### **1. Identity Creation**

Identity creation is the first phase in which a unique identity is assigned to a new IoT device, user or application.

- Assign a unique device identifier.
- Register the device in the IAM system.
- Maintain basic information such as device type, manufacturer and ownership.
- Ensure that duplicate identities are avoided.

**Example:** A smart temperature sensor is assigned the identity `TEMP_SENSOR_101`.

### **2. Secure Bootstrap**

Secure bootstrap is the process of establishing initial trust between a newly installed IoT device and the IoT infrastructure.

- Verify the authenticity of the device.
- Establish a secure initial connection.
- Authenticate the device using a trusted credential or certificate.
- Prevent unauthorized devices from joining the network.

**Example:** A newly installed sensor proves its identity using a manufacturer-provisioned certificate before joining the factory network.

### **3. Credential and Attribute Provisioning**

Provisioning means assigning the necessary authentication credentials and identity-related attributes to an IoT entity.

**Credentials include:**

- Passwords.
- Symmetric keys.
- Digital certificates.
- Authentication tokens.

**Attributes include:**

- Device type.
- Device location.
- Owner information.
- Assigned role.
- Access permissions.

**Example:** A temperature sensor receives a certificate and permission to upload readings but not to modify factory configurations.

### **4. Account Monitoring and Control**

This phase continuously monitors the activities and security status of IoT identities.

- Track login and authentication attempts.
- Monitor device communication.
- Detect suspicious activities.
- Identify inactive or compromised accounts.
- Maintain audit logs.
- Enforce access policies.

**Example:** If an IoT sensor suddenly connects from an unauthorized network, the IAM system can generate a security alert.

### **5. Account Updates**

Account updates involve modifying identity information, credentials, attributes or permissions when requirements change.

Activities include:

- Updating device ownership.
- Changing access permissions.
- Renewing certificates.
- Rotating cryptographic keys.
- Updating device information.
- Modifying assigned roles.

**Example:** When a sensor is transferred to another department, its ownership and access permissions are updated.

### **6. Account Suspension**

Account suspension temporarily disables an identity or its access when suspicious activity or a security risk is detected.

Reasons include:

- Repeated authentication failures.
- Suspected credential theft.
- Device compromise.
- Violation of security policies.

**Example:** If a smart lock is suspected of being compromised, its account may be temporarily suspended to prevent unauthorized operation.

### **7. Account/Credential Deactivation and Deletion**

This is the final stage when an identity is permanently disabled or removed because it is no longer required.

Activities include:

- Revoke authentication credentials.
- Disable certificates and access tokens.
- Remove access permissions.
- Delete identity records according to retention policies.
- Maintain necessary audit and compliance records.

**Example:** When an old industrial sensor is permanently replaced, its identity is deactivated, its credentials are revoked and its records are handled according to organizational policy.

## **3. Difference Between Suspension and Deactivation**

| Suspension                              | Deactivation                                                       |
| --------------------------------------- | ------------------------------------------------------------------ |
| Temporary blocking of access            | Permanent disabling of identity                                    |
| Identity may be reactivated             | Usually requires a new identity or formal re-enrolment             |
| Used during investigation               | Used when an entity is retired or no longer needed                 |
| Identity records are generally retained | Credentials are revoked and records handled under retention policy |

## **4. Importance of Identity Lifecycle Management in IoT**

1. **Security:** Prevents unauthorized devices from accessing the network.
2. **Device tracking:** Maintains information about registered IoT devices.
3. **Access control:** Ensures entities receive only required permissions.
4. **Compromise management:** Allows suspension and revocation of compromised identities.
5. **Scalability:** Simplifies management of large IoT deployments.
6. **Compliance:** Supports auditing and security policy enforcement.

## **5. Exam Answer Strategy – 9 Marks**

For the question *"Explain Identity Lifecycle with suitable diagram"*:

| Section     | What to write                                          |
| ----------- | ------------------------------------------------------ |
| Definition  | Meaning of identity lifecycle                          |
| Diagram     | Draw all seven phases in sequence                      |
| Explanation | Explain each phase with 2–3 points                     |
| Example     | Give one IoT device lifecycle example                  |
| Conclusion  | Explain how lifecycle management improves IoT security |

**Important exam tip:** Do not confuse identity creation with provisioning. Creation assigns an identity; provisioning supplies the credentials and attributes needed to use that identity securely.

Topic 2 completed

**Next: Topic 3 – Naming Conventions and Uniqueness Requirements in IoT**, including identifier formats, uniqueness, device identification and the repeated 9-mark question.