# **Unit IV – Topic 4: Cryptographic Controls in IoT Communication Protocols**

This topic covers how **ZigBee, Bluetooth and Near Field Communication (NFC)** use cryptographic techniques to secure communication between IoT devices.

The main security objectives are:

1. **Confidentiality:** Prevent unauthorized users from reading transmitted data.
2. **Integrity:** Detect unauthorized modification of messages.
3. **Authentication:** Verify the identity of communicating devices.
4. **Access control:** Allow only authorized devices to join or communicate with a network.

## **1. Cryptographic Controls in ZigBee**

[Explore the Top Wireless Technologies for Communication and Data Transmission - DFRobot](https://images.openai.com/static-rsc-4/AGEOCHjgPJmKnkExYXdgdDsGgwQ_pjYkdFVLXCZz8d-vWSiau-VH1QKttBtCAkLBSyvp3sZiT70IFFUJ46RlPOj1QME7lr2UNsdjpXIclCmxUqP5-O1yqiWPwjW71tO9xvuirwJ5N31VlnPB5QnTMo424_Hn9DPJXkyy-PMyjPg?purpose=inline)

[dfrobot.com](https://www.dfrobot.com/blog-1658.html?utm_source=chatgpt.com)

**ZigBee** is a low-power, low-data-rate wireless communication protocol based on IEEE 802.15.4. It is commonly used in smart homes, industrial monitoring and IoT sensor networks.

### **Security mechanisms**

**1. AES-128 encryption**

- ZigBee uses Advanced Encryption Standard (AES) with a 128-bit key.
- It protects transmitted data from unauthorized access.

**2. Message Integrity**

- Uses AES-based Message Integrity Code (MIC) to detect message modification.
- Helps ensure that received messages have not been tampered with.

**3. Network Key**

- A shared network key is used to secure communication across the ZigBee network.
- Devices need the appropriate key to participate in protected network communication.

**4. Link Key**

- Used to provide security between specific communicating devices.
- Provides more device-specific protection than relying only on a common network key.

**5. Trust Center**

- A trusted network component responsible for security-related operations.
- Helps manage device authentication and key distribution.

### **Working**

1. A new device requests permission to join the ZigBee network.
2. The Trust Center manages the joining and security process.
3. The device receives the required network security key.
4. Data is encrypted using AES-128.
5. The receiving device verifies message integrity before accepting the data.

**Applications:** Smart lighting, home automation, smart energy meters and wireless sensors.

## **2. Cryptographic Controls in Bluetooth**

[Understanding Bluetooth LE Pairing—Step by Step - Technical Articles](https://images.openai.com/static-rsc-4/BIH7OApbwPqS-TwVcrDeKIyy09xfNBN8iMZAM9OOquLVLkAz_ZYkGEd7jGyjgJvkNz6GNFo1wgTm81Q17pwWFJ7rWvNwBixK4zuMtJn3cFH-wX_Vi9Ti6m5feRTUqbHtADH119LGYQFNxVwQuI5ShFCecEjwGhk6sIPNM9MjMN8?purpose=inline)

[allaboutcircuits.com](https://www.allaboutcircuits.com/technical-articles/understanding-bluetooth-le-pairingstep-by-step/?utm_source=chatgpt.com)

**Bluetooth** is a short-range wireless communication technology used to exchange data between nearby devices. Bluetooth Low Energy (BLE) is particularly useful for low-power IoT devices.

### **Security mechanisms**

**1. Encryption**

- Bluetooth uses AES-based encryption for link protection.
- Bluetooth LE uses AES-CCM for encryption and message authentication.

**2. Pairing**

- Pairing establishes security information between two Bluetooth devices.
- It may involve passkeys, numeric comparison or other supported methods.

**3. Authentication**

- Helps verify that the connected device possesses the required security credentials.
- Bluetooth LE Secure Connections uses Elliptic Curve Diffie-Hellman (ECDH) for key agreement.

**4. Bonding**

- Stores security information generated during pairing.
- Allows devices to reconnect securely without repeating the entire pairing process.

**5. Privacy**

\- Bluetooth LE can use resolvable private addresses to make tracking devices more difficult.

### **Working**

1. Two Bluetooth devices discover each other.
2. They initiate pairing.
3. They establish shared security information.
4. Encryption keys are generated or derived.
5. Encrypted communication takes place.
6. Bonding may store the security information for future connections.

**Applications:** Fitness bands, smart watches, wireless sensors, medical monitoring devices and smart locks.

## **3. Cryptographic Controls in Near Field Communication (NFC)**

[What Does NFC Stand for and What Does It Do?](https://images.openai.com/static-rsc-4/UdPAF_TJkvPGyE_XcYqky-HjQzKbVfh7QYwuWz4Vr0uDez2cftw7t5AyRXDJtcpGmSNq2-wB-IKU1Wnzt0qughKSRCnEzsLKeiBjfZ5QL24-Fe7qCS3lmxglYXtWoacYFT7qc5voi-kKQ2I05pIIrb5A-hwx-gds0WOIP2AJyuI?purpose=inline)

[rfidsilicone.com](https://www.rfidsilicone.com/blog/industry-news/what-does-nfc-stand-for-and-what-does-it-do.html?utm_source=chatgpt.com)

**Near Field Communication (NFC)** is a short-range wireless communication technology that allows two devices to exchange information when they are placed very close to each other.

It is commonly used in contactless payments, access cards and smart devices.

### **Security mechanisms**

**1. Authentication**

- Verifies the identity or credentials of the communicating devices.
- Secure NFC applications may use challenge-response mechanisms.

**2. Encryption**

- Sensitive NFC applications can use cryptographic encryption to protect transmitted information.
- NFC itself does not automatically encrypt every communication.

**3. Secure Elements**

- A Secure Element can store sensitive information such as payment credentials and cryptographic keys.
- It protects sensitive operations from ordinary application access.

**4. Message Integrity**

- Cryptographic MACs can help detect unauthorized changes to messages.
- Integrity protection depends on the application or protocol used.

**5. Secure Communication**

\- Secure NFC applications may use cryptographic protocols and protected application-level exchanges to safeguard sensitive data.

### **Working**

1. Two NFC-enabled devices are brought close to each other.
2. The devices establish communication.
3. The application performs authentication when required.
4. Sensitive information is exchanged using appropriate security mechanisms.
5. The receiving application verifies the message and processes the data.

**Applications:** Contactless payments, access control cards, public transport cards and device pairing.

## **4. Comparison: ZigBee vs Bluetooth vs NFC**

| Feature                 | ZigBee                   | Bluetooth                              | NFC                                 |
| ----------------------- | ------------------------ | -------------------------------------- | ----------------------------------- |
| Communication range     | Typically 10–100 m       | Typically 10–100 m, depending on class | Usually a few centimetres           |
| Standard / technology   | IEEE 802.15.4-based      | Bluetooth standard                     | NFC Forum / ISO standards           |
| Main security mechanism | AES-128                  | AES-based encryption                   | Application-dependent cryptography  |
| Key management          | Network key and link key | Pairing and bonding                    | Application or secure-element based |
| Main use                | Sensor networks          | Wearables and peripherals              | Contactless payments and access     |
| Power consumption       | Low                      | Low with BLE                           | Generally low                       |

## **5. Security Challenges in IoT Communication Protocols**

1. **Key compromise:** Attackers may obtain encryption keys and access protected communication.
2. **Man-in-the-middle attack:** An attacker may intercept or manipulate communication.
3. **Replay attack:** Previously captured messages may be retransmitted.
4. **Device impersonation:** An unauthorized device may pretend to be a trusted device.
5. **Weak pairing or configuration:** Poor security settings may allow unauthorized access.

**Security measures:** Use secure pairing, strong key management, mutual authentication where supported, regular key rotation, secure configuration and updated firmware.

## **6. Previous-Year Exam Preparation**

Important areas from the previously identified papers:

- **Cryptographic controls built into IoT protocols** – 9 marks.
- **Cryptographic control in ZigBee protocol** – 9 marks.

For these questions, prepare ZigBee in detail and understand the security mechanisms of Bluetooth and NFC for comparison.

## **7. How to Write a 9-Mark Answer**

For a question on cryptographic controls in IoT communication protocols:

1. Define IoT communication protocols.
2. Explain ZigBee and its security mechanisms.
3. Explain Bluetooth and its security mechanisms.
4. Explain NFC and its security mechanisms.
5. Add a comparison table.
6. Conclude with the importance of cryptographic controls.

**Exam tip:** If the question specifically asks about ZigBee, spend most of your answer explaining AES-128, network keys, link keys and the Trust Center rather than writing lengthy descriptions of Bluetooth and NFC.

Topic 4 completed

**Next topic: Cryptographic Controls in IoT Messaging Protocols** – MQTT, CoAP, DDS and REST.