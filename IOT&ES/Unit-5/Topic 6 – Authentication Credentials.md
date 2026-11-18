Unit V – Topic 6: Authentication Credentials
High priority – IEEE 1609.2 is a repeated PYQ
Authentication credentials are the information or security mechanisms used to verify the identity of an IoT device, user or application.

In IoT, authentication is important because thousands of devices communicate over networks and may be deployed in physically insecure environments.
1. Password-Based Authentication
Definition: Password-based authentication verifies a user's or device's identity using a secret combination of characters.
Working
1. User or device enters a username and password.
2. The authentication server receives the credentials.
3. The server compares the password with its securely stored password hash.
4. If valid, authentication succeeds.
5. If invalid, access is denied.
User / IoT Device
Username and Password
Authentication Server
Verify Password Hash
Valid: Allow
Invalid: Deny


Advantages
- Easy to implement.
- Low implementation cost.
- Familiar to users.
- Suitable for basic IoT applications.
Limitations
- Weak passwords can be guessed.
- Vulnerable to brute-force and dictionary attacks.
- Passwords may be stolen through phishing.
- Difficult to manage across large IoT networks.
Security measures: Use strong unique passwords, salted password hashing, rate limiting, multi-factor authentication and secure communication.
2. Symmetric Key-Based Authentication
Definition: Symmetric key authentication uses the same secret cryptographic key for generating and verifying authentication data.
Working
1. The IoT device and server share a secret key.
2. The device generates a challenge response or Message Authentication Code (MAC) using the secret key.
3. The server independently verifies the response using the same key.
4. If verification succeeds, the device is authenticated.
IoT Device
Generate MAC using Shared Secret Key
Send Message + MAC to Server
Server Verifies MAC Using Same Key
Authentication Success / Failure

Advantages
- Efficient and fast.
- Requires less computational power.
- Suitable for resource-constrained IoT devices.
- Can provide message integrity and authentication using MAC algorithms.
Limitations
- Secure key distribution is difficult.
- If the shared key is compromised, an attacker may impersonate the device.
- Managing unique keys for millions of devices is challenging.
Example: A smart meter and its management server share a secret key to authenticate communication.
3. X.509 Digital Certificates
Definition: X.509 is a standard format for digital certificates that bind an entity's identity to its public key. Certificates are commonly issued and digitally signed by a trusted Certificate Authority (CA).
Important components
- Subject: Identity of the device or entity.
- Public key: Public cryptographic key of the entity.
- Issuer: Certificate Authority that issued the certificate.
- Validity period: Certificate start and expiry dates.
- Serial number: Unique certificate identifier.
- Digital signature: CA's signature used to verify certificate authenticity.
Working
1. IoT device receives an X.509 certificate from a CA.
2. The device presents its certificate to the server.
3. The server checks the CA's digital signature.
4. It checks the certificate's validity period and revocation status.
5. The device proves possession of the corresponding private key, commonly through a TLS handshake.
6. If verification succeeds, the device is authenticated.
Certificate Authority (CA)
Issues Signed X.509 Certificate
IoT Device Presents Certificate
Server Validates Certificate and Private-Key Possession
Device Authenticated

