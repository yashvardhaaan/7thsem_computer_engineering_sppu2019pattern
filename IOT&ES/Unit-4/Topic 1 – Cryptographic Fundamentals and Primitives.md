# **Unit IV – Cryptographic Fundamentals for IoT Security Engineering**

I will use the same approach as Unit III: analyse your five uploaded SPPU papers, group related syllabus topics, map the PYQs and prepare exam-oriented notes one cluster at a time.

The objective is to avoid studying the same concept repeatedly while ensuring that one set of notes can answer multiple PYQs.

## **1. PYQ analysis – Unit IV**

From your uploaded papers, these are the important questions identified:

| Previous-year question                                    | Year             | Marks        |
| --------------------------------------------------------- | ---------------- | ------------ |
| Cryptographic module principles                           | 2022, 2023, 2024 | 9            |
| Phases of cryptographic key management fundamentals       | 2022, 2023, 2024 | 9            |
| Cryptographic key management fundamentals                 | 2024             | 9            |
| Digital signature and steps involved in creating it       | 2022, 2024       | 9            |
| Cryptographic controls in ZigBee protocol                 | 2023             | 9            |
| Cryptographic controls for IoT protocols                  | 2023             | 9            |
| Cryptographic controls built into IoT messaging protocols | 2024             | 9            |
| Key derivation and key lifetime                           | 2024             | 9 (combined) |

Sources: May/June 2023, May/June 2024 and November/December 2024 papers.&#x20;

May_Jun_2023 (4)(1).pdf

May_Jun_2024 (4)(1).pdf

Nov_Dec_2024 (4)(1).pdf



The table lists the questions identified in the available papers; syllabus topics not appearing as standalone questions are also included in the study plan.

## **2. Final clustered study plan**

Instead of studying every syllabus heading separately, we will cover the unit in **6 major topics**.

**Topic 1 – Cryptographic Fundamentals and Primitives**

Start here

- Cryptography and its role in IoT security
- Types and uses of cryptographic primitives
- Symmetric encryption and asymmetric encryption
- Hash functions
- MACs and digital signatures
- Random number generation
- Ciphersuites

**Topic 2 – Cryptographic Module Principles**

- Meaning and purpose of cryptographic modules
- Cryptographic module principles
- Security requirements and protection mechanisms

**Topic 3 – Cryptographic Key Management**

- Key generation and key establishment
- Key derivation
- Key storage and key escrow
- Key lifetime and key zeroization
- Key accounting and management

**Topic 4 – Cryptographic Controls in IoT Communication Protocols**

- ZigBee
- Bluetooth
- Near Field Communication (NFC)

**Topic 5 – Cryptographic Controls in IoT Messaging Protocols**

- MQTT
- CoAP
- DDS
- REST

**Topic 6 – Future Directions of IoT and Cryptography**

- Lightweight cryptography
- Post-quantum cryptography
- AI-assisted security
- Advanced key management and privacy protection

**Why this clustering?**

- Topic 1 groups cryptographic algorithms and primitives because they provide the foundation for encryption, authentication and integrity.
- Topic 2 is kept separate because it has a repeated 9-mark PYQ.
- Topic 3 groups all key-related operations into one lifecycle.
- Topics 4 and 5 separate communication protocols from application messaging protocols.
- Topic 6 covers the remaining future-oriented syllabus.

# **Topic 1 – Cryptographic Fundamentals and Primitives**

Foundation for the entire unit

**Syllabus covered:**

- Cryptography and its role in securing IoT
- Types and uses of cryptographic primitives
- Symmetric encryption
- Asymmetric encryption
- Hashes
- Digital signatures
- MACs
- Random number generation
- Ciphersuites

## **1. Introduction to Cryptography**

### **Meaning**

Cryptography is the technique of protecting information by converting readable data (plaintext) into an unreadable form (ciphertext) using mathematical algorithms and keys.

It ensures that only authorized users or devices can access and understand the information.

In IoT, cryptography is used to secure communication between sensors, devices, gateways, servers and cloud platforms.

### **Why is Cryptography required in IoT?**

IoT systems communicate through wired and wireless networks and are exposed to several security threats.

Cryptography helps protect them against:

1. **Data theft:** Prevents unauthorized users from reading sensitive information.
2. **Data modification:** Detects unauthorized changes to transmitted information.
3. **Impersonation:** Helps verify the identity of communicating devices.
4. **Eavesdropping:** Protects information from being intercepted and read.
5. **Message forgery:** Helps verify the authenticity of messages.
6. **Unauthorized access:** Supports secure authentication and communication.

