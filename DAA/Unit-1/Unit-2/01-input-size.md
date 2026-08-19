# UNIT II — Analysis of Algorithms and Complexity Theory

# 1. Input Size

## 1.1 Definition

**Input size** refers to the amount of data that an algorithm receives as input.

It is usually represented by **`n`** and is one of the most important factors used to analyze the efficiency of an algorithm.

For example:

* An array containing `n` elements → input size = `n`
* A string containing `n` characters → input size = `n`
* A graph with `V` vertices and `E` edges → input size can be represented using `V` and `E`
* A matrix of size `n × n` → input size is related to `n²` elements

The running time and memory requirements of an algorithm are generally expressed as a function of the input size.

---

## 1.2 Why Input Size Is Important

The performance of an algorithm often depends on how large its input is.

Consider an algorithm that searches an element in an array.

For an array containing:

* `10` elements → at most 10 elements may need to be checked
* `1,000` elements → at most 1,000 elements may need to be checked
* `1,000,000` elements → potentially 1,000,000 elements may need to be checked

Therefore, instead of measuring execution time for every possible input, we express the performance as a function of **`n`**.

For example:

```text
T(n) = n
```

means that the running time grows linearly with the input size.

---

## 1.3 Input Size and Complexity Analysis

Input size is the basis for calculating:

* **Time complexity**
* **Space complexity**
* **Best-case complexity**
* **Worst-case complexity**
* **Average-case complexity**
* **Asymptotic growth**

For example, consider:

```text
for i = 1 to n
    print(i)
```

The loop executes `n` times.

Therefore:

```text
T(n) = n
```

and the time complexity is:

```text
O(n)
```

If the algorithm contains two nested loops:

```text
for i = 1 to n
    for j = 1 to n
        print(i, j)
```

The inner operation executes approximately:

```text
n × n = n²
```

times.

Therefore:

```text
T(n) = n²
```

and the time complexity is:

```text
O(n²)
```

---

## 1.4 Input Size in Different Problems

The meaning of input size depends on the problem.

### Array

For an array:

```text
A = [10, 20, 30, 40, 50]
```

there are 5 elements.

Therefore:

```text
n = 5
```

Generally:

```text
Input size = n
```

---

### String

For:

```text
"HELLO"
```

there are 5 characters.

Therefore:

```text
n = 5
```

---

### Matrix

For an `n × n` matrix:

```text
n × n = n²
```

elements are present.

For example, a `4 × 4` matrix contains:

```text
4² = 16 elements
```

---

### Graph

For a graph, input size is commonly represented using:

```text
V = number of vertices
E = number of edges
```

Therefore, graph algorithms may have complexity such as:

```text
O(V + E)
```

or:

```text
O(V²)
```

depending on the algorithm and graph representation.

---

## 1.5 Input Size and Running Time

The relationship between input size and running time is called the **growth rate** of the algorithm.

Common growth rates include:

| Complexity   | Growth with input |
| ------------ | ----------------- |
| `O(1)`       | Constant          |
| `O(log n)`   | Logarithmic       |
| `O(n)`       | Linear            |
| `O(n log n)` | Linearithmic      |
| `O(n²)`      | Quadratic         |
| `O(n³)`      | Cubic             |
| `O(2ⁿ)`      | Exponential       |
| `O(n!)`      | Factorial         |

As `n` becomes larger, algorithms with slower growth rates generally become more efficient.

---

## 1.6 Example — Linear Search

Consider the following linear search algorithm:

```text
LinearSearch(A, n, key)

for i = 0 to n-1
    if A[i] == key
        return i

return -1
```

Here:

```text
n = number of elements in the array
```

The number of comparisons depends on the position of the required element.

### Best case

The element is found at the first position.

```text
Comparisons = 1
```

Complexity:

```text
O(1)
```

### Worst case

The element is at the last position or is not present.

```text
Comparisons = n
```

Complexity:

```text
O(n)
```

Thus, input size `n` is directly used to determine the complexity.

---

# 1.7 Input Size in Sorting Algorithms

Sorting algorithms also use `n` to represent the number of elements being sorted.

For example, consider selection sort.

If:

```text
n = number of elements
```

then selection sort performs comparisons proportional to:

```text
n(n - 1) / 2
```

Therefore:

```text
T(n) = Θ(n²)
```

This is why questions asking for the complexity of sorting algorithms commonly refer to an array of **`n` elements**.

---

# 1.8 PYQ Analysis

## PYQ Status

**No direct standalone PYQ found for "Input Size".**

However, the concept is indirectly used in several algorithm-analysis questions.

### 2024 — Selection Sort

A question asks to analyze the complexity of **selection sort** and clearly indicate the assumptions.

The algorithm works on an array containing **`n` numbers**.

Therefore, understanding input size is necessary to derive its complexity.

The analysis involves determining how the number of operations changes as `n` increases.

---

## 1.9 Indirectly Tested Through Other Topics

Although there is no standalone question such as:

> "What is input size?"

the concept is required when solving questions involving:

* Linear search
* Insertion sort
* Selection sort
* Best-case analysis
* Worst-case analysis
* Average-case analysis
* Counting operations
* Asymptotic notation
* Time complexity

For example:

```text
Input size = n

Linear Search:
Best case  = O(1)
Worst case = O(n)

Selection Sort:
Best case  = Θ(n²)
Average    = Θ(n²)
Worst case = Θ(n²)
```

---

# 1.10 Important Points for Exam

Remember the following:

1. **Input size represents the amount of data given to an algorithm.**

2. It is usually represented by **`n`**.

3. Input size is the basis for calculating algorithm complexity.

4. Running time is generally expressed as a function of input size:

   ```text
   T(n)
   ```

5. For arrays, `n` generally represents the number of elements.

6. For graphs, input size may involve both `V` and `E`.

7. Larger input sizes make the growth rate of an algorithm increasingly important.

8. Input size is used extensively in best-case, average-case and worst-case analysis.

---

# 1.11 Exam-Ready Answer

### What is Input Size?

**Input size** is the amount of data provided to an algorithm as input. It is generally represented by `n` and is used as the basis for analyzing the time and space requirements of an algorithm.

For example, if an algorithm operates on an array containing `n` elements, then `n` represents the input size. The running time of the algorithm can then be expressed as a function of `n`, such as `O(n)`, `O(n²)`, or `O(log n)`.

Input size is important because the performance of an algorithm generally changes as the size of the input increases. It is therefore used in calculating best-case, average-case and worst-case complexity as well as asymptotic complexity.

**Example:**

For linear search on an array of `n` elements:

```text
Best case  = O(1)
Worst case = O(n)
```

Thus, input size provides the basis for measuring and comparing the efficiency of algorithms.

---

# 1.12 Quick Revision

```text
Input Size
    ↓
Amount of input data
    ↓
Usually represented by n
    ↓
Used to calculate T(n)
    ↓
Used in complexity analysis
    ↓
Best / Average / Worst Case
    ↓
Asymptotic Analysis
```

### PYQ Frequency

**Direct PYQ: 0/4 years**

**Importance: HIGH (as a supporting concept)**

It should be understood because it is required to solve many of the other Unit II PYQs, particularly **algorithm analysis, counting operations, sorting, searching and asymptotic complexity**.
