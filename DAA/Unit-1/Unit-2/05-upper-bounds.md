# UNIT II — Analysis of Algorithms and Complexity Theory

# 5. Upper Bounds

> **PYQ Status: Directly tested through Big-O questions**
>
> **Importance: HIGH**

---

# 5.1 What Is an Upper Bound?

An **upper bound** describes the maximum asymptotic growth rate of a function or algorithm.

In algorithm analysis, an upper bound tells us that the running time of an algorithm will not grow faster than a particular rate, up to a constant factor, for sufficiently large input sizes.

The most commonly used notation for an upper bound is:

```text
O(g(n))
```

This is called **Big-O notation**.

---

# 5.2 Meaning of Big-O

We say:

```text
f(n) = O(g(n))
```

if there exist positive constants `c` and `n₀` such that:

```text
0 ≤ f(n) ≤ c · g(n)
```

for every:

```text
n ≥ n₀
```

In simple words:

> `g(n)` provides an asymptotic upper bound for `f(n)`.

---

# 5.3 Mathematical Definition

A function `f(n)` is `O(g(n))` if there exist constants:

```text
c > 0
```

and:

```text
n₀ > 0
```

such that:

```text
f(n) ≤ c g(n)
```

for all:

```text
n ≥ n₀
```

Therefore:

```text
f(n) = O(g(n))
```

---

# 5.4 Meaning of the Constants

### `c`

`c` is a positive constant used to scale the upper-bound function.

### `n₀`

`n₀` represents a threshold beyond which the inequality must hold.

The behavior of the functions for small values of `n` is not important for asymptotic analysis.

The important part is what happens as:

```text
n → ∞
```

---

# 5.5 Simple Example

Consider:

```text
f(n) = 3n + 5
```

We want to prove:

```text
f(n) = O(n)
```

For:

```text
n ≥ 1
```

we have:

```text
3n + 5 ≤ 3n + 5n
```

because:

```text
5 ≤ 5n
```

Therefore:

```text
3n + 5 ≤ 8n
```

Choose:

```text
c = 8
```

and:

```text
n₀ = 1
```

Hence:

```text
3n + 5 = O(n)
```

---

# 5.6 Upper Bound vs Exact Running Time

Big-O does **not necessarily represent the exact running time**.

For example:

```text
f(n) = 3n + 5
```

can be written as:

```text
O(n)
```

because the linear term dominates.

It can also technically be written as:

```text
O(n²)
```

because `n²` is an upper bound for `3n + 5` for sufficiently large `n`.

However, the more informative tight bound is:

```text
Θ(n)
```

Therefore:

```text
O(n) → upper bound
Θ(n) → tight bound
```

---

# 5.7 Upper Bound and Worst-Case Analysis

Big-O is commonly used to describe the **worst-case growth** of an algorithm.

For example, linear search has:

```text
Best Case    = Θ(1)
Average Case = Θ(n)
Worst Case   = Θ(n)
```

Therefore, we commonly say:

```text
Linear Search = O(n)
```

for its worst-case running time.

However, remember:

> Big-O notation itself represents an asymptotic upper bound. It is not synonymous with "worst case."

---

# 5.8 Common Upper Bounds

Common Big-O bounds include:

| Big-O        | Growth       |
| ------------ | ------------ |
| `O(1)`       | Constant     |
| `O(log n)`   | Logarithmic  |
| `O(n)`       | Linear       |
| `O(n log n)` | Linearithmic |
| `O(n²)`      | Quadratic    |
| `O(n³)`      | Cubic        |
| `O(2ⁿ)`      | Exponential  |
| `O(n!)`      | Factorial    |

---

# 5.9 Examples of Upper Bounds

### Constant

```text
f(n) = 10
```

Therefore:

```text
f(n) = O(1)
```

---

### Linear

```text
f(n) = 4n + 10
```

Therefore:

```text
f(n) = O(n)
```

---

### Quadratic

```text
f(n) = 3n² + 4n + 7
```

Therefore:

```text
f(n) = O(n²)
```

---

### Cubic

```text
f(n) = 2n³ + 5n² + n
```

Therefore:

```text
f(n) = O(n³)
```

---

# 5.10 Why Lower-Order Terms Are Ignored

Consider:

```text
f(n) = 5n² + 10n + 100
```

The dominant term is:

```text
5n²
```

As `n` becomes large:

```text
n²
```

grows faster than:

```text
n
```

and:

```text
1
```

Therefore:

```text
f(n) = O(n²)
```

More precisely:

```text
f(n) = Θ(n²)
```

---

# 5.11 Why Constant Multipliers Are Ignored

Consider:

```text
f(n) = 100n
```

The constant `100` changes the actual execution time but not the asymptotic growth rate.

Therefore:

```text
100n = O(n)
```

and:

```text
100n = Θ(n)
```