### **Role of Cryptography in IoT**

Cryptography provides four major security services:

**1. Confidentiality**

Ensures that information is accessible only to authorized users.

Example: Encrypting data transmitted from a smart camera to a cloud server.

**2. Integrity**

Ensures that data is not modified or corrupted during transmission.

Example: Using hash functions or message authentication codes to detect message modification.

**3. Authentication**

Verifies the identity of communicating devices and users.

Example: A gateway verifies the identity of an IoT sensor before accepting its data.

**4. Non-repudiation**

Provides evidence that a message or transaction originated from a particular sender, making it difficult for the sender to deny the action later.

Example: Using digital signatures for an IoT transaction.

### **Importance of Cryptography in IoT**

- Protects sensitive information.
- Secures device-to-device communication.
- Prevents unauthorized data modification.
- Supports secure authentication.
- Builds trust between IoT devices and services.

## **2. Types and Uses of Cryptographic Primitives in IoT**

### **Meaning**

Cryptographic primitives are the basic mathematical algorithms and techniques used to provide security services such as confidentiality, integrity, authentication and non-repudiation.

They are the building blocks of cryptographic security systems.

### **Major types of cryptographic primitives**

There are six important categories:

1. Symmetric encryption
2. Asymmetric encryption
3. Hash functions
4. Message Authentication Codes (MACs)
5. Digital signatures
6. Random number generation

Let's understand each one.

## **3. Symmetric Encryption**

### **Meaning**

Symmetric encryption is a cryptographic technique in which the same secret key is used for both encryption and decryption of data.

The sender encrypts plaintext using a secret key, and the receiver uses the same key to recover the original plaintext.

