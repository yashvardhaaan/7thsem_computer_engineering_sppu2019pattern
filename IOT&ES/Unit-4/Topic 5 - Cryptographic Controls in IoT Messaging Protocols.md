# **Unit IV – Topic 5: Cryptographic Controls in IoT Messaging Protocols**

This topic explains how messaging protocols protect data exchanged between IoT devices, gateways, servers and cloud platforms.

The four protocols in your syllabus are:

1. MQTT
2. CoAP
3. DDS
4. REST

**Important distinction:** MQTT, CoAP and DDS are messaging protocols or middleware approaches. REST is an architectural style commonly implemented over HTTP. Their security mechanisms differ.

## **1. Cryptographic Controls in MQTT**

[MQTT v5 완벽 가이드 1편: 개념과 아키텍처 이해하기 | Frank's IT Blog](https://images.openai.com/static-rsc-4/G_Sifhx0stlH5agpTTWtA2X2hBgG776mrdoxPGu8sxRr1Gz1neeqixu6optBIPadp_v9-V0iBZihxrfU3Tigawz9qiZ5x5ASPSECc8NEs8la_v9rFCXtvIMB5Rx0vUfjQ6QB55U7mnVCj-nYECVd3HVq1lykuCEOKxKZleiKqmY?purpose=inline)

[blog.advenoh.pe.kr](https://blog.advenoh.pe.kr/mqtt-v5-%EC%99%84%EB%B2%BD-%EA%B0%80%EC%9D%B4%EB%93%9C-1-%EC%9E%85%EB%AC%B8%EA%B3%BC-%EA%B8%B0%EB%B3%B8-%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98/?utm_source=chatgpt.com)

**MQTT (Message Queuing Telemetry Transport)** is a lightweight messaging protocol designed for communication between IoT devices over networks with limited bandwidth.

It follows the **Publish–Subscribe model**.

### **Architecture**

- **Publisher:** Sends messages.
- **Broker:** Receives and distributes messages.
- **Subscriber:** Receives messages from topics it subscribes to.
- **Topic:** A named channel used to organize messages.

### **Security mechanisms**

**1. TLS Encryption**

- MQTT communication can be protected using TLS.
- TLS encrypts data transmitted between the client and broker.
- Helps prevent unauthorized reading of messages.

**2. Authentication**

- Clients can authenticate using usernames and passwords.
- TLS client certificates can also be used for stronger authentication.

**3. Access Control**

- The broker can restrict which clients publish or subscribe to particular topics.
- Prevents unauthorized access to messages.

**4. Message Integrity**

- TLS provides integrity protection for data transmitted over the connection.
- Helps detect unauthorized modification.

**5. Secure Key Management**

\- TLS certificates and associated private keys must be securely stored, renewed and protected.

### **Working**

1. An IoT device connects to the MQTT broker.
2. The client and broker establish a TLS-secured connection.
3. The client authenticates itself.
4. The publisher sends encrypted messages to a topic.
5. The broker forwards messages to authorized subscribers.
6. Subscribers receive and process the messages.

**Applications:** Smart homes, industrial monitoring, sensor networks and remote device monitoring.

## **2. Cryptographic Controls in CoAP**

**CoAP (Constrained Application Protocol)** is a lightweight web transfer protocol designed for resource-constrained IoT devices and networks.

It commonly uses UDP for communication.

### **Security mechanisms**

**1. DTLS (Datagram Transport Layer Security)**

- Provides security for CoAP communication over UDP.
- Offers encryption, authentication and integrity protection.
- Helps protect messages from interception and modification.

**2. OSCORE**

- Object Security for Constrained RESTful Environments.
- Provides end-to-end protection of CoAP messages at the application layer.
- Can protect messages even when they pass through intermediary proxies.

**3. Authentication**

- DTLS supports authentication using methods such as pre-shared keys, raw public keys or certificates.
- OSCORE uses configured security contexts and cryptographic credentials.

**4. Encryption and Integrity**

- Protects sensitive IoT data.
- Detects unauthorized message modification.

**5. Replay Protection**

\- Security mechanisms can use sequence numbers and related message information to help detect replayed messages.

### **Working**

1. The CoAP client sends a request to the CoAP server.
2. A suitable security mechanism, such as DTLS or OSCORE, is configured.
3. The client and server establish the necessary security context.
4. Messages are encrypted and integrity-protected.
5. The server verifies and processes the request.

**Applications:** Smart lighting, environmental monitoring, smart meters and constrained sensor devices.

## **3. Cryptographic Controls in DDS**

[Fast DDS 入门 | 我是Android开发者](https://images.openai.com/static-rsc-4/iyTduJGVpLFLXFoIFLT3-dMmOPRL_ywPJA-QKsVu72Yov_R3MVASn-hK9Fc_UlUHI_EClbPY-r9KgoyjLcvwEkICDCExAf55bL-1JEycUfrcZtY9ZAIWKCpebsg2IHNH0M84f1S2EhBFnWgEzojp26soLNIC3AN29p8NVe4VzPg?purpose=inline)

[otarutech.github.io](https://otarutech.github.io/2022/04/25/fastdds-02-getting-started/?utm_source=chatgpt.com)

**DDS (Data Distribution Service)** is a data-centric publish–subscribe communication standard used in real-time and distributed systems.

It is designed for reliable, scalable and low-latency communication between connected devices.

### **Architecture**

- **Domain:** Logical communication space.
- **Domain Participant:** An application participating in a DDS domain.
- **Publisher:** Sends data.
- **Subscriber:** Receives data.
- **Topic:** Defines the type of data being exchanged.

### **Security mechanisms**

DDS Security provides security capabilities through a standardized security architecture.

**1. Authentication**

- Verifies the identity of participants.
- Uses identity credentials and certificates according to the configured security mechanism.

**2. Access Control**

- Defines which participants can publish or subscribe to specific topics.
- Prevents unauthorized access to data.

**3. Encryption**

- DDS Security supports encryption of data exchanged between participants.
- Helps maintain confidentiality.

**4. Data Integrity**

\- Cryptographic protection helps detect unauthorized modification of messages.

**5. Governance and Permissions**

- Governance documents define the security rules for a DDS domain.
- Permissions documents define what individual participants are allowed to do.

### **Working**

1. A DDS participant joins a communication domain.
2. The security system authenticates the participant.
3. Access permissions are checked.
4. The participant publishes or subscribes to authorized topics.
5. Security mechanisms protect communication according to the configured policies.

**Applications:** Industrial automation, robotics, autonomous systems, defence systems and real-time monitoring.

## **4. Cryptographic Controls in REST**

[Manage Data Through HTTP](https://images.openai.com/static-rsc-4/JQCLa7al0GAamQkFmQHto1PCW0qhmjGftEQYhfbl5a8tI04XFDpK4MoNo3CHouxpyJkv0SuywSvPY6SAFH8pDzzhDD7BZ2kUp1FnPaQd6h4z57FBF-D5U7krZ5Bk4ZIcx_bUb4_ekUoTKk84UmS_a7uRl2Ed6vvl0zfx_XSkCoo?purpose=inline)

[help.altair.com](https://help.altair.com/altair-iot-studio/topics/anythingdb/manage_data_through_http.htm?utm_source=chatgpt.com)

**REST (Representational State Transfer)** is an architectural style used to build web services and APIs. IoT devices commonly use REST APIs to communicate with cloud servers through HTTP.

### **Security mechanisms**

**1. HTTPS / TLS**

- HTTPS is HTTP communication protected by TLS.
- Encrypts data exchanged between IoT devices and servers.
- Provides integrity protection and server authentication.

**2. Authentication**

- API keys, tokens and OAuth 2.0-based access tokens can be used.
- Helps verify the identity or authorization of clients.

**3. Authorization**

- Role-Based Access Control (RBAC) can restrict access to API resources.
- Ensures clients can perform only permitted operations.

**4. Digital Signatures and Message Authentication**

- Digital signatures or MACs can protect the authenticity and integrity of application-level messages.
- Useful when message-level verification is required beyond transport security.

**5. Secure Token Management**

- Access tokens should have appropriate expiry times.
- Tokens and API credentials must be stored securely and transmitted over HTTPS.

### **Working**

1. An IoT device sends an API request to a REST server.
2. HTTPS establishes a TLS-protected connection.
3. The device provides its authentication credentials or token.
4. The server verifies the credentials and checks authorization.
5. The server processes the request and sends a protected response.

**Applications:** Smart city platforms, cloud-based IoT dashboards, smart meters and device management systems.

## **5. Comparison of MQTT, CoAP, DDS and REST**

| Feature             | MQTT                    | CoAP                    | DDS                            | REST                           |
| ------------------- | ----------------------- | ----------------------- | ------------------------------ | ------------------------------ |
| Communication model | Publish–Subscribe       | Request–Response        | Data-centric Publish–Subscribe | Client–Server                  |
| Common transport    | TCP                     | UDP                     | UDP or TCP                     | HTTP over TCP                  |
| Security mechanism  | TLS                     | DTLS, OSCORE            | DDS Security                   | HTTPS / TLS                    |
| Authentication      | Passwords, certificates | PSK, keys, certificates | Identity credentials           | Tokens, API keys, certificates |
| Main application    | IoT messaging           | Constrained devices     | Real-time systems              | Web APIs                       |

## **6. Common Security Challenges**

1. **Eavesdropping:** Attackers intercept unencrypted messages.
2. **Message tampering:** Attackers modify transmitted data.
3. **Unauthorized access:** Untrusted devices access protected topics or APIs.
4. **Replay attacks:** Attackers retransmit previously captured messages.
5. **Credential theft:** Passwords, tokens or private keys are stolen.

**Preventive measures:** Use TLS/DTLS or appropriate object security, strong authentication, access control, secure key management, replay protection and regular security updates.

## **7. Previous-Year Question Mapping**

Important – 9 marks

The previously identified PYQ from November/December 2024 is:

\- **Explain cryptographic controls built into IoT messaging protocols.**

For this question, prepare all four protocols: MQTT, CoAP, DDS and REST, including their security mechanisms and working.

## **8. How to Write a 9-Mark Answer**

1. Define IoT messaging protocols.
2. Explain MQTT architecture and TLS security.
3. Explain CoAP and DTLS/OSCORE.
4. Explain DDS Security.
5. Explain REST and HTTPS/TLS.
6. Add a comparison table.
7. Conclude with the importance of confidentiality, integrity and authentication.

**Remember these four combinations for revision:**

- MQTT → TLS
- CoAP → DTLS / OSCORE
- DDS → DDS Security
- REST → HTTPS / TLS

Topic 5 completed

**Next topic: Future Directions of IoT and Cryptography** – lightweight cryptography, post-quantum cryptography, blockchain, AI-based security and emerging approaches.