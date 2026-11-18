# **Unit IV – Topic 3: Cryptographic Key Management Fundamentals**

Important – Repeated 9-mark PYQ

This topic covers the complete lifecycle of cryptographic keys, from their creation to secure destruction.

## **1. What is Cryptographic Key Management?**

Cryptographic Key Management is the process of **generating, distributing, storing, using, updating, protecting, and destroying cryptographic keys securely** throughout their lifecycle.

In IoT, keys are used to:

- Encrypt communication between devices.
- Authenticate devices and users.
- Protect sensor data.
- Secure firmware updates.
- Establish secure connections with gateways and cloud platforms.

**Key management lifecycle:**

**Key Generation**

**Key Establishment**

**Key Derivation**

**Key Storage**

**Key Usage and Lifetime**

**Key Rotation / Revocation**

**Key Zeroization**

Key management lifecycle – simplified representation

## **2. Phases of Cryptographic Key Management**

### **1. Key Generation**

Key generation is the process of creating strong and unpredictable cryptographic keys.

- Keys must be generated using a secure random number generator (CSPRNG).
- Key length must be appropriate for the algorithm.
- Keys must not be predictable or reused unnecessarily.

**Example:** Generating a 256-bit AES key for encrypting IoT sensor data.

### **2. Key Establishment**

Key establishment is the process of securely enabling two or more parties to obtain a common cryptographic key.

It can be achieved through:

- **Key Transport:** One party securely generates and sends a key to another party.
- **Key Agreement:** Both parties contribute information to derive a shared secret.

**Example:** Two IoT devices use Elliptic Curve Diffie-Hellman (ECDH) to establish a shared secret.

Authentication is important to prevent man-in-the-middle attacks.

### **3. Key Derivation**

Key derivation is the process of generating one or more cryptographic keys from an existing secret key or shared secret using a Key Derivation Function (KDF).

**Example:** HKDF (HMAC-based Key Derivation Function).

Uses:

- Generate separate encryption and authentication keys.
- Create session-specific keys.
- Derive keys for different communication purposes.

**Example:** A shared secret established using ECDH is passed through HKDF to generate a session encryption key.

Shared Secret

Key Derivation Function (HKDF)

Encryption Key

Authentication Key

### **4. Key Storage**

Key storage refers to securely storing cryptographic keys so unauthorized users or attackers cannot access them.

Methods:

- Hardware Security Module (HSM).
- Trusted Platform Module (TPM).
- Secure Element (SE).
- Encrypted storage with strict access controls.

**Example:** An IoT device stores its private key inside a Secure Element instead of ordinary application memory.

### **5. Key Escrow**

Key escrow is a mechanism in which a trusted third party securely holds a backup or copy of selected cryptographic keys under controlled conditions.

Uses:

- Recovery of keys when the original key is lost.
- Business continuity.
- Controlled access where legally or organizationally required.

**Example:** An organization maintains a protected backup of certain data-encryption keys so authorized recovery is possible.

**Limitation:** Key escrow creates an additional security risk because compromise of the escrow system may expose protected data. Not every key should be escrowed.

### **6. Key Lifetime**

Key lifetime refers to the period during which a cryptographic key is considered valid and authorized for use.

Keys should not be used indefinitely.

Factors affecting key lifetime:

- Algorithm and key size.
- Sensitivity of protected data.
- Amount of data encrypted.
- Security policy.
- Risk of key compromise.

**Key rotation:** Replacing an old key with a new key after a defined period or when required.

**Example:** An IoT platform periodically rotates device communication keys to reduce the impact of possible key exposure.

### **7. Key Zeroization**

Key zeroization is the process of securely erasing cryptographic keys from memory or storage so that they cannot be recovered or reused.

It is performed when:

- A key expires.
- A key is compromised.
- A device is decommissioned.
- A device is transferred to another owner.

**Example:** Before disposing of an IoT gateway, its stored cryptographic keys are securely erased.

### **8. Key Accounting and Management**

Key accounting and management involve maintaining records and controlling keys throughout their lifecycle.

Activities include:

- Maintaining a key inventory.
- Assigning unique key identifiers.
- Recording key creation and ownership.
- Tracking key distribution and usage.
- Monitoring key expiration.
- Performing key rotation and revocation.
- Maintaining audit records.
- Recording secure key destruction.

This helps organizations identify which keys are active, expired, compromised, or destroyed.

## **3. Difference Between Important Key Management Terms**

| Term              | Meaning                                                |
| ----------------- | ------------------------------------------------------ |
| Key establishment | Securely enables parties to obtain a shared key        |
| Key derivation    | Creates new keys from an existing secret               |
| Key storage       | Protects keys while they are stored                    |
| Key escrow        | Keeps a controlled backup of selected keys             |
| Key lifetime      | Defines how long a key remains valid                   |
| Key revocation    | Invalidates a key before or at the end of its validity |
| Key zeroization   | Securely erases the key                                |

## **4. Importance of Key Management in IoT**

1. **Confidentiality:** Prevents unauthorized access to sensitive IoT data.
2. **Authentication:** Ensures that only trusted devices communicate.
3. **Scalability:** Supports secure management of thousands of IoT devices.
4. **Compromise recovery:** Allows compromised keys to be revoked and replaced.
5. **Secure communication:** Protects communication between devices, gateways and cloud platforms.
6. **Device lifecycle security:** Ensures keys are removed when devices are retired.

## **5. Previous Year Question Mapping**

| PYQ                                                                    | Marks |
| ---------------------------------------------------------------------- | ----- |
| Enlist and explain phases of cryptographic key management fundamentals | 9     |
| Explain cryptographic key management fundamentals                      | 9     |
| Explain key derivation and key lifetime                                | 9     |

## **6. How to Write This in the Exam**

For a 9-mark question on key management fundamentals:

1. Define cryptographic key management.
2. Draw the key management lifecycle diagram.
3. Explain the eight phases with 2–3 points each.
4. Add an IoT example.
5. Conclude with its importance in securing IoT devices and communication.

**For the specific question “Explain key derivation and key lifetime”:** Give more detail on KDF, HKDF, purpose-specific keys, validity period, key rotation and expiration.

Topic 3 completed

**Next topic: Cryptographic Controls in IoT Communication Protocols** – ZigBee, Bluetooth and NFC.