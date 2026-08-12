# Best Case, Average Case and Worst Case Analysis

> **VERY IMPORTANT — Repeated PYQ**
>
> 2022, 2023, 2025

---

# 1. What is Case Analysis?

**Case analysis** studies the performance of an algorithm for different types of input of the same size.

The three main cases are:

```text id="f9l4wc"
             Case Analysis
                   │
        ┌──────────┼──────────┐
        ▼          ▼          ▼
      Best       Average     Worst
       Case        Case       Case
        │           │          │
     Minimum     Expected    Maximum
      work        work        work
```

It is mainly used to analyze **time complexity**, but the same idea can be applied to other resources.

---

# 2. Best Case

## Definition

The **best case** is the input arrangement for which the algorithm performs the **minimum number of operations** for a given input size.

In simple words:

> **Best case = minimum work**

### Example: Linear Search

```text id="y1a5nq"
A = [10, 20, 30, 40, 50]
Search = 10
```

The required element is the first element.

Only one comparison is needed.

```text id="f1x3ad"
Comparisons = 1
```

Therefore:

**Best Case = O(1)**

---

# 3. Worst Case

## Definition

The **worst case** is the input arrangement for which the algorithm performs the **maximum number of operations** for a given input size.

In simple words:

> **Worst case = maximum work**

### Example: Linear Search

```text id="0ykp6t"
A = [10, 20, 30, 40, 50]
Search = 50
```

The algorithm checks every element.

```text id="g6p1s8"
Comparisons = 5
```

If the element is not present:

```text id="7s7x0n"
A = [10, 20, 30, 40, 50]
Search = 100
```

Again, all 5 elements are checked.

For `n` elements:

**Worst Case = O(n)**

---

# 4. Average Case

## Definition

The **average case** describes the expected performance of an algorithm over the possible inputs of a given size, according to an assumed probability distribution.

In simple words:

> **Average case = expected amount of work**

For Linear Search, if the searched element is equally likely to be at any of the `n` positions:

```text id="zj8m8t"
Comparisons:

1, 2, 3, 4, ..., n
```

Average number of comparisons:

```text id="2zq0zz"
(1 + 2 + 3 + ... + n) / n
```

Since:

```text id="gq2u2b"
1 + 2 + ... + n = n(n+1)/2
```

Average:

```text id="9v3g47"
[n(n+1)/2] / n
= (n+1)/2
```

Therefore:

**Average Case = O(n)**

---

# 5. Linear Search — Complete Case Analysis

Consider:

```text id="5xw9fo"
LinearSearch(A, n, x)

for i = 0 to n-1:
    if A[i] == x:
        return i

return -1
```

---

## Best Case

The element is found at the first position.

```text id="4kvw2k"
A = [10, 20, 30, 40, 50]
x = 10
```

Comparisons:

```text id="13f6sy"
1
```

Therefore:

**Best Case = O(1)**

---

## Worst Case

The element is:

* At the last position, or
* Not present.

Example:

```text id="z3f7o4"
A = [10, 20, 30, 40, 50]
x = 50
```

Comparisons:

```text id="opb5ut"
5
```

For `n` elements:

**Worst Case = O(n)**

---

## Average Case

Assume the element is equally likely to occur at any position.

Comparisons:

```text id="q3x8o1"
1 + 2 + 3 + ... + n
```

Average:

```text id="q2r2nm"
(n+1)/2
```

Ignoring constants:

**Average Case = O(n)**

---

# 6. Summary of Linear Search

| Case        | Situation                              | Comparisons | Complexity |
| ----------- | -------------------------------------- | ----------: | ---------- |
| **Best**    | Element at first position              |         `1` | **O(1)**   |
| **Average** | Element equally likely at any position |   `(n+1)/2` | **O(n)**   |
| **Worst**   | Last position / not present            |         `n` | **O(n)**   |

---

# 7. Best Case Does Not Always Give a Clear Idea of Performance

### PYQ 2023 — 2 Marks

> **"Comment on the statement: Best case analysis of algorithm may not give clear idea of performance."**

### Answer

Yes, the statement is correct.

Best-case analysis considers only the **most favorable input**, which may rarely occur in practice.

For example, in Linear Search:

```text id="whp8f4"
Best case → O(1)
Worst case → O(n)
Average    → O(n)
```

If we consider only the best case, we might incorrectly conclude that Linear Search is always very fast.

Therefore:

> **Best-case analysis alone does not provide a complete picture of an algorithm's performance. Average-case and worst-case analysis are also important.**

---

# 8. Is Average Case Simply the Average of Best and Worst Case?

### PYQ 2023 — 7 Marks

**No.**

Average-case efficiency is **not** generally:

```text id="i3j0c8"
(Best Case + Worst Case) / 2
```

Instead, average-case analysis considers the **expected cost over all possible inputs**, based on an assumed probability distribution.

### Example — Linear Search

For `n` elements, possible successful search positions require:

```text id="s8h20q"
1, 2, 3, ..., n
```

If each position is equally likely:

```text id="uxu7sp"
Average
= (1 + 2 + ... + n) / n
= (n+1)/2
```

This is not obtained by simply averaging:

```text id="f80m0b"
Best = 1
Worst = n

(1 + n)/2
```

Although for this particular uniform linear-search example the expressions are closely related, **the general definition of average-case analysis is probability-weighted expected cost, not the arithmetic mean of best and worst cases**.

---

# 9. General Formula for Average Case

If possible inputs are:

```text id="0a2kjm"
I₁, I₂, I₃, ..., Iₖ
```

and each input has probability:

```text id="2vprl6"
P(I₁), P(I₂), ..., P(Iₖ)
```

then:

```text id="d2n0n6"
Average Cost
=
Σ [P(Iᵢ) × Cost(Iᵢ)]
```

In simple terms:

> **Average Case = Probability × Cost, summed over all possible cases.**

---

# 10. Example of Probability-Weighted Average

Suppose an algorithm has three possible cases:

| Case |          Cost | Probability |
| ---- | ------------: | ----------: |
| A    |   1 operation |         0.5 |
| B    |  5 operations |         0.3 |
| C    | 10 operations |         0.2 |

Average cost:

```text id="fuj7pk"
= (0.5 × 1)
+ (0.3 × 5)
+ (0.2 × 10)

= 0.5 + 1.5 + 2

= 4 operations
```

So the average-case cost is **4 operations**.

It is clearly not simply:

```text id="oxq2e3"
(1 + 10) / 2 = 5.5
```

---

# 11. Another Example — Selection Sort

Selection Sort performs almost the same number of comparisons regardless of the initial arrangement.

For `n` elements:

```text id="b6y36d"
Comparisons =
(n-1) + (n-2) + ... + 1

= n(n-1)/2
```

Therefore:

```text id="h4b3a7"
Best Case    → O(n²)
Average Case → O(n²)
Worst Case   → O(n²)
```

This shows why the three cases can sometimes have the **same asymptotic complexity**.

---

# 12. Best, Average and Worst Case — Comparison

| Feature               | Best Case               | Average Case               | Worst Case                |
| --------------------- | ----------------------- | -------------------------- | ------------------------- |
| Meaning               | Minimum work            | Expected work              | Maximum work              |
| Input                 | Most favorable          | Typical/probabilistic      | Least favorable           |
| Gives guarantee?      | No                      | Depends on assumptions     | Yes, upper-bound behavior |
| Usefulness            | Shows ideal performance | Shows expected performance | Important for guarantees  |
| Example Linear Search | O(1)                    | O(n)                       | O(n)                      |

---

# 13. Why Worst Case Is Important

Worst-case analysis is useful when we need a guarantee that the algorithm will not exceed a certain amount of work.

Examples:

* Real-time systems
* Safety-critical systems
* Large-scale systems
* Systems with strict response-time requirements

If an algorithm has:

```text id="7rmyi6"
Worst Case = O(n²)
```

we know its growth will not exceed that asymptotic bound under the stated model.

---

# 14. Why Average Case Is Important

Average-case analysis is useful when:

* Inputs vary significantly.
* We want to understand typical performance.
* A worst-case input is unlikely.
* We can reasonably model the probability distribution of inputs.

However, the probability assumptions must be realistic.

---

# 15. Why Best Case Is Still Useful

Best-case analysis is not useless.

It helps us understand:

* The minimum possible work.
* Whether an algorithm can terminate early.
* How input arrangement affects performance.
* Situations where the algorithm performs exceptionally well.

But it should **not be the only measure** used to judge an algorithm.

---

# 16. Exam Answer — 8 Marks

### Definition

> **Best, average and worst-case analysis** are methods of analyzing the performance of an algorithm for different inputs of the same size.

### Best Case

The best case is the input for which the algorithm performs the minimum number of operations.

### Average Case

The average case is the expected number of operations over all possible inputs, according to an assumed probability distribution.

### Worst Case

The worst case is the input for which the algorithm performs the maximum number of operations.

### Example — Linear Search

For an array of `n` elements:

```text id="yl30n9"
Best Case:
Element at first position
→ O(1)

Average Case:
Element equally likely at any position
→ (n+1)/2 comparisons
→ O(n)

Worst Case:
Element at last position or absent
→ n comparisons
→ O(n)
```

### Conclusion

> Best-case analysis shows minimum work, average-case analysis shows expected work, and worst-case analysis shows maximum work. Average-case efficiency is not generally the arithmetic average of best and worst cases; it is calculated using the probability distribution of possible inputs.

---

# Quick Revision

```text id="0udkgt"
BEST
↓
Minimum work
↓
Most favorable input

AVERAGE
↓
Expected work
↓
Probability-weighted inputs

WORST
↓
Maximum work
↓
Least favorable input
```

### Most Important Points

* **Best ≠ Average ≠ Worst**
* Average case is **not generally `(Best + Worst)/2`**
* Linear Search: **O(1), O(n), O(n)**
* Selection Sort: **O(n²), O(n²), O(n²)**
* Best case alone **does not give a complete picture** of performance.
