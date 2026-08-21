````markdown
# 13. IoT Device Hardware

## PYQ

**No PYQ**

---

# 1. Definition

**IoT device hardware** refers to the physical components that make up an IoT device and allow it to **sense, process, communicate, and perform actions**.

An IoT device generally contains:

- Sensors
- Actuators
- Microcontroller or processor
- Memory
- Communication interfaces
- Power supply
- Security hardware

The hardware must be selected according to the **functional, performance, power, cost, and security requirements** of the IoT application.

---

# 2. Basic Architecture of IoT Device Hardware

A typical IoT device can be represented as:

```text
        Physical Environment
                ↓
             Sensors
                ↓
       Microcontroller / CPU
          ↙           ↘
      Memory       Communication
                      ↓
                Network / Cloud

       Microcontroller
                ↓
            Actuators
                ↓
        Physical Action
````

---

# 3. Main Components of IoT Device Hardware

## 3.1 Sensors

A **sensor** detects physical conditions and converts them into electrical signals that can be processed by the IoT device.

Examples:

* Temperature sensor
* Humidity sensor
* Pressure sensor
* Light sensor
* Motion sensor
* Gas sensor
* Proximity sensor

### Example

A temperature sensor measures the surrounding temperature and sends the value to the microcontroller.

---

# 4. Actuators

An **actuator** converts an electrical control signal into a physical action.

Examples:

* Motor
* Relay
* Valve
* LED
* Buzzer
* Servo motor

### Example

In a smart irrigation system:

```text
Soil Moisture Sensor
        ↓
   Microcontroller
        ↓
       Relay
        ↓
   Water Pump
```

The controller activates the pump when the soil becomes dry.

---

# 5. Microcontroller

A **Microcontroller Unit (MCU)** is the main processing unit of many IoT devices.

It receives sensor data, processes it, and controls actuators.

An MCU generally contains:

* CPU
* RAM
* Flash memory
* Timers
* GPIO
* Communication interfaces

### Example

An MCU may:

1. Read temperature.
2. Compare it with a threshold.
3. Send the data to the cloud.
4. Activate a fan if temperature is too high.

---

# 6. Processor

More powerful IoT devices may use a microprocessor or application processor.

Processors are used when the device requires:

* More processing power
* Operating systems
* Complex applications
* Image processing
* Artificial intelligence
* Advanced networking

### Example

A smart camera may require a more powerful processor to process video.

---

# 7. Memory

IoT devices require memory for storing:

* Program code
* Firmware
* Sensor data
* Configuration
* Security credentials

Common types include:

### RAM

Used for temporary data while the device is running.

### Flash Memory

Used for storing firmware and persistent data.

### EEPROM

Can be used for storing configuration or small amounts of persistent information.

---

# 8. Communication Interfaces

IoT devices need communication interfaces to exchange data.

Common technologies include:

* Wi-Fi
* Bluetooth / BLE
* Zigbee
* Ethernet
* Cellular
* LoRaWAN
* NFC

The appropriate communication technology depends on:

* Range
* Data rate
* Power consumption
* Cost
* Network availability
* Application requirements

---

# 9. Power Supply

Power is a major consideration in IoT hardware.

IoT devices may be powered using:

* Batteries
* Mains electricity
* USB
* Solar power
* Energy harvesting

Battery-powered devices need low-power hardware and efficient communication.

---

# 10. GPIO Interfaces

**GPIO (General Purpose Input/Output)** pins allow the microcontroller to communicate with external hardware.

They can be used to:

* Read digital sensors
* Control LEDs
* Control relays
* Interface with switches
* Control actuators

---

# 11. Hardware Communication Interfaces

IoT devices commonly use hardware interfaces such as:

### UART

Used for serial communication.

### SPI

Used for high-speed communication between the MCU and peripherals.

### I²C

Used to connect multiple low-speed peripherals using a small number of wires.

These interfaces allow sensors, memory, displays, and other components to communicate with the microcontroller.

---

# 12. Security Hardware

Security should be considered while selecting IoT hardware.

Security-related hardware may include:

* Secure elements
* Trusted Platform Modules
* Hardware security modules
* Hardware random-number generators
* Cryptographic accelerators
* Secure storage

These can help protect:

* Cryptographic keys
* Device identity
* Firmware
* Sensitive credentials

---

# 13. Secure Boot

**Secure Boot** ensures that only trusted software or firmware is executed when an IoT device starts.

Basic process:

```text
Device Starts
     ↓
