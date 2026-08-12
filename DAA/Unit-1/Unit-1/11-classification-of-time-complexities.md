# Classification of Time Complexities

## 1. What is Time Complexity?

**Time complexity** describes how the running time of an algorithm grows as the size of the input `n` increases.

It does **not** usually mean the exact time in seconds. Instead, it measures the **growth of the number of operations** performed by the algorithm.

### Example

If an algorithm processes every element of an array once:

```text
for i = 0 to n-1:
    process(A[i])
```

The number of operations grows approximately with `n`.

Therefore:

**Time Complexity = O(n)**

---

# 2. Why Classify Time Complexities?

Classification helps us compare algorithms and understand how they behave when the input becomes large.

```text
Small n
  ↓
Most algorithms appear fast
  ↓
Large n
  ↓
Difference in complexity becomes important
```

For example:

```text
n = 1,000,000

O(n)       → ~1,000,000 operations
O(n²)      → ~1,000,000,000,000 operations
```

Therefore, choosing a better complexity can make a huge difference.

---

# 3. Common Classes of Time Complexity

The common growth rates, from generally **faster to slower** as `n` becomes large, are:

```text
O(1)
  ↓
O(log n)
  ↓
O(n)
  ↓
O(n log n)
  ↓
O(n²)
  ↓
O(n³)
  ↓
O(2ⁿ)
  ↓
O(n!)
```

> The ordering refers to asymptotic growth for large `n`.

---

# 4. Constant Time — O(1)

An algorithm takes approximately the same amount of work regardless of the input size.

### Example

```text
x = A[0]
```

Accessing one array element takes constant time.

### Complexity

**O(1)**

### Example Applications

* Array access by index
* Assigning a variable
* Basic arithmetic operation

```text
n increases
   ↓
Work remains approximately constant
```

---

# 5. Logarithmic Time — O(log n)

The problem size is reduced by a constant factor during each step.

A common example is **Binary Search**.

### Example

Search in a sorted array:

```text
[1, 2, 3, 4, 5, 6, 7, 8]
             ↑
          Middle
```

Instead of checking every element, binary search eliminates approximately half of the remaining elements after each comparison.

```text
n
↓
n/2
↓
n/4
↓
n/8
↓
...
↓
1
```

### Complexity

**O(log n)**

### Example

Binary Search.

---

# 6. Linear Time — O(n)

The amount of work grows directly with the input size.

### Example

```text
for i = 0 to n-1:
    print(A[i])
```

If there are `n` elements, approximately `n` elements are processed.

### Complexity

**O(n)**

### Examples

* Linear Search
* Traversing an array
* Finding the sum of an array

---

# 7. Linearithmic Time — O(n log n)

The algorithm performs approximately `n` work for `log n` levels.

### Example

**Merge Sort**

```text
             n
           /   \
         n/2   n/2
        / \     / \
       ...     ...
```

The array is divided into approximately `log n` levels, while each level performs approximately `n` work.

### Complexity

**O(n log n)**

### Examples

* Merge Sort
* Heap Sort
* Efficient comparison-based sorting algorithms

---

# 8. Quadratic Time — O(n²)

The work grows approximately as the square of the input size.

Usually occurs with **two nested loops**.

### Example

```text
for i = 0 to n-1:
    for j = 0 to n-1:
        process(A[i], A[j])
```

Approximately:

```text
n × n = n²
```

operations.

### Complexity

**O(n²)**

### Examples

* Bubble Sort
* Selection Sort
* Insertion Sort (worst case)
* Comparing every pair of elements

---

# 9. Cubic Time — O(n³)

Usually occurs with **three nested loops**.

### Example

```text
for i = 0 to n-1:
    for j = 0 to n-1:
        for k = 0 to n-1:
            process()
```

Number of operations:

```text
n × n × n = n³
```

### Complexity

**O(n³)**

### Example

Basic matrix multiplication.

---

