# UNIT II — Analysis of Algorithms and Complexity Theory

# 6. Asymptotic Notations — O, Ω, Θ, o, ω

Asymptotic notation is used to describe the growth rate of an algorithm as the input size `n` becomes very large.

The five important asymptotic notations are:

1. **Big-O — `O`**
2. **Big-Omega — `Ω`**
3. **Big-Theta — `Θ`**
4. **Little-o — `o`**
5. **Little-omega — `ω`**

---

# 6.1 Why Do We Need Asymptotic Notations?

The actual running time of an algorithm depends on many factors:

* Processor speed
* Programming language
* Compiler
* Operating system
* Hardware
* Implementation details

Instead of measuring exact execution time, we study how the running time **grows with input size**.

For example:

```text
T(n) = 4n² + 10n + 20
```

For large `n`, the `n²` term dominates.

Therefore:

```text
T(n) = Θ(n²)
```

Asymptotic notation allows us to focus on the growth rate rather than machine-specific execution time.

---

# 6.2 The Five Notations

| Notation  | Meaning                 |
| --------- | ----------------------- |
| `O(g(n))` | Asymptotic upper bound  |
| `Ω(g(n))` | Asymptotic lower bound  |
| `Θ(g(n))` | Tight asymptotic bound  |
| `o(g(n))` | Strictly smaller growth |
| `ω(g(n))` | Strictly larger growth  |

---

# 6.3 Big-O — `O`

## Definition

Big-O notation represents an **asymptotic upper bound**.

We write:

```text
f(n) = O(g(n))
```

if there exist positive constants `c` and `n₀` such that:

```text
0 ≤ f(n) ≤ c·g(n)
```

for all:

```text
n ≥ n₀
```

In simple terms:

> `f(n)` does not grow faster than `g(n)`, up to a constant factor, for sufficiently large `n`.

---

## Example

Consider:

```text
f(n) = 3n + 5
```

For sufficiently large `n`:

```text
3n + 5 ≤ 8n
```

Therefore:

```text
f(n) = O(n)
```

More precisely:

```text
f(n) = Θ(n)
```

---

# 6.4 Big-Omega — `Ω`

## Definition

Big-Omega represents an **asymptotic lower bound**.

We write:

```text
f(n) = Ω(g(n))
```

if there exist positive constants `c` and `n₀` such that:

```text
f(n) ≥ c·g(n)
```

for all:

```text
n ≥ n₀
```

In simple terms:

> `f(n)` grows at least as fast as `g(n)`, up to a constant factor.

---

## Example

Consider:

```text
f(n) = 3n² + 5n + 2
```

For sufficiently large `n`:

```text
3n² + 5n + 2 ≥ 3n²
```

Therefore:

```text
f(n) = Ω(n²)
```

Since `n²` is also the upper bound:

```text
f(n) = Θ(n²)
```

---

# 6.5 Big-Theta — `Θ`

## Definition

Big-Theta represents a **tight asymptotic bound**.

We write:

```text
f(n) = Θ(g(n))
```

if there exist positive constants `c₁`, `c₂` and `n₀` such that:

```text
0 ≤ c₁g(n) ≤ f(n) ≤ c₂g(n)
```

for all:

```text
n ≥ n₀
```

In simple terms:

> `f(n)` and `g(n)` grow at the same asymptotic rate.

---

## Example

Consider:

```text
f(n) = 5n² + 3n + 10
```

For sufficiently large `n`, the `n²` term dominates.

Therefore:

```text
f(n) = Θ(n²)
```

This means `n²` provides both:

* An asymptotic lower bound
* An asymptotic upper bound

---

# 6.6 Relationship Between O, Ω and Θ

Conceptually:

```text
        Upper Bound
             O
             ↑
             |
        ┌─────────┐
        │    f    │
        └─────────┘
             |
             ↓
             Ω
        Lower Bound
```

If both bounds match:

```text
f(n) = O(g(n))
```

and:

```text
f(n) = Ω(g(n))
```

then:

```text
f(n) = Θ(g(n))
```

Therefore:

```text
Θ(g(n)) = O(g(n)) ∩ Ω(g(n))
```

---

# 6.7 Little-o — `o`

## Definition

Little-o represents a **strict asymptotic upper bound**.

We write:

```text
f(n) = o(g(n))
```

if `f(n)` grows strictly slower than `g(n)`.

A useful definition is:

```text
lim(n→∞) f(n)/g(n) = 0
```

---

## Example

Consider:

```text
f(n) = n
g(n) = n²
```

Calculate:

```text
lim(n→∞) n/n²
```

which gives:

```text
lim(n→∞) 1/n = 0
```

Therefore:

```text
n = o(n²)
```

This means:

> `n` grows strictly slower than `n²`.

---

# 6.8 Little-omega — `ω`

## Definition

