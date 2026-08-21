````md id="p2x7km"
# 13. CPS — Cyber-Physical Systems

## PYQs

### 2022
> **“Explain CPS in IoT.”**

### 2024
> **“Explain CPS for IoT.”**

### 2025
> **“Explain CPS in IoT.”**

**Status: 🔥🔥🔥 VERY IMPORTANT — Repeated PYQ**

---

# 1. What is CPS?

**Cyber-Physical System (CPS)** is a system in which **computational elements, communication networks, and physical processes are tightly integrated**.

A CPS continuously monitors the physical environment using sensors, processes the collected information using computational systems, and then uses actuators to perform actions in the physical world.

In simple words:

> **CPS connects the cyber world of computation and communication with the physical world of machines, processes, and environments.**

---

# 2. CPS in IoT

IoT and CPS are closely related.

In an IoT system, devices collect and exchange information through networks.

In a CPS, the collected information is not only exchanged or analyzed but is also used to **monitor and control physical processes**.

For example, in a smart factory:

```text
Physical World
      │
      ▼
┌─────────────┐
│   Sensors   │
└──────┬──────┘
       │
       │ Physical Data
       ▼
┌─────────────┐
│ Computation │
│ / Controller│
└──────┬──────┘
       │
       │ Control Decision
       ▼
┌─────────────┐
│  Actuators  │
└──────┬──────┘
       │
       ▼
Physical World
````

This creates a continuous **sense → process → act → feedback** cycle.

---

# 3. Basic Components of CPS

A Cyber-Physical System generally contains the following components.

## 3.1 Sensors

Sensors observe the physical environment and collect information.

Examples:

* Temperature sensors
* Pressure sensors
* Motion sensors
* Light sensors
* Position sensors

### Function

```text
Physical Environment
        ↓
      Sensor
        ↓
     Data
```

---

## 3.2 Communication Network

The network transfers information between sensors, controllers, devices, and cloud or edge systems.

Examples:

* Wi-Fi
* Ethernet
* Bluetooth
* Zigbee
* 5G
* Industrial networks

---

## 3.3 Processing / Computation

The collected sensor data is processed by:

* Embedded controllers
* Microcontrollers
* Edge computers
* Cloud platforms

The processing system analyzes data and determines what action should be taken.

---

## 3.4 Actuators

Actuators convert computational decisions into physical actions.

Examples:

* Motors
* Valves
* Relays
* Robotic arms
* Heating systems

### Example

If a temperature controller detects that the temperature is too high:

```text
Temperature Sensor
       ↓
Controller detects high temperature
       ↓
Control decision
       ↓
Actuator
       ↓
Cooling system activated
```

---

## 3.5 Control System

The control system processes sensor information and determines the appropriate action.

It may operate automatically according to predefined rules or intelligent algorithms.

---

## 3.6 Physical Process

The physical process is the real-world environment being monitored or controlled.

Examples:

* Industrial machines
* Vehicles
* Power grids
* Medical equipment
* Smart buildings

---

# 4. CPS Architecture

A simplified CPS architecture can be represented as:

```text
                  ┌───────────────────┐
                  │   Cloud / Edge    │
                  │    Computing      │
                  └─────────┬─────────┘
                            │
                            │
                     Communication
                            │
                            ▼
                  ┌───────────────────┐
                  │     Controller    │
                  └─────────┬─────────┘
                            │
                       Control Signal
                            │
                            ▼
                    ┌──────────────┐
                    │   Actuators  │
                    └──────┬───────┘
                           │
                           ▼
                    Physical Process
                           │
                           │ Feedback
                           ▼
                    ┌──────────────┐
                    │    Sensors   │
                    └──────┬───────┘
                           │
                           └──────────────► Controller
