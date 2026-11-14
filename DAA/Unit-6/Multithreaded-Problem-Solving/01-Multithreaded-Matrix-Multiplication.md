# **Part F — Multithreaded Algorithms**

## **6. Multithreaded Matrix Multiplication**



3 PYQ occurrences

8–10 marks



This is a high-priority numerical and algorithm-writing topic. The most important question is how to parallelize matrix multiplication by distributing independent calculations among multiple threads.

**PYQs:**

- Nov/Dec 2024 Q8(b): Compare conventional and multithreaded matrix multiplication for matrices of orders \\(m\times n\\) and \\(n\times p\\). (8 marks)
- May/Jun 2023 Q7(a): Write a simple multithreaded matrix multiplication algorithm by parallelizing relevant loops. (8 marks)
- May/Jun 2024 Q7(a)(i): Short note on multithreaded matrix multiplication. (Part of 10 marks)

## **1. Conventional Matrix Multiplication**

Matrix multiplication is the process of multiplying two matrices to produce a resultant matrix.

Suppose:

- Matrix A has dimensions \\(m\times n\\).
- Matrix B has dimensions \\(n\times p\\).
- Resultant matrix C has dimensions \\(m\times p\\).

The multiplication is possible because the number of columns in A equals the number of rows in B.

**Mathematical formula:**

\\[ C=A\times B \\]

The element at row \\(i\\) and column \\(j\\) is calculated by multiplying the corresponding elements of row \\(i\\) of A and column \\(j\\) of B, then adding the products.

A

2

1

3

4

0

2

×

B

5

2

1

4

3

7

\=

AB

20292622

\\(\left(AB\right)\_{11}=(2\cdot 5)+(1\cdot 1)+(3\cdot 3)=20\\)

Row

12

Column

12

Give feedback

\\[ C[i][j]=\sum\_{k=0}^{n-1} A[i][k]\times B[k][j] \\]

### **Conventional algorithm**

```
MatrixMultiply(A, B, C, m, n, p):

    for i = 0 to m-1:
        for j = 0 to p-1:
            C[i][j] = 0

            for k = 0 to n-1:
                C[i][j] = C[i][j] +
                          A[i][k] * B[k][j]

    return C
```

**Explanation:**

1. The outer loop selects a row of A.
2. The second loop selects a column of B.
3. The innermost loop calculates the dot product.
4. The result is stored in C[i][j].
5. The process repeats until all elements of C are calculated.

### **Time complexity**

There are three nested loops:

- First loop: \\(m\\) iterations.
- Second loop: \\(p\\) iterations.
- Third loop: \\(n\\) iterations.

\\[ T(m,n,p)=O(mnp) \\]

For two square matrices of order \\(n\\):

\\[ T(n)=O(n^3) \\]

## **2. Multithreaded Matrix Multiplication**

**Definition:** Multithreaded matrix multiplication is a parallel algorithm in which the computation of matrix elements is divided among multiple threads so that independent calculations can execute concurrently.

The key observation is that each element of the resultant matrix can be calculated independently, provided the input matrices are not modified during multiplication.

### **Working principle**

1. Take two input matrices A and B.
2. Create the resultant matrix C.
3. Divide the rows or elements of C among available threads.
4. Each thread calculates its assigned elements.
5. Threads execute their calculations concurrently.
6. Synchronize the threads after completing their work.
7. Return the resultant matrix C.

### **Example of thread distribution**

Suppose A and B are both \\(4\times4\\) matrices, and four threads are available.

**Resultant matrix C — work distribution**

**T1**

C11

**T1**

C12

**T1**

C13

**T1**

C14

**T2**

C21

**T2**

C22

**T2**

C23

**T2**

C24

**T3**

C31

**T3**

C32

**T3**

C33

**T3**

C34

**T4**

C41

**T4**

C42

**T4**

C43

**T4**

C44

T1: Row 1

T2: Row 2

