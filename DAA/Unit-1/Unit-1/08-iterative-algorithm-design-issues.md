# Iterative Algorithm Design Issues

> **VERY IMPORTANT — Repeated PYQ (2022, 2023, 2024, 2025)**

---

# 1. What is an Iterative Algorithm?

An **iterative algorithm** is an algorithm that repeatedly executes a set of instructions using a **loop** until a particular condition becomes false.

Common looping structures are:

* `for`
* `while`
* `do-while`

### General Structure

```text
        START
          │
          ▼
    Initialize variables
          │
          ▼
    Check loop condition
          │
       ┌──┴──┐
      YES    NO
       │      │
       ▼      ▼
  Execute    STOP
   body
       │
       ▼
  Update variables
       │
       └──────────► Check condition
```

### Example

```text
sum = 0

for i = 1 to n:
    sum = sum + i

return sum
```

The loop repeatedly executes:

```text
sum = sum + i
```

until all values from `1` to `n` have been processed.

---

# 2. Why Use Iterative Algorithms?

Iterative algorithms are commonly used because they:

* Are easy to understand for repetitive tasks.
* Usually use less memory than recursive solutions.
* Avoid recursive function-call overhead.
* Are suitable for processing arrays, lists and large datasets.
* Often provide predictable performance.

### Example

Finding the sum of an array:

```text
sum = 0

for i = 0 to n-1:
    sum = sum + A[i]
```

Instead of writing separate instructions for every element, the loop handles all elements.

---

# 3. Iterative Algorithm Design Issues

Designing an iterative algorithm requires careful handling of:

1. **Initialization**
2. **Loop condition**
3. **Loop variable update**
4. **Termination**
5. **Correctness / Loop invariant**
6. **Boundary conditions**
7. **Off-by-one errors**
8. **Infinite loops**
9. **Unnecessary iterations**
10. **Variable modification and state management**

These issues can cause an algorithm to produce incorrect results, run forever, or perform unnecessary work.

---

# 4. Issue 1 — Initialization

The variables used by the loop must be initialized correctly before the loop begins.

### Incorrect

```text
sum = 0

for i = 0 to n:
    sum = sum + i
```

If the intended problem is:

```text
1 + 2 + ... + n
```

starting from `i = 0` is unnecessary.

### Correct

```text
sum = 0

for i = 1 to n:
    sum = sum + i
```

### Why is initialization important?

Incorrect initialization can cause:

* Wrong output
* Missing elements
* Extra elements
* Incorrect loop execution

---

# 5. Issue 2 — Incorrect Loop Condition

The loop condition determines **when the algorithm stops**.

A wrong condition can cause the algorithm to:

* Stop too early
* Process extra elements
* Access invalid memory
* Produce incorrect results

### Example

Suppose:

```text
A = [10, 20, 30, 40, 50]
```

Valid indexes are:

```text
0, 1, 2, 3, 4
```

### Incorrect

```text
for i = 0; i <= 5; i++:
    print(A[i])
```

When `i = 5`, the algorithm tries to access:

```text
A[5]
```

which is outside the valid range.

### Correct

```text
for i = 0; i < 5; i++:
    print(A[i])
```

---

# 6. Issue 3 — Failure to Update Loop Variable

Every iterative algorithm must make progress toward termination.

### Incorrect

```text
i = 0

while i < n:
    print(A[i])
```

`i` never changes.

Therefore:

```text
i = 0
   ↓
i < n
   ↓
print A[0]
   ↓
i is still 0
   ↓
i < n
   ↓
print A[0]
   ↓
...
```

This creates an **infinite loop**.

### Correct

```text
i = 0

while i < n:
    print(A[i])
    i = i + 1
```

Now:

```text
0 → 1 → 2 → 3 → ... → n
```

Eventually:

```text
i < n
```

becomes false.

---

# 7. Issue 4 — Infinite Loop

An **infinite loop** occurs when the termination condition never becomes false.

### Example

```text
i = 1

while i <= 10:
    print(i)
```

The value of `i` never changes.

Therefore the condition:

```text
i <= 10
```

always remains true.

### Correct

```text
i = 1

while i <= 10:
    print(i)
    i = i + 1
```

### Exam Point

> Every iterative algorithm must have a clear mechanism that moves it toward termination.

---

# 8. Issue 5 — Off-by-One Error

An **off-by-one error** occurs when a loop executes **one time too many or one time too few**.

This is one of the most common iterative programming errors.

### Example

Suppose an array contains `n` elements.

Valid indexes:

```text
0 to n-1
```

