# Part E — Embedded Algorithms

## 2. Sorting Algorithms for Embedded Systems



2 PYQ occurrences

6–9 marks



This topic is important because the examiner asks two things:

1. What are the special requirements of embedded algorithms?
2. Which sorting algorithm is suitable for embedded systems, particularly real-time medical monitoring, and why?

## 1. Special Requirements of Embedded Systems

Embedded systems are designed to perform specific tasks under hardware and software constraints. Therefore, algorithms used in embedded systems must be efficient and reliable.

The main requirements are:

### A. Memory Limitations

- Embedded systems generally have limited RAM and ROM.
- Algorithms should use minimum additional memory.
- In-place algorithms are preferred because they do not require large auxiliary arrays.

### B. Processing Speed

- Embedded systems have limited processor capabilities.
- Algorithms should perform fewer comparisons and operations.
- Efficient algorithms help reduce execution time.

### C. Power Consumption

- Many embedded devices operate using batteries.
- Algorithms should minimize unnecessary CPU operations.
- Lower computational requirements can help reduce energy consumption.

### D. Real-Time Constraints

- Tasks must finish within predefined deadlines.
- Algorithms should have predictable execution times.
- Missing a deadline in critical systems, such as medical monitoring, may cause serious problems.

### E. Reliability

- Algorithms should produce accurate and consistent results.
- They should handle unexpected inputs and errors.
- Reliability is particularly important in medical and industrial systems.

### F. Cost Effectiveness

- Embedded systems should work efficiently with low-cost hardware.
- Algorithms should not require expensive processors or additional memory.

## 2. Sorting Algorithms Used in Embedded Systems

Sorting is the process of arranging data in a particular order, such as ascending or descending order.

Common sorting algorithms include:

| Algorithm      | Average time     | Extra space                   | Characteristics                           |
| -------------- | ---------------- | ----------------------------- | ----------------------------------------- |
| Bubble Sort    | \\(O(n^2)\\)     | \\(O(1)\\)                    | Simple, predictable passes                |
| Selection Sort | \\(O(n^2)\\)     | \\(O(1)\\)                    | Minimum swaps                             |
| Insertion Sort | \\(O(n^2)\\)     | \\(O(1)\\)                    | Efficient for small or nearly sorted data |
| Merge Sort     | \\(O(n\log n)\\) | \\(O(n)\\)                    | Stable, requires extra memory             |
| Quick Sort     | \\(O(n\log n)\\) | \\(O(\log n)\\) average stack | Fast on average, worst case \\(O(n^2)\\)  |

## 3. Most Suitable Sorting Algorithm for Embedded Systems

Recommended: Insertion Sort for small datasets

Insertion Sort is generally a suitable choice for embedded systems when the dataset is small or nearly sorted and memory is limited.

It is an in-place sorting algorithm that arranges elements by inserting each element into its correct position in the already sorted portion of the array.

### Working of Insertion Sort

1. Consider the first element as sorted.
2. Select the next element as the key.
3. Compare the key with previous elements.
4. Shift larger elements one position to the right.
5. Insert the key into its correct position.
6. Repeat until all elements are sorted.

### Example

Consider the following data:

\\[ [5,3,4,1,2] \\]

Pass-wise sorting

Initial array

5

3

4

1

2

Pass 1

3

5

4

1

2

Pass 2

3

4

5

1

2

Pass 3

1

3

4

5

2

Pass 4

1

2

3

4

5

Green indicates the sorted portion of the array.

### Pseudocode

```
InsertionSort(A, n):

    for i = 1 to n-1:

        key = A[i]
        j = i-1

        while j >= 0 AND A[j] > key:

            A[j+1] = A[j]
            j = j-1

        A[j+1] = key

    return A
```

### Complexity Analysis

| Case            | Time complexity |
| --------------- | --------------- |
| Best case       | \\(O(n)\\)      |
| Average case    | \\(O(n^2)\\)    |
| Worst case      | \\(O(n^2)\\)    |
| Auxiliary space | \\(O(1)\\)      |

### Why is Insertion Sort Suitable?

1. Low memory usage: It requires only \\(O(1)\\) auxiliary space.
2. Simple implementation: It is easy to implement on microcontrollers.
3. Low overhead: It does not require recursion or additional arrays.
4. Good for small datasets: It performs efficiently when the number of elements is small.
5. Nearly sorted data: It performs very well when data is already almost sorted.
6. Stable sorting: Equal elements retain their relative order.

