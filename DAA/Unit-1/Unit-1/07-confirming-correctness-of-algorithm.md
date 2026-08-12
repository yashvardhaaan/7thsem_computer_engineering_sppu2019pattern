# Confirming Correctness of Algorithm

## How to Check Whether an Algorithm Is Correct

An algorithm is **correct** if it produces the required output for **every valid input** and terminates properly.

---

## Actual Steps to Check Correctness

### Step 1: Understand the Problem

Clearly identify:

* What is the **input**?
* What is the **expected output**?
* What conditions must the output satisfy?

### Step 2: Check Initialization

Check whether all variables are initialized correctly.

Example:

```text
min = A[0]
```

For a minimum-finding algorithm, this is a valid starting point because the first element is initially the smallest element examined.

---

### Step 3: Check Each Algorithmic Step

Go through the algorithm step-by-step and ask:

> Does each operation correctly move the algorithm toward the required result?

Check:

* Conditions
* Calculations
* Variable updates
* Loop logic
* Return statement

---

### Step 4: Check the Loop

For an algorithm containing a loop, check:

1. Is the loop initialized correctly?
2. Is the condition correct?
3. Is the loop variable updated?
4. Will the loop terminate?
5. Is the required property maintained during every iteration?

---

### Step 5: Test Important Cases

Test the algorithm using different valid inputs.

```text
Normal case
Small input
Large input
Boundary case
Duplicate values
Negative values
Already sorted data
Reverse sorted data
```

Example for finding minimum:

```text
Input:  [5, 2, 8]
Output: 2

Input:  [10]
Output: 10

Input:  [-5, -10, -2]
Output: -10

Input:  [5, 5, 5]
Output: 5
```

Testing helps find errors, but **testing alone cannot mathematically prove correctness for every possible input**.

---

# Formal Methods for Proving Correctness

There are three important methods relevant to your PYQs:

```text
              PROVE CORRECTNESS
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
 Loop Invariant   Mathematical   Direct /
                  Induction      Logical Proof
        │            │
        └────────────┤
                     ▼
              Counterexample
              → proves WRONG
```

---

# 1. Loop Invariant Method

Used mainly for **iterative/loop-based algorithms**.

### Three Steps

```text
Initialization
      ↓
Maintenance
      ↓
Termination
```

### Initialization

Show that the invariant is true **before the first iteration**.

### Maintenance

Assume it is true before an iteration and prove that it remains true after the iteration.

### Termination

When the loop terminates, use the invariant to prove that the required result has been obtained.

### Example

For finding the minimum:

> **Loop invariant:** At the beginning of every iteration, `min` contains the smallest value among all elements examined so far.

Then prove:

```text
Initialization → True initially
Maintenance    → Remains true
Termination    → Gives the minimum
```

Therefore, the algorithm is correct.

---

# 2. Mathematical Induction

Useful when correctness depends on an integer `n`.

### Steps

```text
Base Case
    ↓
Induction Hypothesis
    ↓
Induction Step
    ↓
Conclusion
```

### Base Case

Prove that the algorithm works for the smallest value, usually `n = 1`.

### Induction Hypothesis

Assume the algorithm works correctly for `n = k`.

### Induction Step

Prove that if it works for `k`, it also works for `k + 1`.

### Conclusion

Therefore, the algorithm works for all valid values of `n`.

---

# 3. Counterexample

A **counterexample** is a valid input for which an algorithm produces an incorrect result.

It is used to prove that an algorithm is **not correct**.

### Steps

```text
Take the algorithm
       ↓
Choose a valid input
       ↓
Run the algorithm
       ↓
Find actual output
       ↓
Find expected output
       ↓
Compare them
       ↓
Different?
       ↓
Algorithm is incorrect
```

### Example

Suppose an algorithm claims:

> "This algorithm finds the maximum element of any array."

But it fails for:

```text
A = [5, 10, 3]
```

If the algorithm returns:

```text
5
```

while the correct answer is:

```text
10
```

then `[5, 10, 3]` is a **counterexample**.

Therefore, the algorithm is **not correct**.

---

# Important Rule

### To prove correctness:

You must establish that the algorithm works for **all valid inputs**.

```text
ALL valid inputs
       ↓
Correct output
       ↓
Algorithm is correct
```

### To prove incorrectness:

You need only **one valid counterexample**.

```text
ONE valid input
       ↓
Wrong output
       ↓
Algorithm is incorrect
```

---

# Final Exam Approach

Whenever you get a question:

> **"Prove that the following algorithm is correct."**

Use this approach:

```text
1. Understand input and expected output
             ↓
2. Check initialization
             ↓
3. Check algorithmic logic
             ↓
4. Check loop condition and updates
             ↓
5. Establish a property/invariant
             ↓
6. Prove it remains true
             ↓
7. Prove termination
             ↓
8. Show final output is correct
             ↓
9. Conclusion: Algorithm is correct
```

## Quick Revision

| Situation                     | Method                     |
| ----------------------------- | -------------------------- |
| Loop-based algorithm          | **Loop Invariant**         |
| Problem involving `n`         | **Mathematical Induction** |
| Show an algorithm is wrong    | **Counterexample**         |
| Simple mathematical algorithm | **Direct/Logical Proof**   |

### One-Line Memory Trick

> **To prove RIGHT → ALL cases. To prove WRONG → ONE counterexample.**
