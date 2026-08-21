````markdown
# 17. Cryptographic Security APIs

## PYQ

**No PYQ**

---

## 1. Definition

**Cryptographic Security APIs** are software interfaces that allow IoT applications and devices to use cryptographic operations without having to implement the underlying cryptographic algorithms themselves.

They provide functions for:

- Encryption
- Decryption
- Hashing
- Digital signatures
- Key generation
- Key management
- Random-number generation
- Authentication

In IoT, cryptographic APIs help protect **data, device identity, communication, firmware, and credentials**.

---

# 2. Why Cryptographic APIs Are Important in IoT

IoT devices communicate over potentially insecure networks and often process sensitive information.

Cryptographic APIs help provide:

- **Confidentiality** — prevents unauthorized access to data.
- **Integrity** — detects unauthorized modification.
- **Authentication** — verifies users and devices.
- **Non-repudiation** — provides evidence of the origin of data or an action.
- **Secure communication** — protects data exchanged between IoT components.

Instead of implementing cryptography manually, developers can use tested cryptographic APIs.

---

# 3. Basic Cryptographic Operations

## 3.1 Encryption

Encryption converts readable data called **plaintext** into unreadable data called **ciphertext**.

```text
Plaintext
    ↓
Encryption + Key
    ↓
Ciphertext
````

The ciphertext can be converted back to plaintext using the appropriate key.

### IoT Example

A sensor sends sensitive data to a cloud server.

The sensor encrypts the data before transmission so that an attacker intercepting the communication cannot easily read it.

---

# 4. Decryption

**Decryption** converts ciphertext back into the original plaintext using the appropriate key.

```text
Ciphertext
    ↓
Decryption + Key
    ↓
Plaintext
```

---

# 5. Symmetric Cryptography

In **symmetric cryptography**, the same secret key is used for encryption and decryption.

```text
Plaintext
    ↓
Encryption + Secret Key
    ↓
Ciphertext
    ↓
Decryption + Same Secret Key
    ↓
Plaintext
```

### Advantages

* Fast
* Requires relatively low computational resources
* Suitable for resource-constrained IoT devices

### Disadvantage

The secret key must be securely shared between the communicating parties.

---

# 6. Asymmetric Cryptography

In **asymmetric cryptography**, two related keys are used:

* Public key
* Private key

The public key can be shared, while the private key must be protected.

Asymmetric cryptography is commonly used for:

* Authentication
* Key exchange
* Digital signatures
* Device identity

### Example

A device can use its private key to create a digital signature, while another system uses the corresponding public key to verify it.

---

# 7. Hashing

A **hash function** converts input data into a fixed-size value called a hash or digest.

```text
Input Data
    ↓
Hash Function
    ↓
Hash Value
```

A small change in the input should produce a different hash value.

Hashing is commonly used for:

* Integrity verification
* Password protection
* Firmware verification
* Digital signatures

### Example

The hash of firmware can be calculated before installation and compared with the expected hash to detect modification.

---

# 8. Digital Signatures

A **digital signature** provides:

* Authentication
* Integrity
* Non-repudiation

Basic process:

```text
Data
 ↓
Hash
 ↓
Sign using Private Key
 ↓
Digital Signature
```

The receiver uses the sender's public key to verify the signature.

### IoT Example

Firmware released by a manufacturer can be digitally signed.

The IoT device verifies the signature before installing the firmware.

---

# 9. Key Management

Cryptographic security depends heavily on proper key management.

Key management includes:

1. Key generation
2. Key storage
3. Key distribution
4. Key usage
5. Key rotation
6. Key revocation
7. Key destruction

If cryptographic keys are stolen, the security of the system may be compromised.

---

# 10. Random Number Generation

Cryptographic systems require secure random values for:

* Keys
* Nonces
* Initialization vectors
* Authentication protocols

IoT devices should use a **cryptographically secure random-number generator** where required.

Weak random numbers can make cryptographic systems vulnerable.

---

# 11. Authentication Using Cryptographic APIs

Cryptographic APIs can support device authentication.

### Example

```text
IoT Device
    ↓
Provides Certificate / Signature
    ↓
Server Verifies Cryptographic Proof
    ↓
Device Authenticated
```

This prevents unauthorized devices from joining the IoT network.

---

# 12. Secure Communication

Cryptographic APIs are commonly used as part of secure communication protocols such as TLS.

A simplified process is:

```text
IoT Device
    ↓