---

# 5.12 Upper Bound Graphically

Conceptually, if:

```text
f(n) ≤ c·g(n)
```

for all sufficiently large `n`, then `g(n)` acts as an upper bound for `f(n)`.

```text
        c·g(n)
       /
      /
     /    f(n)
    /    /
   /   /
  /  /
 /_/
----------------------> n
       n₀
```

The exact behavior before `n₀` does not matter.

---

# 5.13 Important Property

If:

```text
f(n) = O(g(n))
```

it does **not** automatically mean:

```text
g(n) = O(f(n))
```

This is one of your **2023 PYQs**.

For example:

```text
n = O(n²)
```

is true.

But:

```text
n² = O(n)
```

is false.

Therefore, Big-O is **not symmetric**.

---

# 5.14 2023 PYQ — Big-O Relationship

> **"If f(n)=O(g(n)) then does it imply g(n)=O(f(n))? Discuss."** `[5 Marks]`

### Answer

**No.**

The statement:

```text
f(n) = O(g(n))
```

means that `g(n)` provides an asymptotic upper bound for `f(n)`.

It does not imply that `f(n)` provides an upper bound for `g(n)`.

### Example

Let:

```text
f(n) = n
g(n) = n²
```

Then:

```text
n = O(n²)
```

is true because `n²` grows faster than `n`.

However:

```text
n² = O(n)
```

is false because `n²` grows faster than `n`.

Therefore:

```text
f(n) = O(g(n))
```

does not imply:

```text
g(n) = O(f(n))
```

---

# 5.15 Proof Using the Definition

Take:

```text
f(n) = n
g(n) = n²
```

For `n ≥ 1`:

```text
n ≤ n²
```

Choose:

```text
c = 1
```

and:

```text
n₀ = 1
```

Therefore:

```text
n = O(n²)
```

But suppose:

```text
n² = O(n)
```

Then there must exist a constant `c` such that:

```text
n² ≤ cn
```

for sufficiently large `n`.

Dividing by `n`:

```text
n ≤ c
```

This cannot remain true as:

```text
n → ∞
```

Therefore:

```text
n² ≠ O(n)
```

---

# 5.16 Big-O Is Not Symmetric

Remember:

```text
f(n) = O(g(n))
```

does not mean:

```text
g(n) = O(f(n))
```

However, if both are true:

```text
f(n) = O(g(n))
```

and:

```text
g(n) = O(f(n))
```

then the functions have the same asymptotic order and:

```text
f(n) = Θ(g(n))
```

---

# 5.17 Big-O vs Big-Theta

### Big-O

Provides an upper bound:

```text
f(n) = O(g(n))
```

### Big-Theta

Provides a tight bound:

```text
f(n) = Θ(g(n))
```

For example:

```text
f(n) = 3n + 5
```

is:

```text
O(n)
```

and:

```text
Θ(n)
```

The `Θ(n)` statement gives more precise asymptotic information.

---

# 5.18 Big-O vs Big-Omega

### Big-O

Upper bound:

```text
f(n) = O(g(n))
```

### Big-Omega

Lower bound:

```text
f(n) = Ω(g(n))
```

### Big-Theta

Both upper and lower bound:

```text
f(n) = Θ(g(n))
```

Conceptually:

```text
Ω(g(n))  ← Lower Bound

Θ(g(n))  ← Tight Bound

O(g(n))  ← Upper Bound
```

---

# 5.19 Limit Method for Comparing Growth

For many functions, the limit can help determine the relationship.

Consider:

```text
f(n) = n
g(n) = n²
```

Calculate:

```text
lim(n→∞) f(n) / g(n)
```

Therefore:

```text
lim(n→∞) n/n²
= lim(n→∞) 1/n
= 0
```

Since the ratio approaches `0`:

```text
n = o(n²)
```

and therefore:

```text
n = O(n²)
```

but:

```text
n² ≠ O(n)
```

---

# 5.20 Common Upper-Bound Relationships

For sufficiently large `n`:

```text
1 = O(log n)
```

```text
log n = O(n)
```

```text
n = O(n log n)
```

```text
n log n = O(n²)
```

```text
n² = O(n³)
```

```text
n³ = O(2ⁿ)
```

These relationships follow the growth-rate hierarchy.

---

# 5.21 Transitivity Property

Big-O has a useful transitivity property.

If:

```text
f(n) = O(g(n))
```

and:

```text
g(n) = O(h(n))
```

then:

```text
f(n) = O(h(n))
```

### Example

We know:

```text
n = O(n²)
```

and:

```text
n² = O(n³)
```

Therefore:

```text
n = O(n³)
```

---

# 5.22 Upper Bound in Algorithm Analysis

Suppose an algorithm has operation count:

```text
T(n) = 4n² + 7n + 3
```

For sufficiently large `n`, the quadratic term dominates.