### Incorrect

```text
for i = 0; i <= n; i++:
    process(A[i])
```

The loop executes `n + 1` times.

It eventually tries:

```text
A[n]
```

which is invalid.

### Correct

```text
for i = 0; i < n; i++:
    process(A[i])
```

### Remember

For an array of size `n`:

```text
First index = 0
Last index  = n - 1
```

Therefore:

```text
i < n
```

is usually the correct condition.

---

# 9. Issue 6 — Incorrect Update

The update operation must move the algorithm toward termination.

### Example

```text
i = 10

while i > 0:
    print(i)
    i = i + 1
```

Here `i` increases:

```text
10 → 11 → 12 → 13 → ...
```

Therefore:

```text
i > 0
```

will always remain true.

### Correct

```text
i = 10

while i > 0:
    print(i)
    i = i - 1
```

Now:

```text
10 → 9 → 8 → ... → 1 → 0
```

The loop terminates.

### Key Principle

> The update operation must move the loop variable toward the termination condition.

---

# 10. Issue 7 — Boundary Conditions

Boundary conditions are especially important when dealing with:

* Arrays
* Strings
* Searching
* Sorting
* Mathematical ranges
* Empty input

### Example

Consider:

```text
A = [5, 10, 15]
```

If searching for an element:

```text
i = 0
while i < n:
    if A[i] == x:
        return i
    i++
```

The condition `i < n` ensures that the algorithm never accesses:

```text
A[n]
```

which is outside the array.

---

# 11. Issue 8 — Incorrect Handling of Empty Input

An algorithm should consider whether the input can be empty.

For example:

```text
A = []
```

Consider:

```text
min = A[0]
```

This is invalid if an empty array is allowed.

A better design is:

```text
if n == 0:
    return "No element"

min = A[0]
```

Then continue with the algorithm.

### Exam Point

> Always check whether the problem allows empty or minimum-size input.

---

# 12. Issue 9 — Maintaining Correct State

The variables used inside an iterative algorithm must represent the correct state after each iteration.

### Example: Sum

```text
sum = 0

for i = 1 to n:
    sum = sum + i
```

After each iteration:

```text
After i = 1 → sum = 1
After i = 2 → sum = 3
After i = 3 → sum = 6
After i = 4 → sum = 10
```

The variable `sum` maintains the required information.

This property can be formally expressed as a **loop invariant**.

---

# 13. Issue 10 — Loop Invariant

A **loop invariant** is a condition that remains true before and after every iteration.

It is useful for proving the correctness of an iterative algorithm.

### Example

```text
sum = 0

for i = 1 to n:
    sum = sum + i
```

Loop invariant:

> At the beginning of each iteration, `sum` contains the sum of all previously processed numbers.

### Proof

```text
Initialization
      ↓
Invariant is true
      ↓
Maintenance
      ↓
Invariant remains true
      ↓
Termination
      ↓
Correct result
```

---

# 14. Issue 11 — Unnecessary Iterations

An algorithm may be logically correct but perform unnecessary iterations.

### Example

Searching for an element:

```text
for i = 0 to n-1:
    if A[i] == x:
        found = true
```

If we only need to find the **first occurrence**, the algorithm should stop immediately.

### Better Design

```text
for i = 0 to n-1:
    if A[i] == x:
        return i

return -1
```

Once the element is found, continuing to search is unnecessary.

### Benefit

* Less execution time
* Better practical efficiency
* Avoids unnecessary operations

---

# 15. Issue 12 — Incorrect Loop Nesting

Nested loops can introduce logical and performance problems.

### Example

```text
for i = 0 to n-1:
    for j = 0 to n-1:
        process(A[i])
```

Here `A[i]` is processed `n` times for every `i`, even though the inner loop may not be necessary.

The algorithm may perform:

```text
n × n = n²
```

operations.

If only one operation per element is required:

```text
for i = 0 to n-1:
    process(A[i])
```

is sufficient.

### Lesson

> Do not introduce loops unless the repeated operation is actually required.

---

# 16. Issue 13 — Choosing the Correct Direction

Some iterative algorithms require increasing values; others require decreasing values.

### Increasing

```text
i = 0

while i < n:
    ...
    i++
```

### Decreasing

```text
i = n-1

while i >= 0:
    ...
    i--
```

Using the wrong direction can cause:

* Missing elements
* Infinite loops
* Incorrect output

---

# 17. Issue 14 — Modifying Data During Iteration

Changing the data structure being traversed can cause unexpected behavior.

### Example

Removing elements from an array/list while moving through it can cause indexes to shift.