Authentication / Key Exchange
    ↓
Secure Session
    ↓
Encrypted Communication
    ↓
Cloud Server
```

This protects data from interception and modification.

---

# 13. Cryptographic API Functions in IoT

A cryptographic API may provide functions such as:

| Function        | Purpose                      |
| --------------- | ---------------------------- |
| Encrypt         | Protect data confidentiality |
| Decrypt         | Recover protected data       |
| Hash            | Verify integrity             |
| Sign            | Create digital signatures    |
| Verify          | Verify digital signatures    |
| Generate Key    | Create cryptographic keys    |
| Generate Random | Create secure random values  |
| Import Key      | Load an existing key         |
| Export Key      | Export keys where permitted  |
| Destroy Key     | Securely remove keys         |

---

# 14. Hardware-Backed Cryptography

Some IoT devices provide hardware security features.

Examples include:

* Secure elements
* Trusted Platform Modules
* Hardware security modules
* Cryptographic accelerators

These can provide:

* Secure key storage
* Hardware-based cryptographic operations
* Device identity protection
* Protection against key extraction

Hardware-backed cryptography can be particularly useful for devices exposed to physical attacks.

---

# 15. Cryptographic APIs and Resource-Constrained Devices

IoT devices often have limited:

* CPU
* RAM
* Storage
* Battery

Therefore, cryptographic APIs should be:

* Lightweight
* Efficient
* Suitable for embedded systems
* Secure
* Compatible with the device

Developers should avoid unnecessarily expensive cryptographic operations on highly constrained devices.

---

# 16. Secure Firmware Updates

Cryptographic APIs are important for secure firmware updates.

A typical process is:

```text
Manufacturer
     ↓
Create Firmware
     ↓
Calculate Hash
     ↓
Sign Firmware
     ↓
Distribute Update
     ↓
IoT Device
     ↓
Verify Signature
     ↓
Verify Integrity
     ↓
Install Firmware
```

If the signature is invalid, the device should reject the firmware.

---

# 17. Protecting Stored Data

Cryptographic APIs can also be used to protect sensitive information stored on IoT devices.

Examples:

* Passwords
* Credentials
* Device keys
* Sensor data
* Configuration information

Sensitive information should be protected using appropriate encryption and secure key management.

---

# 18. Cryptographic API Design Principles

When using cryptographic APIs:

### 1. Use well-tested libraries

Avoid implementing cryptographic algorithms from scratch.

### 2. Protect keys

Keys should be securely stored and managed.

### 3. Use appropriate algorithms

The algorithm should provide sufficient security for the application.

### 4. Use secure random numbers

Random values used in cryptography must be generated securely.

### 5. Validate inputs

Incorrect inputs should be handled safely.

### 6. Handle errors securely

Errors should not expose sensitive information.

### 7. Keep libraries updated

Security vulnerabilities in cryptographic libraries should be patched.

---

# 19. Example — Smart Lock

Consider an IoT smart lock.

### Requirements

* Authenticate the user.
* Protect communication.
* Prevent unauthorized firmware.
* Protect cryptographic keys.

### Cryptographic API usage

```text
User
 ↓
Authentication
 ↓
Cryptographic Verification
 ↓
Authorization
 ↓
Unlock Command
 ↓
Smart Lock
```

Communication can be encrypted and firmware can be digitally signed.

---

# 20. Example — IoT Sensor

Consider a temperature sensor sending data to a cloud server.

### Process

```text
Temperature Data
       ↓
Encryption
       ↓
Secure Network
       ↓
Cloud Server
       ↓
Decryption
       ↓
