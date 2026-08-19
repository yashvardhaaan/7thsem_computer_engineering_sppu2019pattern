# UNIT II — Analysis of Algorithms and Complexity Theory

# 4. Growth Rate

> **PYQ Status: No direct standalone PYQ**
>
> **Importance: HIGH — foundational for asymptotic analysis**

---

# 4.1 What Is Growth Rate?

The **growth rate** of an algorithm describes how the running time or number of operations increases as the input size `n` increases.

Instead of measuring the exact execution time of an algorithm, we study how its computational requirements grow with `n`.

For example:

```text
T(n) = n
```

grows linearly.

Whereas:

```text
T(n) = n²
```

grows quadratically.

As `n` becomes large, the difference between these growth rates becomes significant.

---

# 4.2 Why Is Growth Rate Important?

The primary purpose of studying growth rate is to compare algorithms independently of:

* Hardware
* Processor speed
* Programming language
* Compiler
* Operating system
* Implementation details

Suppose two algorithms have:

```text
Algorithm A → T(n) = 10n
Algorithm B → T(n) = n²
```

For small values of `n`, their performance may be relatively close.

However, as `n` increases:

```text
10n → grows linearly
n²  → grows quadratically
```

Therefore, Algorithm A eventually becomes much more efficient.

---

# 4.3 Growth Rate and Input Size

Let:

```text
n = input size
```

Then the running time can be represented as:

```text
T(n)
```

The growth rate tells us how `T(n)` changes as `n` increases.

For example:

```text
T(n) = 5
```

does not depend on `n`.

Therefore:

```text
Θ(1)
```

---

```text
T(n) = 3n + 5
```

is dominated by `n`.

Therefore:

```text
Θ(n)
```

---

```text
T(n) = 4n² + 3n + 7
```

is dominated by `n²`.

Therefore:

```text
Θ(n²)
```

---

# 4.4 Common Growth Rates

The most common growth rates are:

| Growth Rate  | Name         | Example                       |
| ------------ | ------------ | ----------------------------- |
| `Θ(1)`       | Constant     | Accessing an array element    |
| `Θ(log n)`   | Logarithmic  | Binary search                 |
| `Θ(n)`       | Linear       | Linear search                 |
| `Θ(n log n)` | Linearithmic | Merge sort                    |
| `Θ(n²)`      | Quadratic    | Selection sort                |
| `Θ(n³)`      | Cubic        | Some matrix algorithms        |
| `Θ(2ⁿ)`      | Exponential  | Brute-force subset generation |
| `Θ(n!)`      | Factorial    | Brute-force permutations      |

---

# 4.5 Constant Growth — Θ(1)

A constant-time algorithm performs approximately the same amount of work regardless of the input size.

Example:

```text id="v2o8hz"
x = A[5]
```

The operation does not depend on `n`.

Therefore:

```text id="7kz9hy"
T(n) = Θ(1)
```

Example:

```text id="w3m5ia"
return A[0]
```

also has:

```text id="sk6h20"
Θ(1)
```

---

# 4.6 Logarithmic Growth — Θ(log n)

An algorithm has logarithmic growth when the problem size is repeatedly reduced by a constant factor.

For example:

```text id="5z5o9n"
n
n/2
n/4
n/8
...
1
```

The number of divisions required to reach `1` is approximately:

```text id="r7z3bm"
log₂ n
```

Therefore:

```text id="8n0bgl"
T(n) = Θ(log n)
```

### Example

Binary search repeatedly divides the search space approximately in half.

Therefore:

```text id="0jp1e6"
Binary Search = Θ(log n)
```

---

# 4.7 Linear Growth — Θ(n)

An algorithm has linear growth when its running time increases proportionally with the input size.

Example:

```text id="x4yqz9"
for i = 1 to n
    print(A[i])
```

The operation executes `n` times.

Therefore:

```text id="jcf1r7"
T(n) = Θ(n)
```

### Example

Linear search has worst-case complexity:

```text id="1uh4bx"
Θ(n)
```

because it may examine all `n` elements.

---