Verify Firmware
     ↓
Is Firmware Trusted?
    ↙       ↘
  Yes        No
   ↓          ↓
Execute     Reject
```

Secure Boot helps prevent attackers from running unauthorized firmware.

---

# 14. Hardware-Based Key Storage

Cryptographic keys should be protected from unauthorized access.

Instead of storing sensitive keys in ordinary memory, a secure hardware component can be used.

Benefits include:

* Protection against key extraction
* Secure device identity
* Stronger authentication
* Improved cryptographic security

---

# 15. Hardware Security and Physical Attacks

IoT devices may be physically accessible.

Attackers may attempt to:

* Open the device
* Access memory
* Extract keys
* Modify hardware
* Connect debugging interfaces
* Replace components

Hardware security mechanisms can reduce these risks.

Possible protections include:

* Tamper-resistant enclosures
* Secure storage
* Protected debug ports
* Tamper detection
* Hardware-based cryptography

---

# 16. Factors for Selecting IoT Hardware

Hardware should be selected based on the following factors.

## 16.1 Processing Power

The processor should provide sufficient performance for the application.

A simple sensor may need a low-power MCU, while a smart camera may require a powerful processor.

---

## 16.2 Memory

The device should have enough RAM and storage for:

* Firmware
* Applications
* Sensor data
* Security functions

---

## 16.3 Power Consumption

Battery-powered devices require low-power hardware.

Lower power consumption increases battery life.

---

## 16.4 Communication Requirements

The hardware should support the required communication technologies.

Selection depends on:

* Range
* Data rate
* Power consumption
* Network availability

---

## 16.5 Security

Hardware should support required security mechanisms such as:

* Secure Boot
* Secure key storage
* Hardware cryptography
* Device identity

---

## 16.6 Cost

The hardware must be economically suitable for the intended deployment.

For large-scale IoT deployments, even a small increase in cost per device can become significant.

---

## 16.7 Reliability

IoT devices may operate continuously for years.

Hardware should therefore be:

* Reliable
* Durable
* Stable
* Suitable for the operating environment

---

## 16.8 Environmental Conditions

Hardware should be suitable for the environment where it will operate.

Important factors include:

* Temperature
* Humidity
* Dust
* Water
* Vibration
* Electromagnetic interference

Industrial and outdoor IoT devices may require more robust hardware than indoor consumer devices.

---

# 17. Example — Smart Agriculture Device

Consider an IoT device used to monitor soil conditions.

### Hardware

* Soil moisture sensor
* Temperature sensor
* Microcontroller
* LoRa communication module
* Battery
* Memory

### Operation

```text
Soil Sensor
     ↓
Microcontroller
     ↓
Process Data
     ↓
LoRa Module
     ↓
Gateway
     ↓
