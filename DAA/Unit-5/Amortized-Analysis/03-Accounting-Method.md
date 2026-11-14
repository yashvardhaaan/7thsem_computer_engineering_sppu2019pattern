# 2. Accounting Method — Amortized Analysis



Important SPPU topic — 4 occurrences

Short note / 8 marks combined



Accounting Method is one of the three methods of Amortized Analysis. Your PYQs repeatedly ask its definition, explanation, advantages and disadvantages.

## 1. Definition

Accounting Method is a technique of amortized analysis in which an artificial cost (amortized cost) is assigned to each operation instead of charging only its actual cost.

Some operations are charged more than their actual cost. The extra amount is stored as credit and used to pay for future expensive operations.

The main objective is to ensure that the total stored credit is never negative.

## 2. Important concepts

### A. Actual cost

The actual cost is the real cost of performing an operation.

Example: If a PUSH operation takes 1 unit of time, its actual cost is 1.

### B. Amortized cost

The amortized cost is the amount charged to an operation under the accounting method.

It may be greater than or less than the actual cost.

### C. Credit

Credit is the extra amount collected from inexpensive operations and saved for future expensive operations.

### D. Overcharging

When an operation is charged more than its actual cost, the extra amount is stored as credit.

\\[ \boxed{\text{Credit}=\text{Amortized cost}-\text{Actual cost}} \\]

The fundamental condition is:

\\[ \boxed{\text{Total stored credit}\geq 0} \\]

## 3. Actual cost vs Amortized cost

| Actual cost                          | Amortized cost                          |
| ------------------------------------ | --------------------------------------- |
| Real cost of an operation            | Assigned cost for analysis              |
| Depends on the actual work performed | May be higher or lower than actual cost |
| Cannot be stored for future use      | Can create stored credit                |
| Measures immediate operation cost    | Helps analyse a sequence of operations  |

The total amortized cost must be at least the total actual cost when the final stored credit is non-negative.

\\[ \sum \text{Amortized costs} = \sum \text{Actual costs}+\text{Final stored credit} \\]

## 4. Stack operations using Accounting Method

Consider a stack with three operations:

- `PUSH(x)` — inserts an element.
- `POP()` — removes the top element.
- `MULTIPOP(k)` — removes up to k elements.

Assume the actual cost of each push or pop is 1 unit.

### Assign amortized costs

| Operation   | Actual cost | Amortized cost | Credit stored            |
| ----------- | ----------- | -------------- | ------------------------ |
| PUSH        | 1           | 2              | 1                        |
| POP         | 1           | 0              | Uses 1 credit            |
| MULTIPOP(k) | k (maximum) | 0              | Uses k credits (maximum) |

Explanation:

- During PUSH, charge 2 units: 1 pays for the actual operation and 1 is stored as credit.
- During POP, use the stored credit to pay its actual cost.
- During MULTIPOP, use one stored credit for each element removed.

Every element in the stack carries one credit.

### Step-by-step numerical example

Consider this sequence:

```
PUSH(A)
PUSH(B)
PUSH(C)
MULTIPOP(2)
```

| Operation   | Actual cost | Amortized cost | Remaining credit |
| ----------- | ----------- | -------------- | ---------------- |
| PUSH(A)     | 1           | 2              | 1                |
| PUSH(B)     | 1           | 2              | 2                |
| PUSH(C)     | 1           | 2              | 3                |
| MULTIPOP(2) | 2           | 0              | 1                |
| Total       | 5           | 6              | 1                |

Therefore:

\\[ \text{Total amortized cost}=6 \\]

\\[ \text{Total actual cost}=5 \\]

\\[ \text{Remaining credit}=1 \\]

Verification:

\\[ 6=5+1 \\]

Hence, the accounting method successfully pays for all operations without making the stored credit negative.

Result: O(1) amortized cost per operation

For a sequence of \\(n\\) stack operations:

\\[ T\_{\text{amortized}}(n)\leq 2n \\]

Therefore:

\\[ \boxed{A(n)=O(1)} \\]

## 5. Advantages of Accounting Method

1. Simple cost allocation: Assigns an amortized cost to each operation.
2. Handles expensive operations: Saves credits during inexpensive operations to pay for expensive future operations.
3. Easy to understand: Uses a simple credit-based concept.
4. Individual operation analysis: Helps assign different amortized costs to different operations.
5. Useful for data structures: Can analyse stacks, queues, binary counters and dynamic tables.

## 6. Disadvantages of Accounting Method

1. Credit assignment is difficult: Choosing the correct amortized cost for each operation can be challenging.
2. Credit must remain non-negative: Incorrect credit allocation can invalidate the analysis.
3. Requires careful bookkeeping: Stored credits must be tracked throughout the operation sequence.
4. Problem-dependent: A credit scheme suitable for one data structure may not work for another.
5. Can become complicated: Complex operations may require complicated credit allocation.

## 7. Aggregate Method vs Accounting Method

| Feature       | Aggregate Method        | Accounting Method              |
| ------------- | ----------------------- | ------------------------------ |
| Main concept  | Total sequence cost     | Credit allocation              |
| Calculation   | Total cost ÷ operations | Amortized charge per operation |
| Stored credit | Not required            | Required                       |
| Analysis      | Overall sequence        | Individual operations          |
| Complexity    | Usually simpler         | Requires credit tracking       |

## 8. Important formulas for exams

| Concept                      | Formula                        |
| ---------------------------- | ------------------------------ |
| Credit                       | Amortized cost − Actual cost   |
| Total amortized cost         | Actual cost + Remaining credit |
| Credit condition             | Stored credit ≥ 0              |
| Stack PUSH                   | Amortized cost = 2             |
| Stack POP                    | Amortized cost = 0             |
| Stack MULTIPOP               | Amortized cost = 0             |
| Stack sequence               | \\(O(n)\\) total               |
| Per-operation amortized cost | \\(O(1)\\)                     |

## 9. PYQ preparation checklist

Preparation progress

0/8

Definition of Accounting Method

Actual cost and amortized cost

Credit and debit concept

Overcharging and stored credit

Non-negative credit condition

Stack PUSH, POP and MULTIPOP example

Advantages and disadvantages

Comparison with Aggregate Method

Exam recommendation: For a 5-mark short note, write the definition, explain overcharging and credit, and give the PUSH/POP example. For an 8-mark combined question, add the advantages and disadvantages.

Remember this distinction:

- Aggregate Method = Calculate total cost.
- Accounting Method = Charge extra and save credit.
- Potential Method = Use a mathematical potential function to represent stored credit.