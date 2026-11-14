# Part E — Embedded Algorithms

## 1. Embedded System Scheduling (Power Optimized Scheduling Algorithm)



Direct PYQ: 1 occurrence

9 marks



PYQ — Nov/Dec 2022, Q6(b): Explain embedded algorithm and embedded system scheduling using Power Optimized Scheduling Algorithm.

This is a theory-oriented question. Prepare the following answer in a format suitable for writing directly in your university examination.

## 1. Introduction to Embedded Algorithms

An embedded algorithm is a set of instructions designed to perform a specific task within an embedded system.

An embedded system is a combination of hardware and software designed to perform a dedicated function.

Unlike general-purpose computers, embedded systems operate under specific constraints such as limited memory, processing power, energy and execution time.

Examples:

- Washing machine controllers
- Smart watches
- Automobile control systems
- Medical monitoring devices
- Industrial automation systems
- IoT devices

[How to Select the Right Amount of Flash Memory](https://images.openai.com/static-rsc-4/xG_MlLpNB1QwkYMD-d7ScJwiT2boizT4AB4p8ca02J0twwf4HYxZ9Iu9NJZLz2LO_G8jvW-EUz9mwes6-usIKWoIDMvLI1Za6Mwok2ULGMVMXQs8onhH98AtkmKeuj8kAIUKI4NJ9-wHFXq2OzXkwiPTibxTa4KVB43oZHafXLo?purpose=inline)

[Ricardo Eletrônica: Injeção Eletrônica: UCE(ECU) – Unidade de comando eletrônico.](https://images.openai.com/static-rsc-4/Gq94a804uhmwy7WIgMe4WBhlzKxL7RQHDmiolzc9zqnLBZkLKUBMX4i61Y9r0X0KCcAhfTtqumaibyOOtg6hXTvWvehZ_qlxiiXNZtx1iIqkkeKpfLFzihMpb9zONfQOJohOwsXqpuUwsk4lcJYjGD_3G_8pomB9yu_0zE3GSyk?purpose=inline)

[Garmin Vívoactive 4 Motherboard Replacement - iFixit Repair Guide](https://images.openai.com/static-rsc-4/bX89naGGTDU_5qtuSJk0_lh3OHN28gwLtFejouOT4kg59owAP6wnceujLtyWT2zezI_uOEvJwrxE04cNihjIP5RZ1UXYv8x8AGXhSC35-4dXDQimX6gLGrlCcCbVaBy0fzoLnUuM1AwEO56GNbti9nIQAOb5VndcBZkCpEI4ghA?purpose=inline)

6

## 2. Requirements of Embedded Systems

Embedded systems must satisfy the following requirements:

1. Real-time operation: Tasks must complete within specified deadlines.
2. Low power consumption: Systems should consume minimum energy.
3. Limited memory: Efficient use of RAM and ROM is required.
4. Reliability: The system should work continuously without failure.
5. Low cost: Hardware and software should be economical.
6. Fast response: The system should respond quickly to external events.
7. Resource management: CPU, memory and other resources must be used efficiently.

## 3. Power Consumption in Embedded Systems

Power consumption is the amount of electrical energy used by an embedded system while performing its operations.

It is an important factor because many embedded systems operate using batteries.

Power consumption can be divided into:

A. Dynamic Power Consumption

Power consumed when transistors switch between states.

\\[ P\_{\text{dynamic}}=\alpha C V^2 f \\]

Where:

- \\(\alpha\\) = switching activity factor
- \\(C\\) = effective capacitance
- \\(V\\) = supply voltage
- \\(f\\) = operating frequency

B. Static Power Consumption

Power consumed due to leakage current even when transistors are not switching.

\\[ P\_{\text{static}}=V \times I\_{\text{leakage}} \\]

Total Power:

\\[ P\_{\text{total}}=P\_{\text{dynamic}}+P\_{\text{static}} \\]

Methods to reduce power consumption:

1. Dynamic Voltage and Frequency Scaling (DVFS).
2. Turning off unused hardware components.
3. Using sleep and idle modes.
4. Efficient task scheduling.
5. Reducing unnecessary processor operations.

## 4. Scheduling in Embedded Systems

Scheduling is the process of deciding the order and time at which different tasks are executed by the processor.

An embedded system may execute several tasks, such as sensor reading, data processing, communication and controlling devices.

The scheduler allocates processor time to these tasks while satisfying their deadlines and resource requirements.

Objectives of Embedded System Scheduling:

1. Complete tasks before their deadlines.
2. Minimize power consumption.
3. Maximize processor utilization.
4. Reduce execution time and waiting time.
5. Improve system reliability.
6. Efficiently allocate available resources.

## 5. Power Optimized Scheduling Algorithm

A Power Optimized Scheduling Algorithm is a scheduling technique that schedules tasks in such a way that the total energy consumed by an embedded system is minimized while satisfying task deadlines.

It aims to balance performance, execution time and energy consumption.

One common approach is to use Dynamic Voltage and Frequency Scaling (DVFS), where processor voltage and frequency are adjusted according to the workload.

### Working Principle

1. Identify all tasks to be executed.
2. Determine the execution time and deadline of each task.
3. Calculate the available processing time.
4. Estimate the power consumption at different processor frequencies.
5. Select an appropriate frequency and voltage for task execution.
6. Schedule tasks according to their deadlines and available resources.
7. Put the processor into sleep or idle mode when no task is ready.
8. Repeat the process for upcoming tasks.

### Flowchart

Start

Identify tasks and their deadlines

Estimate execution time and power requirements

Select suitable voltage and CPU frequency

Schedule tasks according to deadlines

Execute tasks with optimized power

No ready task? Enter sleep/idle mode

Check for next task and repeat

This is a general power-aware scheduling flow, not a claim that the PYQ specifies one particular scheduling algorithm.

### Pseudocode

```
PowerOptimizedScheduling(T):
    Identify all tasks
    Calculate execution time and deadlines

    while tasks are pending:

        Select the ready task
        Estimate available processing time

        Select suitable CPU frequency
        Adjust voltage according to frequency

        Execute the selected task

        if no task is ready:
            Put processor into sleep mode

    Stop
```

## 6. Example of Power Optimized Scheduling

Consider an embedded system used in a smart watch.

It has three tasks:

| Task | Operation              | Deadline |
| ---- | ---------------------- | -------- |
| T1   | Read heart-rate sensor | 10 ms    |
| T2   | Process sensor data    | 20 ms    |
| T3   | Send data to mobile    | 40 ms    |

Working:

1. The processor reads the heart-rate sensor.
2. It processes the collected data.
3. It sends the data to the connected mobile device.
4. The scheduler selects a suitable CPU frequency to complete each task before its deadline.
5. When no task is ready, the processor enters sleep mode.

[MAXREFDES103#: Health Sensor Band](https://images.openai.com/static-rsc-4/3bsbMSpiVv0Cw6sYjm2erpy56UtAOWWSOdPhCY5ZkNfnNXsw1dPXLba620E8lT7ZuH8vYYARkHimFbNh0Y56obKRIJS7ZDoUdqABLyR215okp7e9obALQgVQALQ2rE7yYrUuRSloGWKpzyaphCiAp4tkVbLYUc5gYv33VBDmo4Q?purpose=inline)

[digikey.com.mx](https://www.digikey.com.mx/reference-designs/es/other-solutions/3059?utm_source=chatgpt.com)

Result: Unnecessary processor activity is reduced, battery life improves and task deadlines are maintained.

Note: These task times and deadlines are illustrative. They are not values from the question paper.

## 7. Advantages of Power Optimized Scheduling

1. Reduces overall energy consumption.
2. Increases battery life.
3. Improves processor efficiency.
4. Helps satisfy real-time deadlines.
5. Reduces unnecessary CPU activity.
6. Improves performance of portable embedded devices.

## 8. Conclusion

Embedded algorithms are designed to perform dedicated functions in embedded systems. Scheduling determines the order of task execution. Power optimized scheduling reduces energy consumption by selecting suitable processor frequencies, managing task deadlines and using sleep modes when the processor is idle. It is useful in battery-operated and real-time embedded systems.

## PYQ preparation checklist

9-mark revision checklist

0/8

Introduction and examples of embedded algorithms

Requirements of embedded systems

Dynamic and static power consumption formulas

Scheduling definition and objectives

Power optimized scheduling working steps

Flowchart and pseudocode

Smart watch example

Advantages and conclusion

Exam tip: Since the question specifically asks for a Power Optimized Scheduling Algorithm, give extra attention to its working steps, flowchart and example. Explain DVFS and sleep mode as power-saving techniques. Do not confuse power optimization with simply executing the shortest task first: deadline satisfaction and energy consumption must both be considered.