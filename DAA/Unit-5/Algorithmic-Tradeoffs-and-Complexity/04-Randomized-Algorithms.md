# 1. Randomized Algorithms



Important SPPU topic — 6 PYQ occurrences

4–8 marks



Randomized Algorithms are repeatedly tested in your Unit V papers. Prepare the definition, types, reasons, Randomized Quick Sort and probability concepts.

## 1. Definition of Randomized Algorithm

A Randomized Algorithm is an algorithm that uses random numbers or random choices during its execution to make decisions.

Its execution path or running time may vary even for the same input because of random choices.

Unlike deterministic algorithms, which always follow the same execution path for a given input, randomized algorithms use probability to make decisions.

Example: Randomized Quick Sort selects a pivot randomly instead of always selecting the first or last element.

## 2. Types of Randomized Algorithms

There are two major types.

### A. Las Vegas Algorithms

- Always produce the correct result.
- Running time may vary depending on random choices.
- Randomness affects performance, not correctness.

Example: Randomized Quick Sort.

### B. Monte Carlo Algorithms

- Have a fixed or bounded running time.
- May produce an incorrect result with a small probability.
- Randomness affects the probability of correctness.

Example: Certain randomized primality-testing algorithms, such as the Miller–Rabin test.

| Feature            | Las Vegas             | Monte Carlo                             |
| ------------------ | --------------------- | --------------------------------------- |
| Correctness        | Always correct        | May be incorrect with small probability |
| Running time       | Random                | Usually bounded                         |
| Randomness affects | Execution time        | Result accuracy                         |
| Example            | Randomized Quick Sort | Miller–Rabin test                       |

## 3. Reasons for using Randomized Algorithms

PYQ: May/June 2024 Q5(a) — 8 marks

1\. Avoid worst-case inputs: Random choices make it harder for specially arranged inputs to consistently cause poor performance.

2\. Improved expected performance: They often provide good expected running time.

3\. Simplicity: Randomized algorithms can have simpler implementations than some deterministic alternatives.

4\. Avoid input dependency: Performance becomes less dependent on the original arrangement of input data.

5\. Efficient problem solving: Useful for large and complex computational problems.

6\. Symmetry breaking: Random choices help algorithms make decisions when several alternatives appear equivalent.

7\. Probabilistic solutions: Some problems can be solved efficiently with a very small probability of error.

8\. Practical performance: Randomization can make algorithms more robust against adversarial or unfavourable input arrangements.

## 4. Advantages and disadvantages

| Advantages                               | Disadvantages                               |
| ---------------------------------------- | ------------------------------------------- |
| Good expected performance                | Results may vary between runs               |
| Avoids certain worst-case input patterns | Requires random number generation           |
| Useful for large inputs                  | Monte Carlo algorithms can make errors      |
| Often simple to implement                | Difficult to reproduce some execution paths |
| Reduces dependence on input arrangement  | Performance is probabilistic                |

## 5. Randomized Quick Sort

PYQ: May/June 2025 Q5(c) — 4 marks

Randomized Quick Sort is a version of Quick Sort in which the pivot element is selected randomly from the array.

### Working

1. Select a random element as the pivot.
2. Partition the array into two parts:
   - Elements smaller than the pivot.
   - Elements greater than the pivot.
3. Place the pivot in its correct sorted position.
4. Recursively sort the left and right subarrays.
5. Continue until the array is sorted.

Pseudocode:

```

RandomizedQuickSort(A, low, high):

    if low < high:

        r = Random(low, high)

        Swap(A[r], A[high])

        p = Partition(A, low, high)

        RandomizedQuickSort(A, low, p-1)

        RandomizedQuickSort(A, p+1, high)

```

### Example

Consider:

\\[ A=[8,3,7,1,9,2] \\]

Suppose the randomly selected pivot is 7.

After partitioning:

\\[ [3,1,2]\quad 7\quad [8,9] \\]

The algorithm recursively sorts both parts.

Final sorted array:

\\[ \boxed{[1,2,3,7,8,9]} \\]

