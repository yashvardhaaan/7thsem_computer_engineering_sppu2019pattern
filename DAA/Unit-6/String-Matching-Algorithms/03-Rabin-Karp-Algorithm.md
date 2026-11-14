# **Part D — String Matching**

## **3. Rabin-Karp Algorithm**



Highest priority

Repeated in all 6 papers



Rabin-Karp is one of the most important topics in your String Matching unit. It has appeared in every examination session you listed, including direct 10-mark questions and an 8-mark numerical on spurious hits.

## **1. PYQ Analysis**

| Exam         | Actual question                                                                | Marks      |
| ------------ | ------------------------------------------------------------------------------ | ---------- |
| Nov/Dec 2022 | Q7(a): Write Rabin-Karp algorithm and explain expected and worst-case runtime. | 10         |
| May/Jun 2023 | Q8(b): Write pseudocode for Naive and Rabin-Karp algorithms and analyse them.  | 8 combined |
| Nov/Dec 2023 | Q7(a)(ii): Explain Rabin-Karp algorithm.                                       | Part of 10 |
| Nov/Dec 2023 | Q8(b): Find spurious hits for the given text and pattern with \\(q=11\\).      | 8          |
| May/Jun 2024 | Q7(a)(iv): Short note on Rabin-Karp algorithm.                                 | Part of 10 |
| May/Jun 2024 | Q8(b): Write pseudocode for Naive and Rabin-Karp algorithms and analyse them.  | 8 combined |
| Nov/Dec 2024 | Q7(a): Write Rabin-Karp algorithm and explain expected and worst-case runtime. | 10         |
| May/Jun 2025 | Q7(a): Write Rabin-Karp algorithm and explain expected and worst-case runtime. | 10         |

**Most repeated question:** Write the Rabin-Karp algorithm and explain its expected and worst-case runtime.

## **2. Introduction to Rabin-Karp Algorithm**

**Definition:** Rabin-Karp is a string matching algorithm that uses hashing to find the occurrence of a pattern in a given text.

Instead of comparing every character of the pattern with the text at every position, it calculates hash values for the pattern and text windows.

- If hash values are different, the pattern cannot match at that position.
- If hash values are equal, character-by-character verification is performed to confirm the match.

It uses a **rolling hash technique** to calculate the next window's hash efficiently.

**Example:**

Text: `T = 31415926`

Pattern: `P = 159`

The algorithm calculates the hash of pattern `159` and compares it with the hashes of consecutive 3-digit text windows.

When the hash values match, it verifies the actual characters.

## **3. Hashing Concept**

Hashing converts a string into a numerical value called a **hash value**.

For example, suppose:

- Pattern = `123`
- Base \\(d=10\\)
- Modulus \\(q=11\\)

The hash value is calculated as:

\\[ p=(1\times10^2+2\times10^1+3)\bmod 11 \\]

\\[ p=123\bmod11=\boxed{2} \\]

Here:

- \\(d\\) = number of possible characters in the alphabet (base).
- \\(q\\) = prime modulus.
- \\(p\\) = hash value of pattern.
- \\(t\\) = hash value of current text window.

For a numerical problem using digits, we commonly use \\(d=10\\). For uppercase English letters, a common choice is \\(d=26\\), depending on the encoding convention.

## **4. Rolling Hash Calculation**

A rolling hash allows us to calculate the hash of the next text window using the previous window's hash instead of calculating it from scratch.

The formula is:

\\[ t\_{i+1}=[d(t_i-T[i]\times h)+T[i+m]]\bmod q \\]

Where:

\\[ h=d^{m-1}\bmod q \\]

- \\(t_i\\) = hash of current text window.
- \\(t\_{i+1}\\) = hash of next text window.
- \\(T[i]\\) = first character of current window.
- \\(T[i+m]\\) = new character entering the next window.
- \\(d\\) = base.
- \\(q\\) = prime modulus.

**How it works:**

1. Remove the contribution of the first character.
2. Multiply the remaining hash by the base \\(d\\).
3. Add the new character.
4. Apply modulo \\(q\\).

This makes each rolling hash update take \\(O(1)\\) time.

## **5. Rabin-Karp Algorithm — Pseudocode**

```
RABIN_KARP(T, P, d, q):

    n = length(T)
    m = length(P)

    h = 1
    p = 0
    t = 0

    for i = 1 to m-1:
        h = (h * d) mod q

    for i = 0 to m-1:
        p = (d*p + P[i]) mod q
        t = (d*t + T[i]) mod q

    for s = 0 to n-m:

        if p == t:

            if P == T[s ... s+m-1]:
                print "Pattern found at position", s
            else:
                print "Spurious hit at position", s

        if s < n-m:

            t = (d*(t - T[s]*h) + T[s+m]) mod q

            if t < 0:
                t = t + q
```

**Explanation of the algorithm:**

1. Calculate the lengths of text and pattern.
2. Calculate the value of \\(h=d^{m-1}\bmod q\\).
3. Calculate the hash of the pattern.
4. Calculate the hash of the first text window.
5. Compare the pattern hash with the current text-window hash.
6. If hashes match, verify the actual characters.
7. Calculate the next window hash using the rolling hash formula.
8. Continue until all possible windows are checked.

## **6. Spurious Hits**

Important numerical topic

A **spurious hit** occurs when the hash value of a text window is equal to the pattern's hash value, but the actual characters of the text window and pattern are different.

In other words:

\\[ Hash(P)=Hash(T_i) \\]

But:

\\[ P\neq T_i \\]

This happens because different strings can produce the same hash value. This is called a **hash collision**.

