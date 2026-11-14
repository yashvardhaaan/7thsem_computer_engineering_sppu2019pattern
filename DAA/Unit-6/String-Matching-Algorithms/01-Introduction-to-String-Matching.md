# **Part D — Algorithm Analysis**

## **String Matching**

### **1. Introduction to String Matching**

Foundation topic — No direct standalone PYQ

### **1. Meaning of String Matching**

**String Matching** is a process of finding the occurrence of a particular pattern (substring) within a given text.

It is an important problem in computer science used for searching words, characters and sequences in large amounts of data.

### **2. Basic Terminology**

**1. Text (T):**

A text is a sequence of characters in which we want to search for a pattern.

Example:

`T = "ABABCABAB"`

**2. Pattern (P):**

A pattern is a smaller sequence of characters that we want to find inside the text.

Example:

`P = "ABAB"`

**3. Text Length (n):**

The total number of characters present in the text.

\\[ n=|T| \\]

**4. Pattern Length (m):**

The total number of characters present in the pattern.

\\[ m=|P| \\]

Usually, \\(m\leq n\\).

### **3. String Matching Problem**

The objective is to determine whether a pattern \\(P\\) occurs in text \\(T\\), and if it does, identify its starting position or all its occurrence positions.

**Example:**

**Given:**

## **T = ABABCABAB**

## **P = ABAB**

**Matching positions (0-based indexing):**

Position 0

Match

Position 5

Match

**Result:** Pattern occurs at positions 0 and 5.

### **4. Exact Pattern Matching**

Exact pattern matching means finding a pattern in the text where every character must match exactly, including its order.

For example:

| Text     | Pattern | Result   |
| -------- | ------- | -------- |
| COMPUTER | PUT     | Match    |
| COMPUTER | COT     | No match |
| BANANA   | ANA     | Match    |
| HELLO    | HELL    | Match    |

In exact matching:

- Characters must be identical.
- Character order must be the same.
- No character substitution is allowed.
- The pattern must occur continuously in the text.

### **5. General String Matching Approach**

The basic idea is to compare the pattern with every possible substring of the text having length \\(m\\).

Number of possible alignments:

\\[ n-m+1 \\]

**Simple procedure:**

1. Start from the first character of the text.
2. Compare the pattern characters with the corresponding text characters.
3. If all characters match, report the position.
4. Otherwise, shift the pattern one position to the right.
5. Repeat until all possible positions are checked.

### **6. Applications of String Matching**

1. **Search engines:** Finding keywords in web pages and documents.
2. **Text editors:** Find and replace operations.
3. **Plagiarism detection:** Finding matching text in documents.
4. **DNA sequence analysis:** Searching specific DNA patterns.
5. **Cybersecurity:** Detecting malicious strings and suspicious patterns.
6. **Information retrieval:** Searching words in large databases.
7. **Spell checking:** Identifying words and character sequences.
8. **Data filtering:** Finding specific patterns in logs and files.

### **7. Important String Matching Algorithms**

You will study these algorithms in detail:

| Algorithm                | Main idea                                                  |
| ------------------------ | ---------------------------------------------------------- |
| Naive String Matching    | Checks pattern at every possible position                  |
| Rabin-Karp               | Uses hashing to compare patterns                           |
| Knuth-Morris-Pratt (KMP) | Uses LPS array to avoid unnecessary comparisons            |
| Boyer-Moore              | Compares characters from right to left and skips positions |

### **8. Exam-oriented summary**

- String matching is the process of finding a pattern in a text.
- Text is represented by \\(T\\), with length \\(n\\).
- Pattern is represented by \\(P\\), with length \\(m\\).
- Exact matching requires all characters to match in the same order.
- Number of possible pattern alignments is \\(n-m+1\\).
- Applications include search engines, text editors, DNA analysis and cybersecurity.

**Remember these symbols:**

\\[ T=\text{Text},\quad P=\text{Pattern} \\]

\\[ n=|T|,\quad m=|P| \\]

\\[ \text{Possible alignments}=n-m+1 \\]

**Next topic:** Naive String Matching Algorithm — algorithm, pseudocode, worked example and time complexity.