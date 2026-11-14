# 1. Aggregate Analysis — Amortized Analysis



Very important SPPU topic — 5 occurrences

6–9 marks



Aggregate Analysis is a method of Amortized Analysis used to calculate the average cost per operation over a sequence of operations.

Your PYQs cover:

- Definition and explanation of Aggregate Analysis.
- Aggregate Analysis with an example.
- Advantages and disadvantages.
- Amortized analysis of a k-bit binary counter.

## 1. Definition of Aggregate Analysis

Aggregate Analysis is a technique of amortized analysis in which the total cost of a sequence of operations is calculated and divided by the number of operations to obtain the amortized cost per operation.

It considers the overall cost of a sequence rather than analysing each operation independently.

### Mathematical representation

Suppose a sequence contains \\(n\\) operations.

Let:

- \\(T(n)\\) = total cost of all \\(n\\) operations.
- \\(n\\) = total number of operations.
- \\(A(n)\\) = amortized cost per operation.

Then:

\\[ \boxed{A(n)=\frac{T(n)}{n}} \\]

Important: Aggregate analysis gives an amortized bound on the total sequence. It is not simply the average of the best and worst cases of individual operations.

## 2. Basic working

1. Identify the sequence of operations.
2. Calculate the actual cost of each operation.
3. Calculate the total cost of all operations.
4. Divide the total cost by the number of operations.
5. Obtain the amortized cost per operation.

Example:

Suppose 10 operations have a total cost of 50.

\\[ A(10)=\frac{50}{10}=5 \\]

Therefore, the amortized cost per operation is 5.

## 3. Aggregate Analysis using Stack Operations

Consider a stack supporting three operations:

- `PUSH(x)` — inserts an element.
- `POP()` — removes the top element.
- `MULTIPOP(k)` — removes up to k elements from the stack.

Assume each individual push or pop costs 1 unit.

### Actual cost

| Operation   | Actual cost                         |
| ----------- | ----------------------------------- |
| PUSH        | 1                                   |
| POP         | 1                                   |
| MULTIPOP(k) | Number of elements actually removed |

A single MULTIPOP operation can take \\(O(n)\\) time if the stack contains \\(n\\) elements.

However, consider a sequence of \\(n\\) stack operations.

Key observation:

- Each element can be pushed only once.
- Each element can be popped only once.
- Therefore, total successful pop operations cannot exceed total push operations.

Hence:

\\[ \text{Total PUSH cost}\leq n \\]

\\[ \text{Total POP cost}\leq n \\]

Therefore:

\\[ T(n)\leq n+n=2n \\]

Amortized cost:

\\[ A(n)=\frac{T(n)}{n} \\]

\\[ A(n)\leq\frac{2n}{n} \\]

\\[ \boxed{A(n)\leq 2=O(1)} \\]

Result: O(1) amortized cost

Conclusion: Although MULTIPOP can take \\(O(n)\\) time individually, the amortized cost of stack operations is \\(O(1)\\) per operation.

## 4. Aggregate Analysis of k-bit Binary Counter

PYQ: May/June 2025 Q5(a) — 6 marks

Question: Analyse the amortized cost of incrementing a k-bit binary counter using the Aggregate Method.

### Definition

A k-bit binary counter contains k bits and represents numbers from:

\\[ 0\text{ to }2^k-1 \\]

Initially, all bits are zero.

Whenever an increment operation is performed, the counter increases by 1.

Example of a 4-bit counter:

Binary counter increment example

# 0000

Value 0

# 0001

Value 1

# 0010

Value 2

# 0011

Value 3

# 0100

Value 4

# 0101

Value 5

# 0110

Value 6

# 0111

Value 7

Each increment flips one or more bits from right to left.

### Step 1: Cost of increment operation

The increment operation changes bits as follows:

- The rightmost bit always flips.
- The second bit flips after every 2 increments.
- The third bit flips after every 4 increments.
- The fourth bit flips after every 8 increments.

For example:

| Increment | Counter change | Number of bit flips |
| --------- | -------------- | ------------------- |
| 1         | 0000 → 0001    | 1                   |
| 2         | 0001 → 0010    | 2                   |
| 3         | 0010 → 0011    | 1                   |
| 4         | 0011 → 0100    | 3                   |
| 5         | 0100 → 0101    | 1                   |
| 6         | 0101 → 0110    | 2                   |
| 7         | 0110 → 0111    | 1                   |
| 8         | 0111 → 1000    | 4                   |

