# **Unit V – Topic 9: Identity Management Models in IoT**

High priority – Repeated 9-mark PYQs

Identity management models define how identities of IoT devices, users and applications are created, stored, verified and shared across different systems.

They help IoT infrastructure establish trust and manage identities securely.

There are six important models in this syllabus:

1. Local Identity Management
2. Federated Identity Management
3. Network Identity Management
4. Global Web Identity Management
5. Identity Portrayal
6. Hybrid Identity Management

## **1. Local Identity Management**

**Definition:** Local Identity Management is an approach in which an organization or IoT system manages identities within its own infrastructure.

### **Features**

- Identity information is stored locally.
- Each IoT system manages its own users and devices.
- Authentication is performed by the local server.
- The organization controls its own security policies.
- External identity providers are generally not required.

### **Working**

1. An IoT device registers with the local identity server.
2. The server creates a unique identity.
3. Credentials are assigned to the device.
4. The device sends authentication credentials when requesting access.
5. The local server verifies the credentials.
6. Access is granted or denied.

**Example:** A smart home system maintains its own user accounts and device identities using a local gateway.

### **Advantages**

- Complete local control.
- Does not necessarily depend on external identity providers.
- Suitable for isolated IoT networks.
- Easier to apply organization-specific policies.

### **Limitations**

- Identity information may be duplicated across systems.
- Difficult to manage identities across multiple organizations.
- Administration becomes complex as the number of devices increases.

## **2. Federated Identity Management**

**Definition:** Federated Identity Management allows multiple independent organizations or systems to share identity information and trust each other's authentication mechanisms.

A user or device can access multiple trusted systems without creating a completely separate identity in every system.

### **Features**

- Multiple organizations establish a trust relationship.
- Identity information can be shared securely.
- Supports Single Sign-On (SSO).
- Reduces repeated authentication.
- Uses standards and protocols such as SAML and OpenID Connect.

### **Working**

1. A user or IoT device attempts to access an external system.
2. The external system redirects authentication to a trusted Identity Provider (IdP).
3. The IdP authenticates the user or device.
4. The IdP issues a signed assertion or token.
5. The external Service Provider (SP) validates the assertion or token.
6. Access is granted according to the system's authorization policy.

User / IoT Device

**Identity Provider (IdP)**

Authenticates identity and issues token

**Trusted Service Provider (SP)**

Validates identity assertion or token

Access Granted / Denied

### **Advantages**

- Reduces repeated login requirements.
- Supports collaboration between organizations.
- Simplifies identity management.
- Improves scalability.

### **Limitations**

- Requires trust between organizations.
- Compromise of an identity provider can affect multiple systems.
- Requires secure token and assertion management.

**Example:** A healthcare IoT platform allows an authorized hospital employee to access a connected cloud service using the hospital's trusted identity provider.

## **3. Network Identity Management**

**Definition:** Network Identity Management manages the identities of devices and users connected to a communication network.

It focuses on identifying devices and controlling their access to network resources.

### **Features**

- Assigns identities to network-connected devices.
- Supports device authentication.
- Controls network access.
- Can use MAC addresses, digital certificates and network credentials.
- Supports centralized network access policies.

### **Working**

1. A device connects to a network.
2. The network identifies the device.
3. The device provides authentication credentials.
4. The network authentication server verifies its identity.
5. Access permissions are evaluated.
6. The device receives permitted network access.

### **Advantages**

- Controls access to network infrastructure.
- Helps identify unauthorized devices.
- Supports centralized monitoring.
- Useful for large-scale enterprise IoT networks.

### **Limitations**

- Requires network authentication infrastructure.
- Device identity information must be maintained.
- Network identifiers alone do not prove device authenticity.

**Example:** A university network uses IEEE 802.1X to authenticate IoT devices before allowing them to connect to its Wi-Fi network.

## **4. Global Web Identity Management**

**Definition:** Global Web Identity Management enables users and devices to use identities across different web-based services and platforms.

It supports identity portability and access to multiple online applications through trusted identity mechanisms.

### **Features**

- Supports identity use across multiple web services.
- Uses web identity standards and protocols.
- Supports Single Sign-On.
- Reduces the need for separate accounts.
- Enables identity federation across platforms.

### **Common technologies**

- OpenID Connect (OIDC)
- OAuth 2.0
- SAML
- Web-based identity providers

**Important distinction:** OAuth 2.0 is primarily an authorization framework, while OpenID Connect adds an authentication layer on top of OAuth 2.0.

### **Working**

1. A user opens a web-based IoT application.
2. The application redirects the user to a trusted identity provider.
3. The identity provider authenticates the user.
4. An identity token is issued.
5. The application validates the token.
6. The user accesses the permitted web services.

