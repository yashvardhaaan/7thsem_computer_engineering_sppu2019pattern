# **Part F — Multithreaded Algorithms**

## **2. Performance Measures**



Direct PYQ: Nov/Dec 2024, Q7(b)

8 marks



**Question:** Explain speedup, efficiency, throughput, contention and latency of multithreaded algorithms.

Performance measures are used to evaluate how effectively a multithreaded algorithm performs when multiple threads or processors execute tasks concurrently.

The five important performance measures are explained below.

## **1. Speedup**

**Definition:** Speedup measures how much faster an algorithm executes using multiple processors compared with a single processor.

It indicates the improvement in execution time due to parallel processing.

**Formula:**

\\[ S(P)=\frac{T_1}{T_P} \\]

Where:

- \\(T_1\\) = execution time using one processor.
- \\(T_P\\) = execution time using P processors.
- \\(S(P)\\) = speedup using P processors.

**Example:**

Suppose:

- Single processor execution time = 100 seconds.
- Four processor execution time = 25 seconds.

\\[ S(4)=\frac{100}{25}=4 \\]

4× speedup

The algorithm executes four times faster using four processors.

**Types of Speedup:**

- Linear speedup: \\(S(P)=P\\)
- Sublinear speedup: \\(S(P)\<P\\)
- Superlinear speedup: \\(S(P)>P\\)

Linear speedup is ideal, while superlinear speedup can sometimes occur due to effects such as improved cache utilization.

## **2. Efficiency**

**Definition:** Efficiency measures how effectively the available processors are utilized during parallel execution.

It is the ratio of speedup to the number of processors.

**Formula:**

\\[ E(P)=\frac{S(P)}{P} \\]

Or,

\\[ E(P)=\frac{T_1}{P\times T_P} \\]

**Example:**

Suppose:

- Number of processors = 4.
- Speedup = 3.

\\[ E(4)=\frac{3}{4}=0.75 \\]

\\[ E(4)=75\\% \\]

This means the average processor utilization, as measured by efficiency, is 75%.

**Important points:**

- Ideal efficiency = 100%.
- Efficiency generally decreases as processor count increases if the workload does not scale.
- Synchronization and communication overhead can reduce efficiency.

## **3. Throughput**

**Definition:** Throughput is the number of tasks or operations completed by a system per unit of time.

It measures the processing capacity of a multithreaded system.

**Formula:**

\\[ \text{Throughput}= \frac{\text{Number of completed tasks}}{\text{Total time}} \\]

**Example:**

Suppose a multithreaded server processes 600 requests in 10 seconds.

\\[ \text{Throughput}=\frac{600}{10} \\]

\\[ =60\text{ requests/second} \\]

Therefore, the system has a throughput of 60 requests per second.

**Important points:**

- Higher throughput means more tasks are completed per unit of time.
- It is important in web servers, databases and transaction processing.
- Adding threads may increase throughput, but excessive threads can create overhead.

## **4. Contention**

**Definition:** Contention occurs when multiple threads compete for the same shared resource, such as memory, locks, CPU resources or shared data.

When one thread accesses a locked resource, other threads may need to wait until the resource becomes available.

**Example:**

Consider three threads accessing the same shared variable.

- Thread T1 acquires a lock.
- Thread T2 requests the same lock and waits.
- Thread T3 also requests the lock and waits.
- After T1 releases the lock, another waiting thread can proceed.

**Contention example**

**Shared Resource / Lock**

Thread T1

Lock acquired

Thread T2

Waiting

Thread T3

Waiting

**Effects of contention:**

1. Increases waiting time.
2. Reduces parallel performance.
3. Decreases throughput.
4. Increases synchronization overhead.
5. Can cause poor processor utilization.

**Methods to reduce contention:**

- Minimize shared data.
- Use fine-grained locks.
- Reduce lock holding time.
- Use thread-local storage where appropriate.
- Use suitable concurrent data structures.

## **5. Latency**

**Definition:** Latency is the time taken by a system to complete a particular operation or respond to a request.

It measures the delay experienced by an individual task.

**Formula:**

\\[ \text{Latency}= \text{Completion Time}-\text{Request Time} \\]

**Example:**

Suppose a web server receives a request at 10:00:00 and completes it at 10:00:02.

\\[ \text{Latency}=2\text{ seconds} \\]

Therefore, the latency is 2 seconds.

**Important points:**

- Lower latency means faster response.
- It is important in real-time systems.
- Excessive synchronization and resource contention can increase latency.
- Latency is commonly measured using average, median and 95th/99th percentile response times.

## **6. Difference Between All Five Performance Measures**

| Measure    | Meaning                              | Desired result |
| ---------- | ------------------------------------ | -------------- |
| Speedup    | Improvement in execution time        | Higher         |
| Efficiency | Effective processor utilization      | Higher         |
| Throughput | Tasks completed per unit time        | Higher         |
| Contention | Competition for shared resources     | Lower          |
| Latency    | Time taken to complete one operation | Lower          |

## **7. Combined Numerical Example**

Consider a program with the following execution details:

- Single processor execution time = 120 seconds.
- Four processor execution time = 40 seconds.
- Completed requests = 500.
- Total request processing interval = 10 seconds.

**1. Speedup**

\\[ S(4)=\frac{120}{40}=3 \\]

**2. Efficiency**

\\[ E(4)=\frac{3}{4}=0.75=75\\% \\]

**3. Throughput**

\\[ =\frac{500}{10}=50 \\]

Therefore, throughput = 50 requests/second.

**4. Contention**

If multiple threads compete for the same lock, waiting time increases and performance decreases.

**5. Latency**

If one request takes 200 milliseconds to complete, its latency is 200 ms.

## **8. Conclusion**

Performance measures help evaluate the effectiveness of multithreaded algorithms. Speedup measures execution-time improvement, efficiency measures processor utilization, throughput measures completed tasks per unit time, contention measures competition for shared resources, and latency measures the response time of an operation. A good multithreaded system aims for high speedup, efficiency and throughput with low contention and latency.

## **Quick revision formulas**

**Speedup**

\\(S(P)=\frac{T_1}{T_P}\\)

**Efficiency**

\\(E(P)=\frac{S(P)}{P}\times100\\%\\)

**Throughput**

\\(\frac{\text{Completed tasks}}{\text{Total time}}\\)

**Contention**

Competition between threads for shared resources. No single universal formula.

**Latency**

\\(\text{Completion time}-\text{Request time}\\)

## **PYQ revision checklist**

**Preparation progress**

0/6

Speedup definition, formula and example

Efficiency definition, formula and example

Throughput definition, formula and example

Contention definition, effects and reduction

Latency definition, formula and example

Comparison table of all five measures

**Exam tip:** For 8 marks, explain all five measures with their definitions. Write formulas for speedup, efficiency, throughput and latency, and use one small example each. For contention, explain shared-resource competition with a lock diagram.