Limitation: Its \\(O(n^2)\\) worst-case time makes it unsuitable for large datasets or strict real-time deadlines without further timing analysis.

## 4. Sorting Algorithm for a Real-Time Medical Monitoring System

Recommended: Insertion Sort for small sensor datasets

A real-time medical monitoring system may collect data such as:

- Heart rate
- Blood pressure
- Body temperature
- Oxygen saturation (SpO₂)

The system may need to sort a small collection of readings to identify minimum, maximum or median values.

Insertion Sort is suitable when the dataset is small and predictable, because it uses constant extra memory and has low implementation overhead.

### Justification

1. Medical monitoring devices often have limited memory.
2. Insertion Sort requires only \\(O(1)\\) extra space.
3. Sensor readings can sometimes arrive in nearly sorted order.
4. It is stable and simple to implement.
5. For a small, fixed-size dataset, its execution time can be measured and bounded.

### Example

Suppose a medical device records five heart-rate readings:

\\[ [82,76,90,78,85] \\]

After applying Insertion Sort:

\\[ [76,78,82,85,90] \\]

The sorted readings can help the system calculate statistical values such as the median.

[Tips To Minimize Misdiagnosis of Vital Signs](https://images.openai.com/static-rsc-4/1jF7871gZBdz1C229IKr1V2g_xbFcERtXJg2LrrE3jlu3e64qzjKfKOcOTz7hwBTIM5KZjlkthLDkod6TqH1Z0bM_p9SO0A6baxG3sD_ng5Ov4pWhyHsOB-Dc-GLKK51Wmsbzy6Y4sxpSdQJA_ko-H1-skqOcqMob2zkE1BqtMk?purpose=inline)

[allstatesmed.com](https://www.allstatesmed.com/blogs/medical-equipment-reviews-sales-repair-service/tips-to-minimize-misdiagnosis-of-vital-signs?utm_source=chatgpt.com)

Important real-time consideration: In a safety-critical medical device, the sorting algorithm must be selected based on worst-case execution time, maximum dataset size and deadline. If the dataset is large, a bounded-time algorithm such as Heap Sort may be more appropriate. If the data is a small fixed-size collection, Insertion Sort may be preferable.

## 5. Comparison: Insertion Sort vs Selection Sort

Both algorithms are useful in memory-constrained embedded systems.

| Feature         | Insertion Sort           | Selection Sort                |
| --------------- | ------------------------ | ----------------------------- |
| Time complexity | \\(O(n^2)\\) worst       | \\(O(n^2)\\) all cases        |
| Extra space     | \\(O(1)\\)               | \\(O(1)\\)                    |
| Stability       | Stable                   | Usually unstable              |
| Data movement   | Can involve many shifts  | At most \\(n-1\\) swaps       |
| Best suited for | Small/nearly sorted data | Small data with costly writes |

When to choose Selection Sort: If writing to memory is expensive and minimizing the number of swaps is important.

## 6. Final Exam Conclusion

Embedded systems have special requirements such as limited memory, low processing power, low energy consumption, reliability and real-time execution. Therefore, sorting algorithms should be selected according to dataset size, available memory and execution deadlines.

Insertion Sort is a suitable choice for small and nearly sorted datasets because it is simple, stable, in-place and requires \\(O(1)\\) auxiliary memory. For larger datasets or strict real-time requirements, algorithms with better worst-case execution guarantees should be considered.

## PYQ-wise preparation

| Exam               | Question                                 | What to write                                                |
| ------------------ | ---------------------------------------- | ------------------------------------------------------------ |
| May/Jun 2023 Q6(a) | Special needs and best sorting algorithm | Requirements + Insertion Sort + justification                |
| May/Jun 2024 Q6(b) | Sorting for real-time medical monitoring | Requirements + algorithm + example + real-time justification |

Revision checklist

0/7

Special requirements of embedded algorithms

Memory, processing speed and power consumption

Real-time constraints and reliability

Insertion Sort definition and working

Insertion Sort pseudocode and complexity

Medical monitoring example and justification

Limitations and alternative algorithms

Exam tip: Don't write that Insertion Sort is universally the best sorting algorithm for every embedded system. State that it is best suited to small, nearly sorted datasets with tight memory constraints. For real-time medical monitoring, always mention worst-case execution time and deadline guarantees.