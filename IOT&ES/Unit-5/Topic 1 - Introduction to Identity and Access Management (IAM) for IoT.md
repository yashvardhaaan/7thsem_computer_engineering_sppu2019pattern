# **Unit V – Topic 1: Introduction to Identity and Access Management (IAM) for IoT**

Important – 8/9 marks preparation

## **1. What is Identity and Access Management (IAM)?**

**Identity and Access Management (IAM)** is a framework of policies, processes and technologies used to identify entities, authenticate their identities and control their access to resources.

In IoT, IAM manages the identities and permissions of:

- IoT devices and sensors.
- Users and administrators.
- Gateways and servers.
- Applications and services.

**Example:** In a smart home, IAM ensures that only an authorized user can control smart door locks, cameras and lighting systems.

## **2. Why is IAM Required in IoT?**

IoT networks contain a large number of connected devices that communicate with each other and exchange sensitive information.

IAM is required for the following reasons:

1. **Device identification:** Provides a unique identity to every IoT device.
2. **Authentication:** Verifies whether a device or user is genuine.
3. **Authorization:** Controls which resources an authenticated entity can access.
4. **Data protection:** Prevents unauthorized access to sensitive information.
5. **Scalability:** Helps manage identities of thousands or millions of devices.
6. **Lifecycle management:** Manages devices from initial registration to retirement.
7. **Threat prevention:** Reduces risks caused by stolen credentials and unauthorized devices.

## **3. Components of IoT IAM**

**IoT Entities**

Devices • Users • Applications • Gateways

**Identification**

Assigns and recognizes unique identities

**Authentication**

Verifies identity using credentials

**Authorization**

Determines permitted actions and resources

**Secure Resource Access**

Access is granted or denied according to policy

### **Main components**

**1. Identification**

- Assigns a unique identity to each device or user.
- Uses device IDs, usernames, certificates or other identifiers.
- Helps distinguish legitimate devices from unknown devices.

**2. Authentication**

- Verifies the identity of an entity.
- Uses passwords, digital certificates, symmetric keys or biometrics.
- Prevents unauthorized entities from pretending to be trusted devices.

**3. Authorization**

- Determines what an authenticated entity is allowed to do.
- Uses access-control policies and permissions.
- Example: A temperature sensor can upload readings but cannot modify system configurations.

**4. Identity Management**

- Creates, maintains and updates identities.
- Handles registration, provisioning, suspension and deletion.
- Ensures that identities remain valid throughout their lifecycle.

**5. Access Management**

- Controls access to devices, applications, services and data.
- Applies security policies and permissions.
- Supports the principle of least privilege.

**6. Monitoring and Auditing**

- Tracks login attempts and access activities.
- Identifies suspicious behaviour.
- Maintains records for security investigation.

## **4. What is a Holistic IAM Program for IoT?**

A **Holistic IAM Program** is a comprehensive approach to managing the identities, credentials and access permissions of all IoT entities throughout their entire lifecycle.

It combines technical security mechanisms, policies, procedures and monitoring to provide end-to-end identity security.

### **Major elements of a holistic IAM program**

1\. **Identity Governance:** Establishes policies, responsibilities and rules for identity management.

2\. **Unique Device Identity:** Assigns a unique and reliable identity to every IoT device.

3\. **Secure Registration and Bootstrap:** Ensures that devices are securely registered and authenticated when they first join the network.

4\. **Credential Management:** Securely generates, distributes, stores, updates and revokes authentication credentials.

5\. **Authentication Management:** Verifies the identity of users, devices and applications.

6\. **Authorization and Access Control:** Defines which entities can access specific resources and perform particular actions.

7\. **Identity Lifecycle Management:** Handles identity creation, updates, suspension, deactivation and deletion.

8\. **Monitoring and Auditing:** Monitors identity-related activities and detects suspicious access attempts.

9\. **Integration and Scalability:** Integrates IAM with IoT platforms, cloud services, gateways and enterprise systems while supporting large device populations.

## **5. Real-World Example: Smart Industrial IoT**

Consider a factory containing temperature sensors, industrial robots and monitoring applications.

- Each sensor receives a unique device identity.
- During registration, the device is securely authenticated.
- The sensor receives appropriate credentials.
- Authorization allows it to upload temperature readings.
- The robot controller receives permission to control machinery.
- Administrators monitor access activities.
- When a sensor is replaced, its old identity and credentials are revoked or deleted.

This demonstrates how a holistic IAM program protects an entire IoT environment.

## **6. Benefits of Holistic IAM in IoT**

- Improves device and user security.
- Prevents unauthorized access.
- Simplifies management of large IoT networks.
- Reduces identity-related security risks.
- Provides centralized monitoring and auditing.
- Supports secure communication and regulatory compliance.

## **7. Difference Between Identification, Authentication and Authorization**

| Concept        | Meaning                       | Example                      |
| -------------- | ----------------------------- | ---------------------------- |
| Identification | Claims an identity            | Device ID = Sensor101        |
| Authentication | Verifies the claimed identity | Checks device certificate    |
| Authorization  | Determines permitted actions  | Allows sensor to upload data |

## **8. Previous-Year Question Preparation**

**PYQ:** Explain holistic IAM program for IoT. (8/9 marks)

Recommended answer structure:

1. Define IAM.
2. Explain why IAM is required in IoT.
3. Draw the IAM architecture diagram.
4. Explain the major elements of a holistic IAM program.
5. Give a real-world IoT example.
6. Conclude with its security benefits.

**Important:** Do not confuse authentication with authorization. Authentication answers *Who are you?* Authorization answers *What are you allowed to do?*

Topic 1 completed

**Next: Topic 2 – Identity Lifecycle in IoT**, including identity creation, provisioning, monitoring, updating, suspension and deletion, with a lifecycle diagram for the repeated 9-mark PYQ.