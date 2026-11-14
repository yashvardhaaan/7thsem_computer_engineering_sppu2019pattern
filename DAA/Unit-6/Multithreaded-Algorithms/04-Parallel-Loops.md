# **Part F — Multithreaded Algorithms**

## **4. Parallel Loops**



2 PYQ occurrences

Part of 7 marks



**PYQs:**

- Nov/Dec 2023 Q7(b): Explain parallel loops.
- May/Jun 2024 Q7(b): Explain parallel loops.

Parallel loops are an important concept in multithreaded algorithms because they allow independent loop iterations to execute simultaneously using multiple threads or processors.

## **1. Meaning of Parallel Loops**

A **parallel loop** is a loop in which multiple iterations are executed concurrently by different threads or processors to reduce the total execution time.

In a sequential loop, iterations execute one after another. In a parallel loop, independent iterations can execute simultaneously.

**Example:** Adding two arrays containing 1,000 elements can be divided among four threads.

## **2. How Parallel Loops Work**

Consider the following sequential loop:

```
for i = 0 to 999:
    A[i] = B[i] + C[i]
```

In this loop, each iteration calculates one element of array A.

The parallel version is:

```
parallel_for i = 0 to 999:
    A[i] = B[i] + C[i]
```

The iterations are distributed among multiple threads.

For example, with four threads:

| Thread | Assigned iterations |
| ------ | ------------------- |
| T1     | 0–249               |
| T2     | 250–499             |
| T3     | 500–749             |
| T4     | 750–999             |

**Parallel execution diagram**

**Thread 1**

0–249

**Thread 2**

250–499

**Thread 3**

500–749

**Thread 4**

750–999

All four threads execute their assigned iterations concurrently.

After completing their assigned work, the threads synchronize before the program continues, if the loop construct requires a completion barrier.

## **3. Parallel Loop Pseudocode**

```
ParallelLoop(A, B, C, n):

    parallel_for i = 0 to n-1:

        A[i] = B[i] + C[i]

    wait for all threads

    return A
```

**Explanation:**

1. The parallel loop starts.
2. Iterations are divided among available threads.
3. Each thread processes its assigned elements.
4. Threads execute independently.
5. The program waits until all iterations finish.
6. The final result is returned.

## **4. Dependencies Between Loop Iterations**

Dependencies determine whether loop iterations can execute safely in parallel.

A loop is suitable for parallel execution when its iterations are independent or when dependencies are handled correctly.

### **A. Independent Iterations**

Iterations do not depend on the results of other iterations.

Example:

```
parallel_for i = 0 to 4:
    A[i] = B[i] * 2
```

Each iteration works on a different array element.

Safe to parallelize

### **B. Dependent Iterations**

One iteration depends on the result of a previous iteration.

Example:

```
for i = 1 to 4:
    A[i] = A[i-1] + 2
```

Here, iteration `i` requires the result of iteration `i-1`.

Therefore, the iterations cannot all execute simultaneously without changing the algorithm or introducing synchronization.

Dependency exists

### **Types of Loop Dependencies**

1. **Flow dependency (Read After Write):** An iteration reads data written by another iteration.
2. **Anti-dependency (Write After Read):** An iteration writes data that another iteration must read first.
3. **Output dependency (Write After Write):** Multiple iterations write to the same memory location.

### **Comparison**

| Feature                | Independent loop               | Dependent loop                    |
| ---------------------- | ------------------------------ | --------------------------------- |
| Iteration relationship | No dependency                  | One iteration depends on another  |
| Parallel execution     | Directly possible              | Requires dependency handling      |
| Performance            | Better opportunity for speedup | May limit parallelism             |
| Example                | Array multiplication           | Prefix sum using previous element |

## **5. Advantages of Parallel Loops**

1. **Faster execution:** Multiple iterations execute simultaneously.
2. **Better CPU utilization:** Uses multiple processor cores.
3. **Reduced processing time:** Useful for large datasets.
4. **Scalability:** Can distribute work among more processors.
5. **Improved performance:** Independent computations can be processed efficiently.

## **6. Limitations of Parallel Loops**

1. **Synchronization overhead:** Threads may need to wait for one another.
2. **Race conditions:** Shared data may be modified incorrectly by multiple threads.
3. **Dependency problems:** Dependent iterations cannot always execute simultaneously.
4. **Load imbalance:** Some threads may finish earlier than others.
5. **Thread management overhead:** Creating and coordinating threads requires resources.
6. **Limited speedup:** Performance depends on available processors and the amount of parallel work.

## **7. Applications of Parallel Loops**

- Matrix multiplication.
- Image processing.
- Scientific calculations.
- Large-scale data processing.
- Machine learning computations.
- Video and signal processing.

[Harmonizing Multi-GPUs: Efficient Scaling of LLM Inference | by TitanML | Medium](https://images.openai.com/static-rsc-4/aMpfcg9AH5edj3ZQujy_6db7pns2FfyGxMZ7Y9rfpQicX5NVBsxJlEdm9gB8AJxRCzUo5R2GxDaVfwrw-vNZfHAMmenodC_omR8Kk-mddALDyskXaFva7VmoFgFtrvqom4Vka5_U4oCFTdudFOjClf5BfmSJUmx-s5fdvUUp9VY?purpose=inline)

[PPT - Analytical Modeling of Parallel Systems PowerPoint Presentation, free download - ID:3410752](https://images.openai.com/static-rsc-4/07UPL1nror6iG4m8PhfPYYpNETB4Nct-P1a85z3iTwy222YALZBHClG3zFvpbkKRhJJxWof1f98xJdbZFS0Xgkjsw50tS0ir_BX0J6gRjPtZnB6txE580h0DZYk-96nsX8G5y8zQQ4PEqVzj52QPow-CwEAsP9CM2SO1c4VQBEc?purpose=inline)

[PPT - Advanced Image Processing Techniques in Parallel Programming PowerPoint Presentation - ID:9638472](https://images.openai.com/static-rsc-4/r8GKktpp4mWOqgSNQVtIKRX-sQ0ipTRTsV4ohOew2_9X19rhsd_5nEsa_cDonZFVZWLFoSTVeuiu0Ru9mD0Hk91xMareMyT_JR5pf8ikzPBmEHuojJy3L9wo05fejQSf34-LOUEPgJVQPB_F1KKKH0ghal0G_zy_I8lENhGlgVg?purpose=inline)

8

## **8. Conclusion**

Parallel loops allow multiple iterations of a loop to execute concurrently using multiple threads or processors. They improve execution speed and processor utilization. However, dependencies between iterations, synchronization overhead, race conditions and load imbalance must be considered before parallelizing a loop.

## **PYQ revision checklist**

**Preparation progress**

0/7

Definition of parallel loops

Sequential loop vs parallel loop

Parallel loop pseudocode

Thread-wise iteration distribution diagram

Independent and dependent iterations

Three types of dependencies

Advantages and limitations

**Exam tip:** For a 7-mark combined question, write the definition, pseudocode, thread-distribution diagram, explain independent versus dependent iterations, and mention advantages and limitations.