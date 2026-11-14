# **Part F — Multithreaded Algorithms**

## **5. Race Conditions**



3 PYQ occurrences

High priority



**PYQs:**

- Nov/Dec 2023 Q7(b): Explain race conditions. (Combined 7 marks)
- May/Jun 2024 Q7(b): Explain race conditions. (Combined 7 marks)
- May/Jun 2025 Q7(b): Explain race condition in multithreaded algorithms. (4 marks)

This is a frequently repeated topic. Focus on the definition, shared resources, a numerical example and prevention techniques.

## **1. Definition of Race Condition**

A **race condition** occurs when two or more threads access shared data concurrently, and at least one thread modifies that data, causing the final result to depend on the unpredictable order of execution.

It occurs when proper synchronization is not used to control access to shared resources.

**In simple words:** Multiple threads compete to access or modify the same data, which may produce an incorrect result.

## **2. Shared Resources**

A shared resource is any data or resource that can be accessed by multiple threads of a program.

Examples:

1. Global variables.
2. Shared memory.
3. Database records.
4. Files.
5. Common counters.
6. Shared objects and data structures.

**Example:** If two threads access the same bank account balance and withdraw money simultaneously, incorrect balance calculations may occur without proper synchronization.

## **3. Concurrent Read/Write Operations**

Race conditions commonly occur when multiple threads perform read and write operations on shared data.

Consider:

```
count = count + 1
```

This statement involves three operations:

1. Read the current value of `count`.
2. Add 1 to the value.
3. Write the updated value back.

These operations are not necessarily atomic.

If two threads execute them simultaneously, one thread may overwrite the result of another.

## **4. Example of Race Condition**

Suppose a shared variable has an initial value:

\\[ count=0 \\]

Two threads, T1 and T2, execute:

```
count = count + 1
```

**Expected result:**

\\[ count=2 \\]

**Actual execution:**

| Step | Thread T1        | Thread T2        | Shared count |
| ---- | ---------------- | ---------------- | ------------ |
| 1    | Reads count = 0  |                  | 0            |
| 2    |                  | Reads count = 0  | 0            |
| 3    | Calculates 0 + 1 |                  | 0            |
| 4    |                  | Calculates 0 + 1 | 0            |
| 5    | Writes 1         |                  | 1            |
| 6    |                  | Writes 1         | 1            |

**Race condition result**

# **2**

**Expected count**

# **1**

**Actual count**

One update is lost because both threads read the same initial value.

This is called a **lost-update problem**, which is a common example of a race condition.

## **5. Prevention of Race Conditions**

Race conditions can be prevented using synchronization techniques.

### **A. Mutex (Mutual Exclusion Lock)**

A mutex ensures that only one thread at a time can access a protected critical section.

**Pseudocode:**

```
lock(mutex)

count = count + 1

unlock(mutex)
```

**Working:**

1. Thread T1 acquires the lock.
2. T1 updates the shared variable.
3. T1 releases the lock.
4. Thread T2 acquires the lock.
5. T2 updates the variable.

The final result becomes 2.

**Mutex synchronization**

**Thread T1 requests lock**

**T1 enters critical section**

**Updates count and releases lock**

**Thread T2 acquires lock and updates count**

### **B. Semaphore**

A semaphore controls access to shared resources using a counter and wait/signal operations.

It can restrict the number of threads accessing a resource simultaneously.

### **C. Atomic Operations**

Atomic operations execute as indivisible operations.

Example:

```
atomic_increment(count)
```

The increment is performed safely without exposing an intermediate read-modify-write sequence to other threads.

### **D. Thread-Local Variables**

Each thread maintains its own copy of a variable. Results can be combined after the threads complete their work.

This reduces unnecessary sharing.

## **6. Effects of Race Conditions**

1. Incorrect or unpredictable results.
2. Data inconsistency.
3. Difficult debugging and testing.
4. Unexpected program behaviour.
5. Reduced system reliability.
6. Possible corruption of shared data.

## **7. Conclusion**

A race condition occurs when multiple threads access shared data concurrently and the final result depends on their execution order. It can cause incorrect results and data inconsistency. Synchronization techniques such as mutex locks, semaphores, atomic operations and thread-local variables help prevent race conditions and maintain data correctness.

## **PYQ-wise preparation**

| Exam               | Question                                   | Marks      | Priority  |
| ------------------ | ------------------------------------------ | ---------- | --------- |
| Nov/Dec 2023 Q7(b) | Explain race conditions                    | Combined 7 | High      |
| May/Jun 2024 Q7(b) | Explain race conditions                    | Combined 7 | High      |
| May/Jun 2025 Q7(b) | Race condition in multithreaded algorithms | 4          | Very high |

## **Revision checklist**

**Preparation progress**

0/7

Definition of race condition

Shared resources and examples

Concurrent read/write operations

Lost-update example with count variable

Mutex and critical section

Semaphore and atomic operations

Effects and prevention of race conditions

**Exam strategy:**

- **4 marks:** Definition + shared variable example + prevention using mutex.
- **7 marks:** Add read/write explanation, execution table, synchronization diagram, effects and conclusion.

**Remember:** Race condition = Shared data + Concurrent access + At least one write + Missing or inadequate synchronization.