```

The system forms a **feedback loop**.

---

# 5. Working of CPS

The operation of a CPS can be explained through the following steps.

### Step 1 — Sensing

Sensors collect information from the physical environment.

Example:

> A temperature sensor measures **35°C**.

### Step 2 — Communication

The sensor sends the collected data to a controller or processing system.

### Step 3 — Processing

The controller analyzes the sensor data.

For example:

> Desired temperature = 25°C
> Current temperature = 35°C

The system determines that cooling is required.

### Step 4 — Decision Making

The controller generates an appropriate control command.

### Step 5 — Actuation

The actuator performs the physical action.

Example:

> Cooling system is switched ON.

### Step 6 — Feedback

Sensors measure the new physical condition and send the information back to the controller.

This cycle continues continuously.

```text
Sense
  ↓
Communicate
  ↓
Process
  ↓
Decide
  ↓
Act
  ↓
Feedback
  ↺
```

---

# 6. Example of CPS in IoT

## Smart Temperature Control System

Consider an IoT-based smart room temperature control system.

```text
              ┌─────────────────┐
              │ Temperature     │
              │ Sensor          │
              └────────┬────────┘
                       │
                       ▼
              ┌─────────────────┐
              │ IoT Controller  │
              └────────┬────────┘
                       │
                 Control Signal
                       │
                       ▼
              ┌─────────────────┐
              │ Air Conditioner│
              │ / Actuator      │
              └────────┬────────┘
                       │
                       ▼
                  Room Temperature
                       │
                       │ Feedback
                       └──────────────► Sensor
```

### Working

1. The sensor measures room temperature.
2. Data is sent to the controller.
3. The controller compares the temperature with the desired value.
4. If the temperature is too high, it sends a command to the actuator.
5. The air conditioner is switched ON.
6. The sensor measures the new temperature.
7. The process repeats continuously.

This is a CPS because the **cyber system monitors and controls a physical process**.

---

# 7. Applications of CPS in IoT

## 7.1 Smart Manufacturing

CPS is used to monitor and control industrial machines.

Applications include:

* Automated production
* Predictive maintenance
* Robotic systems
* Machine monitoring

---

## 7.2 Smart Healthcare

CPS can connect medical sensors and physical medical equipment.

Examples:

* Patient monitoring
* Smart medical devices
* Automated drug delivery
* Remote healthcare systems

---

## 7.3 Autonomous Vehicles

Vehicles use sensors, computation, communication, and actuators to understand and interact with their surroundings.

```text
Sensors
   ↓
Environment Data
   ↓
Computer / Controller
   ↓
Decision
   ↓
