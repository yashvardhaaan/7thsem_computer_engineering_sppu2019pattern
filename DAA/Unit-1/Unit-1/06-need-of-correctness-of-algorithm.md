# Correctness of Algorithm

## 1. Need for Correctness of an Algorithm

An algorithm is **correct** if it produces the expected output for every valid input and terminates properly.

### Why is correctness important?

* Ensures the algorithm gives the **right result**.
* Prevents errors in software and systems.
* A fast algorithm is useless if its output is wrong.
* Helps verify that the algorithm works for **all possible valid inputs**.
* Provides confidence before implementing the algorithm.

### Correctness vs Efficiency

```text
Algorithm
   │
   ├── Correctness → Does it give the right answer?
   │
   └── Efficiency  → How much time and memory does it use?
```

---

# 2. Loop Invariant

A **loop invariant** is a property that remains true before and after every iteration of a loop.

It is mainly used to **prove the correctness of iterative algorithms**.

A loop invariant proof has three steps:

```text
Initialization
      ↓
Maintenance
      ↓
Termination
```

### 1. Initialization

Show that the loop invariant is true **before the first iteration**.

### 2. Maintenance

Assume the invariant is true before an iteration and prove that it remains true after the iteration.

### 3. Termination

When the loop terminates, use the invariant to prove that the algorithm gives the required answer.

---

# PYQ 2022 — 8 Marks

## Question

**Why is correctness of the algorithm important? Define loop invariant property and prove the correctness of finding summation of n numbers using loop invariant property.**

## Answer

### Importance of Correctness

Correctness is important because an algorithm must produce the correct output for every valid input. An algorithm that is efficient but produces an incorrect result cannot be considered useful. Correctness ensures reliability, prevents logical errors and establishes that the algorithm solves the intended problem.

### Loop Invariant

A loop invariant is a condition that remains true before and after every iteration of a loop. It is used to prove the correctness of iterative algorithms.

The three steps are:

1. **Initialization**
2. **Maintenance**
3. **Termination**

### Algorithm to Find Sum of n Numbers

```text
SUM(n)

sum = 0

for i = 1 to n:
    sum = sum + i

return sum
```

### Loop Invariant

> At the beginning of every iteration, `sum` contains the sum of all numbers from `1` to `i - 1`.

Therefore:

```text
sum = 1 + 2 + ... + (i - 1)
```

### 1. Initialization

Before the first iteration:

```text
i = 1
sum = 0
```

There are no numbers from `1` to `i - 1` because `i - 1 = 0`.

Therefore:

```text
sum = 0
```

Hence, the loop invariant is **true before the first iteration**.

### 2. Maintenance

Assume the invariant is true before an iteration:

```text
sum = 1 + 2 + ... + (i - 1)
```

The algorithm executes:

```text
sum = sum + i
```

Therefore:

```text
sum = 1 + 2 + ... + (i - 1) + i
```

Thus:

```text
sum = 1 + 2 + ... + i
```

After `i` is increased, the invariant is again true for the next iteration.

Therefore, the invariant is **maintained**.

### 3. Termination

The loop terminates after `i` becomes `n + 1`.

Using the invariant:

```text
sum = 1 + 2 + ... + (i - 1)
```

Substituting `i = n + 1`:

```text
sum = 1 + 2 + ... + n
```

This is the required result.

### Conclusion

Therefore, the algorithm correctly calculates the **sum of the first n numbers**.

---

# PYQ 2024 — 7 Marks

## Question

**Prove the correctness of the following algorithm, which finds the minimum number from the given array of n numbers.**

Assume the algorithm is:

```text
MINIMUM(A, n)

min = A[0]

for i = 1 to n-1:
    if A[i] < min:
        min = A[i]

return min
```

## Answer

### Loop Invariant

> At the beginning of every iteration, `min` contains the smallest value among all elements examined so far.

### 1. Initialization

Initially:

```text
min = A[0]
```

Only the first element has been examined.

Therefore, `min` is the minimum among the elements examined so far.

Hence, the loop invariant is **true before the first iteration**.

### 2. Maintenance

Assume `min` is the smallest value among all previously examined elements.

Now compare `A[i]` with `min`.

#### Case 1:

```text
A[i] < min
```

The algorithm executes:

```text
min = A[i]
```

Therefore, `min` becomes the smallest value among all examined elements.

#### Case 2:

```text
A[i] >= min
```

The algorithm does not change `min`.

Therefore, `min` remains the smallest value among all examined elements.

Thus, in both cases, the loop invariant remains **true**.

### 3. Termination

The loop terminates after all `n` elements have been examined.

According to the loop invariant:

```text
min = smallest value among all examined elements
```

Since all `n` elements have now been examined:

```text
min = minimum element of the entire array
```

### Conclusion

Therefore, the given algorithm correctly finds the **minimum number in the array**.

---

# Quick Exam Revision

```text
LOOP INVARIANT PROOF

1. Initialization
   ↓
   Is invariant true initially?

2. Maintenance
   ↓
   Does it remain true after every iteration?

3. Termination
   ↓
   Does the invariant prove the required answer?
```

### Remember

**Initialization → True initially**

**Maintenance → Remains true**

**Termination → Gives correct answer**