# 4.8 Linearithmic Growth — Θ(n log n)

Linearithmic growth occurs when an algorithm performs approximately `n` work over `log n` levels.

Example:

```text id="5w0jaf"
T(n) = n log n
```

Therefore:

```text id="a2m2xw"
T(n) = Θ(n log n)
```

A common example is **merge sort**.

Merge sort divides the array into smaller parts and processes each level in approximately `n` work.

There are approximately:

```text id="j9j4hg"
log n
```

levels.

Therefore:

```text id="q0i8c4"
Θ(n log n)
```

---

# 4.9 Quadratic Growth — Θ(n²)

Quadratic growth usually occurs when two loops depend on `n`.

Example:

```text id="xy5e7r"
for i = 1 to n
    for j = 1 to n
        operation()
```

The operation executes:

```text id="1t8qbi"
n × n = n²
```

times.

Therefore:

```text id="y0c9xj"
T(n) = Θ(n²)
```

### Examples

* Selection sort
* Insertion sort average/worst case
* Bubble sort average/worst case

---

# 4.10 Cubic Growth — Θ(n³)

Cubic growth often occurs with three nested loops.

Example:

```text id="o3x3zo"
for i = 1 to n
    for j = 1 to n
        for k = 1 to n
            operation()
```

Number of operations:

```text id="x6ktdd"
n × n × n = n³
```

Therefore:

```text id="0f3kj9"
T(n) = Θ(n³)
```

---

# 4.11 Exponential Growth — Θ(2ⁿ)

Exponential algorithms grow extremely rapidly as `n` increases.

A common example is generating all subsets of a set containing `n` elements.

Each element can either:

```text id="1c0s0t"
be included
```

or:

```text id="8f0cbm"
not be included
```

Therefore, the total number of subsets is:

```text id="1p8x8e"
2ⁿ
```

Thus:

```text id="mk5d52"
T(n) = Θ(2ⁿ)
```

Exponential algorithms become impractical quickly for large `n`.

---

# 4.12 Factorial Growth — Θ(n!)

Factorial growth is even faster than exponential growth.

For example:

```text id="mb2qg0"
n! = n × (n-1) × (n-2) × ... × 1
```

Brute-force generation of all permutations can require:

```text id="l5xx9m"
n!
```

possibilities.

Therefore:

```text id="xspk9t"
T(n) = Θ(n!)
```

This becomes impractical extremely quickly.

---

# 4.13 Growth Rate Comparison

From slower growth to faster growth:

```text id="k0a6v2"
Θ(1)
   ↓
Θ(log n)
   ↓
Θ(n)
   ↓
Θ(n log n)
   ↓
Θ(n²)
   ↓
Θ(n³)
   ↓
Θ(2ⁿ)
   ↓
Θ(n!)
```

For sufficiently large `n`:

```text id="t8xv6w"
1 < log n < n < n log n < n² < n³ < 2ⁿ < n!
```

This is one of the most important relationships to remember.

---

# 4.14 Growth Rate Table

For illustration, consider the following functions:

| `n` | `log₂n` | `n` | `n log₂n` |  `n²` |       `2ⁿ` |
| --: | ------: | --: | --------: | ----: | ---------: |
|   2 |       1 |   2 |         2 |     4 |          4 |
|   4 |       2 |   4 |         8 |    16 |         16 |
|   8 |       3 |   8 |        24 |    64 |        256 |
|  16 |       4 |  16 |        64 |   256 |     65,536 |
|  32 |       5 |  32 |       160 | 1,024 | Very large |

This illustrates how rapidly higher growth rates increase.

---

# 4.15 Dominant Term and Growth Rate

Consider:

```text id="1n0qyi"
T(n) = 5n² + 10n + 100
```

There are three terms:

```text id="4wmxiw"
5n²
10n
100
```

For large `n`, `n²` grows faster than `n` and a constant.

Therefore:

```text id="1w5m3v"
T(n) = Θ(n²)
```

The `n²` term determines the growth rate.

---

# 4.16 Why Constants Are Ignored

Consider:

```text id="2cyx9t"
T(n) = 100n
```

and:

```text id="d8e9ue"
T(n) = n
```

Both have the same asymptotic growth rate:

```text id="gh6i6f"
Θ(n)
```

The constant `100` affects actual runtime but does not change the fundamental growth pattern.

Therefore:

```text id="v8i1jj"
100n = Θ(n)
```

---

# 4.17 Growth Rate and Asymptotic Notation

Growth rate is closely connected with asymptotic notation.

### Big-O

Describes an asymptotic upper bound.

Example:

```text id="1k0a2c"
T(n) = 3n² + 2n + 1
```

can be expressed as:

```text id="z6y4qh"
O(n²)
```

### Big-Omega

Describes an asymptotic lower bound.

```text id="q4o8yv"
T(n) = Ω(n²)
```

### Big-Theta

Describes a tight asymptotic bound.

```text id="g1zgjy"
T(n) = Θ(n²)
```

Therefore, understanding growth rate is essential for understanding:

* `O`
* `Ω`
* `Θ`
* `o`
* `ω`

---

# 4.18 Growth Rate in Sorting Algorithms

Growth rate is particularly important when comparing sorting algorithms.

For example:

| Algorithm      | Average/Worst Growth |
| -------------- | -------------------- |
| Selection Sort | `Θ(n²)`              |
| Insertion Sort | `Θ(n²)`              |
| Bubble Sort    | `Θ(n²)`              |
| Merge Sort     | `Θ(n log n)`         |
| Heap Sort      | `Θ(n log n)`         |

For large inputs, an `O(n log n)` sorting algorithm is generally much more scalable than an `O(n²)` algorithm.

---

# 4.19 Growth Rate in Searching

### Linear Search

```text id="6p1qpg"
Worst Case = Θ(n)
```

The search space is reduced by one element at a time.

### Binary Search

```text id="sn6c8e"
Worst Case = Θ(log n)
```

The search space is approximately halved after each comparison.

Therefore:

```text id="xid2bh"
log n < n
```

for sufficiently large `n`.

Hence binary search scales better than linear search when its prerequisites are satisfied.

---

# 4.20 Example — Comparing Two Algorithms

Suppose:

```text id="q1x1f3"
Algorithm A:
T_A(n) = 20n

Algorithm B:
T_B(n) = n²
```

For `n = 10`:

```text id="1o0n6u"
A = 200
B = 100
```

Algorithm B is smaller in this particular case.

For `n = 100`:

```text id="sgj1wb"
A = 2,000
B = 10,000
```

Now Algorithm A is better.

This demonstrates that the **growth rate becomes increasingly important as input size grows**.

---

# 4.21 Growth Rate and Scalability

An algorithm is considered more scalable when its resource requirements increase slowly as input size grows.

For example:

```text id="b43q17"
O(n)
```

is more scalable than:

```text id="p6pvpo"
O(n²)
```

and:

```text id="xq50m8"
O(n²)
```

is more scalable than:

```text id="f4q7c3"
O(2ⁿ)
```

for sufficiently large inputs.

Therefore, growth rate is directly related to the scalability of an algorithm.

---

# 4.22 PYQ Status

## Direct PYQ

**No direct standalone PYQ found.**

There is no question among the provided papers directly asking:

> "Explain growth rate of an algorithm."

However, the concept is embedded in questions involving:

* Asymptotic notation
* Complexity analysis
* Best/average/worst-case analysis
* Sorting complexity
* Searching complexity
* Polynomial and non-polynomial complexity

---

# 4.23 Indirect Connection to PYQs

### 2024 — Selection Sort

Selection sort complexity requires determining how the number of operations grows with `n`.

The result is:

```text id="wm8b4x"
Θ(n²)
```

Therefore, growth-rate understanding is required.

---

### 2024 — Asymptotic Notations

The question:

> **"What do Ω and Θ notations mean? When do we use O notation?"**

requires understanding how functions grow as `n` increases.

---

### 2024 — `6n³ = Θ(n²)?`

The question:

> **"Is 6n³ = Θ(n²)? Justify your answer."**