Steering / Braking / Acceleration
```

---

## 7.4 Smart Grid

CPS can be used to monitor and control electrical power systems.

It can help with:

* Power distribution
* Fault detection
* Load management
* Energy optimization

---

## 7.5 Smart Homes

CPS can control:

* Lighting
* Heating
* Cooling
* Security systems
* Appliances

---

## 7.6 Smart Agriculture

Sensors monitor:

* Soil moisture
* Temperature
* Humidity
* Crop conditions

The system can automatically control irrigation and other agricultural equipment.

---

# 8. Characteristics of CPS

Important characteristics include:

### 1. Integration of Cyber and Physical Components

Computational systems interact directly with physical processes.

### 2. Real-Time Operation

Many CPS applications require rapid processing and response.

### 3. Feedback

The system continuously receives information from the physical environment.

### 4. Automation

CPS can make decisions and perform actions with minimal human intervention.

### 5. Communication

Different devices and systems communicate with each other.

### 6. Distributed Operation

CPS components may be distributed across different physical locations.

### 7. Safety and Reliability

Failures can have physical consequences, so reliability and safety are important.

---

# 9. CPS vs IoT

CPS and IoT are related but are not exactly the same.

| IoT                                              | CPS                                                           |
| ------------------------------------------------ | ------------------------------------------------------------- |
| Focuses on connecting physical devices           | Focuses on integration of computation with physical processes |
| Mainly emphasizes connectivity and data exchange | Emphasizes monitoring and control                             |
| Devices collect and exchange data                | Systems use data to control physical processes                |
| Example: Smart sensor sending temperature data   | Example: Controller using temperature data to control cooling |
| Internet connectivity is often important         | Real-time control and feedback are often important            |

### Easy Way to Remember

> **IoT = Connect and communicate**

> **CPS = Sense, compute, control, and interact with the physical world**

---

# 10. CPS Security

Since CPS directly interacts with physical systems, security is extremely important.

An attacker who compromises a CPS may not only steal information but may also manipulate physical processes.

### Security Requirements

* Authentication
* Authorization
* Encryption
* Secure communication
* Integrity protection
* Secure firmware
* Intrusion detection
* Access control
* Safety mechanisms

### Example

If an attacker compromises an industrial CPS and changes the control commands, the result could be **physical equipment damage or safety hazards**.

Therefore, CPS security must consider both:

> **Cybersecurity + Physical Safety**

---

# 11. Advantages of CPS

* Automation of physical processes
* Real-time monitoring
* Improved efficiency
* Better resource utilization
* Predictive maintenance
* Improved safety
* Intelligent decision-making
* Reduced operational costs

---

# 12. Challenges of CPS

### 1. Security

CPS systems can be targeted by cyber attacks.

### 2. Safety

A cyber failure can result in physical damage or human safety problems.

### 3. Real-Time Requirements

Some systems require decisions within strict time limits.

### 4. Complexity

CPS combines hardware, software, networking, and physical processes.

### 5. Reliability

Failure of a CPS component can affect the entire physical process.

### 6. Interoperability

Different devices and technologies must work together.

---

# 13. Theoretical Exam Answer

## Q. Explain CPS in IoT.

A **Cyber-Physical System (CPS)** is a system in which computational components, communication networks, and physical processes are tightly integrated. CPS continuously monitors physical processes using sensors, processes the collected information using computational systems, and uses actuators to influence or control the physical environment.

In IoT, CPS plays an important role by connecting physical devices with computational and communication systems. Unlike a system that only collects and transmits data, CPS uses the collected information to make decisions and perform actions on physical systems.

The major components of a CPS include **sensors, communication networks, processing units, controllers, actuators, and physical processes**.

The working of CPS follows a continuous feedback cycle. Sensors first collect information from the physical environment. The collected data is transmitted to a controller or processing system. The controller analyzes the data and makes a decision. The resulting control command is sent to an actuator, which performs the required physical action. Sensors then measure the resulting physical condition and provide feedback to the controller.

```text
Physical Environment
        │
        ▼
     Sensors
        │
        ▼
 Communication
        │
        ▼
Controller / Processor
        │
        ▼
    Actuators
        │
        ▼
Physical Process
        │
        └──────── Feedback ────────► Sensors
```

For example, in an IoT-based smart temperature control system, a temperature sensor continuously measures room temperature. The controller compares the measured temperature with the desired temperature. If the temperature is too high, it sends a command to the air-conditioning system through an actuator. The sensor then measures the new temperature and provides feedback.

CPS is used in **smart manufacturing, autonomous vehicles, healthcare, smart grids, smart homes, and smart agriculture**.

### Conclusion

CPS integrates the **cyber world of computation and communication with the physical world**. In IoT, it enables real-time sensing, processing, decision-making, and control of physical systems. Since failures or attacks can have physical consequences, CPS requires strong **security, reliability, and safety mechanisms**.

---

# ⭐ Quick Revision

```text
CPS
 ↓
Sense
 ↓
Communicate
 ↓
Process
 ↓
Decide
 ↓
Act
 ↓
Feedback
 ↺
```

### One-line definition

> **CPS is an integrated system in which computation, communication, sensing, and control interact with physical processes through a continuous feedback loop.**

### Remember

**Sensor → Data → Controller → Decision → Actuator → Physical World → Feedback**

**Exam Priority: 🔥🔥🔥 VERY HIGH — Repeated in 2022, 2024, and 2025.**

```
```
