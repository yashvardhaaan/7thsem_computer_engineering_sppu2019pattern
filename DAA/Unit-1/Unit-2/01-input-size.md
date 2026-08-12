# Input Size

## 1. What is Input Size?

**Input size** is the amount of data given to an algorithm as input.

It is usually represented by **`n`** and is one of the most important factors in analyzing the **time and space complexity** of an algorithm.

### Examples

| Problem          | Input Size                                                           |
| ---------------- | -------------------------------------------------------------------- |
| Array of numbers | `n` = number of elements                                             |
| String           | `n` = number of characters                                           |
| Matrix           | `n` = number of rows/columns, depending on the problem               |
| Graph            | `V` = number of vertices, `E` = number of edges                      |
| Number problem   | `n` = number of digits/bits or magnitude, depending on the algorithm |

---

# 2. Why is Input Size Important?

The running time of an algorithm usually depends on the size of its input.

For example:

```text
Input size = n
       ↓
Algorithm performs operations
       ↓
Number of operations depends on n
       ↓
Time Complexity
```

If an algorithm takes one operation for every element:

```text
n = 10      → approximately 10 operations
n = 100     → approximately 100 operations
n = 1000    → approximately 1000 operations
```

Therefore:

**Time Complexity = O(n)**

---

# 3. Input Size and Complexity

Consider:

```text
for i = 0 to n-1:
    process(A[i])
```

If the array contains `n` elements, the loop executes `n` times.

Therefore:

```text
Input Size = n
Number of iterations = n
Time Complexity = O(n)
```

---

# 4. Input Size in Different Algorithms

The same input size can result in very different running times.

Suppose an array contains `n` elements.

### Linear Algorithm

```text
for i = 0 to n-1:
    process(A[i])
```

Complexity:

**O(n)**

### Quadratic Algorithm

```text
for i = 0 to n-1:
    for j = 0 to n-1:
        process(A[i], A[j])
```

Complexity:

**O(n²)**

### Logarithmic Algorithm

Binary Search approximately halves the search space:

```text
n → n/2 → n/4 → n/8 → ...
```

Complexity:

**O(log n)**

---

# 5. Input Size in Selection Sort

This is particularly relevant to the **2024 PYQ**, where Selection Sort operates on an array of `n` numbers.

For example:

```text
A = [64, 25, 12, 22, 11]
```

Here:

```text
n = 5
```

Selection Sort repeatedly searches for the smallest remaining element.

The number of comparisons is approximately:

```text
(n-1) + (n-2) + ... + 2 + 1
```

This gives:

```text
n(n-1)/2
```

Therefore:

**Time Complexity = O(n²)**

The important point is that the complexity is expressed in terms of the **input size `n`**.

---

# 6. Input Size Is Not Always Simply `n`

The meaning of input size depends on the problem.

### Array

```text
A = [10, 20, 30, 40]
```

Input size:

```text
n = 4 elements
```

### String

```text
"HELLO"
```

Input size:

```text
n = 5 characters
```

### Graph

For graphs, two parameters are commonly used:

```text
V = number of vertices
E = number of edges
```

So an algorithm may have complexity such as:

```text
O(V + E)
```

rather than simply `O(n)`.

---

# 7. Input Size and Growth

The purpose of using `n` is to study what happens when the input becomes larger.

```text
             Input Size
                 n
                 │
                 ▼
          Algorithm runs
                 │
                 ▼
          Work increases
                 │
                 ▼
       Analyze growth rate
                 │
                 ▼
          Time Complexity
```

For example:

```text
n = 10
```

An `O(n²)` algorithm performs roughly proportional to:

```text
10² = 100
```

For:

```text
n = 1000
```

it becomes roughly:

```text
1000² = 1,000,000
```

This shows why input size is important in algorithm analysis.

---

# 8. Input Size vs Actual Input Value

Input size should not always be confused with the **value of the input**.

For example, suppose the input is:

```text
n = 1,000,000
```

The input size may depend on how the problem is represented.

For an integer, complexity can sometimes be expressed in terms of the **number of bits/digits needed to represent it**, rather than the numerical value itself.

For arrays, however, the natural input size is usually the **number of elements**.

---

# 9. Best, Average and Worst Case

Input size is also used when analyzing different cases.

Example: **Linear Search**

For an array of `n` elements:

### Best Case

Element is found at the first position.

```text
Time = O(1)
```

### Average Case

Element is found somewhere in the middle on average.

```text
Time = O(n)
```

### Worst Case

Element is at the last position or not present.

```text
Time = O(n)
```

The input size remains `n`; what changes is the amount of work performed for different inputs.

---

# 10. Important Terms

### Input

The data provided to the algorithm.

### Input Size

The amount of data provided.

### `n`

A common variable used to represent input size.

### Complexity

How the algorithm's resource usage grows as input size increases.

```text
Input Size → n
      ↓
Algorithm
      ↓
Operations / Memory
      ↓
Complexity
```

---

# 11. Exam-Oriented Answer

### Definition

> **Input size is the amount of data provided to an algorithm and is generally represented by `n`. It is an important parameter in algorithm analysis because the running time and memory requirements of an algorithm depend on the size of its input.**

### Example

For an array containing `n` elements:

```text
for i = 0 to n-1:
    process(A[i])
```

The loop executes `n` times.

Therefore:

```text
Input Size = n
Time Complexity = O(n)
```

For Selection Sort, an array of `n` elements requires approximately:

```text
n(n-1)/2
```

comparisons.

Therefore:

```text
Time Complexity = O(n²)
```

### Conclusion

> Input size is essential for determining how an algorithm scales and for comparing the efficiency of different algorithms.

---

# Quick Revision

```text
Input Size
    ↓
Amount of input data
    ↓
Usually represented by n
    ↓
Determines number of operations
    ↓
Used to calculate complexity
```

### Remember

> **`n` does not mean "the value being processed"; it usually represents the size of the input.**
