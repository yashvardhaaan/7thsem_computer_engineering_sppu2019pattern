# UNIT II — Analysis of Algorithms and Complexity Theory

# 3. Counting Dominant Operators

> **PYQ Status: No direct standalone PYQ**
>
> **Importance: HIGH — indirectly tested through algorithm-analysis questions**

---

# 3.1 What Is an Operator?

An **operator** is a symbol or operation used to perform a computation.

Examples:

```text
+
-
*
/
<
>
<=
>=
==
=
++
--
```

In algorithm analysis, we are not interested in every operation individually.

Instead, we identify the operations that contribute most significantly to the running time.

These are called **dominant operations** or **basic operations**.

---

# 3.2 What Is a Dominant Operator?

A **dominant operator** is an operation that is executed repeatedly and significantly contributes to the total running time of an algorithm.

Examples include:

* Comparisons
* Assignments
* Arithmetic operations
* Array accesses
* Swapping
* Loop iterations

The dominant operation is counted as a function of the input size `n`.

---

# 3.3 Why Count Dominant Operators?

The exact execution time of an algorithm depends on:

* Processor speed
* Programming language
* Compiler
* Hardware
* Operating system
* Implementation details

Therefore, measuring actual execution time is not always useful for comparing algorithms.

Instead, we count the number of important operations.

For example:

```text
Algorithm A → 10n operations
Algorithm B → n² operations
```

For small `n`, both may appear acceptable.

But as `n` becomes large:

```text
10n grows linearly
n² grows quadratically
```

Therefore, Algorithm A is asymptotically more efficient.

---

# 3.4 Basic Method

To count dominant operations:

```text
1. Identify input size n
2. Identify the dominant operation
3. Determine how many times it executes
4. Write the operation count as a function of n
5. Simplify the expression
6. Determine the asymptotic complexity
```

---

# 3.5 Example 1 — Single Loop

Consider:

```text
for i = 1 to n
    sum = sum + i
```

The dominant operation can be considered:

```text
sum = sum + i
```

It executes `n` times.

Therefore:

```text
C(n) = n
```

Hence:

```text
T(n) = Θ(n)
```

and:

```text
O(n)
```

---

# 3.6 Example 2 — Two Independent Loops

Consider:

```text
for i = 1 to n
    operation()

for j = 1 to n
    operation()
```

The first loop executes:

```text
n times
```

The second loop executes:

```text
n times
```

Total:

```text
C(n) = n + n
     = 2n
```

Ignoring the constant:

```text
Θ(n)
```

Therefore:

```text
Time Complexity = O(n)
```

---

# 3.7 Example 3 — Nested Loops

Consider:

```text
for i = 1 to n
    for j = 1 to n
        operation()
```

The inner operation executes:

```text
n × n
```

times.

Therefore:

```text
C(n) = n²
```

Hence:

```text
Time Complexity = Θ(n²)
```

---

# 3.8 Example 4 — Triangular Nested Loop

Consider:

```text
for i = 1 to n
    for j = 1 to i
        operation()
```

For:

```text
i = 1 → 1 operation
i = 2 → 2 operations
i = 3 → 3 operations
...
i = n → n operations
```

Total operations:

```text
C(n) = 1 + 2 + 3 + ... + n
```

Using:

```text
1 + 2 + ... + n = n(n + 1) / 2
```

Therefore:

```text
C(n) = n(n + 1) / 2
```

Expanding:

```text
C(n) = (n² + n) / 2
```

Ignoring constants and lower-order terms:

```text
C(n) = Θ(n²)
```

---

# 3.9 Example 5 — Selection Sort

Selection sort is an important example because it appears in the PYQs.

The basic idea is:

```text
for i = 0 to n-2
    min = i

    for j = i+1 to n-1
        if A[j] < A[min]
            min = j

    swap(A[i], A[min])
```

The dominant operation is generally the comparison:

```text
A[j] < A[min]
```

---

## Number of Comparisons

For the first iteration:

```text
n - 1
```

comparisons are made.

For the second:

```text
n - 2
```

comparisons.

Continuing:

```text
(n - 1) + (n - 2) + ... + 1
```

Therefore:

```text
C(n) = n(n - 1) / 2
```

Expanding:

```text
C(n) = (n² - n) / 2
```

Ignoring constants and lower-order terms:

```text
C(n) = Θ(n²)
```

Therefore:

```text
Selection Sort = Θ(n²)
```

for comparisons.

---

# 3.10 Why Selection Sort Has the Same Complexity in All Cases

Selection sort always scans the remaining unsorted portion to find the minimum element.

Therefore, the number of comparisons does not depend significantly on whether the input is:

* Already sorted
* Randomly ordered
* Reverse sorted

The comparison count remains approximately:

```text
n(n - 1) / 2
```

