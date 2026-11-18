# **Unit V – Topic 7: IoT IAM Infrastructure – IEEE 802.1X and PKI**

High priority – IEEE 802.1X is a repeated PYQ

IoT IAM infrastructure consists of technologies, protocols and services used to identify, authenticate and authorize IoT devices before allowing them to access a network or its resources.

Two important components are:

1. IEEE 802.1X – Port-based network access control.
2. PKI – Public Key Infrastructure for certificate-based authentication and trust management.

## **1. IEEE 802.1X Authentication**

**Definition:** IEEE 802.1X is a port-based network access control standard that provides authentication before allowing a device to access a wired or wireless network.

It ensures that only authenticated devices can connect to protected network resources.

### **Objectives**

- Prevent unauthorized devices from accessing networks.
- Authenticate devices before granting network access.
- Support centralized authentication.
- Improve network security.
- Control access to wired and wireless networks.

### **Three main components of IEEE 802.1X**

**1. Supplicant**

- The device requesting network access.
- It may be an IoT sensor, laptop, smartphone or gateway.
- It provides authentication credentials.

**2. Authenticator**

- Acts as an intermediary between the supplicant and authentication server.
- Usually a network switch or wireless access point.
- Controls whether network access is permitted.

**3. Authentication Server**

- Verifies the credentials provided by the supplicant.
- Commonly implemented using a RADIUS server.
- Sends an accept or reject decision.

**IEEE 802.1X architecture**

**Supplicant**

IoT device

**Authenticator**

Switch / Access Point

**Authentication Server**

RADIUS server

EAP authentication messages

RADIUS communication

Conceptual architecture: the authenticator relays authentication information to the server and enforces its decision.

### **Working of IEEE 802.1X**

1. **Connection request:** An IoT device connects to a network switch or access point.
2. **Authentication initiation:** The authenticator requests the device's identity.
3. **Credential submission:** The supplicant provides credentials using EAP (Extensible Authentication Protocol).
4. **Credential forwarding:** The authenticator forwards authentication information to the RADIUS server.
5. **Verification:** The authentication server verifies the credentials.
6. **Authentication response:** The server sends an Access-Accept or Access-Reject response.
7. **Network access:** If authentication succeeds, the authenticator permits access according to the configured policy.

IoT Device Connects to Network

Authenticator Requests Identity

EAP Credentials Sent to RADIUS Server

Server Verifies Credentials

**Access-Accept**

Network access granted

**Access-Reject**

Network access denied

### **Role of EAP and RADIUS**

- **EAP:** Extensible Authentication Protocol provides a framework for exchanging authentication messages. It supports different authentication methods.
- **RADIUS:** Remote Authentication Dial-In User Service is a protocol commonly used to communicate authentication, authorization and accounting information between the authenticator and authentication server.

### **Advantages**

1. Prevents unauthorized network access.
2. Supports centralized authentication.
3. Works with wired and wireless networks.
4. Supports different EAP authentication methods.
5. Improves network access control.

### **Limitations**

- Requires additional authentication infrastructure.
- Configuration and maintenance can be complex.
- Resource-constrained devices may have limited support for some EAP methods.
- Authentication server failure can affect new device connections.

### **IoT applications**

- Industrial IoT networks.
- Smart office networks.
- Smart building access.
- Healthcare IoT networks.
- Enterprise Wi-Fi security.

**Example:** In a smart factory, an IoT temperature sensor must authenticate through IEEE 802.1X before connecting to the factory network.

## **2. Public Key Infrastructure (PKI) for IoT**

**Definition:** Public Key Infrastructure (PKI) is a framework of hardware, software, policies and procedures used to create, distribute, manage, validate and revoke digital certificates and public keys.

PKI establishes trust between IoT devices, users, gateways and servers.

### **Main components of PKI**

**1. Certificate Authority (CA)**

- Trusted entity that issues and digitally signs certificates.
- Establishes trust in device identities and public keys.

**2. Registration Authority (RA)**