### Step 2: Calculate total cost

For n increment operations:

| Bit position      | Maximum number of flips    |
| ----------------- | -------------------------- |
| Bit 0 (rightmost) | \\(n\\)                    |
| Bit 1             | \\(\lfloor n/2\rfloor\\)   |
| Bit 2             | \\(\lfloor n/4\rfloor\\)   |
| Bit 3             | \\(\lfloor n/8\rfloor\\)   |
| Bit i             | \\(\lfloor n/2^i\rfloor\\) |

Therefore, total cost is:

\\[ T(n)=n+\left\lfloor\frac n2\right\rfloor+ \left\lfloor\frac n4\right\rfloor+\cdots \\]

Ignoring the floor values for an upper bound:

\\[ T(n)\leq n+\frac n2+\frac n4+\frac n8+\cdots \\]

Using the geometric series:

\\[ T(n)\<n\left(1+\frac12+\frac14+\cdots\right) \\]

Since the infinite geometric series equals 2:

\\[ \boxed{T(n)<2n} \\]

### Step 3: Calculate amortized cost

\\[ A(n)=\frac{T(n)}n \\]

\\[ A(n)<\frac{2n}{n} \\]

\\[ \boxed{A(n)<2=O(1)} \\]

Final result: O(1) amortized cost per increment

### Important observation

- Worst-case cost of a single increment = \\(O(k)\\), because all k bits may flip.
- Amortized cost per increment = \\(O(1)\\).
- Total cost of n increments = \\(O(n)\\).

This is why Aggregate Analysis is useful: it shows that occasional expensive operations do not necessarily make the entire sequence expensive.

## 5. Advantages of Aggregate Analysis

1. Simple method: Easy to understand and calculate.
2. Sequence-based analysis: Considers the total cost of a sequence of operations.
3. Shows amortized efficiency: Demonstrates that expensive individual operations may have low average sequence cost.
4. No extra accounting required: Does not require assigning credits to individual operations.
5. Useful for data structures: Can analyse stacks, queues, binary counters and dynamic arrays.

## 6. Disadvantages of Aggregate Analysis

1. Requires sequence analysis: Total cost must be calculated for the entire sequence.
2. Not suitable for every problem: Some complex data structures are difficult to analyse using this method.
3. Does not track individual operation costs: It gives an overall amortized bound, not a separate credit balance for each operation.
4. May require mathematical derivation: Finding the total cost can be difficult for complicated operations.
5. Less flexible than accounting analysis: It does not allow assigning different amortized charges to different operations as conveniently.

## 7. Aggregate Method vs Accounting Method

This comparison is useful because your Nov/Dec 2022 PYQ combines Aggregate Analysis and Accounting Method.

| Feature     | Aggregate Method                  | Accounting Method                             |
| ----------- | --------------------------------- | --------------------------------------------- |
| Approach    | Calculates total sequence cost    | Assigns an amortized charge to each operation |
| Calculation | Total cost ÷ number of operations | Actual cost plus or minus stored credits      |
| Credits     | Not used                          | Used                                          |
| Complexity  | Generally simpler                 | Requires credit accounting                    |
| Main focus  | Overall sequence                  | Individual operations and saved credits       |

Accounting Method principle: Some operations are charged more than their actual cost, and the extra amount is stored as credit to pay for future expensive operations.

## 8. Quick revision of important formulas

| Concept                       | Formula / Result              |
| ----------------------------- | ----------------------------- |
| Aggregate cost                | \\(T(n)=\sum\_{i=1}^{n}c_i\\) |
| Amortized cost                | \\(A(n)=T(n)/n\\)             |
| Stack operations              | \\(T(n)\leq 2n\\)             |
| Stack amortized cost          | \\(O(1)\\)                    |
| Binary counter total cost     | \\(T(n)<2n\\)                 |
| Binary counter amortized cost | \\(O(1)\\)                    |
| Single increment worst case   | \\(O(k)\\)                    |

## 9. PYQ preparation checklist

Preparation progress

0/7

Definition and principle of Aggregate Analysis

Aggregate cost and amortized cost formula

Stack PUSH, POP and MULTIPOP example

k-bit binary counter increment example

Total bit-flip calculation using geometric series

Advantages and disadvantages

Aggregate Method vs Accounting Method

My exam recommendation: Give maximum attention to the binary counter numerical and stack example. Memorize the geometric series derivation \\(T(n)<2n\\), because it is the key mathematical step in the binary-counter question.