[PPT - Randomized Algorithms CS648 PowerPoint Presentation, free download - ID:2387350](https://images.openai.com/static-rsc-4/a7Y3HU4xhzBEsGtQWRSH-W0AP1cLBA2VYa1vDmJNNm8Cdk3BahdukfcGwwGzUeog6zMiV2azeZg3uzk0KI36P_nppLK2JmkGVwfOHgCD7JXwNMIZ6HsMxcJ9mShwWJ3Hf50xPbdSuV7A8k6ioAJVY78gcVeMRPcCAcrV0DR0StE?purpose=inline)

[slideserve.com](https://www.slideserve.com/devon/randomized-algorithms-cs648?utm_source=chatgpt.com)

### Time complexity

| Case          | Time complexity  |
| ------------- | ---------------- |
| Best case     | \\(O(n\log n)\\) |
| Expected case | \\(O(n\log n)\\) |
| Worst case    | \\(O(n^2)\\)     |

- Expected time: \\(O(n\log n)\\).
- Worst-case time: \\(O(n^2)\\).
- Expected auxiliary recursion space: \\(O(\log n)\\).
- Worst-case recursion space: \\(O(n)\\).

### Does Randomized Quick Sort improve average-case time complexity?

PYQ: May/June 2025 Q5(c) — 4 marks

No. Randomized Quick Sort does not improve the asymptotic average/expected time complexity beyond the standard Quick Sort average-case bound.

Both have:

\\[ \boxed{O(n\log n)} \\]

However, randomized pivot selection reduces dependence on the original input arrangement and makes consistently poor partitions less likely for any fixed input.

Conclusion: It improves expected robustness, not the asymptotic average-case complexity.

## 6. Random Variable

PYQ: May/June 2023 Q6(c) — 8 marks combined

A Random Variable is a variable whose value depends on the outcome of a random experiment.

It assigns a numerical value to each possible outcome of an experiment.

Example: Tossing a coin three times.

Let \\(X\\) represent the number of heads obtained.

Possible values are:

\\[ X=\\{0,1,2,3\\} \\]

| Outcome | Number of heads (X) |
| ------- | ------------------- |
| TTT     | 0                   |
| HTT     | 1                   |
| HHT     | 2                   |
| HHH     | 3                   |

### Types of random variables

1\. Discrete Random Variable

Takes countable values.

Examples:

- Number of heads in coin tosses.
- Number of comparisons in an algorithm.
- Number of defective products.

2\. Continuous Random Variable

Takes values over a continuous range.

Examples:

- Execution time of an algorithm.
- Temperature.
- Time taken to complete a task.

### Expected value

The expected value is the weighted average of all possible values of a random variable.

For a discrete random variable:

\\[ \boxed{E[X]=\sum_x xP(X=x)} \\]

Where:

- \\(x\\) = possible value.
- \\(P(X=x)\\) = probability of that value.

Example: For a fair coin tossed once, let \\(X=1\\) for heads and \\(X=0\\) for tails.

\\[ E[X]=1\left(\frac12\right)+0\left(\frac12\right) \\]

\\[ \boxed{E[X]=0.5} \\]

## 7. Binomial Random Variable

A Binomial Random Variable represents the number of successes in a fixed number of independent trials, where each trial has only two possible outcomes: success or failure.

Examples:

- Number of heads in 10 coin tosses.
- Number of successful operations in a fixed number of attempts.
- Number of correctly classified items in a fixed test set.

### Conditions of Binomial Distribution

1. Fixed number of trials \\(n\\).
2. Each trial has two outcomes: success or failure.
3. Trials are independent.
4. Probability of success \\(p\\) remains constant.
5. Probability of failure is \\(q=1-p\\).

### Binomial probability formula

\\[ \boxed{P(X=r)=\binom nr p^r(1-p)^{n-r}} \\]

Where:

- \\(n\\) = total number of trials.
- \\(r\\) = number of successes.
- \\(p\\) = probability of success.
- \\(1-p\\) = probability of failure.

### Example

A fair coin is tossed 4 times. Find the probability of getting exactly 2 heads.

Given:

\\[ n=4,\quad r=2,\quad p=0.5 \\]

Using the binomial formula:

\\[ P(X=2)=\binom42(0.5)^2(0.5)^2 \\]

\\[ =6\times0.25\times0.25 \\]

\\[ \boxed{P(X=2)=0.375} \\]

Therefore, the probability of getting exactly two heads is 0.375 or 37.5%.

### Mean and variance

For a binomial random variable:

\\[ \boxed{E[X]=np} \\]

\\[ \boxed{Var(X)=np(1-p)} \\]

For the above example:

\\[ E[X]=4(0.5)=2 \\]

\\[ Var(X)=4(0.5)(0.5)=1 \\]

## 8. Mathematics for Randomized Algorithms

Randomized algorithms use probability and mathematical expectations to analyse their performance.

The important mathematical concepts are:

### A. Probability

Probability measures the likelihood of an event.

\\[ 0\leq P(A)\leq1 \\]

Example: Probability of selecting a particular element from an array of \\(n\\) elements uniformly at random:

\\[ P(A)=\frac1n \\]

### B. Expected Value

Expected value calculates the average outcome over repeated random experiments.

\\[ E[X]=\sum_x xP(X=x) \\]

In randomized algorithms, expected value is used to calculate expected running time.

### C. Indicator Random Variables

An indicator random variable represents whether an event occurs.

\\[ I_A= \begin{cases} 1 & \text{if event A occurs}\\\ 0 & \text{otherwise} \end{cases} \\]

Its expected value is:

\\[ \boxed{E[I_A]=P(A)} \\]

Example: In a randomized algorithm, define an indicator variable for whether a particular comparison occurs. Its expected value equals the probability of that comparison occurring.

### D. Linearity of Expectation

The expected value of a sum of random variables equals the sum of their expected values.

\\[ \boxed{E[X_1+X_2+\cdots+X_n] =E[X_1]+E[X_2]+\cdots+E[X_n]} \\]

This property holds even when the random variables are not independent.

It is especially useful in analysing the expected number of comparisons in Randomized Quick Sort.

### E. Expected Running Time

If an algorithm's execution time depends on random choices, its expected running time is:

\\[ \boxed{E[T]=\sum_i T_iP(T_i)} \\]

Where \\(T_i\\) represents a possible running time and \\(P(T_i)\\) its probability.

Application: Expected running time of Randomized Quick Sort is \\(O(n\log n)\\).

## 9. Difference between Random Variable and Binomial Random Variable

| Random Variable                                     | Binomial Random Variable                 |
| --------------------------------------------------- | ---------------------------------------- |
| General numerical representation of random outcomes | Special type of discrete random variable |
| Can be discrete or continuous                       | Always discrete                          |
| No fixed trial requirement                          | Requires fixed number of trials          |
| Can have different distributions                    | Follows binomial distribution            |
| Example: execution time                             | Example: number of heads in 10 tosses    |

## 10. Advantages and applications

Applications of randomized algorithms:

1. Randomized Quick Sort.
2. Primality testing.
3. Cryptography.
4. Hashing.
5. Monte Carlo simulations.
6. Distributed computing.
7. Computational geometry.

## 11. Important PYQ preparation checklist

Preparation progress

0/12

Definition and examples of randomized algorithms

Las Vegas and Monte Carlo algorithms

Reasons for using randomized algorithms

Randomized Quick Sort algorithm

Expected and worst-case complexity

Does randomized Quick Sort improve average-case complexity?

Random variable and its types

Expected value calculation

Binomial random variable and conditions

Binomial probability numerical

Indicator random variables

Linearity of expectation

## 12. PYQ-wise preparation strategy

| Exam          | Question                                      | What to prepare                     |
| ------------- | --------------------------------------------- | ----------------------------------- |
| Nov/Dec 2022  | Randomized Algorithm                          | Definition and example              |
| May/June 2023 | Randomized Algorithm                          | Definition and example              |
| May/June 2023 | Random Variable and Binomial Random Variable  | Definitions, formulas and numerical |
| May/June 2024 | Reasons for using randomized algorithms       | 8 reasons with explanations         |
| May/June 2025 | Randomized Quick Sort average-case complexity | Comparison and explanation          |
| May/June 2025 | Randomized algorithms and reasons             | Definition and advantages           |

### Most important formulas to memorize

| Formula                              | Purpose                  |
| ------------------------------------ | ------------------------ |
| \\(E[X]=\sum xP(X=x)\\)              | Expected value           |
| \\(P(X=r)=\binom nrp^r(1-p)^{n-r}\\) | Binomial probability     |
| \\(E[X]=np\\)                        | Binomial mean            |
| \\(Var(X)=np(1-p)\\)                 | Binomial variance        |
| \\(E[I_A]=P(A)\\)                    | Indicator variable       |
| \\(E[X+Y]=E[X]+E[Y]\\)               | Linearity of expectation |

My exam recommendation: Give priority to Randomized Quick Sort, Las Vegas vs Monte Carlo, and the mathematics of random variables. Practise the binomial probability numerical because it can help you answer the additional 8-mark question.