# What are Algorithms?

## 1. Introduction

An **algorithm** is a finite, well-defined sequence of steps used to solve a particular problem or perform a particular computation.

In simple words:

> **An algorithm tells us what to do, step by step, to obtain the required result from a given input.**

An algorithm takes **input**, processes it through a sequence of operations, and produces the required **output**.

### Basic Representation

```text
       Input
         │
         ▼
   ┌─────────────┐
   │  Algorithm  │
   │             │
   │ Step 1      │
   │ Step 2      │
   │ Step 3      │
   │    ...      │
   └─────────────┘
         │
         ▼
       Output
```

### Example

Problem:

> Find the largest number among three numbers.

Input:

```text
10, 25, 15
```

Algorithm:

```text
1. Read a, b and c.
2. Assume a is the largest.
3. Compare b with the current largest.
4. If b is larger, make b the largest.
5. Compare c with the current largest.
6. If c is larger, make c the largest.
7. Output the largest value.
```

Output:

```text
25
```

---

# 2. Why Do We Need Algorithms?

Algorithms are fundamental to computer science because a computer by itself does not know how to solve a problem.

A computer can execute instructions extremely quickly, but the **instructions must be designed correctly and efficiently**.

For example, suppose we need to search for a name in a database containing one million names.

We could:

* Check every name one by one.
* Use a more efficient searching technique.
* Organize the data first and then use a faster search algorithm.

All approaches may produce the correct answer, but they can require dramatically different amounts of time.

Therefore:

> **Algorithms determine how efficiently computational resources are used to solve problems.**

---

# 3. Algorithms and Computer Programs

An algorithm and a program are related but they are not the same thing.

### Algorithm

An algorithm is the **logical procedure** used to solve a problem.

It is independent of a particular programming language.

### Program

A program is an **implementation of an algorithm in a programming language**.

```text
Problem
   │
   ▼
Algorithm
   │
   ▼
Implementation
   │
   ▼
Program
   │
   ▼
Execution
   │
   ▼
Output
```

### Example

Algorithm:

```text
1. Read two numbers.
2. Add them.
3. Display the result.
```

C++ implementation:

```cpp
int a, b;
cin >> a >> b;

int sum = a + b;

cout << sum;
```

Java implementation:

```java
int a = 10;
int b = 20;

int sum = a + b;

System.out.println(sum);
```

The **algorithm is the same**, even though the implementation languages are different.

---

# 4. Characteristics of an Algorithm

A good algorithm generally has the following characteristics.

## 4.1 Input

An algorithm may accept **zero or more inputs**.

Example:

```text
Input: n
```

For sorting:

```text
Input: array of n numbers
```

---

## 4.2 Output

An algorithm must produce at least one output.

Example:

```text
Input: 10, 20
Output: 30
```

---

## 4.3 Definiteness

Every step of an algorithm must be **clear and unambiguous**.

Bad instruction:

```text
Do something with the number.
```

Good instruction:

```text
Multiply the number by 2.
```

The person or computer executing the algorithm should know exactly what every step means.

---

## 4.4 Finiteness

An algorithm must terminate after a **finite number of steps**.

For example:

```text
1. Read n.
2. Add numbers from 1 to n.
3. Display result.
4. Stop.
```

An algorithm that never terminates for a valid input is not a proper terminating algorithm.

---

## 4.5 Effectiveness

Each operation should be sufficiently basic that it can actually be carried out.

For example:

```text
Add two numbers.
Compare two numbers.
Assign a value.
```

These are effective operations.

---

## 4.6 Correctness

An algorithm should produce the **correct output for every valid input**.

Correctness is extremely important because an algorithm that is fast but produces incorrect results is useless.

Example:

If an algorithm is designed to find the minimum element of an array:

```text
Input:
8 3 10 2 6

Expected output:
2
```

If it produces `3`, the algorithm is incorrect.

---

## 4.7 Generality

An algorithm should solve a **class of problems**, not just one particular instance.

For example, an algorithm for finding the maximum element should work for:

```text
5 9 2
```

as well as:

```text
100 45 78 23 91
```

and not be designed only for one fixed input.

---

# 5. Example: Algorithm for Linear Search

### Problem

Find whether a given element exists in an array.

Input:

```text
A = [10, 25, 30, 45, 50]
key = 30
```

### Algorithm