Little-omega represents a **strict asymptotic lower bound**.

We write:

```text
f(n) = ω(g(n))
```

if `f(n)` grows strictly faster than `g(n)`.

A useful definition is:

```text
lim(n→∞) f(n)/g(n) = ∞
```

---

## Example

Consider:

```text
f(n) = n²
g(n) = n
```

Then:

```text
lim(n→∞) n²/n
```

becomes:

```text
lim(n→∞) n = ∞
```

Therefore:

```text
n² = ω(n)
```

This means:

> `n²` grows strictly faster than `n`.

---

# 6.9 O vs Ω vs Θ vs o vs ω

| Notation  | Meaning            | Relationship                      |
| --------- | ------------------ | --------------------------------- |
| `O(g(n))` | Upper bound        | `f` grows no faster than `g`      |
| `Ω(g(n))` | Lower bound        | `f` grows at least as fast as `g` |
| `Θ(g(n))` | Tight bound        | Same asymptotic growth            |
| `o(g(n))` | Strict upper bound | `f` grows strictly slower         |
| `ω(g(n))` | Strict lower bound | `f` grows strictly faster         |

---

# 6.10 Limit-Based Interpretation

The limit method is very useful for comparing two functions.

Consider:

```text
L = lim(n→∞) f(n)/g(n)
```

Then:

### If:

```text
L = 0
```

we have:

```text
f(n) = o(g(n))
```

and therefore:

```text
f(n) = O(g(n))
```

---

### If:

```text
0 < L < ∞
```

then:

```text
f(n) = Θ(g(n))
```

---

### If:

```text
L = ∞
```

then:

```text
f(n) = ω(g(n))
```

and therefore:

```text
f(n) = Ω(g(n))
```

---

# 6.11 Example — `n` and `n²`

Let:

```text
f(n) = n
g(n) = n²
```

Then:

```text
f(n)/g(n)
= n/n²
= 1/n
```

Therefore:

```text
lim(n→∞) 1/n = 0
```

Hence:

```text
n = o(n²)
```

Therefore:

```text
n = O(n²)
```

But:

```text
n ≠ Θ(n²)
```

because their growth rates are not the same.

---

# 6.12 Example — `3n²` and `n²`

Let:

```text
f(n) = 3n²
g(n) = n²
```

Then:

```text
f(n)/g(n)
= 3
```

Therefore:

```text
lim(n→∞) 3 = 3
```

Since the limit is a positive finite constant:

```text
3n² = Θ(n²)
```

Consequently:

```text
3n² = O(n²)
```

and:

```text
3n² = Ω(n²)
```

But:

```text
3n² ≠ o(n²)
```

and:

```text
3n² ≠ ω(n²)
```

because the functions grow at the same rate.

---

# 6.13 Example — `n²` and `n³`

Let:

```text
f(n) = n²
g(n) = n³
```

Then:

```text
f(n)/g(n)
= 1/n
```

Therefore:

```text
lim(n→∞) 1/n = 0
```

Hence:

```text
n² = o(n³)
```

and:

```text
n² = O(n³)
```

But:

```text
n² ≠ Θ(n³)
```

---

# 6.14 Example — `n³` and `n²`

Let:

```text
f(n) = n³
g(n) = n²
```

Then:

```text
f(n)/g(n)
= n
```

Therefore:

```text
lim(n→∞) n = ∞
```

Hence:

```text
n³ = ω(n²)
```

and:

```text
n³ = Ω(n²)
```

---

# 6.15 Growth-Rate Hierarchy

For sufficiently large `n`:

```text
1
<
log n
<
n
<
n log n
<
n²
<
n³
<
2ⁿ
<
n!
```

Therefore:

```text
log n = o(n)
```

```text
n = o(n log n)
```

```text
n log n = o(n²)
```

```text
n² = o(n³)
```

```text
n³ = o(2ⁿ)
```

---

# 6.16 Important Difference: `O` vs `o`

This distinction is important.

### Big-O

Allows the functions to grow at the **same rate**.

Example:

```text
n = O(n)
```

and:

```text
3n = O(n)
```

---

### Little-o

Requires strictly slower growth.

For example:

```text
n = o(n²)
```

is true.

But:

```text
n = o(n)
```

is false.

Therefore:

```text
o(g(n)) ⊂ O(g(n))
```

in the usual asymptotic sense.

---

# 6.17 Important Difference: `Ω` vs `ω`

### Big-Omega

Allows the functions to have the same growth rate.

```text
n² = Ω(n²)
```

is true.

### Little-omega

Requires strictly faster growth.

```text
n² = ω(n)
```

is true.

But:

```text
n² = ω(n²)
```

is false.

---

# 6.18 Formal Definitions Summary

