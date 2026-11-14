# 4. Binary Counter — Amortized Analysis



Important SPPU topic — 3 PYQ occurrences

6–8 marks



Your question papers test binary counter analysis using two methods:

1. Aggregate Method — May/June 2024 and May/June 2025 (6 marks each).
2. Potential Function Method — Nov/Dec 2024 (8 marks).

We will prepare both methods.

## 1. Binary Counter and Increment Operation

A binary counter is a digital counter that stores numbers in binary form using bits (0 and 1).

A k-bit binary counter can represent values from:

\\[ 0\text{ to }2^k-1 \\]

An increment operation increases the counter value by 1.

Example: 4-bit binary counter

Increment sequence

0000

0001

1 flips

0001

0010

2 flips

0010

0011

1 flips

0011

0100

3 flips

0100

0101

1 flips

0101

0110

2 flips

0110

0111

1 flips

0111

1000

4 flips

How increment works:

- If the rightmost bit is 0, change it to 1 and stop.
- If the rightmost bit is 1, change it to 0 and carry to the next bit.
- Continue until a 0 is changed to 1.

For example:

\\[ 0111+1=1000 \\]

Here, four bits are flipped.

## 2. Number of bit flips

In a k-bit counter:

- Bit 0 flips on every increment.
- Bit 1 flips on every 2 increments.
- Bit 2 flips on every 4 increments.
- Bit 3 flips on every 8 increments.
- In general, bit \\(i\\) flips once every \\(2^i\\) increments.

Therefore, during \\(n\\) increment operations:

| Bit position | Maximum flips              |
| ------------ | -------------------------- |
| Bit 0        | \\(n\\)                    |
| Bit 1        | \\(\lfloor n/2\rfloor\\)   |
| Bit 2        | \\(\lfloor n/4\rfloor\\)   |
| Bit 3        | \\(\lfloor n/8\rfloor\\)   |
| Bit i        | \\(\lfloor n/2^i\rfloor\\) |

## 3. Aggregate Method — Numerical analysis

PYQ: May/June 2024 and May/June 2025 — 6 marks

Step 1: Calculate total cost

Let \\(n\\) be the number of increment operations.

The total number of bit flips is:

\\[ T(n)=n+\left\lfloor\frac n2\right\rfloor+ \left\lfloor\frac n4\right\rfloor+\cdots+ \left\lfloor\frac n{2^{k-1}}\right\rfloor \\]

Ignoring floor values gives an upper bound:

\\[ T(n)\leq n+\frac n2+\frac n4+\cdots \\]

Using the geometric series:

\\[ T(n)\<n\left(1+\frac12+\frac14+\cdots\right) \\]

Since:

\\[ 1+\frac12+\frac14+\cdots=2 \\]

Therefore:

\\[ \boxed{T(n)<2n} \\]

Step 2: Calculate amortized cost

According to Aggregate Analysis:

\\[ \text{Amortized cost}=\frac{\text{Total cost}}{\text{Number of operations}} \\]

\\[ A(n)=\frac{T(n)}n \\]

\\[ A(n)<\frac{2n}{n} \\]

\\[ \boxed{A(n)<2=O(1)} \\]

Final result

- Total cost of \\(n\\) increments: \\(O(n)\\).
- Amortized cost per increment: \\(O(1)\\).
- Worst-case cost of one increment: \\(O(k)\\).

Conclusion: Although an individual increment may flip all \\(k\\) bits, the average cost over a sequence of increments is constant.

## 4. Potential Function Method for Binary Counter

PYQ: Nov/Dec 2024 Q6(a) — 8 marks

The Potential Function Method can also be applied to a binary counter.

### Step 1: Define the potential function

Let the potential be the number of 1s in the binary counter.

\\[ \boxed{\Phi(D)=\text{Number of 1-bits}} \\]

Initially, all bits are zero.

\\[ \Phi_0=0 \\]

The potential is always non-negative.

### Step 2: Actual cost of increment

Suppose there are \\(t\\) consecutive 1s at the right end of the counter.

