# **Part F — Multithreaded Algorithms**

## **3. Analysing Multithreaded Algorithms**



2 PYQ occurrences

7 marks each



**PYQs:**

- Nov/Dec 2023 Q7(b): Explain analysing multithreaded algorithms, parallel loops and race conditions.
- May/Jun 2024 Q7(b): Same question.

This is an important topic. Prepare three main areas: **work-span analysis, parallel loops and race conditions**. Also understand speedup and Amdahl's Law to strengthen your answer.

## **1. Analysis of Multithreaded Algorithms**

Analysis of a multithreaded algorithm is the process of measuring its computational work, execution time, parallelism and performance when multiple processors or threads execute tasks.

Unlike sequential algorithms, multithreaded algorithms must account for task dependencies, synchronization and communication overhead.

The main measures are:

- Work
- Span
- Parallelism
- Speedup
- Efficiency

### **A. Work (**\\(T_1\\)**)**

Work is the total number of operations performed by an algorithm, assuming execution on a single processor.

\\[ T_1 = \text{Total number of operations} \\]

It represents the total computational effort.

### **B. Span (**\\(T\_\infty\\)**)**

Span is the total time taken by the longest dependency path in a computation, assuming an unlimited number of processors.

It is also called the **critical path length**.

\\[ T\_\infty = \text{Time along the longest dependency path} \\]

The span determines the minimum possible execution time, regardless of how many processors are available.

### **Example**

Consider these tasks:

- A takes 2 units.
- B and C each take 3 units and can execute simultaneously after A.
- D takes 2 units and starts after both B and C finish.

**Task dependency graph**

**A (2)**

**B (3)**

**C (3)**

**D (2)**

**Work:**

\\[ T_1=2+3+3+2=10 \\]

**Span:**

\\[ T\_\infty=2+3+2=7 \\]

Therefore:

- Total work = 10 units.
- Span = 7 units.
- A single processor requires 10 units.
- With sufficient processors, the computation can finish in 7 units under this model.

### **C. Parallelism**

Parallelism measures the maximum potential parallel execution of an algorithm.

\\[ \text{Parallelism}=\frac{T_1}{T\_\infty} \\]

Using the above example:

\\[ =\frac{10}{7}=1.43 \\]

A higher value indicates more opportunity for parallel execution.

## **2. Speedup and Efficiency**

### **A. Speedup**

Speedup measures how much faster an algorithm executes using multiple processors compared with one processor.

\\[ S(P)=\frac{T_1}{T_P} \\]

Where:

- \\(T_1\\) = execution time on one processor.
- \\(T_P\\) = execution time on P processors.

**Example:**

If an algorithm takes 100 seconds on one processor and 25 seconds on four processors:

\\[ S(4)=\frac{100}{25}=4 \\]

Therefore, speedup is 4 times.

### **B. Efficiency**

Efficiency measures how effectively the available processors are utilized.

\\[ E(P)=\frac{S(P)}{P}\times100 \\]

If speedup is 3 using four processors:

\\[ E(4)=\frac{3}{4}\times100=75\\% \\]

## **3. Parallel Loops**

A **parallel loop** is a loop in which independent iterations are executed simultaneously by multiple threads or processors.

In a normal sequential loop, iterations execute one after another. In a parallel loop, independent iterations can execute at the same time.

### **Example: Sequential Loop**

```
for i = 0 to 999:
    A[i] = B[i] + C[i]
```

Each iteration calculates one array element.

### **Parallel Loop**

```
parallel_for i = 0 to 999:
    A[i] = B[i] + C[i]
```

The iterations are distributed among multiple threads.

For example, with four threads:

| Thread | Iterations |
| ------ | ---------- |
| T1     | 0–249      |
| T2     | 250–499    |
| T3     | 500–749    |
| T4     | 750–999    |

**Parallel loop execution**

Thread 1

0–249

Thread 2

250–499

Thread 3

500–749

Thread 4

750–999

All four threads process their assigned iterations concurrently.

### **Advantages of Parallel Loops**

1. Reduces execution time.
2. Utilizes multiple CPU cores.
3. Improves processing speed for large datasets.
4. Increases computational efficiency.

### **Conditions for Safe Parallel Loops**

- Iterations should be independent wherever possible.
- Shared variables must be protected.
- Dependencies between iterations must be considered.
- Synchronization may be required for shared operations.

## **4. Race Conditions**

**Definition:** A race condition occurs when multiple threads access shared data concurrently, and the final result depends on the unpredictable order of their execution.

It usually occurs when at least one thread modifies shared data without proper synchronization.

### **Example**

Suppose a shared variable has an initial value:

\\[ count=0 \\]

Two threads execute:

```
count = count + 1
```

Expected result:

\\[ count=2 \\]

