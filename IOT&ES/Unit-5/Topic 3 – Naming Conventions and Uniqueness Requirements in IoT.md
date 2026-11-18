# **Unit V – Topic 3: Naming Conventions and Uniqueness Requirements in IoT**

PYQ – 9 marks

**Previous-year question:** "Describe naming conventions and uniqueness requirements in IoT." – November/December 2022 and May/June 2024 papers.&#x20;

Nov_Dec_2022 (4)(1).pdf

May_Jun_2024 (4)(1).pdf



## **1. What is Naming in IoT?**

Naming is the process of assigning a meaningful identifier or name to every IoT entity, such as devices, sensors, users, gateways and applications.

It helps identify, locate, manage and communicate with individual IoT entities.

**Example:**

A smart factory may contain:

- `TEMP_SENSOR_001`
- `TEMP_SENSOR_002`
- `HUMIDITY_SENSOR_001`
- `GATEWAY_FACTORY_01`

Each name helps administrators recognize the corresponding device.

## **2. What are Naming Conventions?**

Naming conventions are predefined rules and standards used to assign consistent and meaningful names to IoT devices and other entities.

They ensure that device identities are organized, understandable and manageable.

### **Important naming conventions**

**1. Meaningful Names**

- Names should describe the purpose or function of a device.
- Avoid random or confusing names.
- Example: `TEMP_SENSOR_01`.

**2. Consistent Naming Format**

- Follow a standard naming structure across the IoT network.
- Use consistent abbreviations and separators.
- Example: `LOCATION_DEVICE_TYPE_NUMBER`.

**3. Device Type Identification**

- Include device categories in the name.
- Example: `TEMP`, `CAMERA`, `METER`, `GATEWAY`.

**4. Location-Based Naming**

- Include location information where useful.
- Helps identify devices across different buildings or areas.
- Example: `PUNE_FACTORY_TEMP_01`.

**5. Unique Identifiers**

- Every device should have an identifier that distinguishes it from other devices.
- Avoid assigning the same identity to multiple devices within the relevant identity namespace.

**6. Standardized Naming**

- Follow organizational or industry standards where applicable.
- Maintain naming rules throughout the device lifecycle.

## **3. What are Uniqueness Requirements?**

Uniqueness requirements ensure that every IoT entity has a distinct identity within its defined identification system.

If two devices share the same identifier within the same namespace, the system may confuse them, resulting in communication and security problems.

### **Important uniqueness requirements**

**1. Globally or Namespace-Unique Identity**

Each device should have a unique identifier within the required scope, such as an organization, network or global identifier system.

**2. Non-Duplication**

The identity management system should prevent duplicate identifiers from being assigned to different devices in the same namespace.

**3. Persistent Identity**

An identifier should remain associated with the same device throughout its intended lifecycle, unless a controlled identity reassignment process is used.

**4. Scalability**

The identification system should support a growing number of IoT devices without creating collisions.

**5. Reliable Identification**

Identifiers should allow devices to be distinguished accurately during communication, monitoring and management.

**6. Security**

Identifiers should not be treated as authentication secrets. Device identity must be verified using appropriate credentials, such as certificates or cryptographic keys.

## **4. Common Identification Methods in IoT**

| Identification method | Description                               | Example                                |
| --------------------- | ----------------------------------------- | -------------------------------------- |
| MAC Address           | Network interface identifier              | `00:1A:2B:3C:4D:5E`                    |
| IP Address            | Network address                           | `192.168.1.10`                         |
| UUID                  | Universally Unique Identifier             | `550e8400-e29b-41d4-a716-446655440000` |
| RFID                  | Identification using radio-frequency tags | Product identification tag             |
| Device Serial Number  | Manufacturer-assigned identifier          | `SN202600123`                          |

**Important distinction:** An IP address may change when a device moves between networks. A MAC address identifies a network interface, not necessarily the entire physical device. A UUID can provide a stable application-level identifier.

## **5. Example: Naming System in a Smart Factory**

Suppose a factory contains three types of IoT devices:

| Device             | Assigned identity  |
| ------------------ | ------------------ |
| Temperature sensor | `PUNE_TEMP_001`    |
| Humidity sensor    | `PUNE_HUM_001`     |
| Smart energy meter | `PUNE_ENERGY_001`  |
| Factory gateway    | `PUNE_GATEWAY_001` |

The naming structure is:

**Example naming format**

# **PUNE_TEMP_001**

**PUNE**

Location

**TEMP**

Device type

**001**

Device number

This naming system makes devices easier to recognize, organize and manage.

## **6. Problems Caused by Duplicate or Poor Naming**

1. **Device confusion:** The system may identify the wrong device.
2. **Communication errors:** Messages may be delivered to an unintended device.
3. **Security risks:** Attackers may exploit weak identity management to impersonate devices.
4. **Management difficulties:** Administrators may struggle to track devices.
5. **Scalability issues:** Poor naming structures become difficult to manage as the network grows.
6. **Monitoring problems:** Logs and security alerts may become unreliable or confusing.

## **7. Benefits of Proper Naming and Uniqueness**

- Accurate device identification.
- Easier device registration and management.
- Improved communication reliability.
- Reduced identity conflicts.
- Better monitoring and troubleshooting.
- Support for large-scale IoT deployments.
- Improved identity and access management.

## **8. Naming Conventions vs Uniqueness Requirements**

| Naming conventions                   | Uniqueness requirements                                   |
| ------------------------------------ | --------------------------------------------------------- |
| Define how names are structured      | Ensure identities are distinct                            |
| Focus on consistency and readability | Focus on avoiding identity collisions                     |
| Example: `PUNE_TEMP_001`             | No other device has the same identifier in that namespace |
| Improve organization                 | Improve identification reliability                        |

## **9. How to Write This Answer in the Exam**

For the 9-mark PYQ:

1. Define naming in IoT.
2. Explain naming conventions.
3. Explain uniqueness requirements.
4. Write common identification methods.
5. Draw or provide a smart factory naming example.
6. Explain benefits and conclude.

**Remember:** Naming conventions answer *how should we name devices?* Uniqueness requirements answer *how do we ensure that every device can be distinguished?*

Topic 3 completed

**Next: Topic 4 – Secure Bootstrap and Credential & Attribute Provisioning**, covering how a newly manufactured or installed IoT device securely joins an IoT network.