Temperature Data
```

The cryptographic API provides the required encryption and decryption functions.

---

# 21. Advantages of Cryptographic Security APIs

## 1. Easier development

Developers can use existing cryptographic functions.

## 2. Reduced implementation errors

Well-tested libraries reduce the risk of incorrect cryptographic implementations.

## 3. Reusability

The same API can be used by multiple applications.

## 4. Better security

Established cryptographic libraries generally provide safer implementations than custom cryptography.

## 5. Hardware integration

APIs can provide access to hardware-backed cryptographic functions.

## 6. Interoperability

Standard APIs can make it easier to integrate security mechanisms with other software and services.

---

# 22. Limitations and Challenges

Cryptographic APIs also have challenges:

* Limited device resources
* Key-management complexity
* Processing overhead
* Memory requirements
* Incorrect API usage
* Vulnerable or outdated libraries
* Secure key storage requirements
* Compatibility issues

Using a cryptographic API does not automatically make an IoT system secure. It must be configured and used correctly.

---

# 23. Important Points to Remember

* Cryptographic APIs provide software interfaces for cryptographic operations.
* They support encryption, decryption, hashing, signatures, and key management.
* Symmetric cryptography uses a shared secret key.
* Asymmetric cryptography uses public and private keys.
* Hashing is mainly used for integrity-related purposes.
* Digital signatures provide authentication and integrity.
* Secure key management is essential.
* Cryptographic APIs can support secure communication and firmware updates.
* Hardware-backed cryptography provides stronger key protection.
* APIs should use well-tested cryptographic libraries.
* Developers should avoid implementing cryptographic algorithms themselves unless they have specialized expertise.

---

# 24. Exam Answer — 10 Marks

## Explain Cryptographic Security APIs in IoT

**Cryptographic Security APIs** are software interfaces that provide cryptographic functions to IoT applications without requiring developers to implement cryptographic algorithms themselves. They are used to protect IoT devices, data, communication, firmware, and credentials.

The major functions of cryptographic security APIs are:

1. **Encryption:** Converts plaintext into ciphertext to provide confidentiality.

2. **Decryption:** Converts ciphertext back into plaintext for authorized users or systems.

3. **Symmetric cryptography:** Uses the same secret key for encryption and decryption and is suitable for resource-constrained IoT devices because it is efficient.

4. **Asymmetric cryptography:** Uses public and private keys and is commonly used for authentication, key exchange, and digital signatures.

5. **Hashing:** Produces a fixed-size digest that can be used to verify data integrity.

6. **Digital signatures:** Provide authentication, integrity, and non-repudiation.

7. **Key management:** Supports key generation, storage, distribution, rotation, revocation, and destruction.

8. **Random-number generation:** Provides secure random values required for cryptographic keys, nonces, and other security operations.

9. **Secure communication:** Cryptographic APIs can support secure protocols such as TLS for protecting communication between IoT devices, gateways, and cloud servers.

10. **Secure firmware updates:** Firmware can be digitally signed and verified before installation to prevent unauthorized firmware from running.

11. **Hardware-backed security:** APIs may provide access to secure elements or cryptographic hardware for protecting keys and performing cryptographic operations.

### Conclusion

Cryptographic Security APIs provide standardized and reusable mechanisms for implementing security in IoT systems. They help provide **confidentiality, integrity, authentication, and secure communication**, while reducing the need for developers to implement cryptographic algorithms manually.

---

# 25. Short Exam Answer — 5 Marks

**Cryptographic Security APIs** provide software interfaces for performing cryptographic operations in IoT systems.

They provide functions such as:

1. Encryption and decryption.
2. Hashing.
3. Digital signatures.
4. Key generation and management.
5. Secure random-number generation.
6. Authentication.
7. Secure communication.
8. Firmware verification.

They help protect **data, device identity, communication, firmware, and cryptographic keys**.

Thus, cryptographic APIs provide reusable and secure mechanisms for implementing cryptographic security in IoT devices and applications.

---

# 26. Quick Revision

## Cryptographic Security APIs

```text
Cryptographic API
       ↓
 ┌─────┼─────┬─────────┐
 ↓     ↓     ↓         ↓
Encrypt Hash  Sign   Key Management
 ↓     ↓     ↓         ↓
Data  Integrity Auth   Secure Keys
```

### Main Functions

* **Encryption** → Confidentiality
* **Hashing** → Integrity
* **Digital Signature** → Authentication + Integrity
* **Key Management** → Protects cryptographic keys
* **Random Generation** → Secure cryptographic values
* **Decryption** → Recovers protected data

### Main Types

**Symmetric Cryptography**
→ Same secret key

**Asymmetric Cryptography**
→ Public + private key

---

## Exam Status

❌ **No PYQ**

### Priority

🟡 **MEDIUM**

Focus on the **definition, functions, types of cryptography, key management, IoT applications, and 10-mark answer**.

```
```
