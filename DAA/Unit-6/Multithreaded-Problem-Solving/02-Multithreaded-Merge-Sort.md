# **Part F — Multithreaded Algorithms**

## **7. Multithreaded Merge Sort**



5 PYQ occurrences

Very high priority



This is one of the most repeated pseudocode topics in your question papers. Prepare the algorithm, `Spawn` and `Sync`, parallel merging, and work-span analysis carefully.

**PYQs:**

| Exam                   | Question                        | Marks      |
| ---------------------- | ------------------------------- | ---------- |
| Nov/Dec 2023 Q8(a)     | Pseudocode and parallel merging | 9          |
| May/Jun 2023 Q7(a)(ii) | Short note                      | Part of 10 |
| May/Jun 2024 Q8(a)     | Pseudocode and parallel merging | 9          |
| Nov/Dec 2024 Q7(a)     | Pseudocode and advantages       | 8          |
| May/Jun 2025 Q7(a)     | Pseudocode and parallel merging | 8          |

## **1. Conventional Merge Sort**

**Definition:** Merge Sort is a divide-and-conquer sorting algorithm that divides an array into smaller subarrays, recursively sorts them and merges the sorted subarrays to produce the final sorted array.

### **Working**

1. Divide the array into two approximately equal halves.
2. Recursively sort the left half.
3. Recursively sort the right half.
4. Merge both sorted halves.
5. Continue until the complete array is sorted.

### **Example**

Consider the array:

\\[ [38,27,43,3,9,82,10] \\]

38274339821025

Divide · 0 comparisons

The values begin in their original order.

Merge step

8 · even7 · uneven

Shuffle and restart

Give feedback

The final sorted array is:

\\[ [3,9,10,27,38,43,82] \\]

### **Conventional Merge Sort pseudocode**

```
MergeSort(A, low, high):

    if low < high:

        mid = (low + high) / 2

        MergeSort(A, low, mid)

        MergeSort(A, mid+1, high)

        Merge(A, low, mid, high)
```

**Time complexity:**

\\[ T(n)=2T(n/2)+O(n) \\]

\\[ \boxed{T(n)=O(n\log n)} \\]

Auxiliary space complexity: \\(O(n)\\).

## **2. Multithreaded Merge Sort**

**Definition:** Multithreaded Merge Sort is a parallel version of Merge Sort in which the left and right halves of an array are sorted concurrently using multiple threads.

It uses the divide-and-conquer technique along with parallel execution to reduce sorting time.

### **Working principle**

1. Divide the array into two halves.
2. Create a separate task or thread for sorting the left half.
3. Execute sorting of the right half concurrently.
4. Wait until both sorting tasks are completed.
5. Merge the two sorted halves.
6. Repeat recursively until the entire array is sorted.

### **Diagram**

**Original Array**

[38, 27, 43, 3]

**Spawn T1**

[38, 27]

**T2**

[43, 3]

Both halves are sorted concurrently.

**Sync — wait for both tasks**

**Merge**

[3, 27, 38, 43]

## **3. Spawn and Sync Operations**

Multithreaded algorithms commonly use two important operations: **Spawn** and **Sync**.

### **A. Spawn**

Spawn creates a parallel task that can execute independently of the calling task.

Example:

```
spawn MergeSort(A, low, mid)
```

It starts sorting the left half as a separate parallel task.

### **B. Sync**

Sync waits until all previously spawned child tasks have completed before the program continues.

Example:

```
sync
```

It ensures that both halves are completely sorted before merging begins.

### **Difference**

| Spawn                           | Sync                          |
| ------------------------------- | ----------------------------- |
| Creates a parallel task         | Waits for parallel tasks      |
| Allows concurrent execution     | Ensures task completion       |
| Increases available parallelism | Enforces required dependency  |
| Used before parallel work       | Used before combining results |

**Remember:** Spawn = Start parallel work; Sync = Wait for completion.

## **4. Multithreaded Merge Sort Pseudocode**