Therefore:

```text
Best Case    = Θ(n²)
Average Case = Θ(n²)
Worst Case   = Θ(n²)
```

---

# 3.11 Example 6 — Linear Search

Consider:

```text
for i = 0 to n-1
    if A[i] == key
        return i
```

The dominant operation is:

```text
A[i] == key
```

### Best Case

The key is found immediately.

```text
C_best(n) = 1
```

Therefore:

```text
Best Case = Θ(1)
```

### Worst Case

The key is at the last position or absent.

```text
C_worst(n) = n
```

Therefore:

```text
Worst Case = Θ(n)
```

### Average Case

If every position is equally likely:

```text
C_avg(n) = (1 + 2 + ... + n) / n
```

Therefore:

```text
C_avg(n) = (n + 1) / 2
```

Hence:

```text
Average Case = Θ(n)
```

---

# 3.12 Example 7 — Insertion Sort

Consider the insertion-sort process.

The important operations include:

* Comparisons
* Shifts
* Assignments

For an already sorted array:

```text
[1, 2, 3, 4, 5]
```

very few shifts are required.

Therefore:

```text
Best Case = Θ(n)
```

For a reverse-sorted array:

```text
[5, 4, 3, 2, 1]
```

each element may need to be shifted across the sorted portion.

The number of operations is approximately:

```text
1 + 2 + 3 + ... + (n - 1)
```

which is:

```text
n(n - 1) / 2
```

Therefore:

```text
Worst Case = Θ(n²)
```

Average case:

```text
Average Case = Θ(n²)
```

---

# 3.13 Counting Operations vs Actual Runtime

Suppose:

```text
Algorithm A:
T(n) = 5n

Algorithm B:
T(n) = n²
```

For large `n`:

```text
5n << n²
```

Therefore, Algorithm A is asymptotically more efficient.

The actual execution time might differ between machines, but the growth behavior remains:

```text
A → linear
B → quadratic
```

This is why operation counting is useful.

---

# 3.14 Constants and Lower-Order Terms

Suppose we obtain:

```text
T(n) = 3n² + 5n + 10
```

For asymptotic analysis, we focus on the dominant growth term.

The dominant term is:

```text
3n²
```

Ignoring the constant `3`:

```text
T(n) = Θ(n²)
```

Therefore:

```text
3n² + 5n + 10 = Θ(n²)
```

---

# 3.15 Rules for Simplifying Operation Counts

## Rule 1 — Ignore Constant Multipliers

```text
5n → Θ(n)
```

```text
100n² → Θ(n²)
```

---

## Rule 2 — Ignore Lower-Order Terms

```text
n² + n → Θ(n²)
```

```text
n³ + n² + n → Θ(n³)
```

---

## Rule 3 — Sequential Operations Add

If:

```text
T1(n) = n
T2(n) = n²
```

then:

```text
T(n) = n + n²
```

Therefore:

```text
T(n) = Θ(n²)
```

---

## Rule 4 — Nested Operations Multiply

If an operation executes `n` times inside another loop that executes `n` times:

```text
n × n = n²
```

Therefore:

```text
T(n) = Θ(n²)
```

---

# 3.16 Dominant Operator vs Dominant Term

These two concepts are related but different.

### Dominant Operator

The operation that is repeatedly performed.

Example:

```text
A[i] < A[j]
```

### Dominant Term

The term that grows fastest in the final mathematical expression.

Example:

```text
3n² + 4n + 5
```

The dominant term is:

```text
n²
```

Therefore:

```text
Θ(n²)
```

---

# 3.17 How to Count Operations in an Algorithm

Suppose:

```text
Algorithm Example(A, n)

sum = 0

for i = 1 to n
    sum = sum + A[i]

return sum
```

### Step 1 — Input Size

```text
n = number of elements
```

### Step 2 — Dominant Operation

```text
sum = sum + A[i]
```

### Step 3 — Count

It executes:

```text
n times
```

### Step 4 — Complexity

```text
T(n) = n
```

Therefore:

```text
T(n) = Θ(n)
```

---

# 3.18 Counting Dominant Operators in Different Structures

| Structure            | Typical Count | Complexity |
| -------------------- | ------------: | ---------: |
| Single statement     |           `1` |     `Θ(1)` |
| Single loop          |           `n` |     `Θ(n)` |
| Two sequential loops |       `n + n` |     `Θ(n)` |
| Nested loops         |       `n × n` |    `Θ(n²)` |
| Three nested loops   |          `n³` |    `Θ(n³)` |
| Halving loop         |       `log n` | `Θ(log n)` |
| Triangular loop      |    `n(n+1)/2` |    `Θ(n²)` |

---

# 3.19 Importance in PYQs

There is **no direct standalone PYQ** asking:

> "What is a dominant operator?"

However, the concept is indirectly tested through algorithm-analysis questions.

---

# 3.20 2022 — Insertion Sort

The 2022 paper contains an algorithm-analysis question involving **insertion sort**.

To solve such a question, you need to:

1. Identify the dominant comparison.
2. Determine how many times it executes.
3. Consider the best case.
4. Consider the worst case.
5. Determine the resulting complexity.

For insertion sort:

```text
Best Case    = Θ(n)
Average Case = Θ(n²)
Worst Case   = Θ(n²)
```

---

# 3.21 2022 — Linear Search

The 2022 paper also contains a question involving **linear search**.

Counting the comparison:

```text
A[i] == key
```

gives:

```text
Best Case    = Θ(1)
Average Case = Θ(n)
Worst Case   = Θ(n)
```

---

# 3.22 2024 — Selection Sort

The 2024 paper asks for analysis of **selection sort** and requires assumptions to be clearly indicated.

The important operation is the comparison:

```text
A[j] < A[min]
```

Number of comparisons:

```text
(n - 1) + (n - 2) + ... + 1
```

Therefore:

```text
C(n) = n(n - 1) / 2
```

and:

```text
C(n) = Θ(n²)
```

Thus:

```text
Best Case    = Θ(n²)
Average Case = Θ(n²)
Worst Case   = Θ(n²)
```

---

# 3.23 PYQ-Oriented Preparation

Since the topic does not appear as a standalone question, prepare it as a **problem-solving skill**.

You should be able to identify the dominant operation in:

* Linear Search
* Binary Search
* Insertion Sort
* Selection Sort
* Bubble Sort
* Simple loops
* Nested loops

---

# 3.24 Exam-Ready Answer

## What is Counting of Dominant Operators?

Counting dominant operators is a technique used in algorithm analysis to estimate the running time of an algorithm by identifying and counting the operation that contributes most significantly to its execution time.

The dominant operation is counted as a function of the input size `n`.

For example:

```text
for i = 1 to n
    A[i] = A[i] + 1
```

The assignment operation executes `n` times.

Therefore:

```text
T(n) = n
```

and the time complexity is:

```text
Θ(n)
```

For nested loops:

```text
for i = 1 to n
    for j = 1 to n
        operation()
```

the dominant operation executes:

```text
n²
```

times.

Therefore:

```text
T(n) = Θ(n²)
```

Counting dominant operators helps compare algorithms independently of machine-specific execution time.

---

# 3.25 Worked Example

Consider:

```text
for i = 1 to n
    for j = 1 to i
        count = count + 1
```

The dominant operation is:

```text
count = count + 1
```

It executes:

```text
1 + 2 + 3 + ... + n
```

times.

Using:

```text
1 + 2 + ... + n = n(n + 1) / 2
```

we get:

```text
T(n) = n(n + 1) / 2
```

Therefore:

```text
T(n) = (n² + n) / 2
```

Ignoring constants and lower-order terms:

```text
T(n) = Θ(n²)
```

---

# 3.26 Common Mistakes

### Mistake 1 — Counting every statement equally

Not every statement needs to be counted individually for asymptotic analysis.

Focus on the operation whose execution frequency determines the growth rate.

---

### Mistake 2 — Forgetting nested-loop multiplication

For:

```text
n × n
```

the operation count is:

```text
n²
```

not `2n`.

---

### Mistake 3 — Keeping constants in the final Big-O

For:

```text
5n²
```

write:

```text
O(n²)
```

not:

```text
O(5n²)
```

---

### Mistake 4 — Ignoring loop limits

For:

```text
for j = i+1 to n-1
```

the number of iterations is not always `n`.

It depends on `i`.

This is why selection sort produces:

```text
(n-1) + (n-2) + ... + 1
```

---

# 3.27 Quick Revision

```text
Dominant Operator
        ↓
Most important repeated operation
        ↓
Count its executions
        ↓
Express as C(n)
        ↓
Simplify
        ↓
Find asymptotic complexity
```

### Important Formulas

```text
1 + 2 + ... + n
= n(n + 1) / 2
```

```text
1 + 2 + ... + (n - 1)
= n(n - 1) / 2
```

```text
n + n
= 2n
= Θ(n)
```

```text
n × n
= n²
= Θ(n²)
```

---

# 3.28 Priority

**Direct PYQ Frequency: 0/4 years**

**Indirect PYQ Frequency: HIGH**

### Related PYQs

* **2022:** Insertion Sort analysis
* **2022:** Linear Search analysis
* **2024:** Selection Sort analysis

### Priority: 🔥 HIGH

This topic should **not be skipped**, even though there is no direct standalone PYQ, because it is a fundamental technique required to solve the **Best/Average/Worst Case** and algorithm-analysis questions.