| Notation  | Formal condition         |
| --------- | ------------------------ |
| `O(g(n))` | `f(n) ≤ c g(n)`          |
| `Ω(g(n))` | `f(n) ≥ c g(n)`          |
| `Θ(g(n))` | `c₁g(n) ≤ f(n) ≤ c₂g(n)` |
| `o(g(n))` | `lim f(n)/g(n) = 0`      |
| `ω(g(n))` | `lim f(n)/g(n) = ∞`      |

All inequalities are considered for sufficiently large `n`.

---

# 6.19 PYQ — Big-O

### 2023

> **"If f(n)=O(g(n)) then does it imply g(n)=O(f(n))? Discuss."** `[5 Marks]`

### Answer

**No.**

Big-O is not symmetric.

Consider:

```text
f(n) = n
g(n) = n²
```

Then:

```text
n = O(n²)
```

because `n²` grows faster than `n`.

However:

```text
n² ≠ O(n)
```

because `n²` grows faster than `n`.

Therefore:

```text
f(n) = O(g(n))
```

does not imply:

```text
g(n) = O(f(n))
```

---

# 6.20 PYQ — Big-O, Ω and Θ

### 2024

> **"What do Ω and Θ notations mean? When do we use O notation?"** `[6 Marks]`

This question directly tests three of the five asymptotic notations.

---

## Ω Notation

Ω represents an asymptotic lower bound.

```text
f(n) = Ω(g(n))
```

means:

```text
f(n) ≥ c·g(n)
```

for sufficiently large `n`.

---

## Θ Notation

Θ represents a tight asymptotic bound.

```text
f(n) = Θ(g(n))
```

means:

```text
c₁g(n) ≤ f(n) ≤ c₂g(n)
```

for sufficiently large `n`.

---

## O Notation

O represents an asymptotic upper bound.

```text
f(n) = O(g(n))
```

means:

```text
f(n) ≤ c·g(n)
```

for sufficiently large `n`.

It is commonly used to express an upper bound on the growth of an algorithm's running time.

---

# 6.21 PYQ — Big-Theta

### 2024

> **"Is 6n³ = Θ(n²)? Justify your answer."** `[3 Marks]`

### Answer

**No.**

Consider:

```text
f(n) = 6n³
g(n) = n²
```

Calculate:

```text
f(n)/g(n)
= 6n³/n²
= 6n
```

As:

```text
n → ∞
```

we get:

```text
6n → ∞
```

Therefore, `6n³` grows strictly faster than `n²`.

Hence:

```text
6n³ ≠ Θ(n²)
```

Instead:

```text
6n³ = Θ(n³)
```

---

# 6.22 How to Solve a Θ Question

To check whether:

```text
f(n) = Θ(g(n))
```

you can compare their growth rates.

A convenient method is:

```text
lim(n→∞) f(n)/g(n)
```

If the result is:

```text
0 < L < ∞
```

then:

```text
f(n) = Θ(g(n))
```

If the result is:

```text
∞
```

then `f` grows faster.

If the result is:

```text
0
```

then `f` grows slower.

---

# 6.23 Example — Is `4n² + 5n = Θ(n²)`?

Let:

```text
f(n) = 4n² + 5n
g(n) = n²
```

Then:

```text
f(n)/g(n)
= (4n² + 5n)/n²
```

Therefore:

```text
= 4 + 5/n
```

Taking the limit:

```text
lim(n→∞) (4 + 5/n)
= 4
```

Since:

```text
0 < 4 < ∞
```

we conclude:

```text
4n² + 5n = Θ(n²)
```

---

# 6.24 Example — Is `n log n = Θ(n²)`?

Calculate:

```text
lim(n→∞) (n log n)/n²
```

Simplify:

```text
= lim(n→∞) log n/n
```

which approaches:

```text
0
```

Therefore:

```text
n log n = o(n²)
```

and:

```text
n log n ≠ Θ(n²)
```

---

# 6.25 Asymptotic Notations in Algorithm Analysis

Suppose an algorithm has:

```text
T(n) = 4n² + 5n + 20
```

Then:

```text
O(n²)
```

is an upper bound.

```text
Ω(n²)
```

is a lower bound.

And:

```text
Θ(n²)
```

is the tight bound.

Therefore:

```text
T(n) = Θ(n²)
```

is the most informative asymptotic statement.

---

# 6.26 Best, Average and Worst Case Connection

Asymptotic notation can be applied separately to different cases.

For insertion sort:

```text
Best Case:
Θ(n)

Average Case:
Θ(n²)

Worst Case:
Θ(n²)
```

For selection sort:

```text
Best Case:
Θ(n²)

Average Case:
Θ(n²)

Worst Case:
Θ(n²)
```

Therefore, case analysis and asymptotic notation are closely connected.

---

# 6.27 Common Mistakes

## Mistake 1 — Confusing `O` and `Θ`

Incorrect:

```text
f(n) = O(g(n))
```

means that `f` grows exactly at the same rate as `g`.

Correct:

`O` only guarantees an upper bound.

---

## Mistake 2 — Thinking `O` is symmetric

Incorrect:

```text
f = O(g)
⇒ g = O(f)
```

Correct:

This is false in general.

---

## Mistake 3 — Confusing `o` with `O`

```text
n = O(n)
```

is true.

```text
n = o(n)
```

is false.

---

## Mistake 4 — Confusing `ω` with `Ω`

```text
n² = Ω(n²)
```

is true.

```text
n² = ω(n²)
```

is false.

---

## Mistake 5 — Ignoring constants incorrectly in Θ proofs

Constants are ignored in asymptotic classification, but they still matter when checking the formal inequalities.

---

# 6.28 Exam-Ready Answer

## Explain Asymptotic Notations

Asymptotic notations are mathematical tools used to describe the growth rate of an algorithm as input size `n` approaches infinity.

The major notations are:

### Big-O — `O`

Represents an asymptotic upper bound.

```text
f(n) = O(g(n))
```

if:

```text
f(n) ≤ c·g(n)
```

for sufficiently large `n`.

### Big-Omega — `Ω`

Represents an asymptotic lower bound.

```text
f(n) = Ω(g(n))
```

if:

```text
f(n) ≥ c·g(n)
```

for sufficiently large `n`.

### Big-Theta — `Θ`

Represents a tight asymptotic bound.

```text
f(n) = Θ(g(n))
```

if:

```text
c₁g(n) ≤ f(n) ≤ c₂g(n)
```

for sufficiently large `n`.

### Little-o — `o`

Represents a strict upper bound where `f(n)` grows strictly slower than `g(n)`.

```text
f(n) = o(g(n))
```

if:

```text
lim(n→∞) f(n)/g(n) = 0
```

### Little-omega — `ω`

Represents a strict lower bound where `f(n)` grows strictly faster than `g(n)`.

```text
f(n) = ω(g(n))
```

if:

```text
lim(n→∞) f(n)/g(n) = ∞
```

---

# 6.29 Quick Revision Table

| Notation | Meaning         | Example       |
| -------- | --------------- | ------------- |
| `O`      | Upper bound     | `n = O(n²)`   |
| `Ω`      | Lower bound     | `n² = Ω(n)`   |
| `Θ`      | Tight bound     | `3n² = Θ(n²)` |
| `o`      | Strictly slower | `n = o(n²)`   |
| `ω`      | Strictly faster | `n² = ω(n)`   |

---

# 6.30 One-Line Memory Trick

```text
O  → Upper
Ω  → Lower
Θ  → Tight
o  → Strictly smaller
ω  → Strictly larger
```

Or remember:

```text
O  = grows NO faster
Ω  = grows NO slower
Θ  = grows THE same
o  = grows strictly slower
ω  = grows strictly faster
```

---

# 6.31 PYQ Priority

### Big-O

**PYQ Frequency: 2/4 years**

* 2023 — Big-O implication question `[5]`
* 2024 — O, Ω, Θ question `[6]`

**Priority: 🔥🔥 VERY HIGH**

---

### Big-Omega

**PYQ Frequency: 1/4 years**

* 2024 — Ω and Θ question `[6]`

**Priority: 🔥 HIGH**

---

### Big-Theta

**PYQ Frequency: 2/4 years**

* 2024 — Ω and Θ question `[6]`
* 2024 — `6n³ = Θ(n²)?` `[3]`

**Priority: 🔥🔥 VERY HIGH**

---

### Little-o

**PYQ Frequency: 0/4 years**

**Priority: MEDIUM**

Know the definition and growth-rate interpretation.

---

### Little-omega

**PYQ Frequency: 0/4 years**

**Priority: MEDIUM**

Know the definition and growth-rate interpretation.

---

# 6.32 Final Revision

```text
                    ASYMPTOTIC NOTATIONS
                            │
          ┌─────────────────┼─────────────────┐
          │                 │                 │
       Upper              Lower             Tight
          │                 │                 │
         O                 Ω                 Θ
          │                 │                 │
     No faster         No slower         Same rate
          
          ┌─────────────────┴─────────────────┐
          │                                   │
       Strict Upper                       Strict Lower
          │                                   │
          o                                   ω
          │                                   │
    Strictly slower                   Strictly faster
```

### Most Important PYQ Areas

1. **Big-O is not symmetric**
2. **Meaning of Ω**
3. **Meaning of Θ**
4. **When O notation is used**
5. **Determine whether `f(n) = Θ(g(n))`**
6. **Difference between O and Θ**
7. **Difference between O and o**
8. **Difference between Ω and ω**
9. **Limit method for comparing growth rates**

**Priority: 🔥🔥 VERY HIGH**