Therefore:

```text
T(n) = O(n²)
```

This means the algorithm's growth is bounded above asymptotically by a constant multiple of `n²`.

The tighter description is:

```text
T(n) = Θ(n²)
```

---

# 5.23 Example — Selection Sort

Selection sort performs approximately:

```text
n(n - 1) / 2
```

comparisons.

Therefore:

```text
T(n) = (n² - n)/2
```

Ignoring constants and lower-order terms:

```text
T(n) = Θ(n²)
```

Therefore:

```text
T(n) = O(n²)
```

is also true.

---

# 5.24 Example — Linear Search

Worst-case linear search requires:

```text
T(n) = n
```

comparisons.

Therefore:

```text
T(n) = O(n)
```

and more tightly:

```text
T(n) = Θ(n)
```

---

# 5.25 PYQ — 2024

The 2024 paper asks:

> **"What do Ω and Θ notations mean? When do we use O notation?"** `[6 Marks]`

This requires understanding upper bounds.

### When Do We Use O Notation?

Big-O notation is used to express an **asymptotic upper bound** on the growth of a function or algorithm.

It is particularly useful for describing the maximum asymptotic growth of an algorithm's running time.

For example:

```text
T(n) = 3n² + 2n + 1
```

can be expressed as:

```text
O(n²)
```

---

# 5.26 PYQ — 2023

> **"If f(n)=O(g(n)) then does it imply g(n)=O(f(n))? Discuss."** `[5 Marks]`

### Key Point

**No. Big-O is not symmetric.**

Counterexample:

```text
f(n) = n
g(n) = n²
```

Then:

```text
f(n) = O(g(n))
```

but:

```text
g(n) ≠ O(f(n))
```

---

# 5.27 Exam-Ready Answer

## What Is an Upper Bound?

An upper bound describes the maximum asymptotic growth of a function or algorithm.

Big-O notation is used to represent an upper bound.

A function `f(n)` is `O(g(n))` if there exist positive constants `c` and `n₀` such that:

```text
0 ≤ f(n) ≤ c g(n)
```

for all:

```text
n ≥ n₀
```

For example:

```text
f(n) = 3n² + 2n + 5
```

has:

```text
f(n) = O(n²)
```

because the `n²` term dominates for large `n`.

Big-O is useful for comparing algorithms and describing how their running times grow as the input size increases.

---

# 5.28 Important Properties of Big-O

### 1. Reflexivity

Every function is Big-O of itself:

```text
f(n) = O(f(n))
```

---

### 2. Transitivity

If:

```text
f(n) = O(g(n))
```

and:

```text
g(n) = O(h(n))
```

then:

```text
f(n) = O(h(n))
```

---

### 3. Not Symmetric

From:

```text
f(n) = O(g(n))
```

we cannot conclude:

```text
g(n) = O(f(n))
```

---

### 4. Constant Multiplication

For a positive constant `c`:

```text
c f(n) = O(f(n))
```

---

# 5.29 Common Mistakes

### Mistake 1 — Treating Big-O as an exact value

Incorrect:

```text
T(n) = O(n)
```

means exactly `n` operations.

Correct:

It means the asymptotic growth is bounded above by a constant multiple of `n`.

---

### Mistake 2 — Thinking Big-O is symmetric

Incorrect:

```text
f = O(g)
⇒ g = O(f)
```

Correct:

This implication is false in general.

---

### Mistake 3 — Confusing O with Θ

If:

```text
f(n) = 3n + 5
```

then:

```text
f(n) = O(n)
```

is correct.

But:

```text
Θ(n)
```

is the tighter characterization.

---

### Mistake 4 — Thinking Big-O always means worst case

Big-O describes an upper bound.

It is commonly used for worst-case running time, but the notation itself does not mean "worst case."

---

# 5.30 Quick Revision

```text
UPPER BOUND
     ↓
Big-O
     ↓
f(n) ≤ c·g(n)
     ↓
for n ≥ n₀
```

### Remember

```text
f(n) = O(g(n))
```

means:

> `f(n)` grows no faster than `g(n)` up to a constant factor.

But:

```text
f(n) = O(g(n))
```

does **not** imply:

```text
g(n) = O(f(n))
```

---

# 5.31 PYQ Frequency and Priority

### Direct PYQs

**2023:** Big-O relationship question — `[5 Marks]`

**2024:** O, Ω and Θ notation question — `[6 Marks]`

### Frequency

**2/4 years**

### Priority

**🔥 HIGH**

Focus especially on:

1. Definition of Big-O
2. Formal definition
3. Meaning of upper bound
4. Big-O vs Big-Theta
5. Big-O vs Big-Omega
6. Non-symmetry of Big-O
7. Examples and proofs
8. Growth-rate comparison
9. Use of Big-O in algorithm analysis
