# **Unit VI – Topic 2: Local and Network Identity Management**

High priority – 9-mark PYQ

This topic covers two identity management models used to identify, authenticate and manage IoT devices and users.

1. Local Identity Management
2. Network Identity Management

## **1. Local Identity Management**

**Definition:** Local Identity Management is an approach in which identities of users, devices and applications are created, stored and managed within a particular organization or IoT system.

In this model, the organization maintains its own identity database and authentication infrastructure.

### **Features**

1. Identity information is stored locally.
2. Each IoT system manages its own identities.
3. Authentication is performed by a local server or gateway.
4. The organization controls identity policies.
5. External identity providers are generally not required.
6. Suitable for small and isolated IoT environments.

### **Working of Local Identity Management**

1. An IoT device is registered with the local identity management system.
2. The system assigns a unique identity to the device.
3. Authentication credentials are generated or provisioned.
4. The device requests access to a local resource.
5. The local authentication server verifies its identity.
6. Access is granted or denied according to local security policies.

### **Architecture**

**IoT Devices and Users**

**Local Identity Management System**

Identity registration and storage

**Local Authentication Server**

Verifies credentials

**Access to Local IoT Resources**

### **Advantages**

- Complete control over identity information.
- Does not necessarily depend on external identity providers.
- Easier to implement in small IoT systems.
- Local security policies can be customized.
- Can continue operating without external identity services, if local infrastructure remains available.

### **Limitations**

- Identity information may be duplicated across different systems.
- Difficult to manage a large number of devices across multiple organizations.
- Users may need separate accounts for different systems.
- Centralized local infrastructure can become a single point of failure.

### **Example**

A smart home contains smart lights, cameras, door locks and temperature sensors.

The home gateway maintains the identities of all devices and users. It authenticates them locally and allows access according to configured permissions.

## **2. Network Identity Management**

**Definition:** Network Identity Management is an approach that manages the identities of users and devices connected to a communication network and controls their access to network resources.

It focuses on identifying network-connected entities and ensuring that only authorized devices can join and communicate through the network.

### **Features**

1. Provides identities to network-connected devices.
2. Supports device and user authentication.
3. Controls access to network resources.
4. Can use MAC addresses, digital certificates and network credentials.
5. Supports centralized network authentication.
6. Helps detect unauthorized network devices.

### **Important identification mechanisms**

**1. MAC Address**

- A hardware address associated with a network interface.
- Used to identify devices at the data-link layer.
- Can be spoofed, so it should not be treated as strong authentication by itself.

**2. IP Address**

- Identifies a network interface's address within an IP network.
- Helps devices communicate with one another.
- May change depending on network configuration.

**3. Digital Certificates**

- Bind an identity to a public key.
- Can be used to authenticate network-connected devices.
- Help establish trust between devices and servers.

**4. Network Authentication Credentials**

- Passwords, cryptographic keys or other credentials used to verify device identity.
- Can be managed by centralized authentication infrastructure.

### **Working of Network Identity Management**

1. An IoT device connects to a network.
2. The network identifies the device.
3. The device submits its authentication credentials.
4. The authentication server verifies the credentials.
5. Network access permissions are evaluated.
6. The device receives permitted network access.
7. Network activity can be monitored for suspicious behaviour.

### **Architecture**

IoT Device Requests Network Access

Network Access Point / Switch

**Network Authentication Server**

Verifies device identity and credentials

Authorized Device

Unauthorized Device

Network access is granted or denied according to the authentication and access-control policies.

### **Advantages**

- Controls access to network infrastructure.
- Helps prevent unauthorized devices from connecting.
- Supports centralized authentication.
- Enables network-level monitoring.
- Suitable for enterprise and industrial IoT environments.

### **Limitations**

- Requires authentication infrastructure.
- Managing a large number of network identities can be complex.
- MAC and IP addresses alone cannot prove device authenticity.
- Network connectivity may be affected by authentication-server failures.

### **Example**

In a smart university campus, IoT cameras, smart lights and environmental sensors connect to the campus network.

The network authentication system verifies each device before granting access to network resources.

## **3. Difference Between Local and Network Identity Management**

| Parameter        | Local Identity                                 | Network Identity                                  |
| ---------------- | ---------------------------------------------- | ------------------------------------------------- |
| Main focus       | Managing identities within a particular system | Managing identities of network-connected entities |
| Identity storage | Local identity database                        | Network identity infrastructure                   |
| Authentication   | Local server or gateway                        | Network authentication server                     |
| Scope            | Local IoT environment                          | Network environment                               |
| Example          | Smart-home gateway                             | Enterprise Wi-Fi authentication                   |
| Main benefit     | Local control                                  | Network access security                           |

## **4. Applications in IoT**

| Application   | Local Identity Management                     | Network Identity Management                |
| ------------- | --------------------------------------------- | ------------------------------------------ |
| Smart home    | Local gateway manages devices                 | Controls network connections               |
| Smart factory | Factory server manages machine identities     | Authenticates machines joining the network |
| Healthcare    | Hospital system manages local user identities | Controls access to hospital networks       |
| Smart campus  | Campus application manages local identities   | Authenticates connected campus devices     |

## **5. Conclusion**

Local Identity Management provides control over identities within an individual IoT system, whereas Network Identity Management focuses on identifying and authenticating entities connected to a communication network. Both approaches help establish trust, prevent unauthorized access and improve IoT security.

## **PYQ preparation**

Repeated 9-mark preparation

Your previous papers include:

- Explain Local Identity Management Model for IoT – 9 marks.
- Explain Network Identity Model for IoT – 9 marks.

**Exam strategy:** For each model, write the definition, features, architecture, working steps, advantages, limitations and one practical IoT example.

Topic 2 completed

**Next: Topic 3 – Federated and Global Web Identity Management.**