```text
1. Start from the first element.
2. Compare the current element with key.
3. If they are equal, return the position.
4. Otherwise move to the next element.
5. Repeat until the element is found or the array ends.
6. If the array ends, report that the element is not present.
```

### Diagram

```text
[10] → [25] → [30] → [45] → [50]
  │       │       │
  ✗       ✗       ✓
                  │
                  ▼
               Found
```

This is called **linear search** because elements are examined sequentially.

---

# 6. Algorithm vs. Brute-Force Instructions

An algorithm is more than simply giving a solution idea.

It should provide a **systematic procedure** that can be followed for different valid inputs.

For example:

> "Look through the list and find the smallest number."

This describes the idea but is not sufficiently detailed.

A more precise algorithm is:

```text
1. Set minimum = first element.
2. Compare minimum with the next element.
3. If the next element is smaller, update minimum.
4. Continue until all elements have been examined.
5. Return minimum.
```

The second description is deterministic and implementable.

---

# 7. Algorithms as a Problem-Solving Tool

Algorithm development is an important part of problem solving.

A typical problem-solving process is:

```text
       Problem
          │
          ▼
   Understand Problem
          │
          ▼
     Identify Input
     and Output
          │
          ▼
    Design Algorithm
          │
          ▼
   Prove Correctness
          │
          ▼
 Analyze Complexity
          │
          ▼
   Implement Program
          │
          ▼
       Test It
```

This shows that algorithm design comes **before implementation**.

---

# 8. Why Algorithms Matter Even With Fast Computers

### PYQ — 2023 [2]

> "Given the fastest computer and hypothetically infinite memory, do we still need to study algorithms? Justify."

### Answer

Yes, algorithms are still necessary even if we assume a very fast computer and unlimited memory.

The reason is that computational problems can have dramatically different levels of complexity.

For example, consider two algorithms:

```text
Algorithm A → O(n)

Algorithm B → O(n²)
```

For a small input, the difference may not be significant.

But for a very large input, the difference becomes enormous.

For:

```text
n = 1,000,000
```

approximately:

```text
O(n)  → 1,000,000 operations

O(n²) → 1,000,000,000,000 operations
```

Therefore, faster hardware cannot completely compensate for an inefficient algorithm.

Algorithms are also needed because they:

* provide systematic solutions;
* ensure correctness;
* improve efficiency;
* reduce execution time;
* reduce resource consumption;
* allow problems to be solved at large scale;
* determine whether a problem is computationally feasible.

### Exam conclusion

> **Technology provides computational power, but algorithms determine how effectively that power is used.**

---

# 9. Algorithms as Technology

### PYQ — 2023 [6]

> "How can we relate algorithms to technology? Briefly explain."

Algorithms are an important form of technology because they determine how computers process information and solve problems.

Modern technologies depend heavily on algorithms.

### Examples

| Technology              | Example of Algorithmic Use                |
| ----------------------- | ----------------------------------------- |
| Search engines          | Ranking and searching algorithms          |
| GPS                     | Shortest-path algorithms                  |
| Social media            | Recommendation algorithms                 |
| E-commerce              | Recommendation and ranking algorithms     |
| Banking                 | Encryption and fraud-detection algorithms |
| Operating systems       | Scheduling algorithms                     |
| Databases               | Searching and indexing algorithms         |
| Artificial Intelligence | Machine-learning algorithms               |
| Networking              | Routing algorithms                        |

### Relationship

```text
Technology
    │
    ├── Hardware
    │
    ├── Software
    │
    └── Algorithms
             │
             ▼
      Efficient computation
```

An improvement in algorithm design can sometimes provide a larger performance improvement than simply purchasing faster hardware.

---

# 10. Algorithm Efficiency

Two algorithms can solve the same problem but require different amounts of resources.

The main resources considered are:

### Time

How much computational work is required?

Known as:

> **Time Complexity**

### Space

How much additional memory is required?

Known as:

> **Space Complexity**

Example:

```text
Algorithm A
Time:  O(n)
Space: O(1)

Algorithm B
Time:  O(n²)
Space: O(n)
```

Depending on the application, Algorithm A may be preferable.

Detailed analysis of these concepts is covered in **Unit II**.

---

# 11. Correctness vs Efficiency

A good algorithm should ideally satisfy both:

```text
          Good Algorithm
             /       \
            /         \
     Correctness     Efficiency
```

