# UNIT II — Analysis of Algorithms and Complexity Theory

# 2. Best Case, Worst Case and Average Case Analysis

> **🔥 VERY IMPORTANT — PYQ Frequency: 4/4 Years**

This is one of the **highest-priority topics in Unit II**.

---

# 2.1 What Is Case Analysis?

The running time of an algorithm can change depending on the particular input given to it.

Therefore, instead of considering only one input, we analyze the algorithm under different possible conditions.

The three important cases are:

1. **Best Case**
2. **Worst Case**
3. **Average Case**

---

# 2.2 Best Case Analysis

## Definition

The **best case** represents the minimum amount of time or number of operations required by an algorithm for any input of size `n`.

In other words:

> Best case is the situation in which the algorithm performs the minimum possible work.

It is generally represented using:

```text
T_best(n)
```

---

## Example — Linear Search

Consider linear search:

```text
LinearSearch(A, n, key)

for i = 0 to n-1
    if A[i] == key
        return i
```

Suppose:

```text
A = [10, 20, 30, 40, 50]
key = 10
```

The required element is at the first position.

Only one comparison is required.

Therefore:

```text
T_best(n) = 1
```

Hence:

```text
Best-case complexity = O(1)
```

---

# 2.3 Worst Case Analysis

## Definition

The **worst case** represents the maximum amount of time or number of operations required by an algorithm for any input of size `n`.

In other words:

> Worst case is the situation in which the algorithm performs the maximum possible work.

It is generally represented using:

```text
T_worst(n)
```

---

## Example — Linear Search

Suppose:

```text
A = [10, 20, 30, 40, 50]
key = 50
```

The algorithm has to examine all five elements.

Therefore:

```text
T_worst(n) = n
```

Hence:

```text
Worst-case complexity = O(n)
```

The worst case also occurs when the required element is **not present** in the array.

---

# 2.4 Average Case Analysis

## Definition

The **average case** represents the expected amount of time or number of operations required by an algorithm over all possible inputs of size `n`, according to an assumed probability distribution.

It is generally represented using:

```text
T_avg(n)
```

The average case is usually more difficult to calculate because it requires assumptions about the probability of different inputs.

---

## Example — Linear Search

Suppose the element being searched is equally likely to occur at any position.

For an array of `n` elements:

```text
Position       Comparisons
1              1
2              2
3              3
...
n              n
```

The average number of comparisons is:

```text
(1 + 2 + 3 + ... + n) / n
```

Using:

```text
1 + 2 + ... + n = n(n + 1) / 2
```

we get:

```text
Average comparisons
= [n(n + 1) / 2] / n
= (n + 1) / 2
```

Therefore:

```text
T_avg(n) = (n + 1) / 2
```

Ignoring constants and lower-order terms:

```text
T_avg(n) = Θ(n)
```

---

# 2.5 Comparison of Three Cases

| Case         | Meaning       | Linear Search |
| ------------ | ------------- | ------------- |
| Best Case    | Minimum work  | `O(1)`        |
| Average Case | Expected work | `O(n)`        |
| Worst Case   | Maximum work  | `O(n)`        |

---

# 2.6 General Formula

For an algorithm, we can think of the three cases as:

```text
Best Case:
Minimum number of operations

Average Case:
Expected number of operations

Worst Case:
Maximum number of operations
```

Mathematically:

```text
T_best(n) ≤ T_avg(n) ≤ T_worst(n)
```

The exact relationship depends on how the average is defined, but conceptually the average lies between the minimum and maximum behavior.

---

# 2.7 Example — Insertion Sort

Consider insertion sort.

### Best Case

The array is already sorted:

```text
[1, 2, 3, 4, 5]
```

Very few shifts/comparisons are required.

Therefore:

```text
Best case = Θ(n)
```

### Worst Case

The array is in reverse order:

```text
[5, 4, 3, 2, 1]
```

Maximum shifting is required.

Therefore:

```text
Worst case = Θ(n²)
```

### Average Case

For a randomly ordered array, the algorithm performs an intermediate amount of work.

Therefore:

```text
Average case = Θ(n²)
```

---

# 2.8 Example — Selection Sort

Selection sort repeatedly finds the minimum element from the unsorted portion.

The number of comparisons is approximately:

```text
n(n - 1) / 2
```

This number is essentially independent of the initial ordering of the array.

Therefore:

```text
Best Case    = Θ(n²)
Average Case = Θ(n²)
Worst Case   = Θ(n²)
```

This is an important example because **not every algorithm has different complexities for the three cases**.

---

# 2.9 Why Do We Analyze Different Cases?

Case analysis is important because the same algorithm may behave differently for different inputs.

For example, linear search:

```text
Input:
[10, 20, 30, 40, 50]
```

Searching for:

```text
10 → 1 comparison
30 → 3 comparisons
50 → 5 comparisons
100 → 5 comparisons
```

Therefore, simply saying:

```text
Linear Search = O(n)
```

does not tell the complete story.

We need to understand how the algorithm behaves under different inputs.