However, the operation involves three steps:

1. Read the current value.
2. Add 1.
3. Write the updated value.

Possible execution:

| Step | Thread T1       | Thread T2       |
| ---- | --------------- | --------------- |
| 1    | Reads count = 0 |                 |
| 2    |                 | Reads count = 0 |
| 3    | Calculates 1    |                 |
| 4    |                 | Calculates 1    |
| 5    | Writes 1        |                 |
| 6    |                 | Writes 1        |

Incorrect result: 1

The expected result was 2, but the final result becomes 1 because both threads read the same initial value.

This is called a **race condition**, specifically a lost-update problem.

### **How to Prevent Race Conditions**

**1. Mutex / Lock**

Allow only one thread at a time to access the shared variable.

```
lock(mutex)

count = count + 1

unlock(mutex)
```

**2. Atomic Operations**

Use atomic operations to perform updates safely without exposing intermediate states.

```
atomic_increment(count)
```

**3. Semaphores**

Control access to shared resources using synchronization mechanisms.

**4. Thread-Local Variables**

Give each thread its own variable and combine the results after execution.

### **Advantages of Preventing Race Conditions**

- Maintains data consistency.
- Produces correct results.
- Improves program reliability.
- Prevents unpredictable behaviour.

## **5. Amdahl's Law**

Supplementary concept

Amdahl's Law explains the maximum theoretical speedup of a program when only a portion of the program can be parallelized.

It shows that the sequential portion limits the overall speedup.

**Formula:**

\\[ S(P)=\frac{1}{(1-f)+\frac{f}{P}} \\]

Where:

- \\(f\\) = fraction of the program that can be parallelized.
- \\(1-f\\) = sequential fraction.
- \\(P\\) = number of processors.
- \\(S(P)\\) = theoretical speedup.

### **Example**

Suppose:

- 80% of the program is parallelizable.
- 20% is sequential.
- Number of processors = 4.

\\[ S(4)=\frac{1}{0.2+\frac{0.8}{4}} \\]

\\[ =\frac{1}{0.2+0.2} \\]

\\[ =\frac{1}{0.4}=2.5 \\]

Speedup = 2.5×

Even with four processors, the program becomes only 2.5 times faster because 20% of the work must execute sequentially.

**Conclusion:** Increasing the number of processors does not always produce proportional speedup.

## **6. Performance Analysis of Parallel Algorithms**

Performance analysis evaluates how efficiently an algorithm uses multiple processors.

Important factors include:

| Factor                   | Meaning                            |
| ------------------------ | ---------------------------------- |
| Work                     | Total computational operations     |
| Span                     | Longest dependency path            |
| Parallelism              | Work divided by span               |
| Speedup                  | Improvement in execution time      |
| Efficiency               | Processor utilization              |
| Communication overhead   | Time spent exchanging data         |
| Synchronization overhead | Time spent coordinating threads    |
| Load balancing           | Distribution of work among threads |

Two important lower bounds are:

\\[ T_P\geq \frac{T_1}{P} \\]

and

\\[ T_P\geq T\_\infty \\]

Combining them:

\\[ \boxed{T_P\geq\max\left(\frac{T_1}{P},T\_\infty\right)} \\]

This means execution time cannot be less than either the total work divided by the number of processors or the critical-path length.

**Factors that reduce parallel performance:**

1. Too many dependencies between tasks.
2. Race conditions and synchronization.
3. Communication overhead.
4. Unequal distribution of work.
5. Limited number of processors.

## **7. Conclusion**

Analysis of multithreaded algorithms involves measuring work, span, parallelism, speedup and efficiency. Parallel loops allow independent iterations to execute simultaneously, reducing execution time. Race conditions occur when multiple threads access shared data without proper synchronization. Amdahl's Law explains why the sequential portion of a program limits the maximum achievable speedup.

## **PYQ-focused revision**

| Exam               | Question                                     | Marks | Important areas                             |
| ------------------ | -------------------------------------------- | ----- | ------------------------------------------- |
| Nov/Dec 2023 Q7(b) | Analysis, parallel loops and race conditions | 7     | Work, span, parallel loops, race conditions |
| May/Jun 2024 Q7(b) | Same question                                | 7     | Work, span, parallel loops, race conditions |

**Revision checklist**

0/8

Work and Span definitions with example

Parallelism formula

Speedup and Efficiency formulas

Parallel loop definition, example and advantages

Race condition definition and lost-update example

Methods to prevent race conditions

Amdahl's Law and numerical example

Performance analysis and execution-time bounds

**Exam strategy for 7 marks:**

- Work and span: 2 marks.
- Parallel loops: 2 marks.
- Race conditions with example and prevention: 3 marks.

Amdahl's Law is supplementary; prioritise the three concepts explicitly mentioned in both question papers.