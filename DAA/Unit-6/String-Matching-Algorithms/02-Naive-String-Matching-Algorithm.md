# **Part D — String Matching**

## **2. Naive String Matching Algorithm**



Important

1 direct PYQ



**PYQ — May/June 2024, Q8(b), 8 marks (combined)**

"Write pseudocode for Naive String Matching and Rabin-Karp algorithms and analyse them."

Prepare both algorithms together because the question combines them.

### **1. Introduction**

**Naive String Matching** is the simplest string searching algorithm. It searches for a pattern in a given text by checking the pattern at every possible position.

It compares the characters of the pattern with the corresponding characters of the text, one by one.

**Given:**

- \\(T\\) = Text
- \\(P\\) = Pattern
- \\(n\\) = Length of text
- \\(m\\) = Length of pattern

Number of possible alignments:

\\[ n-m+1 \\]

### **2. Working of Naive String Matching**

Consider:

- Text: `T = AABAACAADA`
- Pattern: `P = AAC`

The algorithm checks the pattern at each position.

**Stepwise comparison**

ALIGNMENT 1 — POSITION 0

**A**

**A**

**B**

A = A, A = A, B ≠ C → Mismatch

ALIGNMENT 2 — POSITION 1

**A**

**B**

**A**

A = A, B ≠ A → Mismatch

ALIGNMENT 3 — POSITION 2

**B**

**A**

**A**

B ≠ A → Mismatch

ALIGNMENT 4 — POSITION 3

**A**

**A**

**C**

Pattern found at position 3

The remaining positions are checked similarly. The other occurrence is at position 6.

**Final result:** Pattern `AAC` occurs at positions 3 and 6 (0-based indexing).

### **3. Algorithm / Pseudocode**

**Naive_String_Matching(T, P)**

```
Naive_String_Matching(T, P):

    n = length(T)
    m = length(P)

    for i = 0 to n-m:

        j = 0

        while j < m AND T[i+j] == P[j]:
            j = j + 1

        if j == m:
            print "Pattern found at position", i
```

**Explanation:**

1. Calculate the lengths of text and pattern.
2. Start comparing from the first position.
3. Compare each character of the pattern with the text.
4. If characters match, move to the next character.
5. If a mismatch occurs, shift the pattern one position.
6. If all \\(m\\) characters match, report the position.
7. Continue until all possible alignments are checked.

### **4. Time and Space Complexity**

There are \\(n-m+1\\) possible alignments, and at each alignment, at most \\(m\\) character comparisons are performed.

| Case    | Time complexity                                                        | Explanation                                                                  |
| ------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| Best    | \\(O(n-m+1)\\), often written \\(O(n)\\)                               | Mismatch occurs immediately at each position                                 |
| Average | \\(O(n)\\) for fixed pattern length; generally \\(O(nm)\\) upper bound | Depends on character distribution and pattern                                |
| Worst   | \\(O((n-m+1)m)\\) = \\(O(nm)\\)                                        | Almost all characters match before a mismatch, or pattern matches repeatedly |

**Space complexity:**

\\[ O(1) \\]

Only a few variables are required; no additional data structure is needed.

### **5. Advantages**

1. Simple and easy to implement.
2. Does not require preprocessing.
3. Requires constant auxiliary space.
4. Works for any sequence of characters.
5. Suitable for small texts and patterns.

### **6. Disadvantages**

1. Repeats unnecessary character comparisons.
2. Inefficient for large texts.
3. Worst-case time complexity is \\(O(nm)\\).
4. Does not use previously matched information to skip comparisons.

### **7. Comparison with Rabin-Karp Algorithm**

The May/June 2024 question asks for both algorithms, so remember this comparison.

**Rabin-Karp** uses hashing to compare the pattern with text windows instead of directly comparing every character at every position.

| Feature        | Naive Algorithm                                                         | Rabin-Karp                                               |
| -------------- | ----------------------------------------------------------------------- | -------------------------------------------------------- |
| Technique      | Character-by-character comparison                                       | Hashing                                                  |
| Preprocessing  | Not required                                                            | Calculates pattern hash                                  |
| Comparison     | Direct character comparison                                             | Hash comparison                                          |
| Hash collision | Not applicable                                                          | Possible                                                 |
| Average time   | Often \\(O(n)\\) for fixed pattern length; generally can be \\(O(nm)\\) | Expected \\(O(n+m)\\) under suitable hashing assumptions |
| Worst time     | \\(O(nm)\\)                                                             | \\(O(nm)\\)                                              |
| Space          | \\(O(1)\\)                                                              | \\(O(1)\\) auxiliary space for a single pattern          |

**Main difference:** Naive matching directly compares characters at every alignment, whereas Rabin-Karp first compares hash values and performs character verification when hashes match.

## **8. Important exam points**

For an 8-mark combined question, prepare:

- Naive algorithm definition — 1 mark
- Naive pseudocode — 2 marks
- Working/example — 1 mark
- Naive complexity analysis — 1 mark
- Rabin-Karp pseudocode and explanation — 2 marks
- Comparison/complexity — 1 mark

**Revision formulas:**

\\[ \text{Number of shifts}=n-m+1 \\]

\\[ \text{Naive worst-case time}=O(nm) \\]

\\[ \text{Naive auxiliary space}=O(1) \\]

**Next topic:** Rabin-Karp Algorithm — rolling hash, hash calculation, pseudocode, worked example and complexity analysis.