---

# 2.10 Best Case — Advantages and Limitations

## Advantages

* Shows the minimum possible work.
* Useful for understanding the most favorable input.
* Helps identify algorithms that can terminate quickly for certain inputs.

## Limitation

The best case may occur rarely.

Therefore, relying only on best-case analysis may give a misleading picture of the algorithm's general performance.

---

# 2.11 Worst Case — Advantages

Worst-case analysis is widely used because it provides a performance guarantee.

If an algorithm has:

```text
O(n²)
```

worst-case complexity, we know that its running time will not grow faster than the specified asymptotic bound under the stated assumptions.

Worst-case analysis is particularly useful when performance guarantees are important.

---

# 2.12 Average Case — Importance

Average-case analysis attempts to describe how the algorithm behaves for typical inputs.

However, it requires a probability model.

For example, in linear search, assuming every position is equally likely gives:

```text
Average comparisons = (n + 1) / 2
```

But if some positions are more likely than others, the average changes.

Therefore:

> Average-case complexity depends on the assumed distribution of inputs.

---

# 2.13 Is Average Case Simply the Average of Best and Worst Cases?

**No.**

This is an important PYQ concept.

The average case is **not generally calculated as:**

```text
(Best Case + Worst Case) / 2
```

Instead, it is calculated using the probability of different inputs.

General form:

```text
T_avg(n) = Σ P(I) × T(I)
```

where:

* `P(I)` = probability of input `I`
* `T(I)` = running time for input `I`

Therefore, the average case depends on the **probability distribution of inputs**.

---

# 2.14 Example Showing Why Average ≠ (Best + Worst)/2

Consider linear search with `n` elements.

Best case:

```text
1 comparison
```

Worst case:

```text
n comparisons
```

If we simply averaged them:

```text
(1 + n) / 2
```

we happen to obtain the same expression as the average number of comparisons when all positions are equally likely.

But this is **not because average case is always the midpoint**.

Suppose the first position is searched 80% of the time.

Then the average behavior would be heavily influenced by that probability.

Therefore:

> Average-case analysis requires a probability distribution and is not simply the arithmetic mean of best and worst cases.

---

# 2.15 Important Difference

| Feature            | Best Case      | Average Case          | Worst Case            |
| ------------------ | -------------- | --------------------- | --------------------- |
| Meaning            | Minimum work   | Expected work         | Maximum work          |
| Input              | Most favorable | Typical/probabilistic | Least favorable       |
| Probability needed | No             | Usually yes           | No                    |
| Usefulness         | Limited        | Practical performance | Performance guarantee |
| Linear Search      | `O(1)`         | `O(n)`                | `O(n)`                |

---

# 2.16 PYQs

## PYQ 1 — 2022

> **"What is Best, Average and Worst case Analysis of Algorithms? Analyse the following algorithm Best, Average and Worst case."** `[8 Marks]`

### What to prepare

You should be able to:

1. Define all three cases.
2. Explain the difference.
3. Analyze the given algorithm.
4. Identify the number of operations.
5. Give complexity for each case.

---

## PYQ 2 — 2022

> **"What is Best, Average and Worst case Analysis of Algorithms? Analyse the following algorithm Best, Average and Worst case."**

This concept also appeared specifically with **linear search**.

### Expected answer

For linear search:

```text
Best Case    = O(1)
Average Case = O(n)
Worst Case   = O(n)
```

---

## PYQ 3 — 2023

> **"Comment on the statement 'Best case analysis of algorithm may not give clear idea of performance'."** `[2 Marks]`

### Answer

Best-case analysis considers only the most favorable input.

Such an input may occur rarely in practice.

Therefore, best-case analysis alone may not represent the algorithm's typical or guaranteed performance.

For example, linear search has:

```text
Best Case = O(1)
```

but in many situations the algorithm may need to examine a large portion of the array.

Therefore, best-case analysis should not be used alone to judge overall algorithm performance.

---

## PYQ 4 — 2023

> **"What do you understand by best case, worst case and average-case behaviour of an algorithm? Is an average case efficiency an average of best-case, worst-case efficiencies? Justify answer."** `[7 Marks]`

### Answer Structure

#### Best Case

Minimum number of operations for an input of size `n`.

#### Worst Case

Maximum number of operations for an input of size `n`.

#### Average Case

Expected number of operations over possible inputs according to an assumed probability distribution.

#### Is Average Case the Average of Best and Worst?

**No.**

Average-case efficiency is calculated using the probability of different inputs:

```text
T_avg(n) = Σ P(I) × T(I)
```

It is not generally:

```text
(Best + Worst) / 2
```

The probability distribution of inputs determines the average case.

---

## PYQ 5 — 2025

> **"What is best, average and worst case Analysis of algorithms? Analyse the following algorithm Best, Average and worst case."** `[8 Marks]`

This is essentially the same recurring pattern as the 2022 question.

### Preparation

Be prepared to:

```text
Define the three cases
        ↓
Understand the given algorithm
        ↓
Identify input size n
        ↓
Count dominant operations
        ↓
Determine minimum operations
        ↓
Determine maximum operations
        ↓
Calculate average operations
        ↓
Express using asymptotic notation
```

---

# 2.17 How to Solve a Best/Average/Worst Case Question

When an algorithm is given in the exam, follow these steps.

## Step 1 — Identify the Input Size

Determine what `n` represents.

Example:

```text
n = number of elements in array
```

---

## Step 2 — Identify the Dominant Operation

Find the operation that executes repeatedly.

Examples:

```text
comparison
assignment
addition
swap
loop iteration
```

---

## Step 3 — Find the Best Case

Ask:

> What input causes the minimum number of operations?

---

## Step 4 — Find the Worst Case

Ask:

> What input causes the maximum number of operations?

---

## Step 5 — Calculate Average Case

Ask:

> What is the expected number of operations under the assumed input distribution?

---

## Step 6 — Express the Complexity

Use asymptotic notation:

```text
O(...)
Θ(...)
Ω(...)
```

depending on what the question asks.

---

# 2.18 Common Examples

| Algorithm      |    Best |    Average |      Worst |
| -------------- | ------: | ---------: | ---------: |
| Linear Search  |  `O(1)` |     `O(n)` |     `O(n)` |
| Binary Search  |  `O(1)` | `O(log n)` | `O(log n)` |
| Insertion Sort |  `O(n)` |    `O(n²)` |    `O(n²)` |
| Selection Sort | `Θ(n²)` |    `Θ(n²)` |    `Θ(n²)` |
| Bubble Sort*   |  `O(n)` |    `O(n²)` |    `O(n²)` |

> *For the optimized version of bubble sort.

---

# 2.19 Common Mistakes

### Mistake 1 — Saying average case is always the midpoint

Incorrect:

```text
Average = (Best + Worst) / 2
```

Correct:

```text
Average case depends on the probability distribution of inputs.
```

---

### Mistake 2 — Assuming every algorithm has different complexities

Incorrect.

Selection sort has:

```text
Best    = Θ(n²)
Average = Θ(n²)
Worst   = Θ(n²)
```

---

### Mistake 3 — Confusing Big-O with Worst Case

Big-O notation describes an asymptotic upper bound.

Although Big-O is commonly used when discussing worst-case running time, the two concepts are not mathematically identical.

---

### Mistake 4 — Ignoring assumptions

Average-case analysis requires assumptions about input distribution.

Always mention the assumption when calculating average complexity.

---

# 2.20 Exam-Ready Definition

### Best Case

The best-case complexity of an algorithm is the minimum amount of computational work performed by the algorithm for any input of size `n`.

### Average Case

The average-case complexity represents the expected computational work performed over all possible inputs of size `n`, based on an assumed probability distribution.

### Worst Case

The worst-case complexity represents the maximum amount of computational work performed by an algorithm for any input of size `n`.

---

# 2.21 Exam-Ready 8-Mark Answer

## Best, Average and Worst Case Analysis

Algorithm analysis determines the efficiency of an algorithm for different possible inputs.

### 1. Best Case

Best-case analysis determines the minimum number of operations performed by an algorithm for an input of size `n`.

It represents the most favorable input.

Example: In linear search, if the required element is at the first position:

```text
Best Case = O(1)
```

### 2. Average Case

Average-case analysis determines the expected number of operations for inputs of size `n`.

It requires an assumption about the probability distribution of inputs.

For linear search, if every position is equally likely:

```text
Average comparisons = (n + 1) / 2
```

Therefore:

```text
Average Case = O(n)
```

### 3. Worst Case

Worst-case analysis determines the maximum number of operations performed for an input of size `n`.

In linear search, if the element is at the last position or absent:

```text
Worst Case = O(n)
```

### Comparison

| Case    | Linear Search |
| ------- | ------------- |
| Best    | `O(1)`        |
| Average | `O(n)`        |
| Worst   | `O(n)`        |

### Conclusion

Best-case analysis shows the minimum performance, average-case analysis shows expected performance under an assumed input distribution, and worst-case analysis provides the maximum amount of work. All three are useful for understanding the behavior of an algorithm.

---

# 2.22 Quick Revision

```text
BEST CASE
↓
Minimum work
↓
Most favorable input

AVERAGE CASE
↓
Expected work
↓
Probability distribution required

WORST CASE
↓
Maximum work
↓
Least favorable input
```

### Most Important PYQ Points

* Define best, average and worst case.
* Analyze a given algorithm under all three cases.
* Explain why best-case analysis may not provide a clear picture.
* Explain why average case is **not simply** the average of best and worst cases.
* Know linear search analysis.
* Know insertion sort analysis.
* Know selection sort analysis.

---

# 2.23 Priority

**🔥 PYQ Frequency: 4/4 years**

**🔥 Importance: VERY HIGH**

**Must prepare thoroughly.**

This topic should be studied together with:

* Counting Dominant Operators
* Input Size
* Growth Rate
* Asymptotic Notations
* Sorting and Searching Algorithms