The following is a standard fork-join version of multithreaded Merge Sort.

```
P-MergeSort(A, low, high):

    if low < high:

        mid = floor((low + high) / 2)

        spawn P-MergeSort(A, low, mid)

        P-MergeSort(A, mid+1, high)

        sync

        Merge(A, low, mid, high)
```

### **Explanation**

1. Check whether the array contains more than one element.
2. Calculate the middle index.
3. Spawn a task to sort the left half.
4. Sort the right half concurrently.
5. Sync waits until both halves are sorted.
6. Merge the two sorted halves.
7. Return the completely sorted array.

Important for 8–9 marks

This algorithm parallelizes the recursive sorting of the two halves. The `Merge` operation shown here is sequential; parallel merging is an additional optimization explained below.

## **5. Parallel Merging**

**Definition:** Parallel merging is a technique in which two already sorted arrays are merged into a single sorted array by dividing the merging work among multiple threads.

In conventional Merge Sort, merging is performed sequentially. Parallel merging attempts to distribute this work among multiple processors.

### **Example**

Consider two sorted arrays:

\\[ A=[2,5,8,12] \\]

\\[ B=[1,4,9,10] \\]

The final merged array is:

\\[ C=[1,2,4,5,8,9,10,12] \\]

### **Working of Parallel Merge**

1. Take two sorted input arrays.
2. Divide the merging operation into smaller independent subproblems.
3. Determine the correct output positions for elements or partitions.
4. Assign independent subproblems to different threads.
5. Execute merging tasks concurrently.
6. Combine the results into the final sorted array.

### **Parallel merging diagram**

**Two sorted arrays**

A = [2, 5, 8, 12]

B = [1, 4, 9, 10]

**Divide merge into independent subproblems**

**Thread T1**

Merge partition 1

**Thread T2**

Merge partition 2

**Combine sorted partitions**

[1, 2, 4, 5, 8, 9, 10, 12]

### **How can merging be divided safely?**

A correct parallel merge must ensure that each thread knows which elements belong to its output range.

One method is:

- Select a pivot element from one sorted array.
- Use binary search to find its correct position in the other array.
- Place the pivot at its final output position.
- Recursively divide the elements into smaller independent merge problems.
- Execute those subproblems concurrently.

This avoids two threads writing to the same output position.

### **Simplified parallel merge pseudocode**

```
ParallelMerge(A, B, C):

    Divide A and B into independent
    merge partitions using binary search

    spawn MergePartition1(A, B, C)
    spawn MergePartition2(A, B, C)

    sync

    return C
```

This illustrates the concept; an actual implementation must calculate partition boundaries and output offsets correctly. Simply dividing both input arrays into equal-sized halves is not sufficient, because the elements in those halves may belong at different positions in the merged output.

## **6. Work and Span Analysis**

Work and span are used to analyse the performance of multithreaded Merge Sort.

### **A. Work**

Work represents the total number of operations performed by the algorithm.

For Merge Sort:

\\[ T_1(n)=2T_1(n/2)+O(n) \\]

Therefore:

\\[ \boxed{T_1(n)=O(n\log n)} \\]

### **B. Span**

Span represents the execution time of the longest dependency path, assuming unlimited processors.

For the basic multithreaded algorithm with sequential merging:

\\[ T\_\infty(n)=T\_\infty(n/2)+O(n) \\]

Therefore:

\\[ \boxed{T\_\infty(n)=O(n)} \\]

### **C. Parallelism**

\\[ \text{Parallelism}=\frac{T_1}{T\_\infty} \\]

\\[ =\frac{O(n\log n)}{O(n)} \\]

\\[ \boxed{O(\log n)} \\]

**Important distinction:** The above analysis is for parallel recursive sorting with a sequential merge. If merging is also parallelized using a work-efficient parallel merge algorithm, the span can improve to \\(O(\log^2 n)\\), giving parallelism of \\(O(n/\log n)\\).

## **7. Conventional vs Multithreaded Merge Sort**

