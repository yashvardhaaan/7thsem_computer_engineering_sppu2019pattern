# **Part F — Multithreaded Algorithms**

## **1. Introduction to Multithreaded Algorithms**



No direct standalone PYQ

Important foundation topic



This topic builds the foundation for understanding parallel algorithms, work-span analysis, multithreaded scheduling and performance evaluation.

## **1. Definition of Multithreaded Algorithms**

A **multithreaded algorithm** is an algorithm that divides a computational task into multiple smaller tasks called threads, which can execute concurrently or in parallel to improve performance.

Each thread performs a part of the overall computation. Threads may execute independently or communicate and synchronize when sharing data.

**Example:** Adding two large arrays can be divided among four threads, with each thread adding a different portion of the arrays.

## **2. Threads and Parallel Execution**

### **What is a Thread?**

A **thread** is the smallest unit of execution within a process that can be scheduled independently by the operating system or runtime.

A process may contain multiple threads.

Each thread has its own:

- Program counter
- Register state
- Stack

Threads within the same process share:

- Heap memory
- Global variables
- Process resources

### **Parallel Execution**

Parallel execution means executing multiple tasks simultaneously using multiple CPU cores or processors.

**Example:**

Suppose an array contains 1,000 elements and we want to calculate their squares.

We can divide the work into four threads:

| Thread | Elements processed |
| ------ | ------------------ |
| T1     | 1–250              |
| T2     | 251–500            |
| T3     | 501–750            |
| T4     | 751–1000           |

All four threads can process their portions simultaneously on four available CPU cores.

