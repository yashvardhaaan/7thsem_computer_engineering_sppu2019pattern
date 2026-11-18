# **Unit VI – Identity Management Models (08 Hours)**

We will follow the same approach as the previous units: combine related syllabus points into exam-oriented topics, map the previous-year questions, and prepare notes one topic at a time.

## **1. Unit VI – Topic-wise clustering**

| Topic                                                             | Combined syllabus points                                                         |
| ----------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| **1. Introduction to Identity Management and Identity Portrayal** | Introduction to identity management, identity portrayal                          |
| **2. Local and Network Identity Management**                      | Local identity model, network identity model                                     |
| **3. Federated and Global Web Identity Management**               | Federated identity model, global web identity model                              |
| **4. User-Centric Identity Management in IoT**                    | User-centric identity management, user control, privacy and identity sharing     |
| **5. Hybrid Identity Management**                                 | Hybrid identity management, integration of identity models, comparison of models |

## **2. Previous-year question mapping**

Based on the previous examination papers you uploaded:

| Topic / PYQ                             | Marks | Priority                                                 |
| --------------------------------------- | ----- | -------------------------------------------------------- |
| Local and Federated Identity Management | 9     | Very high                                                |
| Network and Global Web Identity         | 9     | Very high                                                |
| Global Web Identity Management          | 9     | Very high                                                |
| Local Identity Management Model         | 9     | Very high                                                |
| Identity Portrayal                      | 9     | Very high                                                |
| Hybrid Identity Management in IoT       | 9     | High                                                     |
| User-Centric Identity Management        | —     | No standalone question identified in the papers reviewed |

The identity-model questions appeared in the Nov/Dec 2022, Nov/Dec 2023 and Nov/Dec 2024 papers. Prepare each named model separately because the exam may ask two models together or ask for an individual model.

# **Topic 1 – Introduction to Identity Management and Identity Portrayal**

## **1. Introduction to Identity Management**

**Definition:** Identity Management (IdM) is the process of creating, maintaining, managing and verifying the identities of users, devices and applications within a system.

In IoT, identity management ensures that every connected entity has a recognizable identity and can be securely authenticated before accessing resources.

### **Why is identity management required in IoT?**

An IoT environment may contain thousands or millions of connected devices, such as:

- Smart sensors
- Smart cameras
- Industrial machines
- Smart vehicles
- Mobile applications
- Cloud servers
- Human users

Without proper identity management, unauthorized devices may connect to the network, access sensitive information or control critical systems.

### **Objectives of identity management**

1. **Unique identification:** Assign a unique identity to every device or user.
2. **Authentication:** Verify the identity of the connected entity.
3. **Access management:** Control which resources an entity can access.
4. **Privacy protection:** Protect personal and device-related identity information.
5. **Lifecycle management:** Manage identities from creation to deletion.
6. **Scalability:** Support large numbers of IoT devices.
7. **Interoperability:** Enable identity sharing between different systems when required.

## **2. Components of Identity Management**

**1. Identity creation**

Creates a unique identity for a user, device or application.

**2. Identity registration**

Registers identity information in an identity management system.

**3. Authentication**

Verifies the identity using passwords, keys, certificates or biometrics.

**4. Authorization**

Determines what operations an authenticated entity can perform.

**5. Identity maintenance**

Updates identity information, credentials and permissions.

**6. Identity revocation**

Suspends or permanently disables identities that are compromised or no longer required.

## **3. Identity Management Architecture**

**Users**

**Devices**

**Applications**

**Identity Management System**

Creates and maintains identities

Authentication

Authorization

**Secure Access to IoT Resources**

**Example:** In a smart factory, every temperature sensor receives a unique identity. The identity management system authenticates the sensor and permits it to upload readings to the monitoring server.

## **4. Identity Portrayal**

Repeated 9-mark PYQ

**Definition:** Identity portrayal refers to the representation and presentation of an entity's identity to other entities or services during communication.

In IoT, a device may present its identity using identifiers, digital certificates, tokens or identity attributes to establish trust and obtain access to resources.

### **Objectives of identity portrayal**

1. Represent the identity of users and devices.
2. Enable identity verification between communicating entities.
3. Protect sensitive identity information.
4. Support secure communication.
5. Provide relevant identity attributes to authorized services.
6. Support privacy and interoperability.

### **Important elements of identity portrayal**

**1. Identity identifier**

A unique value used to identify an entity.

Example: Device ID, UUID or RFID.

**2. Identity attributes**

Additional information describing the entity.

Example:

- Device type
- Owner
- Location
- Role
- Permissions

**3. Identity credentials**

Information used to prove the identity.

Example: Digital certificates, passwords and cryptographic keys.

**4. Identity presentation**

The process of providing identity information to another entity or service.

**5. Identity verification**

The receiving system checks whether the presented identity and credentials are valid.

### **Working of identity portrayal**

1. An IoT device requests access to another device or service.
2. The device presents its identity information.
3. It provides appropriate credentials, such as a digital certificate or token.
4. The receiving system verifies the presented identity.
5. Required identity attributes are checked.
6. The system makes an access decision.

IoT Device / User

Present Identity and Credentials

Receiving System Verifies Identity

Check Identity Attributes and Permissions

Secure Access / Access Denied

### **Example: Identity portrayal in smart vehicles**

A connected vehicle communicates with nearby vehicles and roadside infrastructure.

- It presents a digital certificate to establish trust.
- It digitally signs its safety messages.
- Other vehicles verify the certificate and signature.
- Pseudonymous certificates can help prevent continuous exposure of its permanent identity.

### **Advantages**

1. Enables identification and verification.
2. Supports secure communication.
3. Helps protect user and device privacy.
4. Supports interoperability between IoT systems.
5. Enables controlled sharing of identity information.

### **Challenges**

- Identity information may be stolen or misused.
- Different systems may use different identity formats.
- Privacy must be maintained while sharing identity information.
- Secure credential storage and verification are required.

## **5. Difference Between Identity Management and Identity Portrayal**

| Identity Management                                   | Identity Portrayal                              |
| ----------------------------------------------------- | ----------------------------------------------- |
| Manages an entity's identity throughout its lifecycle | Represents and presents identity information    |
| Includes creation, registration and maintenance       | Includes identity presentation and verification |
| Focuses on managing identities                        | Focuses on how identities are represented       |
| Example: Registering a sensor                         | Sensor presenting its certificate to a server   |

## **6. Conclusion**

Identity management is an essential part of IoT security because it provides unique identification, authentication and access management for connected entities. Identity portrayal enables these entities to present their identity information securely to other systems. Together, they help establish trust, protect privacy and support secure IoT communication.

**Exam preparation for Topic 1**

For a 9-mark answer on Identity Portrayal, prepare:

1. Definition and objectives.
2. Important elements.
3. Working steps.
4. Neat architecture/flow diagram.
5. Example and advantages.
6. Conclusion.

Topic 1 completed

**Next: Topic 2 – Local and Network Identity Management.**