Advantages
- Strong device authentication.
- Supports scalable certificate-based trust.
- Private keys are not shared with the server.
- Supports secure communication protocols such as TLS.
Limitations
- Certificate issuance and management are complex.
- Requires secure private-key storage.
- Certificate renewal and revocation must be managed.
- Can require more resources than simple symmetric-key authentication.
Example: An industrial IoT gateway uses an X.509 certificate to prove its identity to a cloud server.
4. IEEE 1609.2 Security Standard
Repeated 8-mark PYQ
Definition: IEEE 1609.2 is a security standard for Wireless Access in Vehicular Environments (WAVE). It defines security services and message formats used to secure communication in vehicular networks, including Vehicle-to-Everything (V2X) communication.
Objectives
1. Provide authentication of vehicular messages.
2. Ensure message integrity.
3. Protect messages against modification.
4. Support privacy of communicating vehicles.
5. Enable secure V2X communication.
Main security mechanisms
1. Digital signatures
- Messages can be digitally signed by the sender.
- Receivers verify signatures to check authenticity and integrity.
2. Digital certificates
- Uses certificates to establish trust in public keys.
- Supports certificate-based verification of communicating entities.
3. Encryption
- Supports confidentiality for messages that require protection.
- Helps prevent unauthorized parties from reading protected information.
4. Pseudonym certificates
- Vehicles can use different pseudonymous certificates instead of continuously exposing one permanent identity.
- This helps reduce the ability to track a vehicle through its communications.
Working of IEEE 1609.2
1. A vehicle obtains a valid security certificate.
2. It creates a safety message, such as a speed or position notification.
3. The message is digitally signed.
4. The signed message is transmitted to nearby vehicles.
5. The receiving vehicle verifies the certificate and digital signature.
6. If verification succeeds, the message is accepted as authentic.
Vehicle A
Create Message + Sign Digitally
Transmit Secure V2X Message
Vehicle B Verifies Certificate and Signature
Accept Authentic Message

Applications
- Vehicle-to-Vehicle (V2V) communication.
- Vehicle-to-Infrastructure (V2I) communication.
- Road safety alerts.
- Collision warnings.
- Intelligent transportation systems.
Example: When a vehicle detects sudden braking, it sends a signed warning message to nearby vehicles. They verify the message before using it to warn their drivers.

Important distinction: IEEE 1609.2 is not simply another name for X.509. X.509 defines a general certificate format, whereas IEEE 1609.2 specifies security services and message structures for vehicular communication, including its certificate mechanisms.
5. Biometric Authentication
Definition: Biometric authentication verifies an individual's identity using unique physical or behavioural characteristics.
Types of biometrics
Physical biometrics	Behavioural biometrics
Fingerprint	Voice pattern
Face recognition	Typing pattern
Iris recognition	Gait recognition
Retina recognition	Signature dynamics

Working
1. The system captures biometric information.
2. It extracts important features.
3. It compares those features with a previously stored biometric template.
4. If the similarity score meets the required threshold, authentication succeeds.
5. Otherwise, access is denied.
Advantages
- Convenient for users.
- Difficult to duplicate compared with ordinary passwords.
- Does not require remembering passwords.
- Useful for smart locks and access-control systems.
Limitations
- Requires additional sensors.
- False acceptance and rejection are possible.
- Biometric data is sensitive.
- If biometric information is compromised, it cannot be changed as easily as a password.
Example: A smart door lock uses fingerprint recognition to authenticate an authorized person.
6. Comparison of Authentication Credentials
Credential	Authentication mechanism	Major advantage	Major limitation
Password	Secret character combination	Simple	Guessing and theft
Symmetric key	Shared secret key	Fast and efficient	Key distribution
X.509 certificate	Certificate and private-key proof	Scalable trust	Complex management
IEEE 1609.2	Signed vehicular messages and certificates	Secure V2X communication	Specialized infrastructure
Biometrics	Physical or behavioural traits	Convenient	Sensitive biometric data

7. Conclusion
Authentication credentials are an essential component of IoT identity and access management. Passwords, symmetric keys, digital certificates and biometrics provide different authentication mechanisms. IEEE 1609.2 supports secure vehicular communication through certificates, digital signatures and other security services. The selection of credentials depends on security requirements, device capabilities, cost and scalability.
PYQ preparation
Topic	Priority
IEEE 1609.2	Very high
X.509 certificates	Important
Symmetric key authentication	Important
Password authentication	Important
Biometric authentication	Important

Exam strategy for IEEE 1609.2 (8 marks): Write its definition, objectives, security mechanisms, working diagram, applications and conclusion. Give special attention to digital signatures and pseudonym certificates.

Topic 6 completed
Next: Topic 7 – IoT IAM Infrastructure
1. IEEE 802.1X authentication architecture.
2. Supplicant, Authenticator and Authentication Server.
3. EAP and RADIUS.
4. Public Key Infrastructure (PKI) for IoT.
5. Certificate Authority, certificate issuance, validation and revocation.