# 10. Exponential Time — O(2ⁿ)

The number of operations approximately **doubles** when the input size increases by one.

These algorithms become impractical quickly for large inputs.

### Example

A naive recursive solution for some problems can have exponential complexity.

```text
              Problem
             /       \
          Subproblem Subproblem
          /    \       /    \
         ...   ...    ...   ...
```

### Complexity

**O(2ⁿ)**

### Examples

* Some brute-force subset problems
* Naive recursive Fibonacci
* Certain exhaustive search algorithms

---

# 11. Factorial Time — O(n!)

Factorial complexity grows extremely rapidly.

If an algorithm examines every possible permutation of `n` elements:

```text
Number of permutations = n!
```

### Example

For `n = 4`:

```text
4! = 4 × 3 × 2 × 1 = 24
```

For `n = 10`:

```text
10! = 3,628,800
```

### Complexity

**O(n!)**

### Example

Brute-force solution to the **Travelling Salesman Problem** by checking every possible route.

---

# 12. Comparison Table

| Complexity     | Name         | Typical Example               |
| -------------- | ------------ | ----------------------------- |
| **O(1)**       | Constant     | Array access                  |
| **O(log n)**   | Logarithmic  | Binary Search                 |
| **O(n)**       | Linear       | Linear Search                 |
| **O(n log n)** | Linearithmic | Merge Sort                    |
| **O(n²)**      | Quadratic    | Bubble Sort                   |
| **O(n³)**      | Cubic        | Basic Matrix Multiplication   |
| **O(2ⁿ)**      | Exponential  | Subset enumeration            |
| **O(n!)**      | Factorial    | Permutation / brute-force TSP |

---

# 13. Growth Comparison

```text
                Growth
                  ↑
                  │                         n!
                  │                       /
                  │                    2ⁿ
                  │                  /
                  │               n³
                  │             /
                  │          n²
                  │        /
                  │     n log n
                  │    /
                  │  n
                  │ /
                  │log n
                  │
                  │________________________→ n
                         O(1)
```

The important idea is:

> As `n` becomes very large, functions with faster growth become much more expensive.

---

# 14. Polynomial vs Non-Polynomial

Complexities can also be broadly grouped into:

### Polynomial

Examples:

```text
O(1)
O(log n)
O(n)
O(n log n)
O(n²)
O(n³)
```

More precisely, `O(log n)` is logarithmic rather than polynomial in the strict mathematical sense, while `O(1)` is constant; the important exam distinction is that polynomial-time classes such as `O(n^k)` are generally contrasted with exponential/factorial growth.

### Exponential / Factorial

```text
O(2ⁿ)
O(3ⁿ)
O(n!)
```

These generally become impractical much faster as `n` increases.

---

# 15. Best, Average and Worst Case

Time complexity can also be analyzed based on the input situation.

### Best Case

Minimum amount of work.

Example: Linear Search finds the element at the first position.

```text
O(1)
```

### Average Case

Expected amount of work for typical inputs.

### Worst Case

Maximum amount of work.

Example: Linear Search finds the element at the last position or does not find it.

```text
O(n)
```

---

# 16. Important Exam Point

Do not confuse:

**Time Complexity Class** with **Case Analysis**.

For example, Linear Search can have:

```text
Best Case    → O(1)
Average Case → O(n)
Worst Case   → O(n)
```

The **class** is describing the growth rate, while **best/average/worst case** describes which input situation is being analyzed.

---

# 17. Quick Revision

```text
O(1)       → Constant
O(log n)   → Logarithmic
O(n)       → Linear
O(n log n) → Linearithmic
O(n²)      → Quadratic
O(n³)      → Cubic
O(2ⁿ)      → Exponential
O(n!)      → Factorial
```

### Memory Trick

**Constant → Log → Linear → nLogn → Square → Cube → Exponential → Factorial**

### Key Idea

> **Lower asymptotic growth generally means better scalability for large input sizes.**