### Correctness

Does it produce the correct answer?

### Efficiency

Does it use reasonable time and memory?

An algorithm that is:

```text
Fast + Wrong = Useless
```

An algorithm that is:

```text
Correct + Extremely Inefficient = May be impractical
```

Therefore algorithm design involves both **correctness and efficiency**.

---

# 12. Real-Life Analogy

An algorithm can be compared to a recipe.

Suppose we want to prepare tea.

```text
Input:
Water + milk + tea + sugar

Algorithm:
1. Boil water.
2. Add tea.
3. Add milk.
4. Add sugar.
5. Boil for a specified time.
6. Filter and serve.

Output:
Tea
```

The recipe provides a sequence of instructions to transform inputs into the desired output.

Similarly, a computer algorithm transforms input data into the required output.

---

# 13. Important Terms

### Problem

A task for which we need to determine a solution.

### Instance

A particular input to a problem.

Example:

```text
Problem:
Sort an array.

Instance:
[8, 3, 5, 1]
```

### Input

Data provided to an algorithm.

### Output

Result produced by an algorithm.

### Algorithm

A finite and well-defined procedure for solving a problem.

### Complexity

The amount of computational resources required by an algorithm.

---

# 14. Properties of a Good Algorithm

A good algorithm should be:

```text
              Good Algorithm
                    │
       ┌────────────┼────────────┐
       ▼            ▼            ▼
   Correct       Efficient     Clear
       │            │            │
       ▼            ▼            ▼
 Terminates    Uses fewer    Unambiguous
               resources
```

Important properties:

1. Correct
2. Finite
3. Definite
4. Effective
5. General
6. Efficient
7. Easy to understand and implement

---

# 15. Key Exam Points

Remember these points for theory questions:

* An algorithm is a **finite sequence of well-defined steps**.
* It transforms **input into output**.
* Every step should be **unambiguous**.
* An algorithm should **terminate**.
* It should be **correct for all valid inputs**.
* Algorithms are independent of programming languages.
* A program is an implementation of an algorithm.
* Algorithms are fundamental to modern technology.
* Faster hardware does **not eliminate the need for efficient algorithms**.
* Algorithm efficiency is mainly measured using **time and space complexity**.
* Correctness and efficiency are both important.

---

# 16. PYQs

## 2023 — 2 Marks

> Given the fastest computer and hypothetically infinite memory, do we still need to study algorithms? Justify.

### Answer keywords

* Yes.
* Different algorithms have different complexities.
* Large input sizes magnify efficiency differences.
* Hardware cannot completely compensate for poor algorithms.
* Algorithms ensure correctness and feasibility.

---

## 2023 — 6 Marks

> How can we relate algorithms to technology? Briefly explain.

### Answer structure

1. Define algorithm.
2. Explain relationship between algorithms and technology.
3. Give examples:

   * Search engines
   * GPS
   * Networking
   * AI
   * Databases
4. Explain efficiency.
5. Conclude that algorithms are a fundamental component of modern technology.

---

# 17. Possible Exam Questions

### Short Answer

1. What is an algorithm?
2. Define algorithm.
3. List the characteristics of an algorithm.
4. Differentiate between an algorithm and a program.
5. Why are algorithms important?

### Medium/Long Answer

1. Explain the characteristics of an algorithm with examples.
2. Explain the role of algorithms in computing.
3. Explain the relationship between algorithms and technology.
4. Why do we need algorithms even with powerful computers?
5. Explain algorithm as a problem-solving technique.

---

# 18. Quick Revision

```text
ALGORITHM

Definition:
Finite + definite + effective sequence of steps
used to solve a problem.

Input
  ↓
Algorithm
  ↓
Output

Main properties:
✓ Input
✓ Output
✓ Definiteness
✓ Finiteness
✓ Effectiveness
✓ Correctness
✓ Generality

Why important?
✓ Correct solutions
✓ Efficiency
✓ Scalability
✓ Resource management
✓ Foundation of technology

Algorithm ≠ Program

Algorithm = Solution procedure
Program   = Implementation of procedure

Efficiency:
Time Complexity + Space Complexity
```

## One-Line Definition for Exam

> **An algorithm is a finite sequence of unambiguous and effective computational steps that takes zero or more inputs and produces one or more outputs to solve a particular problem.**