Cloud
```

The hardware should have:

* Low power consumption
* Long communication range
* Adequate processing power
* Secure device identity
* Weather-resistant construction

---

# 18. Example — Smart Camera

A smart camera requires more powerful hardware.

### Components

* Camera sensor
* Processor
* RAM
* Flash storage
* Wi-Fi/Ethernet
* Secure storage
* Power supply

The processor may perform:

* Image processing
* Motion detection
* Object detection

Security hardware can protect:

* Firmware
* Credentials
* Encryption keys

---

# 19. IoT Hardware Design Considerations

When designing IoT hardware, consider:

1. Functional requirements
2. Processing requirements
3. Memory requirements
4. Power requirements
5. Communication requirements
6. Security requirements
7. Physical environment
8. Cost
9. Reliability
10. Scalability
11. Maintainability
12. Expected device lifetime

---

# 20. Benefits of Proper Hardware Selection

Proper hardware selection provides:

* Better performance
* Longer battery life
* Better security
* Improved reliability
* Lower cost
* Better scalability
* Easier maintenance
* Suitable communication
* Longer device lifetime

---

# 21. Challenges of IoT Device Hardware

Common challenges include:

* Limited processing power
* Limited memory
* Limited battery capacity
* Physical exposure
* Hardware cost
* Long deployment lifetime
* Security requirements
* Different communication standards
* Environmental conditions
* Difficulty replacing deployed hardware

---

# 22. Exam Answer — 10 Marks

## Explain IoT Device Hardware

**IoT device hardware** refers to the physical components that enable an IoT device to sense, process, communicate, and perform actions. The major hardware components include sensors, actuators, microcontrollers, memory, communication interfaces, power supply, and security hardware.

The main components are:

1. **Sensors:** Sensors collect information from the physical environment, such as temperature, pressure, humidity, motion, and light.

2. **Actuators:** Actuators convert electrical signals into physical actions. Examples include motors, relays, valves, and LEDs.

3. **Microcontroller/Processor:** The MCU or processor processes sensor data, runs firmware, controls peripherals, and communicates with other systems.

4. **Memory:** RAM is used for temporary processing, while Flash or other non-volatile memory stores firmware, configuration, and persistent data.

5. **Communication interfaces:** IoT devices use technologies such as Wi-Fi, Bluetooth, Zigbee, Ethernet, cellular, and LoRaWAN to communicate.

6. **Power supply:** Devices may use batteries, mains power, USB, solar power, or energy harvesting. Low-power hardware is important for battery-operated devices.

7. **Security hardware:** Secure elements, cryptographic accelerators, secure storage, and hardware random-number generators can protect device identity and cryptographic keys.

8. **Secure Boot:** Secure Boot ensures that only trusted firmware is executed when the device starts.

9. **Physical security:** IoT hardware should be protected against tampering, unauthorized access, and attacks on debugging interfaces.

10. **Hardware selection factors:** Processing power, memory, power consumption, communication requirements, security, cost, reliability, and environmental conditions should be considered while selecting hardware.

### Conclusion

IoT device hardware forms the foundation of an IoT system. Proper selection of processing, sensing, communication, power, and security components is essential to achieve **efficient, reliable, secure, and long-lasting IoT operation**.

---

# 23. Short Exam Answer — 5 Marks

**IoT device hardware** consists of the physical components required for sensing, processing, communication, and control.

The major components are:

1. Sensors
2. Actuators
3. Microcontroller/processor
4. Memory
5. Communication interfaces
6. Power supply
7. Security hardware

While selecting IoT hardware, factors such as **processing power, memory, power consumption, communication range, security, cost, reliability, and environmental conditions** should be considered.

Thus, proper hardware selection is essential for building an efficient, reliable, and secure IoT device.

---

# 24. Quick Revision

## IoT Device Hardware

```text
Physical Environment
        ↓
      Sensor
        ↓
 MCU / Processor
   ↙          ↘
Memory      Communication
                ↓
             Network
                ↓
             Cloud

 MCU / Processor
        ↓
    Actuator
        ↓
 Physical Action
```

### Main Components

* **Sensor** → Collects data
* **Actuator** → Performs physical action
* **MCU/CPU** → Processes data
* **Memory** → Stores firmware/data
* **Communication** → Exchanges data
* **Power** → Supplies energy
* **Security hardware** → Protects keys and device identity

### Selection Factors

`Performance`

`Memory`

`Power`

`Communication`

`Security`

`Cost`

`Reliability`

`Environment`

### Exam Status

❌ **No PYQ**

### Priority

🟡 **MEDIUM**

```
```
