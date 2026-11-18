# **Unit V – Topic 8: Authorization and Access Control in IoT**

Very high priority – ABAC is a repeated 9-mark PYQ

## **1. Authorization in IoT**

**Definition:** Authorization is the process of deciding what resources an authenticated user, device or application is allowed to access and what operations it can perform.

For example, in a smart home:

- A homeowner can control all smart devices.
- A guest can control only selected lights.
- A temperature sensor can send readings but cannot change security settings.

### **Objectives of authorization**

1. Prevent unauthorized access to IoT resources.
2. Enforce security policies.
3. Provide permissions according to user roles and attributes.
4. Protect sensitive information.
5. Ensure least-privilege access.
6. Support secure communication among IoT devices.

## **2. Authentication vs Authorization**

| Authentication                                   | Authorization                              |
| ------------------------------------------------ | ------------------------------------------ |
| Verifies identity                                | Determines permissions                     |
| Answers: Who are you?                            | Answers: What can you do?                  |
| Happens before authorization                     | Follows successful authentication          |
| Uses passwords, keys, certificates or biometrics | Uses roles, attributes and access policies |
| Example: Verify a sensor's identity              | Allow it to upload temperature data        |

**Remember:** Authentication establishes identity; authorization determines access rights.

## **3. Access Control in IoT**

**Definition:** Access control is a security mechanism that regulates who or what can access IoT devices, applications, networks and data.

### **Basic access-control process**

IoT User / Device

Authentication

Authorization / Policy Evaluation

Access Control Decision

Access Granted

Access Denied

### **Main elements**

- **Subject:** User, device or application requesting access.
- **Object:** Resource being accessed, such as a sensor, database or actuator.
- **Policy:** Rules defining permitted operations.
- **Permission:** Specific operation allowed, such as read, write or execute.
- **Decision point:** Evaluates the request against security policies.

## **4. Types of Access Control Mechanisms**

### **A. Discretionary Access Control (DAC)**

**Definition:** DAC allows the resource owner to decide who can access a resource and what permissions they receive.

- Owner controls access permissions.
- Permissions can be granted or revoked.
- Flexible and easy to implement.

**Example:** A smart-home owner grants another user permission to control a smart light.

**Limitation:** Permissions can be shared improperly, making centralized security difficult.

### **B. Mandatory Access Control (MAC)**

**Definition:** MAC is an access-control mechanism in which permissions are determined by a centrally defined security policy and security classifications.

- Access is controlled by system-wide rules.
- Users cannot freely change permissions.
- Often uses security labels and clearance levels.

**Example:** An industrial control system allows only devices with the required security classification to access sensitive control data.

**Limitation:** Less flexible and more complex to manage.

### **C. Role-Based Access Control (RBAC)**

**Definition:** RBAC grants permissions according to the roles assigned to users or devices.

- Permissions are assigned to roles.
- Users or devices are assigned roles.
- Access depends on the assigned role.

**Example:**

| Role          | Permission                   |
| ------------- | ---------------------------- |
| Administrator | Full system access           |
| Operator      | Monitor and control machines |
| Technician    | Maintenance access           |
| Sensor        | Upload sensor readings       |

**Advantages:** Easy administration, centralized permission management and reduced complexity.

**Limitation:** Difficult to handle highly dynamic conditions using roles alone.

### **D. Attribute-Based Access Control (ABAC)**

Most important – 9 marks

**Definition:** ABAC is an access-control mechanism that grants or denies access based on attributes of the subject, object, requested operation and environment.

Unlike RBAC, which mainly depends on roles, ABAC evaluates multiple attributes and policies.

### **Four main types of attributes**

1\. **Subject attributes:** Information about the user or device.

- Device ID
- User role
- Department
- Security clearance

2\. **Object attributes:** Information about the resource.

- Resource type
- Data sensitivity
- Device location
- Resource owner

3\. **Action attributes:** Operation requested.

- Read
- Write
- Delete
- Execute

4\. **Environmental attributes:** Current conditions.

- Time
- Location
- Network status
- Threat level

### **ABAC architecture**

**Subject / Device**

Requests access to a resource

**Attribute Collection**

Subject + Object + Action + Environment

**Policy Decision Point (PDP)**

Evaluates attributes against access policies

**Policy Enforcement Point (PEP)**

Enforces the decision

Permit

Deny

**Other important components:**

- **Policy Administration Point (PAP):** Creates and manages access-control policies.
- **Policy Information Point (PIP):** Supplies attribute information required for policy evaluation.
- **Policy Decision Point (PDP):** Evaluates policies and decides whether access is permitted.
- **Policy Enforcement Point (PEP):** Enforces the decision by allowing or blocking access.