T3: Row 3

T4: Row 4

Each thread calculates one complete row of the resultant matrix.

Here, each thread calculates four elements. Since each output element is independent, all four threads can work simultaneously.

## **3. Parallelizing Loops**

In conventional matrix multiplication, three nested loops are used.

```
for i = 0 to m-1:
    for j = 0 to p-1:
        for k = 0 to n-1:
            C[i][j] += A[i][k] * B[k][j]
```

To parallelize the algorithm, the outer loop can be replaced by a parallel loop:

```
parallel_for i = 0 to m-1:
    for j = 0 to p-1:
        C[i][j] = 0

        for k = 0 to n-1:
            C[i][j] += A[i][k] * B[k][j]
```

**Why is this safe?**

- Each iteration of the outer loop processes a different row of C.
- Each thread writes to a different row.
- No two threads modify the same output element.
- Input matrices A and B are only read.

Therefore, this approach avoids write-write race conditions, assuming each row is assigned to only one thread.

## **4. Multithreaded Matrix Multiplication Pseudocode**

The following is a simple row-wise multithreaded algorithm.

```
MultithreadedMultiply(A, B, C, m, n, p, P):

    Divide m rows among P threads

    For each thread t in parallel:

        start = assigned starting row
        end   = assigned ending row

        for i = start to end-1:
            for j = 0 to p-1:

                C[i][j] = 0

                for k = 0 to n-1:
                    C[i][j] = C[i][j] +
                              A[i][k] * B[k][j]

    Wait for all threads

    return C
```

**Explanation:**

1. The input matrices are provided.
2. The output matrix C is initialized.
3. Rows are divided among P threads.
4. Each thread multiplies its assigned rows.
5. All threads execute simultaneously.
6. The main program waits for thread completion.
7. The resultant matrix is returned.

## **5. Time Complexity Analysis**

For matrices A (\\(m\times n\\)) and B (\\(n\times p\\)):

**Conventional multiplication:**

\\[ T_1=O(mnp) \\]

**Multithreaded multiplication:**

With P processors and balanced distribution of rows:

\\[ T_P=O\left(\frac{mnp}{P}\right) \\]

This is an idealized computation-time estimate, assuming sufficient independent work, balanced scheduling and negligible thread-management overhead.

**Space complexity:**

- Input matrices: \\(O(mn+np)\\)
- Result matrix: \\(O(mp)\\)
- Additional space: Thread stacks and scheduling information.

The matrix storage requirement remains the same in both approaches.

### **Speedup**

\\[ S(P)=\frac{T_1}{T_P} \\]

Ideally:

\\[ S(P)\approx P \\]

However, actual speedup may be lower because of synchronization, thread creation, communication and load-balancing overhead.

## **6. Comparison: Conventional vs Multithreaded Matrix Multiplication**

| Feature         | Conventional                             | Multithreaded                    |
| --------------- | ---------------------------------------- | -------------------------------- |
| Execution       | Sequential                               | Concurrent/parallel              |
| Processing      | Single execution thread                  | Multiple threads                 |
| Loop execution  | Normal nested loops                      | Parallelized outer loop          |
| Time complexity | \\(O(mnp)\\)                             | Ideal \\(O(mnp/P)\\)             |
| CPU utilization | Limited                                  | Can use multiple cores           |
| Execution time  | Generally higher for large matrices      | Potentially lower                |
| Synchronization | Not generally required                   | Required for thread coordination |
| Implementation  | Simple                                   | More complex                     |
| Overhead        | Low                                      | Thread management overhead       |
| Race conditions | Generally absent in this basic algorithm | Must be prevented                |

## **7. Advantages of Multithreaded Matrix Multiplication**

1. Reduces execution time for large matrices.
2. Utilizes multiple processor cores.
3. Improves computational performance.
4. Supports parallel processing of independent matrix elements.
5. Useful for large-scale scientific and engineering applications.