[Enhancing application performance on multicore systems - Military Embedded Systems](https://images.openai.com/static-rsc-4/3kNncA1yvi3NbZur4rXKmL3IxprkTlrSIlCO2zaxtsNAYVGZAGaifkZs93eooYeJiBSYr7dHIMW1NRVbmuOTXJIlhsAc5apmh6z6X4PVPO-sW2x23sy_VNPtVunLLJjoVIjli5Zl_iTYoA-xd9m6Ilhp0jcGsODnM6CkMx15Xrg?purpose=inline)

[militaryembedded.com](https://militaryembedded.com/comms/communications/enhancing-application-performance-multicore-systems?utm_source=chatgpt.com)

## **3. Concurrency vs Parallelism**

Concurrency and parallelism are related concepts, but they are not identical.

**Concurrency:** Multiple tasks make progress during overlapping periods. They may take turns using a single CPU core.

**Parallelism:** Multiple tasks execute at exactly the same time using multiple processing units or CPU cores.

### **Diagram**

**Concurrency — Single CPU**

Tasks take turns on the processor.

**T1**

**T2**

**T1**

**T2**

**Parallelism — Multiple CPU cores**

Tasks execute simultaneously.

Core 1

T1

Core 2

T2

### **Difference Between Concurrency and Parallelism**

| Feature         | Concurrency                  | Parallelism                                                   |
| --------------- | ---------------------------- | ------------------------------------------------------------- |
| Meaning         | Multiple tasks make progress | Multiple tasks execute simultaneously                         |
| CPU requirement | Can work on one core         | Requires multiple processing units for simultaneous execution |
| Execution       | Interleaved or overlapping   | Simultaneous                                                  |
| Main objective  | Manage multiple tasks        | Increase computational speed                                  |
| Example         | Web server handling requests | Multiple cores processing separate data                       |

**Remember:** Concurrency is about dealing with multiple tasks; parallelism is about doing multiple tasks at the same time.

## **4. Work and Span Concepts**

Work and span are two important concepts used to analyse the performance of multithreaded algorithms.

### **A. Work (T₁)**

**Work** is the total number of operations performed by an algorithm, assuming execution on a single processor.

It represents the total computational effort.

\\[ T_1 = \text{Total work} \\]

### **B. Span (T∞)**

**Span** is the length of the longest dependency path in a computation.

It is also called the critical-path length.

It represents the minimum possible execution time with an unlimited number of processors, assuming unit-time operations.

\\[ T\_\infty = \text{Span} \\]

### **Example**

Suppose an algorithm performs the following operations:

- Task A takes 2 units.
- Tasks B and C each take 3 units and can run simultaneously after A.
- Task D takes 2 units and starts after both B and C finish.

**Task dependency diagram**

**A (2)**

**B (3)**

**C (3)**

**D (2)**

**Work calculation**

\\[ T_1=2+3+3+2=10 \\]

**Span calculation**

\\[ T\_\infty=2+3+2=7 \\]

B and C execute simultaneously, so only one of their durations contributes to the longest path.

Therefore:

- Total work = 10 time units.
- Span = 7 time units.
- With one processor, execution takes 10 units.
- With sufficient processors, execution can take 7 units under this task dependency model.

### **C. Parallelism**

Parallelism indicates the maximum potential parallelism in an algorithm.

\\[ \text{Parallelism}=\frac{T_1}{T\_\infty} \\]

For the above example:

\\[ =\frac{10}{7}=1.43 \\]

A higher parallelism value generally indicates greater opportunity to execute tasks simultaneously.

### **D. Execution Time with P Processors**

For any computation:

\\[ T_P\geq \max\left(\frac{T_1}{P},T\_\infty\right) \\]

Where:

- \\(T_P\\) = execution time using P processors.
- \\(T_1\\) = total work.
- \\(T\_\infty\\) = span.

This gives a lower bound on execution time.

## **5. Advantages of Multithreaded Algorithms**

1. **Faster execution:** Independent tasks can run simultaneously.
2. **Better CPU utilization:** Multiple CPU cores can be utilized.
3. **Improved responsiveness:** One thread can continue while another performs a lengthy operation.
4. **Resource sharing:** Threads can share memory and process resources.
5. **Scalability:** Performance can improve when more processing cores are available.
6. **Efficient processing:** Large computational problems can be divided into smaller tasks.

## **6. Applications of Multithreaded Algorithms**

[How Microsoft 365 innovates under evolving regulations | EY - Taiwan](https://images.openai.com/static-rsc-4/TQ56rmn2yEXE76t2FBBj6FlgQdaSv86aDdDxcZCb3OoBX-XtnC8elF2v6FRii8k3Qx6L3RlH8mad3ECBaKJTQ4n0e_UwpPRCkaa2PKx1dvIiJ6cJzuHYaH9ltd0s_MtyYAKEw2pjOSxnEOYoi0qCcSRNE7v64yMiqophaaLy77U?purpose=inline)

**Web servers**

Handle multiple client requests concurrently.

[カテゴリをまたいだ発注 | 草世木ができること | 外注から共創へ 。次代のアウトソーシング | 草世木（横浜）](https://images.openai.com/static-rsc-4/hza44pO5Tw_mYRpCDhW17eaT2ZHTZ_c-BzWgrl6XhE4HJ-LFwCKxuq26BzHlxwE7_NxQnPSp5gnXaN-nCMDSOAVqB9Oc3671Z8OJ9L08AudyKZtTP8bSrygPpmw7ibbQVMgMVxOOypOFvbqxmbBlbCw_89IBsrZp3PgJafz9NdU?purpose=inline)

**Video processing**

Process different video frames or sections in parallel.

[Reservoir Simulation](https://images.openai.com/static-rsc-4/-yioismfeTmiDA_sOLsnaxRAeC16SzvC6egGxTmoiS7x8a0GAxhrmaLvv-mjvuE2IhvDCcj_KUWmlOeccecBWUTh9bU_s917W5_klG95bL5ymHSmbpOrQUWHlBuwapKI1G5hdjg3JLf4AsFCKKILBEhaR6vNe2gae5BL_pOIOrY?purpose=inline)

**Scientific computing**

Perform complex mathematical calculations and simulations.

[Database Network](https://images.openai.com/static-rsc-4/OJqg-MWnG1PQZpDhrMZpeHz1HEqowW1txcspfDXjbtNwSiAgtMtCf5TVf15q8kIAtaltiy-gpuCHWPNBxWXqhIsUgjby8vOMduROdlFtAjyyrjUnGCtyHHB-fWKrqHO5iFt0M33VYrPrHHE0Sql3cWjbuARyeUjVher1gLmG9NVmw9l57_Q_XKW6Pxf5Mz-Y?purpose=inline)

**Database systems**

Process multiple queries and transactions concurrently.

[The Future of Driving: The Autonomous Car Market](https://images.openai.com/static-rsc-4/p7uKaA6ZwFS4G5wf7oih7fOTeSi2pP_XWJEgyeRWcJy3YSA0aSdNzEoTDY03dRPdWi9Y8CGtLwBUsSRUObJbM3Zsmag4P5NuuQkAsSbG1oZSAdIpa3WR6w1HhLIzWhITGVnaFJrsChGSIRO783RNFsDzuwtq-iShUNX7jx1mZvk?purpose=inline)

**Embedded systems**

Handle sensor reading, communication and control tasks.

## **7. Limitations of Multithreaded Algorithms**

1. Synchronization overhead between threads.
2. Race conditions when shared data is accessed incorrectly.
3. Deadlocks due to improper resource management.
4. Difficult debugging and testing.
5. Thread creation and context-switching overhead.
6. Performance may not improve if tasks have dependencies or insufficient parallelism.

## **8. Conclusion**

Multithreaded algorithms divide computational work into multiple threads to improve performance. Concurrency allows multiple tasks to make progress, whereas parallelism executes multiple tasks simultaneously. Work and span are used to measure the computational effort and critical path of an algorithm. These concepts are essential for analysing and designing efficient parallel algorithms.

## **Important formulas for revision**

| Concept                    | Formula                            |
| -------------------------- | ---------------------------------- |
| Work                       | \\(T_1\\)                          |
| Span                       | \\(T\_\infty\\)                    |
| Parallelism                | \\(\frac{T_1}{T\_\infty}\\)        |
| Execution time lower bound | \\(T_P\geq\max(T_1/P,T\_\infty)\\) |

## **Revision checklist**

**Topic completion**

0/8

Definition of multithreaded algorithms

Threads and parallel execution

Concurrency vs parallelism

Work (T₁) and Span (T∞)

Parallelism formula

Worked example and dependency diagram

Advantages and applications

Limitations

**Study priority:** Give special attention to concurrency vs parallelism, work, span and the parallelism formula. These concepts are the foundation for the next topics in multithreaded algorithm analysis.