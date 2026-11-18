# **Unit VI – Topic 3: Federated and Global Web Identity Management**

Very high priority – 9-mark PYQs

This topic covers two identity management models that allow users and IoT devices to access multiple systems and services.

1. Federated Identity Management
2. Global Web Identity Management

## **1. Federated Identity Management**

**Definition:** Federated Identity Management is an approach in which multiple independent organizations or systems establish a trust relationship to share and verify identity information.

It allows users to access services belonging to different organizations without maintaining separate credentials for every service.

### **Features**

1. Supports identity sharing between trusted organizations.
2. Enables Single Sign-On (SSO).
3. Reduces repeated authentication.
4. Uses trusted Identity Providers (IdPs).
5. Supports secure exchange of identity information.
6. Uses standards such as SAML and OpenID Connect.

### **Important components**

**1. Identity Provider (IdP)**

- Authenticates users or devices.
- Maintains identity information.
- Issues identity assertions or tokens.

**2. Service Provider (SP)**

- Provides the requested application or service.
- Trusts the identity provider.
- Validates the received assertion or token.

**3. User or IoT Device**

- Requests access to an external service.
- Provides authentication credentials to the trusted IdP.

**4. Trust Relationship**

- Agreement between organizations to trust identity information issued by one another.
- Defines how authentication information is exchanged and validated.

### **Architecture**

**User / IoT Device**

Requests an external service

**Identity Provider (IdP)**

Authenticates identity and issues token

**Trusted Service Provider (SP)**

Validates assertion or token

Access Granted / Denied

### **Working of Federated Identity Management**

1. A user or IoT device requests access to an external application.
2. The application redirects authentication to a trusted Identity Provider.
3. The Identity Provider verifies the user's or device's credentials.
4. After successful authentication, the IdP issues a signed assertion or token.
5. The Service Provider validates the received assertion or token.
6. The Service Provider grants access according to its authorization policies.

### **Advantages**

- Reduces multiple login requirements.
- Supports collaboration between organizations.
- Simplifies identity management.
- Improves scalability.
- Supports Single Sign-On.
- Reduces repeated credential storage across service providers.

### **Limitations**

- Requires trust between participating organizations.
- Compromise of an IdP can affect multiple services.
- Token theft can lead to unauthorized access.
- Requires secure communication and token validation.

### **Example**

A hospital employee uses the hospital's identity provider to access a trusted cloud-based healthcare application. The cloud application verifies the authentication token instead of asking the employee to create another account.

## **2. Global Web Identity Management**

**Definition:** Global Web Identity Management is an approach that allows users to use a common digital identity across multiple web-based services and applications.

It enables identity portability and simplifies authentication across different online platforms.

### **Features**

1. Supports identity use across multiple web applications.
2. Reduces the need for separate accounts.
3. Supports Single Sign-On.
4. Uses globally recognized identity protocols.
5. Provides interoperability between web services.
6. Can simplify identity management for IoT cloud applications.

### **Technologies used**

**1. OpenID Connect (OIDC)**

- An authentication layer built on OAuth 2.0.
- Allows applications to verify a user's identity.
- Uses ID tokens, commonly in JWT format.

**2. OAuth 2.0**

- An authorization framework.
- Allows an application to obtain limited access to resources.
- Does not, by itself, provide user authentication.

**3. SAML**

- Security Assertion Markup Language.
- Uses XML-based assertions to exchange authentication and authorization information.
- Commonly used in enterprise Single Sign-On.

### **Working of Global Web Identity Management**

1. A user opens an IoT web application.
2. The application redirects the user to a trusted global identity provider.
3. The user authenticates using the provider's credentials.
4. The provider generates an identity token or assertion.
5. The application validates the token or assertion.
6. The user receives access according to the application's permissions.

### **Architecture**

User

**Global Identity Provider**

Authenticates user

**Identity Token / Assertion**

OIDC / SAML

IoT Web App A

IoT Web App B

Multiple applications can accept authentication from the trusted provider, subject to their own policies.

### **Advantages**

- Convenient access to multiple web services.
- Reduces password-management complexity.
- Supports interoperability.
- Improves user experience.
- Helps applications use a common identity infrastructure.

### **Limitations**

- Dependence on external identity providers.
- Privacy concerns due to identity information sharing.
- Identity provider compromise may affect multiple applications.
- Requires secure token storage and validation.

### **Example**

A user signs in to a smart-home cloud application using an account from a trusted web identity provider. The application verifies the user's identity through OpenID Connect.

## **3. Difference Between Federated and Global Web Identity Management**

| Parameter      | Federated Identity                               | Global Web Identity                                |
| -------------- | ------------------------------------------------ | -------------------------------------------------- |
| Main focus     | Sharing identities between trusted organizations | Using digital identity across web services         |
| Scope          | Multiple trusted organizations or systems        | Multiple web applications and platforms            |
| Trust          | Established between participating organizations  | Established through trusted web identity providers |
| Technologies   | SAML, OIDC                                       | OIDC, OAuth 2.0, SAML                              |
| Main objective | Cross-organization identity sharing              | Portable identity and convenient web access        |
| Example        | Hospital accessing a trusted cloud service       | User signing into multiple web applications        |

**Important:** These models overlap. Global web identity can use federation mechanisms. They are distinguished here by their primary purpose and application scope.

## **4. Applications in IoT**

- **Smart homes:** Users access different smart-home services through a common identity provider.
- **Healthcare IoT:** Hospital employees access trusted healthcare applications.
- **Smart cities:** Different municipal IoT platforms share trusted identity information.
- **Industrial IoT:** Employees access cloud monitoring applications using enterprise identity credentials.

## **5. Conclusion**

Federated Identity Management allows multiple trusted organizations to share identity information, while Global Web Identity Management enables users to use a common digital identity across web-based applications. Both approaches improve interoperability, scalability and convenience in IoT environments.

## **PYQ preparation**

Repeated 9-mark preparation

Prepare these questions:

1. Explain Federated Identity Management.
2. Explain Global Web Identity Management for IoT.
3. Explain Local and Federated Identity Management.
4. Explain Network and Global Web Identity Management.

**Exam strategy:** For each model, prepare its definition, features, components, architecture, working, advantages, limitations and one IoT example.

Topic 3 completed

**Next: Topic 4 – User-Centric Identity Management in IoT**, covering user control, privacy, identity ownership and identity sharing.