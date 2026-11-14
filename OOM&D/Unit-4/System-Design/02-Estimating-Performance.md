# Unit IV — 3. Estimating Performance



PYQ: November 2023

Short Note



## 1. Definition

System performance estimation is the process of predicting how efficiently a system will perform under expected operating conditions during the system design phase.

It helps designers estimate response time, throughput, resource utilization and scalability before the system is fully implemented.

In simple words, it predicts how fast and efficiently the proposed system will work.

## 2. Objectives of performance estimation

1. Predict the expected response time of the system.
2. Estimate the number of requests the system can handle.
3. Identify possible performance bottlenecks.
4. Estimate CPU, memory, storage and network requirements.
5. Check whether the design satisfies performance requirements.
6. Reduce the need for expensive redesign after implementation.

## 3. Important performance metrics

| Metric               | Meaning                                                     |
| -------------------- | ----------------------------------------------------------- |
| Response time        | Time taken by the system to respond to a request.           |
| Throughput           | Number of requests or transactions processed per unit time. |
| CPU utilization      | Percentage of CPU processing capacity being used.           |
| Memory utilization   | Amount of memory consumed by the system.                    |
| Network latency      | Time taken for data to travel across a network.             |
| Scalability          | Ability to handle increasing workloads.                     |
| Resource utilization | Amount of available resources used by the system.           |

## 4. Techniques used for performance estimation

1\. Analytical estimation

- Uses mathematical calculations and formulas to predict performance.
- Estimates processing time, resource usage and workload.
- Useful during early design.

2\. Simulation

- Creates a simulated model of the proposed system.
- Tests how the system behaves under different workloads.
- Helps identify potential bottlenecks.

3\. Benchmarking

- Compares the proposed system with similar existing systems.
- Uses existing performance measurements as a reference.

4\. Prototyping

- Develops a small working model of the system.
- Measures actual performance under test conditions.
- Helps validate design assumptions.

## 5. Steps involved in performance estimation

1. Identify workload: Determine the expected number of users, requests and transactions.
2. Identify performance requirements: Define acceptable response time, throughput and resource limits.
3. Study system architecture: Identify subsystems, components, databases and communication paths.
4. Estimate resource requirements: Calculate expected CPU, memory, storage and network usage.
5. Apply estimation techniques: Use analytical models, simulation, benchmarking or prototypes.
6. Evaluate results: Compare estimated performance with required performance.
7. Identify bottlenecks: Find components that may slow down the system.
8. Recommend design changes: Suggest improvements if performance requirements are not satisfied.

## 6. Example: Online Shopping System

Consider an online shopping system where many customers browse products and place orders simultaneously.

| Component          | Performance consideration       |
| ------------------ | ------------------------------- |
| User interface     | Page loading and response time  |
| Application server | Number of simultaneous requests |
| Database           | Query execution time            |
| Payment gateway    | Payment processing delay        |
| Network            | Communication latency           |

Suppose the design requirement is to handle 1,000 concurrent users with an average response time below 2 seconds.

Performance estimation helps determine whether the proposed application server, database and network architecture can satisfy these requirements.

## 7. Relationship between performance estimation and design optimization

Performance estimation and design optimization are related but have different purposes.

| Performance estimation                               | Design optimization                                                           |
| ---------------------------------------------------- | ----------------------------------------------------------------------------- |
| Predicts expected system performance.                | Improves the quality of the system design.                                    |
| Evaluates the proposed design.                       | Modifies the design to achieve better results.                                |
| Identifies possible bottlenecks.                     | Attempts to remove or reduce bottlenecks.                                     |
| Uses analytical models, simulation and benchmarking. | Uses techniques such as redesign, resource allocation and trade-off analysis. |
| Answers: How will the system perform?                | Answers: How can the system be improved?                                      |

Example: If performance estimation predicts slow database queries, design optimization may introduce indexing, caching or database redesign to improve response time.

## 8. Advantages

1. Detects performance problems early in the design phase.
2. Helps in selecting appropriate hardware and software resources.
3. Reduces development and maintenance costs.
4. Improves system reliability and responsiveness.
5. Helps ensure that performance requirements are achieved.

## 9. Conclusion

System performance estimation is an important system design activity that predicts the expected efficiency of a system before implementation. It helps designers identify bottlenecks, estimate resource requirements and verify performance requirements. Its results provide a foundation for design optimization.

## Exam preparation checklist

Study progress

0/6

Definition and objectives

Performance metrics

Techniques of performance estimation

Steps involved in estimation

Online shopping system example

Difference between estimation and optimization

PYQ focus: The November 2023 question asks for a short note. Prioritize the definition, objectives, performance metrics, estimation techniques and one example. Add the relationship with design optimization if you have time.