| Feature               | Conventional Merge Sort           | Multithreaded Merge Sort         |
| --------------------- | --------------------------------- | -------------------------------- |
| Execution             | Sequential                        | Parallel                         |
| Technique             | Divide and conquer                | Parallel divide and conquer      |
| Subarray sorting      | One after another                 | Concurrently                     |
| Merging               | Sequential                        | Can be sequential or parallel    |
| Work complexity       | \\(O(n\log n)\\)                  | \\(O(n\log n)\\)                 |
| Span                  | \\(O(n\log n)\\)                  | \\(O(n)\\) with sequential merge |
| Processor utilization | One processor                     | Multiple processors              |
| Execution time        | Generally higher for large inputs | Potentially lower                |
| Synchronization       | Not required between threads      | Uses Spawn and Sync              |
| Implementation        | Simple                            | More complex                     |

## **8. Advantages of Multithreaded Merge Sort**

1. **Faster execution:** Independent subarrays can be sorted simultaneously.
2. **Better CPU utilization:** Multiple processor cores can be used.
3. **Scalability:** Work can be distributed among multiple threads.
4. **Efficient for large datasets:** Particularly useful for large arrays.
5. **Stable sorting:** Can preserve the relative order of equal elements if the merge operation is stable.
6. **Divide-and-conquer:** Makes the problem easier to divide into independent tasks.

## **9. Limitations**

1. Thread creation and management introduce overhead.
2. Synchronization is required before merging.
3. Additional memory is required for merging.
4. Small arrays may not benefit from multithreading.
5. Unequal task distribution may reduce performance.

## **10. Applications**

- Large-scale data sorting.
- Database processing.
- Scientific computing.
- Big data processing.
- Parallel computing systems.

## **11. Conclusion**

Multithreaded Merge Sort is an extension of conventional Merge Sort that uses multiple threads to sort independent subarrays concurrently. It follows the divide-and-conquer approach and uses Spawn and Sync operations for task management. Parallel merging can further reduce the critical path and improve performance. It is especially useful for sorting large datasets on multicore processors.

## **PYQ-wise preparation**

| Exam                   | Question                        | Marks      | Must prepare                            |
| ---------------------- | ------------------------------- | ---------- | --------------------------------------- |
| Nov/Dec 2023 Q8(a)     | Pseudocode and parallel merging | 9          | Algorithm + Spawn/Sync + parallel merge |
| May/Jun 2023 Q7(a)(ii) | Short note                      | Part of 10 | Definition + working + advantages       |
| May/Jun 2024 Q8(a)     | Pseudocode and parallel merging | 9          | Algorithm + parallel merge              |
| Nov/Dec 2024 Q7(a)     | Pseudocode and advantages       | 8          | Algorithm + comparison                  |
| May/Jun 2025 Q7(a)     | Pseudocode and parallel merging | 8          | Algorithm + parallel merge              |

## **Revision checklist**

**Preparation progress**

0/9

Conventional Merge Sort definition and pseudocode

Divide-and-conquer approach

Multithreaded Merge Sort working

Spawn and Sync operations

Multithreaded Merge Sort pseudocode

Parallel merging concept and diagram

Work and span analysis

Comparison with conventional Merge Sort

Advantages and limitations

**Exam strategy:**

- **9 marks:** Definition, diagram, pseudocode, Spawn/Sync, parallel merging and complexity.
- **8 marks:** Pseudocode, working, advantages and comparison.
- **Short note:** Definition, divide-and-conquer diagram, algorithm and advantages.

Most important to memorise

1. `spawn` the left recursive sorting task.
2. Sort the right half concurrently.
3. `sync` before merging.
4. Explain how parallel merging divides work into independent output partitions.

**Technical point for the exam:** Do not claim that ordinary multithreaded Merge Sort automatically has \\(O(\log n)\\) span. With a sequential merge, its span is \\(O(n)\\). The improved span requires parallelizing the merge operation too.