During increment:

- The \\(t\\) trailing 1s become 0.
- The preceding 0 becomes 1.

Therefore, the number of bit flips is:

\\[ c_i=t+1 \\]

### Step 3: Change in potential

Before increment, there are \\(t\\) trailing 1s.

After increment, these become zero and one new bit becomes 1.

Therefore:

\\[ \Delta\Phi=1-t \\]

### Step 4: Calculate amortized cost

Formula:

\\[ \hat c_i=c_i+\Delta\Phi \\]

Substituting:

\\[ \hat c_i=(t+1)+(1-t) \\]

\\[ \boxed{\hat c_i=2} \\]

Thus, the amortized cost of each increment is at most 2.

For \\(n\\) increments:

\\[ \boxed{T(n)\leq2n} \\]

Therefore, amortized cost per increment is:

\\[ \boxed{O(1)} \\]

Note: If the counter wraps around from all 1s to all 0s, all \\(k\\) bits flip and the potential decreases by \\(k\\). The amortized cost for that operation is \\(k-k=0\\), which also satisfies the upper bound of 2.

## 5. Nov/Dec 2024 question: Why can the Potential Function Method not be used?

The question's wording contains a mathematical misconception.

Correct answer: The Potential Function Method CAN be used to analyse a binary counter.

The proof is:

1. Define potential as the number of 1-bits.
2. Initial potential is zero.
3. Potential never becomes negative.
4. Actual cost for an increment with \\(t\\) trailing ones is \\(t+1\\).
5. Change in potential is \\(1-t\\).

Therefore:

\\[ \hat c=(t+1)+(1-t)=2 \\]

Hence, the amortized cost is \\(O(1)\\).

What are the actual limitations?

The Potential Function Method can become difficult when:

- It is difficult to identify a suitable potential function.
- The potential function becomes mathematically complicated.
- Calculating the change in potential is difficult.
- A proposed potential function becomes negative, invalidating the usual upper-bound argument.

These are limitations of choosing a suitable potential function, not reasons why binary counters cannot be analysed.

## 6. Aggregate vs Potential Method for Binary Counter

| Feature        | Aggregate Method      | Potential Method       |
| -------------- | --------------------- | ---------------------- |
| Main idea      | Count total bit flips | Count stored potential |
| Formula        | \\(T(n)/n\\)          | \\(c_i+\Delta\Phi\\)   |
| Calculation    | Geometric series      | Number of 1-bits       |
| Total cost     | Less than \\(2n\\)    | At most \\(2n\\)       |
| Amortized cost | \\(O(1)\\)            | \\(O(1)\\)             |

## 7. Important formulas for exams

| Concept                     | Formula                                     |
| --------------------------- | ------------------------------------------- |
| Maximum counter value       | \\(2^k-1\\)                                 |
| Total bit flips             | \\(\sum\_{i=0}^{k-1}\lfloor n/2^i\rfloor\\) |
| Aggregate total cost        | \\(T(n)<2n\\)                               |
| Aggregate amortized cost    | \\(O(1)\\)                                  |
| Potential function          | \\(\Phi(D)=\text{Number of 1s}\\)           |
| Potential amortized cost    | \\(c_i+\Phi_i-\Phi\_{i-1}\\)                |
| Potential method result     | At most 2 per increment                     |
| Single increment worst case | \\(O(k)\\)                                  |

## 8. Exam preparation checklist

Preparation progress

0/8

Binary counter definition and increment operation

4-bit binary counter increment example

Number of bit flips at each position

Aggregate Method derivation using geometric series

Amortized cost per increment

Potential function definition

Binary counter potential function proof

Limitations of choosing a potential function

My exam recommendation:

- For 6 marks: Prepare the Aggregate Method derivation completely.
- For 8 marks: Prepare the Potential Method derivation, including actual cost, potential change and amortized cost.
- Memorize the key result:

\\[ \boxed{\text{Amortized cost per increment}=O(1)} \\]

You should be able to solve this topic using both methods independently.