[Integrating AES Encryption in C#: A Developer’s Guide | by Cemal Can Akgül | Medium](https://images.openai.com/static-rsc-4/5DIUHUatF3iS0I_5IDqTX9plxP-MGXK05jFF_e98RcBUDJGBJrYarYjy9ECU2MOC4k-XG00BpPjaEl2AlM2nv6agXuBLtEp6IQSpgED45eYv35W-RJC70jI5Dv13iQPDNbEzb4ZwkGHzhmC5Q59b2pJ2EFCG3KfcD09VdmUYw5Q?purpose=inline)

[medium.com](https://medium.com/%40cemalcanakgul/integrating-aes-encryption-in-c-a-developers-guide-837f2079448a?utm_source=chatgpt.com)

### **Working**

1. The sender obtains the original plaintext.
2. A secret key is selected.
3. The encryption algorithm converts plaintext into ciphertext using the secret key.
4. The ciphertext is transmitted to the receiver.
5. The receiver uses the same secret key to decrypt the ciphertext.
6. The original plaintext is recovered.

### **Examples of Symmetric Algorithms**

- **AES (Advanced Encryption Standard):** Widely used for securing IoT communication and stored data.
- **ChaCha20:** A stream cipher suitable for software implementations and resource-constrained environments.
- **3DES:** An older symmetric encryption algorithm; now generally deprecated for new security designs.

### **Advantages**

1. Fast encryption and decryption.
2. Requires less computational power.
3. Suitable for resource-constrained IoT devices.
4. Efficient for encrypting large amounts of data.

### **Limitations**

1. Secure key distribution is difficult.
2. Both parties must securely share the secret key.
3. If the key is compromised, encrypted information may be exposed.
4. Managing keys for large numbers of IoT devices is challenging.

### **Applications in IoT**

- Smart home communication.
- Sensor data encryption.
- Wireless device communication.
- Secure storage of IoT information.

## **4. Asymmetric Encryption**

### **Meaning**

Asymmetric encryption is a cryptographic technique that uses two mathematically related keys:

- **Public key:** Can be shared openly.
- **Private key:** Must be kept secret by its owner.

Data encrypted using the public key can generally be decrypted using the corresponding private key.

[An Analysis of Hardware Design of MLWE-Based Public-Key Encryption and Key-Establishment Algorithms | MDPI](https://images.openai.com/static-rsc-4/LLF4bVfCWErxqObe0zai4502e8j-ldVx9XsY081yLfTPYDOyw33ZHzUzVQKPrieJO-0lOCNTJQpQ_eUdGH9U20oDm4oi4bUTIA3XFZBau1uPtbitcR9KNktZ_DPER0CZiqLVjS3BR6BV0FGiVV88_HmEXPD1crsGy43qY4WKpLk?purpose=inline)

[mdpi.com](https://www.mdpi.com/2079-9292/11/6/891?utm_source=chatgpt.com)

### **Working**

1. The receiver generates a public key and a private key.
2. The receiver shares the public key with the sender.
3. The sender encrypts the plaintext using the receiver's public key.
4. The encrypted ciphertext is transmitted.
5. The receiver uses their private key to decrypt the ciphertext.
6. The original message is recovered.

### **Examples of Asymmetric Algorithms**

- **RSA:** Uses public and private key pairs for encryption and digital signatures.
- **ECC (Elliptic Curve Cryptography):** Provides strong cryptographic security with comparatively smaller keys.
- **ECDH:** Used for securely establishing a shared secret between communicating parties.

### **Advantages**

1. Solves the problem of sharing a common secret key in advance.
2. Supports digital signatures.
3. Supports secure key establishment.
4. Provides authentication when combined with trusted certificates and verification.

### **Limitations**

1. Computationally more expensive than symmetric encryption.
2. Requires more processing resources.
3. Public keys need authenticity verification.
4. Can be challenging for highly resource-constrained IoT devices.

### **Applications in IoT**

- Secure device authentication.
- Digital certificates.
- Secure key establishment.
- Secure communication between IoT devices and cloud servers.

## **5. Difference between Symmetric and Asymmetric Encryption**

| Symmetric encryption               | Asymmetric encryption                                                |
| ---------------------------------- | -------------------------------------------------------------------- |
| Uses one shared secret key.        | Uses public and private key pairs.                                   |
| Same key encrypts and decrypts.    | Uses related keys for encryption and decryption.                     |
| Generally faster.                  | Generally slower.                                                    |
| Suitable for bulk data encryption. | Suitable for key establishment and digital signatures.               |
| Key distribution is challenging.   | Public keys can be shared openly, but authenticity must be verified. |
| Example: AES, ChaCha20.            | Example: RSA, ECC.                                                   |

**Exam tip:** If asked to explain symmetric and asymmetric encryption, write their definitions, working diagrams, examples, advantages, limitations and differences. This gives you a strong 8–9 mark answer.

## **6. Hash Functions**

### **Meaning**

A cryptographic hash function is a mathematical algorithm that converts input data of any size into a fixed-length output called a hash value or message digest.

It is primarily used to verify data integrity.

[SHA-256: What It Is, How It Works & Why It’s Secure (2025 Guide)](https://images.openai.com/static-rsc-4/Ra1xJbiUrOlgtTDiFxdM8BMmEbnU3b0NlG6WhMYHcB6wsXll09vTLmjij4BAAZ6gZVoKG99583xTR7IwKFPtoXsfYTfZwuJwmN86DcfggHd4UK9-ku8P-Eqmvu172_9UvKE_9L7KXiSPugQ9Yleak1NalcwvWuU5iikJv8fMH7U?purpose=inline)

[qcecuring.com](https://www.qcecuring.com/blog/sha-256?utm_source=chatgpt.com)

### **Working**

1. The sender provides the original message as input.
2. A hash algorithm processes the message.
3. A fixed-length hash value is generated.
4. The receiver independently calculates the hash of the received message.
5. Both hash values are compared.
6. If they match, it provides evidence that the message has not changed, subject to the security of the hash algorithm and comparison process.

### **Properties of Cryptographic Hash Functions**

**1. Deterministic:** The same input always produces the same hash output.

**2. Fixed-length output:** The output length remains fixed regardless of input size.

**3. One-way property:** It should be computationally infeasible to recover the original input from its hash.

**4. Collision resistance:** It should be computationally difficult to find two different inputs producing the same hash.

**5. Avalanche effect:** A small change in input should produce a significantly different hash output.

### **Examples**

- SHA-256
- SHA-3
- SHA-512

MD5 and SHA-1 are outdated for security-sensitive collision-resistant applications.

### **Applications in IoT**

1. Verifying firmware integrity.
2. Detecting unauthorized data modification.
3. Protecting stored records.
4. Supporting digital signatures.
5. Verifying downloaded software updates.

### **Advantages**

- Provides data integrity verification.
- Requires relatively little storage for the digest.
- Efficiently processes large messages.
- Supports authentication and digital signature mechanisms when combined with appropriate cryptographic techniques.

## **7. Message Authentication Code (MAC)**

### **Meaning**

A Message Authentication Code (MAC) is a cryptographic technique that uses a secret key and a message to generate a fixed-length authentication code.

It is used to verify the **integrity and authenticity** of a message.

Unlike a normal hash function, MAC requires a secret key.

[File:Message Authentication Code.svg - Wikimedia Commons](https://images.openai.com/static-rsc-4/ssY65SiTrm_D1dorHY___ZvAHUtVZrgSQJ8QxaMjH295NQlIqGCfue-AnaFC85bGPd8KVNmacY_TYecUPecAr1dDoFWD52GPdVxfZ_82yXQl2yvyqGAjYH57c4yIT7DV14Tv8-Zn2bnmQgFJMGM5y7Q45FCPmDYjP4RNCs21r3Q?purpose=inline)

[commons.wikimedia.org](https://commons.wikimedia.org/wiki/File%3AMessage_Authentication_Code.svg?utm_source=chatgpt.com)

### **Working**

1. The sender prepares the original message.
2. The sender and receiver share a secret key.
3. The sender generates a MAC using the message and secret key.
4. The message and MAC are transmitted to the receiver.
5. The receiver calculates a new MAC using the same secret key.
6. Both MAC values are compared.
7. If they match, the message is considered authentic and unchanged, assuming a secure MAC algorithm and protected key.

### **Examples**

- HMAC-SHA256
- AES-CMAC
- Poly1305

### **Advantages**

1. Ensures message integrity.
2. Verifies message authenticity.
3. Efficient for resource-constrained devices.
4. Prevents unauthorized message modification.

### **Limitation**

MAC does not provide non-repudiation because both communicating parties possess the same secret key.

### **Applications in IoT**

- Authenticating sensor messages.
- Securing device-to-device communication.
- Verifying commands sent to smart devices.
- Protecting communication protocols.

## **8. Digital Signatures**

Repeated PYQ – 9 marks

### **Meaning**

A digital signature is a cryptographic technique used to verify the authenticity, integrity and origin of a digital message or document.

It uses asymmetric cryptography, involving the sender's private key and corresponding public key.

### **Working of Digital Signature**

[Are Digital Signatures Secure? How Do They Works?](https://images.openai.com/static-rsc-4/io5e838RKbyHcRG1gk69rD8ectTFdhshUWmuU8-SaUpw3JTijAso9mal3MYlKH90E2zkSqtD7TiWJC89CscNKJUrFzyMbDo6tcclwI1JjvL0wKIgIUY_vX9IFfHCyB7eWIuNkUJzQbPqH2mzU5Q3Kfqg8SidQtSISDnxGzDEMbA?purpose=inline)

[ricoh.com.my](https://www.ricoh.com.my/blogs/are-digital-signatures-secure?utm_source=chatgpt.com)

**Steps involved in creating a digital signature:**

**1. Message Creation**

The sender prepares the original message or document.

**2. Hash Generation**

A cryptographic hash function generates a fixed-length digest of the message.

**3. Signature Generation**

The sender uses their private key to sign the message digest using a digital signature algorithm.

**4. Transmission**

The sender transmits the original message and digital signature to the receiver.

**5. Signature Verification**

The receiver uses the sender's verified public key and the signature verification algorithm to verify the signature.

**6. Hash Comparison**

The receiver independently calculates the hash of the received message and verifies it against the signed digest.

**7. Verification Result**

If verification succeeds, it provides evidence of authenticity and message integrity.

### **Examples of Digital Signature Algorithms**

- RSA-PSS
- ECDSA
- EdDSA

### **Advantages**

1. Provides message authenticity.
2. Ensures message integrity.
3. Supports non-repudiation.
4. Prevents unauthorized modification.
5. Supports secure digital transactions.

### **Applications in IoT**

- Firmware authenticity verification.
- Secure software updates.
- Device identity verification.
- Secure IoT transactions.
- Digital certificates.

### **Difference between Hash, MAC and Digital Signature**

| Hash                           | MAC                                                              | Digital Signature                                                                    |
| ------------------------------ | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| Does not require a secret key. | Uses a shared secret key.                                        | Uses private and public keys.                                                        |
| Provides integrity checking.   | Provides integrity and authenticity.                             | Provides integrity, authenticity and supports non-repudiation.                       |
| Anyone can calculate the hash. | Only parties possessing the secret key can generate a valid MAC. | Private key holder creates the signature; others can verify it using the public key. |
| Example: SHA-256.              | Example: HMAC-SHA256.                                            | Example: ECDSA.                                                                      |

## **9. Random Number Generation**

### **Meaning**

Random Number Generation (RNG) is the process of generating unpredictable numbers used in cryptographic operations.

In IoT security, random numbers are essential for generating secret keys, initialization vectors, nonces and session tokens.

### **Types of Random Number Generators**

**1. True Random Number Generator (TRNG)**

- Generates random numbers using physical processes.
- Uses unpredictable sources such as electronic noise.
- Provides physical randomness.

**2. Pseudorandom Number Generator (PRNG)**

- Generates sequences using mathematical algorithms.
- Produces numbers that appear random but are generated from an initial seed.
- Ordinary PRNGs may not be suitable for cryptographic applications.

**3. Cryptographically Secure Pseudorandom Number Generator (CSPRNG)**

- Generates unpredictable sequences suitable for cryptographic use.
- Uses secure algorithms and appropriately generated seeds.
- Protects secret key generation and other cryptographic operations.

### **Applications in IoT**

1. Generating encryption keys.
2. Generating session keys.
3. Creating nonces to prevent replay attacks.
4. Generating initialization vectors.
5. Supporting authentication mechanisms.

### **Importance**

- Prevents predictable cryptographic keys.
- Improves communication security.
- Reduces the risk of cryptographic attacks.
- Supports secure authentication.

## **10. Ciphersuites**

### **Meaning**

A ciphersuite is a predefined collection of cryptographic algorithms and parameters used together to secure communication between two systems.

It specifies the cryptographic mechanisms used for authentication, key establishment, encryption and data integrity.

### **Main components of a Ciphersuite**

**1. Key Exchange / Key Establishment Algorithm**

Establishes shared cryptographic keys between communicating parties.

Example: ECDHE.

**2. Authentication Algorithm**

Verifies the identity of communicating parties.

Example: ECDSA or RSA signatures.

**3. Encryption Algorithm**

Protects the confidentiality of transmitted information.

Example: AES-128-GCM or ChaCha20-Poly1305.

**4. Integrity Protection**

Ensures that transmitted data has not been modified.

Example: Authentication tags generated by authenticated encryption algorithms.

### **Example**

A TLS 1.2 ciphersuite:

`TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256`

It specifies:

- ECDHE – Ephemeral Diffie-Hellman key establishment.
- RSA – Authentication using RSA signatures.
- AES-128-GCM – Authenticated encryption.
- SHA-256 – Hash function used in the suite's associated cryptographic operations.

*Note: TLS 1.3 uses a different ciphersuite structure; its ciphersuites specify the symmetric AEAD and hash algorithms, while key exchange and authentication are negotiated separately.*

### **Importance in IoT**

1. Provides standardized security configurations.
2. Supports secure communication.
3. Enables selection of suitable cryptographic algorithms.
4. Helps maintain confidentiality and integrity.
5. Supports interoperability between IoT devices.

## **Quick Revision – Topic 1**

| Cryptographic primitive | Main purpose                             | Example         |
| ----------------------- | ---------------------------------------- | --------------- |
| Symmetric encryption    | Confidentiality                          | AES             |
| Asymmetric encryption   | Secure key establishment and encryption  | RSA, ECC        |
| Hash function           | Integrity verification                   | SHA-256         |
| MAC                     | Integrity and authenticity               | HMAC            |
| Digital signature       | Authenticity, integrity, non-repudiation | ECDSA           |
| RNG                     | Unpredictable random values              | CSPRNG          |
| Ciphersuite             | Combination of cryptographic algorithms  | TLS ciphersuite |

## **Topic 1 – Important exam questions**

1. Explain cryptography and its role in securing IoT.
2. Explain different types of cryptographic primitives used in IoT.
3. Explain symmetric and asymmetric encryption with diagrams.
4. Explain cryptographic hash functions and their properties.
5. What is a digital signature? Explain its creation and verification.
6. Explain Message Authentication Code (MAC).
7. Explain random number generation and its types.
8. What is a ciphersuite? Explain its components.

**Unit IV progress**

**1 of 6 topics completed**

17%

Next: Cryptographic Module Principles – an important repeated 9-mark PYQ.