# **Unit VI – Topic 4: User-Centric Identity Management in IoT**

Important syllabus topic

## **1. Introduction to User-Centric Identity Management**

**Definition:** User-Centric Identity Management is an identity management approach in which users have greater control over their digital identities and personal information.

Instead of allowing every organization or service provider to independently control user identity information, this model gives users the ability to manage how their identity is created, stored, shared and used.

In IoT, it helps users securely interact with multiple devices, applications and services while maintaining privacy.

### **Objectives**

1. Give users control over their digital identities.
2. Protect personal and sensitive information.
3. Allow secure identity sharing between services.
4. Reduce unnecessary disclosure of personal information.
5. Support authentication across multiple IoT applications.
6. Improve user privacy and trust.
7. Provide flexibility in identity management.

## **2. Main Characteristics**

**1. User Control**

Users can manage their identity information and decide which information to share.

**2. Identity Ownership**

Users have control over the use and presentation of their digital identity, subject to the system's policies and applicable laws.

**3. Privacy Protection**

Only the information required by a service should be disclosed.

**4. Consent-Based Sharing**

Identity information is shared with services based on user permission or consent.

**5. Portability**

Users can use their digital identity across multiple applications and platforms.

**6. Interoperability**

Supports identity usage across different IoT systems and service providers.

## **3. Architecture of User-Centric Identity Management**

**User**

Controls identity and sharing preferences

**Personal Identity Manager**

Stores and manages identity information

**Consent and Privacy Management**

Controls what information can be shared

**IoT Application A**

**IoT Application B**

Only permitted identity information is shared with the applications.

## **4. Working of User-Centric Identity Management**

1. **Identity creation:** The user creates a digital identity using an identity management system.
2. **Identity storage:** Identity information is stored in a personal identity manager, wallet or trusted identity service.
3. **Service request:** An IoT application requests specific identity information.
4. **User consent:** The user reviews the request and decides whether to share the requested information.
5. **Identity presentation:** The identity manager provides the permitted information or credential.
6. **Identity verification:** The IoT application verifies the presented information.
7. **Access decision:** The application grants or denies access according to its authorization policies.

## **5. Technologies Supporting User-Centric Identity**

### **A. Digital Identity Wallets**

- Store digital identity credentials.
- Allow users to manage and present credentials.
- Help users share selected information with services.

**Example:** A digital identity wallet stores a verified identity credential that can be presented to an authorized service.

### **B. Self-Sovereign Identity (SSI)**

Self-Sovereign Identity is an approach that gives individuals greater control over their digital identities and verifiable credentials.

Important components include:

- Decentralized Identifiers (DIDs).
- Verifiable Credentials (VCs).
- Digital identity wallets.
- Cryptographic verification.

**Example:** A user presents a verifiable credential to prove eligibility for a service without sharing unnecessary personal information.

### **C. OpenID Connect**

- Provides an authentication layer over OAuth 2.0.
- Allows applications to verify user identity.
- Supports identity sharing through ID tokens.

### **D. Blockchain-Based Identity**

- Can maintain decentralized identity-related records.
- Supports verification of decentralized identifiers and credential information.
- Can reduce dependence on a single centralized identity registry.

*Note: Personal identity information should not be placed directly on a public blockchain.*

## **6. Advantages**

1. **Improved privacy:** Users can control the information shared with applications.
2. **Greater control:** Users can manage their digital identity.
3. **Reduced data duplication:** Identity credentials can be reused across compatible services.
4. **Convenience:** Supports access to multiple applications.
5. **Better transparency:** Users can understand what information is requested.
6. **Interoperability:** Supports identity exchange across different systems.

## **7. Limitations and Challenges**

1. **Complexity:** Managing digital identities can be difficult for some users.
2. **Credential security:** Lost or stolen identity credentials may be misused.
3. **Interoperability:** Different platforms may support different identity standards.
4. **Privacy risks:** Improper sharing can expose personal information.
5. **Recovery problems:** Recovering access after losing an identity wallet can be challenging.
6. **User responsibility:** Users may need to manage consent, credentials and security settings carefully.

## **8. Applications in IoT**

| Application        | Use                                                                  |
| ------------------ | -------------------------------------------------------------------- |
| Smart healthcare   | Patients control access to selected health credentials               |
| Smart homes        | Homeowners manage identities and permissions for family members      |
| Smart cities       | Citizens use digital credentials to access public services           |
| Connected vehicles | Drivers present verified identity credentials to authorized services |
| Smart workplaces   | Employees use digital identities to access workplace IoT systems     |

**Example – Smart Healthcare:**

A patient uses a digital identity wallet to share selected medical credentials with a hospital application. The hospital verifies the credentials and provides the appropriate service without requiring unnecessary personal information.

## **9. User-Centric vs Traditional Identity Management**

| Parameter           | Traditional Identity Management         | User-Centric Identity Management                 |
| ------------------- | --------------------------------------- | ------------------------------------------------ |
| Control             | Mainly organization or service provider | Greater user control                             |
| Identity storage    | Often organization-managed              | Can use personal wallet or identity provider     |
| Information sharing | Controlled mainly by service policies   | User consent and sharing preferences are central |
| Privacy             | Depends on organizational practices     | Emphasizes selective disclosure                  |
| Example             | Separate hospital accounts              | Reusable digital identity credentials            |

## **10. Conclusion**

User-Centric Identity Management gives users greater control over their digital identities and personal information. It supports privacy, consent-based sharing, identity portability and interoperability. Technologies such as digital identity wallets, Self-Sovereign Identity and verifiable credentials can help implement user-centric identity management in IoT environments.

Topic 4 completed

**Next: Topic 5 – Hybrid Identity Management in IoT**

We will cover its definition, architecture, working, integration of local and federated identity models, advantages, limitations and comparison with other identity management models.