- Verifies the identity of an entity requesting a certificate.
- Forwards approved requests to the CA.

**3. Digital Certificate**

- Electronic document that binds an identity to a public key.
- Commonly follows the X.509 certificate format.

**4. Public and Private Keys**

- Public key can be shared.
- Private key must remain secret.
- Used in public-key cryptographic operations.

**5. Certificate Repository**

\- Stores and distributes certificates.

**6. Certificate Revocation List (CRL) and OCSP**

- CRL contains certificates that have been revoked.
- OCSP (Online Certificate Status Protocol) allows certificate status to be checked online.

### **PKI architecture**

**Registration Authority (RA)**

Verifies device identity

**Certificate Authority (CA)**

Issues signed digital certificates

**Certificate Repository**

Stores and distributes certificates

**IoT Devices, Gateways and Servers**

Use certificates to establish trust

### **Working of PKI in IoT**

1. **Key generation:** An IoT device generates a public-private key pair.
2. **Certificate request:** The device sends a certificate signing request to the RA.
3. **Identity verification:** The RA verifies the device's identity.
4. **Certificate issuance:** The CA issues and signs a digital certificate.
5. **Certificate distribution:** The certificate is securely provided to the device.
6. **Certificate validation:** Other devices or servers verify the certificate and its trust chain.
7. **Authentication:** The device proves possession of its private key.
8. **Revocation:** If the certificate is compromised or no longer trusted, it is revoked.

### **Advantages of PKI in IoT**

- Provides strong device authentication.
- Supports secure communication.
- Enables scalable identity management.
- Supports digital signatures and message integrity.
- Reduces dependence on shared passwords.
- Helps establish trust among different IoT organizations.

### **Challenges of PKI in IoT**

- Managing certificates for millions of devices.
- Limited memory and processing power.
- Secure storage of private keys.
- Certificate renewal and expiration.
- Certificate revocation in disconnected devices.
- Maintaining reliable CA infrastructure.

**Example:** In a smart electricity grid, each smart meter receives a digital certificate. The grid server validates the certificate before accepting data from the meter.

## **3. Difference Between IEEE 802.1X and PKI**

| Parameter                  | IEEE 802.1X                                 | PKI                                                |
| -------------------------- | ------------------------------------------- | -------------------------------------------------- |
| Purpose                    | Network access control                      | Digital identity and trust management              |
| Main function              | Authenticates devices before network access | Manages certificates and public keys               |
| Components                 | Supplicant, authenticator, server           | CA, RA, certificates, keys                         |
| Common protocols/standards | EAP, RADIUS                                 | X.509, CRL, OCSP                                   |
| Application                | Wired and wireless network access           | Secure device-to-device and device-to-server trust |

**Important:** IEEE 802.1X and PKI are not competing technologies. Certificate-based authentication can be used within an 802.1X deployment, for example through EAP-TLS.

## **4. Conclusion**

IoT IAM infrastructure provides the foundation for secure device authentication and network access. IEEE 802.1X controls network access by authenticating devices through a supplicant, authenticator and authentication server. PKI establishes digital trust using certificates, public-private keys and Certificate Authorities. Together, they help protect large-scale IoT environments.

## **PYQ preparation**

Repeated question – 8 marks

**IEEE 802.1X authentication architecture** appeared as an 8-mark question in Nov/Dec 2023 and Nov/Dec 2024.

For an 8-mark answer, prepare:

1. Definition and objectives – 1 mark
2. Three components – 2 marks
3. Architecture diagram – 2 marks
4. Working steps – 2 marks
5. Advantages and applications – 1 mark

PKI is also important from the syllabus. Prepare its components, architecture, working and challenges.

Topic 7 completed

**Next: Topic 8 – Authorization and Access Control**

We will cover:

- Authentication vs authorization
- Access control in IoT
- DAC, MAC, RBAC and ABAC
- Attribute-Based Access Control mechanism in detail
- New developments in IoT authorization

ABAC is especially important because it appeared repeatedly as a 9-mark question in your previous papers.