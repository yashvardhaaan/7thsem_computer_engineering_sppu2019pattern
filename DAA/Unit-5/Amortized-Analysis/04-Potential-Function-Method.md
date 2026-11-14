# 3. Potential Function Method — Amortized Analysis



Very important — 7 PYQ occurrences

8–9 marks



The Potential Function Method is one of the most frequently tested topics in your Unit V syllabus.

Your PYQs cover:

- Definition and explanation of Potential Function Method.
- Amortized cost of PUSH, POP and MULTIPOP.
- Application to stack operations.
- Application to binary counters.
- Conditions for a valid potential function.

## 1. Definition

The Potential Function Method is a technique of amortized analysis in which a potential function is used to represent the stored energy or credit of a data structure.

The potential function measures the accumulated work or stored potential that can help pay for future expensive operations.

It calculates the amortized cost by considering:

1. Actual cost of the current operation.
2. Change in potential caused by that operation.

## 2. Formula for amortized cost

Let:

- \\(c_i\\) = actual cost of the \\(i^{th}\\) operation.
- \\(\Phi_i\\) = potential after the \\(i^{th}\\) operation.
- \\(\Phi\_{i-1}\\) = potential before the \\(i^{th}\\) operation.

Then:

\\[ \boxed{\hat{c_i}=c_i+\Phi_i-\Phi\_{i-1}} \\]

Where \\(\hat{c_i}\\) is the amortized cost.

The change in potential is:

\\[ \Delta\Phi=\Phi_i-\Phi\_{i-1} \\]

Therefore:

\\[ \boxed{\text{Amortized cost}=\text{Actual cost}+\text{Change in potential}} \\]

### Total amortized cost

For a sequence of \\(n\\) operations:

\\[ \sum\_{i=1}^{n}\hat{c_i} = \sum\_{i=1}^{n}c_i+\Phi_n-\Phi_0 \\]

If the initial potential is zero and the potential is always non-negative:

\\[ \Phi_0=0,\quad \Phi_n\geq0 \\]

Then:

\\[ \boxed{\text{Total actual cost}\leq\text{Total amortized cost}} \\]

This is the main principle of the Potential Function Method.

## 3. Conditions for a valid potential function

A valid potential function should satisfy:

1. Initial potential: Usually \\(\Phi_0=0\\).
2. Non-negative potential: \\(\Phi_i\geq0\\) for every state.
3. Meaningful representation: It should represent stored work, energy or credit.
4. Useful analysis: It should make the amortized cost easy to calculate and bound.

The most important mathematical condition is non-negative potential, so the total amortized cost provides an upper bound on the total actual cost.

## 4. Potential Function Method for Stack Operations

Repeated numerical concept

Consider a stack supporting three operations:

- `PUSH(x)` — inserts an element.
- `POP()` — removes the top element.
- `MULTIPOP(k)` — removes up to \\(k\\) elements.

Assume each successful PUSH or POP costs 1 unit.

### Step 1: Define the potential function

Let:

\\[ \boxed{\Phi(D)=\text{Number of elements in the stack}} \\]

Where \\(D\\) represents the current stack.

Initially, the stack is empty:

\\[ \Phi_0=0 \\]

### Step 2: Calculate amortized costs

A. PUSH operation

- Actual cost = 1
- Stack size increases by 1.
- Change in potential = +1.

\\[ \hat c\_{\text{PUSH}}=1+(1)=\boxed{2} \\]

B. POP operation

- Actual cost = 1 (if stack is non-empty).
- Stack size decreases by 1.
- Change in potential = −1.

\\[ \hat c\_{\text{POP}}=1-1=\boxed{0} \\]

C. MULTIPOP(k) operation

Let \\(s\\) be the number of elements currently in the stack.

The number of elements actually removed is:

\\[ t=\min(k,s) \\]

- Actual cost = \\(t\\).
- Stack size decreases by \\(t\\).
- Change in potential = \\(-t\\).

\\[ \hat c\_{\text{MULTIPOP}}=t-t \\]

\\[ \boxed{\hat c\_{\text{MULTIPOP}}=0} \\]

### Step 3: Summary table

| Operation   | Actual cost | Change in potential | Amortized cost |
| ----------- | ----------- | ------------------- | -------------- |
| PUSH        | 1           | +1                  | 2              |
| POP         | 1           | −1                  | 0              |
| MULTIPOP(k) | t           | −t                  | 0              |

Final result: O(1) amortized cost

Although MULTIPOP can take \\(O(n)\\) actual time, its amortized cost is zero under this potential function. The expensive removals are paid for by the potential accumulated during earlier PUSH operations.

### Step 4: Numerical example

Consider this sequence:

```
PUSH(A)
PUSH(B)
PUSH(C)
MULTIPOP(2)
PUSH(D)
POP()
```

| Operation   | Actual cost | Potential after operation | Amortized cost |
| ----------- | ----------- | ------------------------- | -------------- |
| PUSH(A)     | 1           | 1                         | 2              |
| PUSH(B)     | 1           | 2                         | 2              |
| PUSH(C)     | 1           | 3                         | 2              |
| MULTIPOP(2) | 2           | 1                         | 0              |
| PUSH(D)     | 1           | 2                         | 2              |
| POP()       | 1           | 1                         | 0              |
| Total       | 7           | 1                         | 8              |

Verification:

\\[ \text{Total amortized cost} = \text{Total actual cost}+\Phi_n-\Phi_0 \\]

\\[ 8=7+1-0 \\]

Therefore:

\\[ \boxed{\text{Total amortized cost}=8} \\]

\\[ \boxed{\text{Amortized cost per operation}=\frac86} \\]

The amortized cost of each operation is bounded by a constant, so the sequence has \\(O(1)\\) amortized cost per operation.

## 5. Potential Function Method for Binary Counter

PYQ: Nov/Dec 2024 Q6(a)

A binary counter consists of \\(k\\) bits and stores values from:

\\[ 0\text{ to }2^k-1 \\]

Each increment operation increases the counter by 1.

Example of a 4-bit counter:

```
0000 → 0001
0001 → 0010
0010 → 0011
0011 → 0100
0100 → 0101
0111 → 1000
```

Some increments flip only one bit, while others flip multiple bits.

### Step 1: Define the potential function

Let:

\\[ \boxed{\Phi(D)=\text{Number of 1s in the binary counter}} \\]

Initially, all bits are zero.

\\[ \Phi_0=0 \\]

### Step 2: Calculate actual cost

Suppose the counter ends in \\(t\\) consecutive 1s.

During increment:

- These \\(t\\) ones become zero.
- The preceding zero becomes one.

Therefore, the number of bits flipped is:

\\[ \boxed{c_i=t+1} \\]

### Step 3: Calculate change in potential

Before increment, there are \\(t\\) trailing ones.

After increment:

- Those \\(t\\) ones become zero.
- One zero becomes one.

Therefore:

\\[ \Delta\Phi=1-t \\]

### Step 4: Calculate amortized cost

Using the potential method:

\\[ \hat c_i=c_i+\Delta\Phi \\]

\\[ \hat c_i=(t+1)+(1-t) \\]

\\[ \boxed{\hat c_i=2} \\]

Thus, every increment operation has an amortized cost of at most 2 bit flips.

Final result: O(1) amortized cost per increment

### Step 5: Total cost

For \\(n\\) increment operations:

\\[ \sum\_{i=1}^{n}\hat c_i\leq 2n \\]

Since initial potential is zero and final potential is non-negative:

\\[ \boxed{T(n)\leq2n} \\]

Therefore:

- Total cost = \\(O(n)\\).
- Amortized cost per increment = \\(O(1)\\).
- Worst-case cost of one increment = \\(O(k)\\).

## 6. Can the Potential Function Method be used for a Binary Counter?

Important clarification — Nov/Dec 2022 Q6(a)

Your PYQ is worded: "Why can the Potential Function Method not be used for analysing a binary counter?"

The mathematical premise is incorrect: The Potential Function Method can absolutely be used to analyse a binary counter. In fact, the number of 1-bits is a valid potential function.

The proof is:

1. Define \\(\Phi(D)\\) as the number of 1-bits.
2. Initially, \\(\Phi_0=0\\).
3. The potential is always non-negative.
4. If \\(t\\) trailing ones are flipped, actual cost is \\(t+1\\).
5. Change in potential is \\(1-t\\).

Therefore:

\\[ \hat c=(t+1)+(1-t)=2 \\]

Hence, the amortized cost is \\(O(1)\\) per increment.

What to write if this exact wording appears: Politely clarify that the method is applicable and demonstrate the above potential function. Do not claim that it is mathematically impossible to use.

## 7. Comparison of three Amortized Analysis methods

| Feature       | Aggregate                | Accounting             | Potential                  |
| ------------- | ------------------------ | ---------------------- | -------------------------- |
| Main idea     | Total sequence cost      | Stored credits         | Stored potential           |
| Calculation   | \\(T(n)/n\\)             | Amortized charge       | \\(c_i+\Delta\Phi\\)       |
| Credits       | Not explicitly used      | Explicitly maintained  | Represented mathematically |
| Initial state | Not essential to formula | Initial credit balance | Initial potential          |
| Example       | Binary counter           | Stack operations       | Stack and binary counter   |

## 8. Important formulas for revision

| Concept                         | Formula                      |
| ------------------------------- | ---------------------------- |
| Potential function              | \\(\Phi(D_i)\\)              |
| Change in potential             | \\(\Phi_i-\Phi\_{i-1}\\)     |
| Amortized cost                  | \\(c_i+\Phi_i-\Phi\_{i-1}\\) |
| Total amortized cost            | \\(T(n)+\Phi_n-\Phi_0\\)     |
| Stack potential                 | Number of stack elements     |
| Binary counter potential        | Number of 1-bits             |
| Stack amortized cost            | \\(O(1)\\)                   |
| Binary increment amortized cost | \\(O(1)\\)                   |

## 9. PYQ preparation checklist

Preparation progress

0/10

Definition and purpose of Potential Function Method

Amortized cost formula

Initial and final potential

Conditions for a valid potential function

PUSH, POP and MULTIPOP derivation

Stack numerical example

Binary counter potential function

Binary counter amortized cost derivation

Clarification of the Nov 2022 question

Aggregate, Accounting and Potential comparison

Exam strategy: Master these two derivations:

1. Stack: \\(\Phi=\text{number of elements}\\).
2. Binary counter: \\(\Phi=\text{number of 1-bits}\\).

If you can reproduce both derivations with the amortized cost formula, you will be prepared for most of the Potential Function Method questions in your papers.