### **Working of ABAC**

1. An IoT device requests access to a resource.
2. The system collects subject, object, action and environmental attributes.
3. The PIP provides required attribute information.
4. The PDP evaluates the request against defined policies.
5. The PDP generates a permit or deny decision.
6. The PEP enforces the decision.

### **Example of ABAC in a smart hospital**

Suppose a doctor wants to access a patient's medical records.

The access policy may be:

- Subject role = Doctor
- Object type = Patient medical record
- Action = Read
- Environment = Hospital network
- Time = Authorized working hours

If all required conditions are satisfied, access is granted. Otherwise, access is denied.

### **Advantages of ABAC**

1. Fine-grained access control.
2. Supports dynamic and context-aware authorization.
3. Suitable for large IoT environments.
4. Flexible policy management.
5. Supports least-privilege access.
6. Can consider device location, time and security status.

### **Limitations of ABAC**

1. Policy design can be complex.
2. Attribute management is difficult.
3. Policy evaluation may require additional processing.
4. Incorrect attributes can result in incorrect access decisions.
5. Requires reliable attribute sources.

## **5. Comparison of Access Control Models**

| Model | Access based on                                    | Example                                          |
| ----- | -------------------------------------------------- | ------------------------------------------------ |
| DAC   | Resource owner permissions                         | Owner shares smart camera                        |
| MAC   | Security classification and central policy         | Restricted industrial system                     |
| RBAC  | Assigned role                                      | Technician can maintain devices                  |
| ABAC  | Subject, object, action and environment attributes | Doctor accesses records under defined conditions |

## **6. New Work in Authorization for IoT**

Traditional access-control mechanisms may not be sufficient for IoT because devices are mobile, resource-constrained and continuously changing their operating environments.

New authorization approaches aim to provide more flexible, scalable and context-aware access control.

### **1. Context-Aware Authorization**

Access decisions depend on environmental conditions such as location, time, device status and network conditions.

**Example:** A smart door allows access only when an authorized user is nearby.

### **2. Distributed Authorization**

Authorization decisions are distributed across multiple gateways, devices or servers instead of depending on one central system.

**Example:** Multiple smart-factory gateways independently enforce access policies.

### **3. Capability-Based Authorization**

A capability is a token or permission that grants its holder specific rights to access a resource.

**Example:** A smart sensor receives a limited token that permits it to upload readings but not delete records.

### **4. Attribute-Based Authorization**

ABAC evaluates multiple attributes to make fine-grained decisions.

**Example:** A device receives access only if its identity, security status and location satisfy the defined policy.

### **5. Blockchain-Based Authorization**

Blockchain can maintain a distributed and tamper-resistant record of access policies or authorization transactions.

**Example:** Smart devices in a supply chain use blockchain-based records to verify authorized participants.

*Note: Blockchain can support authorization management, but it does not automatically guarantee secure authorization.*

### **6. AI-Based Authorization**

AI and machine learning can help detect abnormal access patterns and identify suspicious authorization requests.

**Example:** An industrial security system detects a device attempting to access resources outside its normal behaviour and triggers additional verification.

## **7. Security Best Practices for IoT Authorization**

- Follow the principle of least privilege.
- Use strong authentication before authorization.
- Regularly review access permissions.
- Use ABAC for dynamic access requirements.
- Monitor unusual access requests.
- Revoke permissions when devices are retired.
- Secure authorization tokens and policies.
- Maintain audit logs of access decisions.

## **8. Conclusion**

Authorization and access control are essential for protecting IoT resources from unauthorized access. DAC, MAC, RBAC and ABAC provide different approaches to controlling permissions. Among these, ABAC is particularly useful in IoT because it supports fine-grained, dynamic and context-aware access decisions.

## **PYQ preparation**

Repeated 9-mark questions

| Question                                        | Priority  |
| ----------------------------------------------- | --------- |
| Explain authorization and access control in IoT | Very high |
| Explain ABAC mechanism for IoT with diagram     | Very high |
| Explain different access-control models         | High      |
| Explain new developments in IoT authorization   | High      |

**Exam strategy for ABAC (9 marks):**

1. Definition – 1 mark
2. Four types of attributes – 2 marks
3. Architecture and components – 2 marks
4. Working with diagram – 2 marks
5. Example, advantages and limitations – 2 marks

Topic 8 completed

**Next: Topic 9 – Identity Management Models**

- Local Identity Management
- Federated Identity Management
- Network Identity Management
- Global Web Identity Management
- Identity Portrayal
- Hybrid Identity Management

These are important because several identity-model questions appeared in your previous papers.