is fundamentally a growth-rate comparison.

Since:

```text id="6c8xxn"
n³
```

grows faster than:

```text id="0x5q95"
n²
```

we have:

```text id="8v3cwb"
6n³ ≠ Θ(n²)
```

Instead:

```text id="9b5q3k"
6n³ = Θ(n³)
```

---

# 4.24 How to Compare Growth Rates

Suppose you are given:

```text id="52r7cw"
f(n) = n²
g(n) = n³
```

Ask:

> Which function grows faster as `n` becomes large?

Since:

```text id="gjqj6f"
n³ / n² = n
```

and:

```text id="i3h5xv"
n → ∞
```

the ratio also grows without bound.

Therefore:

```text id="qz0lqd"
n³ grows faster than n²
```

---

# 4.25 Important Growth-Rate Relationships

Remember:

```text id="s8u7z6"
log n = o(n)
```

```text id="c3x9j4"
n = o(n log n)
```

```text id="l5a3w2"
n log n = o(n²)
```

```text id="2gq7tz"
n² = o(n³)
```

```text id="q7q6yr"
n³ = o(2ⁿ)
```

for sufficiently large `n`.

These relationships are useful when dealing with **little-o notation**.

---

# 4.26 Growth Rate and Little-o

If:

```text id="a8ry5x"
f(n) = o(g(n))
```

then `f(n)` grows strictly slower than `g(n)`.

For example:

```text id="xj4m1k"
n = o(n²)
```

because:

```text id="2h3w4k"
lim(n→∞) n/n² = 0
```

Therefore, the growth-rate relationship between functions helps determine little-o relationships.

---

# 4.27 Exam-Ready Answer

## What Is Growth Rate?

The **growth rate** of an algorithm describes how its computational requirements, such as running time or number of operations, increase as the input size `n` increases.

Growth rate allows algorithms to be compared independently of hardware and implementation details.

Common growth rates include:

```text id="8d1p2m"
Θ(1)
Θ(log n)
Θ(n)
Θ(n log n)
Θ(n²)
Θ(n³)
Θ(2ⁿ)
Θ(n!)
```

From slowest to fastest for sufficiently large `n`:

```text id="9a3m8k"
1 < log n < n < n log n < n² < n³ < 2ⁿ < n!
```

For example, linear search has `Θ(n)` worst-case complexity, whereas binary search has `Θ(log n)` worst-case complexity.

Thus, growth rate is an important measure of the scalability and efficiency of an algorithm.

---

# 4.28 Quick Revision

```text id="u3e7sm"
Growth Rate
     ↓
How T(n) grows as n increases
     ↓
Used to compare algorithms
     ↓
Independent of machine speed
     ↓
Expressed using asymptotic notation
```

### Order to Remember

```text id="q6h4m9"
Θ(1)
  ↓
Θ(log n)
  ↓
Θ(n)
  ↓
Θ(n log n)
  ↓
Θ(n²)
  ↓
Θ(n³)
  ↓
Θ(2ⁿ)
  ↓
Θ(n!)
```

---

# 4.29 Common Exam Traps

### Trap 1

```text
n² + n = Θ(n)
```

**Wrong.**

Correct:

```text
n² + n = Θ(n²)
```

---

### Trap 2

```text
6n³ = Θ(n²)
```

**Wrong.**

Correct:

```text
6n³ = Θ(n³)
```

---

### Trap 3

Thinking `O(n²)` and `O(n³)` have similar growth for large `n`.

They do not.

```text
n³ / n² = n
```

so `n³` grows increasingly faster.

---

# 4.30 Priority

**Direct PYQ Frequency: 0/4 years**

**Indirect Importance: HIGH**

This topic should be understood before studying:

* Upper Bounds
* Big-O
* Big-Omega
* Big-Theta
* Little-o
* Little-omega
* Polynomial vs Non-Polynomial Problems

### Priority: 🔥 HIGH

Even though **"Growth Rate" has no direct standalone PYQ**, it is the mathematical foundation behind almost every asymptotic-analysis question in this unit.