### **Numerical example — Find spurious hits**

Given:

- Text: `T = 2312`
- Pattern: `P = 12`
- Base: \\(d=10\\)
- Prime modulus: \\(q=11\\)

**Step 1: Calculate pattern hash**

\\[ p=12\bmod11=\boxed{1} \\]

**Step 2: Calculate initial text-window hash**

First window = `23`

\\[ t_0=23\bmod11=\boxed{1} \\]

Since both hashes are equal:

\\[ p=t_0=1 \\]

But:

- Pattern = 12
- Text window = 23

The strings are different.

Spurious hit at position 0

**Step 3: Calculate rolling hash parameters**

\\[ h=10^{m-1}\bmod11 \\]

\\[ h=10^1\bmod11=10 \\]

**Step 4: Calculate the next window hash**

Using the rolling hash formula:

\\[ t_1=[10(1-2\times10)+1]\bmod11 \\]

\\[ t_1=(-189)\bmod11=\boxed{9} \\]

The next window is `31`.

\\[ 31\bmod11=9 \\]

Hashes do not match, so there is no match.

**Step 5: Calculate the third window hash**

\\[ t_2=[10(9-3\times10)+2]\bmod11 \\]

\\[ t_2=(-208)\bmod11=\boxed{1} \\]

The third window is `12`.

\\[ 12\bmod11=1 \\]

The hashes match, and the actual strings are also equal.

Actual match at position 2

**Final result:**

| Position | Text window | Hash | Result       |
| -------- | ----------- | ---- | ------------ |
| 0        | 23          | 1    | Spurious hit |
| 1        | 31          | 9    | No match     |
| 2        | 12          | 1    | Actual match |

**Final answer**

- Spurious hits = **1**
- Actual pattern matches = **1**
- Pattern occurs at position **2** (0-based indexing).

**Exam tip:** Never report a hash match as a confirmed pattern match without comparing the actual characters.

## **7. Expected and Worst-Case Runtime**

This is the most frequently repeated theory question.

**Expected time complexity:**

\\[ \boxed{O(n+m)} \\]

Explanation:

- Pattern hash calculation takes \\(O(m)\\).
- Initial text-window hash calculation takes \\(O(m)\\).
- Each rolling hash update takes \\(O(1)\\).
- With a suitably chosen modulus and sufficiently few collisions, the expected number of character verifications is small.

Therefore, expected running time is \\(O(n+m)\\) under standard hashing assumptions.

**Worst-case time complexity:**

\\[ \boxed{O((n-m+1)m)=O(nm)} \\]

Explanation:

- Hash collisions may occur at many or all text-window positions.
- Each hash match may require up to \\(m\\) character comparisons.
- If this happens for all \\(n-m+1\\) windows, the total work becomes \\(O(nm)\\).

**Space complexity:**

\\[ \boxed{O(1)} \\]

For a single pattern, only a constant number of variables are needed.

### **Complexity summary**

| Operation                | Complexity   |
| ------------------------ | ------------ |
| Pattern hash calculation | \\(O(m)\\)   |
| Initial window hash      | \\(O(m)\\)   |
| Each rolling hash update | \\(O(1)\\)   |
| Expected total time      | \\(O(n+m)\\) |
| Worst-case total time    | \\(O(nm)\\)  |
| Auxiliary space          | \\(O(1)\\)   |

## **8. Advantages and Disadvantages**

**Advantages**

1. Efficient for searching large texts under suitable hashing assumptions.
2. Rolling hash avoids recalculating hashes from scratch.
3. Useful for multiple-pattern searching.
4. Simple to implement.
5. Requires constant auxiliary space for a single pattern.

**Disadvantages**

1. Hash collisions can produce spurious hits.
2. Actual character verification is required when hashes match.
3. Worst-case complexity is \\(O(nm)\\).
4. Performance depends on the choice of modulus and hash function.

## **9. Naive vs Rabin-Karp**

| Parameter       | Naive                       | Rabin-Karp                              |
| --------------- | --------------------------- | --------------------------------------- |
| Technique       | Direct comparison           | Hashing                                 |
| Preprocessing   | None                        | Hash calculation                        |
| Rolling hash    | No                          | Yes                                     |
| Spurious hits   | No                          | Possible                                |
| Expected time   | Depends on pattern and text | \\(O(n+m)\\) under suitable assumptions |
| Worst-case time | \\(O(nm)\\)                 | \\(O(nm)\\)                             |
| Space           | \\(O(1)\\)                  | \\(O(1)\\)                              |

## **10. How to prepare for the examination**

| Question type                                           | Preparation priority |
| ------------------------------------------------------- | -------------------- |
| Write algorithm and explain expected/worst-case runtime | Very high            |
| Find spurious hits for given text, pattern and \\(q\\)  | Very high            |
| Explain Rabin-Karp algorithm                            | High                 |
| Short note                                              | High                 |
| Compare Naive and Rabin-Karp                            | High                 |

### **Final revision checklist**

**Rabin-Karp preparation**

0/10

Definition and hashing concept

Meaning of d, q, p, t and h

Rolling hash formula

Rabin-Karp pseudocode

Stepwise numerical calculation

Spurious hit identification

Expected runtime O(n+m)

Worst-case runtime O(nm)

Space complexity O(1)

Comparison with Naive String Matching

**My recommendation:** Practise at least 3 numerical problems with different prime moduli, especially \\(q=11\\), because the university has explicitly asked for spurious-hit calculations.

Next topic: **Knuth-Morris-Pratt (KMP) Algorithm**, including the LPS array, prefix-suffix calculation, pseudocode and numerical examples.