### **Advantages**

- Convenient access to multiple services.
- Reduces password-management complexity.
- Supports interoperability.
- Improves user experience.

### **Limitations**

- Dependency on external identity providers.
- Privacy concerns due to identity sharing.
- Identity provider compromise can affect several services.

**Example:** A user signs into a smart-home web application using an account from a trusted identity provider.

## **5. Identity Portrayal**

Repeated 9-mark PYQ

**Definition:** Identity portrayal refers to the way an identity is represented or presented to other entities during communication and access to IoT resources.

It allows an entity to present appropriate identity information depending on the service, application or security requirement.

### **Important aspects**

1. **Identity representation:** An identity may be represented using a unique identifier, certificate or digital token.
2. **Attribute presentation:** Relevant attributes such as device type, role or permissions can be presented.
3. **Privacy protection:** Only necessary identity information should be disclosed.
4. **Identity verification:** The receiving system verifies the presented identity.
5. **Context-based presentation:** Different services may receive different identity information depending on the situation.

### **Working**

1. An IoT device requests access to a service.
2. The device presents its identity using a suitable credential or token.
3. The receiving system validates the identity.
4. Required identity attributes are examined.
5. Access is granted according to the authorization policy.

**Example:** A connected vehicle may use a pseudonymous certificate to authenticate a safety message without continuously revealing its permanent identity.

### **Advantages**

- Supports flexible identity representation.
- Can improve privacy through selective disclosure.
- Enables interoperability between systems.
- Supports context-specific identity information.

### **Limitations**

- Requires secure identity verification.
- Incorrect identity representation can cause access problems.
- Privacy depends on how identity attributes are shared and protected.

## **6. Hybrid Identity Management**

Important – 9-mark PYQ

**Definition:** Hybrid Identity Management combines two or more identity management approaches, such as local and federated identity management, to provide flexible and scalable identity management.

It allows organizations to maintain local control while also using external identity services.

### **Features**

- Combines local and centralized identity management.
- Supports internal and external authentication.
- Provides flexibility.
- Supports different types of IoT devices.
- Can integrate multiple identity providers.

### **Working**

1. The organization maintains local identity records for its IoT devices.
2. Users and devices are authenticated locally when required.
3. For external services, the system connects to a trusted identity provider.
4. Identity assertions or tokens are exchanged.
5. The receiving system validates the identity.
6. Access is granted according to the applicable policies.

IoT Users and Devices

Hybrid Identity Management System

**Local Identity**

Internal users and devices

**Federated Identity**

External trusted services

Policy Evaluation and Access Control

### **Advantages**

- Combines benefits of different models.
- Provides flexibility and scalability.
- Supports internal and external services.
- Reduces dependence on a single identity management approach.

### **Limitations**

- Integration can be complex.
- Requires consistent identity policies.
- Managing multiple identity providers increases administrative overhead.

**Example:** A smart factory maintains local identities for sensors and machines while using a federated identity provider for employees accessing cloud-based monitoring applications.

## **7. Comparison of Identity Management Models**

| Model              | Main focus                                    | Example                                       |
| ------------------ | --------------------------------------------- | --------------------------------------------- |
| Local              | Identity managed within one system            | Smart-home gateway                            |
| Federated          | Identity sharing across trusted organizations | Hospital and cloud platform                   |
| Network            | Identity and access on communication networks | 802.1X device authentication                  |
| Global Web         | Identity across web services                  | OpenID Connect login                          |
| Identity Portrayal | Representation of identity                    | Pseudonymous vehicle certificate              |
| Hybrid             | Combination of multiple models                | Smart factory with local and cloud identities |

## **8. Conclusion**

Identity management models provide different ways of managing IoT identities across local systems, networks, organizations and web platforms. Local identity management provides direct control, federated identity enables cross-organization trust, and hybrid identity combines different approaches. Selecting an appropriate model depends on scalability, privacy, interoperability and security requirements.

## **PYQ preparation**

Important repeated questions

| PYQ topic                                | Marks |
| ---------------------------------------- | ----- |
| Local and Federated Identity Management  | 9     |
| Network and Global Web Identity          | 9     |
| Identity Portrayal                       | 9     |
| Global Web and Local Identity Management | 9     |
| Hybrid Identity Management in IoT        | 9     |

**Exam strategy:** Prepare each model with its definition, features, working, diagram where applicable, advantages, limitations and one IoT example. For comparison questions, use the table above.

Topic 9 completed

**Unit V – Identity and Access Management Solutions for the IoT: All planned topics completed.**

You have now covered the complete Unit V cluster plan.