## **8. Limitations**

1. Thread creation and management introduce overhead.
2. Synchronization is required.
3. Small matrices may not benefit from parallel execution.
4. Unequal workload distribution can reduce performance.
5. Requires careful handling of shared memory and data.

## **9. Applications**

[2678x Faster Matrix Multiplication with a GPU](https://images.openai.com/static-rsc-4/THYwrNqfOXRx1aG3kPoHRxDSaQz18zpeteG5zDoU0YcjuTUgefyhkLqtj-WnVYAz4QRH8rDWJ-bxP5g11RfAF6q_Yys35ngWOX8LsCG70dzpsLV9FhZQJi91Vuvh72iErqPsTpRnqzHDtp28X9Y1adKiIBXcSuDaH7DMElRLD-Y?purpose=inline)

[PPT - Introduction to CUDA Programming: Parallel Computing with GPUs PowerPoint Presentation - ID:8883749](https://images.openai.com/static-rsc-4/D1C2OuvgV3KVJBvomlsglBBnuapp2Ca8dgdAZYpS7AJOR_IUwxwJ_L5sHqq8w1r3-BO9Mtg1V2EXed_0QGjnllb8h6M9Zu8GXHSaJmioGyXcTr2prLfA3EVwIiNCRTR4CELDNexJcwqz4XsX3dC2ktg8rqgdX2Yg5Ej-1qqibtk?purpose=inline)

[General Matrix Multiplication (GEMM) Kernels · QSysArch - Quantum Computer System Architecture](https://images.openai.com/static-rsc-4/Th-j64AE9HyR-sVvB71WFfalnxA9FVL4MuwFyBlVwSx9unGqvGhESaf4NBJWLBFKK05wuGst-lvjgnaUPH1182H8QdVmt8ztg7JizjVwstF_ku0nYwJzwPZ2u_AxVdJJN3Gb-Y5_NYWbc_5RjAeXbcib-L8XBE3opYtr9XblCHI?purpose=inline)

8

- Machine learning and neural networks.
- Image processing and computer graphics.
- Scientific simulations.
- Weather forecasting.
- Engineering calculations.
- High-performance computing.

## **10. Conclusion**

Conventional matrix multiplication uses three nested loops and has a time complexity of \\(O(mnp)\\). Multithreaded matrix multiplication parallelizes independent calculations by dividing the output matrix among multiple threads. It can reduce execution time and improve CPU utilization, particularly for large matrices. Its performance depends on processor count, workload distribution and synchronization overhead.

## **PYQ-wise preparation**

| Exam                  | Question                                              | Marks      | What to prepare                                  |
| --------------------- | ----------------------------------------------------- | ---------- | ------------------------------------------------ |
| Nov/Dec 2024 Q8(b)    | Compare conventional and multithreaded multiplication | 8          | Formulas, complexity and comparison table        |
| May/Jun 2023 Q7(a)    | Multithreaded algorithm using parallel loops          | 8          | Pseudocode, loop parallelization and explanation |
| May/Jun 2024 Q7(a)(i) | Short note                                            | Part of 10 | Definition, working, diagram and advantages      |

## **Revision checklist**

**Preparation progress**

0/9

Conventional matrix multiplication formula

Three-loop conventional pseudocode

Multithreaded multiplication definition

Row-wise thread distribution diagram

Parallelizing the outer loop

Multithreaded pseudocode

Conventional O(mnp) complexity

Parallel ideal O(mnp/P) complexity

Comparison and advantages

**Exam strategy:**

- **8 marks — comparison:** Explain both algorithms, write their time complexities and give the comparison table.
- **8 marks — algorithm:** Write the parallel pseudocode, explain row-wise thread distribution and show the diagram.
- **Short note:** Definition, working, pseudocode and advantages.

**Most important point:** Parallelize the outer loop because different output rows can be calculated independently. This is the simplest way to explain multithreaded matrix multiplication in an exam.