```text
for i = 0 to size-1:
    if A[i] is unwanted:
        remove A[i]
```

After removal, later elements may shift left, potentially causing some elements to be skipped.

### Better Approach

Depending on the problem, use:

* A separate result structure
* Controlled index adjustment
* Iterator-based removal
* Appropriate filtering techniques

---

# 18. Issue 15 — Termination

An iterative algorithm must eventually stop.

A useful question during design is:

> **What changes in every iteration that guarantees the loop will eventually terminate?**

Example:

```text
i = 1

while i <= n:
    ...
    i = i + 1
```

Since `i` increases by 1 and `n` is finite:

```text
1 → 2 → 3 → ... → n → n+1
```

The condition becomes false.

Therefore, the loop terminates.

---

# 19. Complete Iterative Algorithm Design Checklist

When designing or checking an iterative algorithm, ask:

```text
             ITERATIVE ALGORITHM
                     │
                     ▼
          ┌─────────────────────┐
          │ 1. Initialization   │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 2. Condition        │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 3. Loop Body        │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 4. Update           │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 5. Termination      │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 6. Correctness      │
          └──────────┬──────────┘
                     ▼
          ┌─────────────────────┐
          │ 7. Efficiency       │
          └─────────────────────┘
```

---

# 20. Example — Correct Iterative Algorithm

### Problem

Find the sum of all elements in an array.

### Algorithm

```text
SUM(A, n)

sum = 0
i = 0

while i < n:
    sum = sum + A[i]
    i = i + 1

return sum
```

### Check the Design

| Design Issue   | Check                               |
| -------------- | ----------------------------------- |
| Initialization | `sum = 0`, `i = 0`                  |
| Condition      | `i < n`                             |
| Loop body      | Adds `A[i]`                         |
| Update         | `i = i + 1`                         |
| Termination    | `i` eventually reaches `n`          |
| Boundary       | Last valid index is `n-1`           |
| Correctness    | Every element is added exactly once |
| Time           | `O(n)`                              |
| Extra Space    | `O(1)`                              |

Therefore, this is a properly designed iterative algorithm.

---

# 21. Common Errors — Quick Table

| Issue                | Problem                       | Example                       |
| -------------------- | ----------------------------- | ----------------------------- |
| Wrong initialization | Incorrect starting state      | `i = 1` instead of `0`        |
| Wrong condition      | Too many/few iterations       | `i <= n`                      |
| No update            | Infinite loop                 | Missing `i++`                 |
| Wrong update         | Never reaches termination     | `i++` when it should be `i--` |
| Off-by-one           | One extra/missing iteration   | `i <= n`                      |
| No termination       | Loop never stops              | Condition always true         |
| Empty input ignored  | Invalid access                | `A[0]` when `n=0`             |
| Wrong state          | Incorrect intermediate result | Wrong `sum` update            |
| Unnecessary work     | Poor efficiency               | Continue after finding result |
| Wrong nesting        | Excessive computation         | Unnecessary nested loops      |
| Data modification    | Elements may be skipped       | Removing while iterating      |

---

# 22. Exam Answer — 7/8 Marks

### Definition

> An iterative algorithm is an algorithm that repeatedly executes a set of instructions using a loop until a termination condition is satisfied.

### Iterative Algorithm Design Issues

The major issues are:

1. **Initialization** — variables must be initialized correctly.
2. **Loop condition** — must correctly determine when the loop stops.
3. **Loop update** — the loop variable must be updated properly.
4. **Termination** — every iteration should make progress toward termination.
5. **Off-by-one errors** — avoid processing one extra or one fewer element.
6. **Boundary conditions** — handle first, last and empty inputs correctly.
7. **Loop invariant** — maintain the required property throughout iterations.
8. **Correctness** — ensure every required element/operation is processed correctly.
9. **Unnecessary iterations** — stop when the required result is obtained.
10. **Efficiency** — avoid unnecessary loops and operations.

### Conclusion

> Proper iterative algorithm design requires correct initialization, loop condition, update mechanism, termination, boundary handling and maintenance of correctness. These issues must be carefully considered to avoid infinite loops, incorrect results, runtime errors and unnecessary computation.

---

# PYQ Memory Trick

Remember:

**I-C-B-U-T-C-E**

```text
I → Initialization
C → Condition
B → Boundary
U → Update
T → Termination
C → Correctness
E → Efficiency
```

If the question asks **"Explain iterative algorithm design issues with examples"**, explain at least **6–8 issues with a small example for each** to comfortably cover a 7/8-mark answer.
