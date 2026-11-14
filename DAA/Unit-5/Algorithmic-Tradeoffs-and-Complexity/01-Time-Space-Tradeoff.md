# Part B — Time-Space Tradeoff



Prepare as a short note

Potential 4–5 marks



## 1. Definition

Time-Space Tradeoff is a technique in algorithm design in which an algorithm uses additional memory (space) to reduce its execution time, or uses less memory at the cost of increased execution time.

It represents the relationship between the time complexity and space complexity of an algorithm.

Basic principle:

- More memory usage can result in faster execution.
- Less memory usage may require more computation time.

[PPT - Comp 110 Style PowerPoint Presentation, free download - ID:2679122](https://images.openai.com/static-rsc-4/MHPvZtvpTYueoY_pX8gDBZg1DdvSVaPnUzO9vnSD159h1KsKFPuLkpObHLT_tTWxc9FQ8AMACIAdz0SwBd9NBJtSwwjZRTNdzMtIGhaShmHbhvp1h5P8eb8b_n3fNtXIvBt-_2pcfk_DMrk--_lx4x-YtuYIK7QL7CCDQ562xbs?purpose=inline)

[slideserve.com](https://www.slideserve.com/dasha/comp-110-style-powerpoint-ppt-presentation?utm_source=chatgpt.com)

## 2. Relationship between Time and Space

Time and space are two important resources required by an algorithm.

| Time complexity | Space complexity | Effect                             |
| --------------- | ---------------- | ---------------------------------- |
| Decreases       | Increases        | Faster execution, more memory      |
| Increases       | Decreases        | Slower execution, less memory      |
| Balanced        | Balanced         | Compromise between time and memory |

The objective is to select an appropriate balance according to the available resources and application requirements.

Example:

Suppose an algorithm repeatedly calculates the same result.

- Without storing results, it calculates them repeatedly, consuming more time.
- By storing previously calculated results, it saves computation time but consumes additional memory.

## 3. Examples of Time-Space Tradeoff

### A. Lookup Table

A lookup table stores precomputed results in memory.

- Without a lookup table: Calculate the result whenever required.
- With a lookup table: Retrieve the result directly from memory.

Example: Precomputed mathematical values.

### B. Hashing

Hashing stores key-value pairs in a hash table.

- Searching an unsorted array takes \\(O(n)\\) time.
- Searching a hash table takes \\(O(1)\\) average-case time.

Additional memory is used to store the hash table.

### C. Memoization

Memoization stores the results of previously solved subproblems.

Example: Fibonacci series.

Without memoization:

\\[ T(n)=O(2^n) \\]

With memoization:

\\[ T(n)=O(n) \\]

Space complexity becomes \\(O(n)\\) for the stored results and recursion stack.

### D. Dynamic Programming

Dynamic Programming stores intermediate results to avoid repeated calculations.

Example: 0/1 Knapsack.

- Time complexity: \\(O(nW)\\).
- Space complexity: \\(O(nW)\\) for the standard DP table.

The stored table reduces repeated computation.

### E. Caching

Frequently accessed data is stored in faster memory.

Example: Browser cache and CPU cache.

It reduces repeated access to slower storage or memory levels.

## 4. Advantages

1. Faster execution: Additional memory can reduce repeated calculations.
2. Improved performance: Frequently required results can be retrieved quickly.
3. Reduced computation: Avoids unnecessary recalculation.
4. Efficient processing: Useful for large and complex problems.
5. Better responsiveness: Helps applications provide faster results.

## 5. Disadvantages

1. Higher memory consumption: Requires additional storage.
2. Memory limitations: May not work efficiently on memory-constrained devices.
3. Implementation complexity: Managing stored data can make algorithms more complicated.
4. Memory overhead: Additional structures may consume unnecessary resources.
5. Cache consistency: Stored results may become outdated when underlying data changes.

## 6. Summary table

| Technique           | Extra memory used        | Time benefit                |
| ------------------- | ------------------------ | --------------------------- |
| Lookup table        | Precomputed values       | Faster retrieval            |
| Hashing             | Hash table               | Faster searching            |
| Memoization         | Stored results           | Avoids repeated computation |
| Dynamic Programming | DP table                 | Reuses subproblem results   |
| Caching             | Frequently accessed data | Faster data access          |

## 7. Conclusion

Time-Space Tradeoff is an important concept in algorithm design. It allows programmers to improve execution speed by using additional memory or reduce memory consumption by accepting increased execution time.

The best approach depends on the application's performance requirements and available resources.

Exam preparation tip

Since no direct PYQ was identified in your six papers, prepare this as a short note. Focus on:

1. Definition and relationship between time and space.
2. Four examples: Hashing, Memoization, Dynamic Programming and Caching.
3. Advantages and disadvantages.

Remember: More memory can save time; less memory can cost time.