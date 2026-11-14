# 2. Job Sequencing with Deadlines and Profits — Greedy Method



Very Important

8–12 Marks



This topic appeared three times in your SPPU PYQs:

1. Nov 2023 Q1(a): Job sequencing with deadlines and profits; find feasible solutions and optimal maximum profit. (9 marks)
2. Nov 2023 Q2(a): Explain job scheduling using the greedy approach with an example. (12 marks)
3. May 2023 Q2(a): Schedule four jobs and five jobs using deadlines and profits. (8 marks)

Below is the answer in a format you can directly write in your SPPU end-semester examination.

## 1. Definition

Job Sequencing with Deadlines is a greedy algorithm used to schedule a set of jobs to maximize the total profit.

Each job has:

- Deadline (D): The time limit before which the job must be completed.
- Profit (P): The profit earned if the job is completed before or on its deadline.
- Execution time: Each job requires exactly one unit of time.

Only one job can be performed at a time. If a job misses its deadline, no profit is earned.

Objective: To schedule jobs in such a way that the total profit is maximum.

## 2. Greedy Strategy / Principle

The greedy method follows these steps:

1. Sort all jobs in descending order of their profits.
2. Select the job having the highest profit.
3. Assign the selected job to the latest available time slot before or on its deadline.
4. If no slot is available, reject that job.
5. Repeat the process until all jobs are considered.
6. Calculate the total profit of the scheduled jobs.

Important: Always place a job in the latest available slot before its deadline. This keeps earlier slots free for jobs having smaller deadlines.

## 3. Algorithm / Pseudocode

Algorithm: JobSequencing(J, n)

```
JobSequencing(J, n)
{
    Sort all jobs in decreasing order of profit;

    for i = 1 to n do
        slot[i] = 0;

    for i = 1 to n do
    {
        for j = min(deadline[i], n) down to 1 do
        {
            if slot[j] == 0 then
            {
                slot[j] = i;
                break;
            }
        }
    }

    Display scheduled jobs;
    Calculate maximum profit;
}
```

Here:

- `n` = Number of jobs.
- `slot[j] = 0` indicates that the time slot is empty.
- `deadline[i]` = Deadline of the selected job.
- `profit[i]` = Profit of the selected job.

## 4. Solved Example (Important for 9–12 Marks)

Consider the following jobs with their deadlines and profits.

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J2  | 1        | 19     |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J5  | 3        | 15     |

Step 1: Sort jobs in decreasing order of profit.

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J2  | 1        | 19     |
| J5  | 3        | 15     |

Step 2: Find maximum deadline.

Maximum deadline = 3.

Therefore, available time slots are:

Initially

### 1

Empty

### 2

Empty

### 3

Empty

Step 3: Schedule jobs one by one.

| Job | Deadline | Profit | Available slot | Decision |
| --- | -------- | ------ | -------------- | -------- |
| J1  | 2        | 100    | 2              | Selected |
| J3  | 2        | 27     | 1              | Selected |
| J4  | 1        | 25     | None           | Rejected |
| J2  | 1        | 19     | None           | Rejected |
| J5  | 3        | 15     | 3              | Selected |

Explanation:

- J1 has the highest profit (100). Place it in slot 2.
- J3 has profit 27. Slot 2 is occupied, so place it in slot 1.
- J4 cannot be scheduled because slot 1 is occupied.
- J2 cannot be scheduled because slot 1 is occupied.
- J5 has deadline 3. Place it in slot 3.

Step 4: Final schedule

## Final job schedule

### J3

Slot 1

## ₹27

### J1

Slot 2

## ₹100

### J5

Slot 3

## ₹15

Maximum Profit

# 142

100 + 27 + 15 = 142

Therefore,

\\[ \boxed{\text{Maximum Profit}=100+27+15=142} \\]

The optimal sequence is:

\\[ \boxed{J3 \rightarrow J1 \rightarrow J5} \\]

## 5. Feasible Solutions

A feasible solution is a sequence of jobs in which every selected job is completed before or on its deadline, without overlapping time slots.

For the above example:

| Solution   | Feasible? | Total Profit |
| ---------- | --------- | ------------ |
| J1, J3, J5 | Yes       | 142          |
| J3, J1, J5 | Yes       | 142          |
| J1, J5     | Yes       | 115          |
| J3, J4, J5 | No        | —            |

The optimal feasible solution gives maximum profit of 142.

Note: A feasible solution need not always be optimal.

## 6. Time Complexity Analysis

Let n be the number of jobs.

| Operation                 | Time Complexity |
| ------------------------- | --------------- |
| Sorting jobs by profit    | O(n log n)      |
| Finding an available slot | O(n)            |
| Scheduling all jobs       | O(n²)           |

Therefore, overall time complexity:

\\[ \boxed{O(n^2)} \\]

Space complexity:

\\[ \boxed{O(n)} \\]

## 7. Advantages

1. Simple and easy to implement.
2. Maximizes total profit for the standard unit-time job sequencing problem.
3. Uses a greedy approach to make decisions efficiently.
4. Suitable for scheduling jobs with deadlines and profits.

## 8. Applications

1. CPU task scheduling.
2. Production scheduling.
3. Project scheduling.
4. Manufacturing industries.
5. Resource allocation.

## SPPU Exam: How to prepare for all three PYQs

| PYQ                       | What you should write                                                                      |
| ------------------------- | ------------------------------------------------------------------------------------------ |
| Nov 2023 Q1(a) – 9 marks  | Definition + Greedy principle + Algorithm + Solved example + Feasible and optimal solution |
| Nov 2023 Q2(a) – 12 marks | Definition + Principle + Algorithm + Detailed example + Time complexity + Applications     |
| May 2023 Q2(a) – 8 marks  | Algorithm + Given job table + Scheduling table + Final sequence + Maximum profit           |

Important exam points

Remember these four things:

1. Sort jobs in decreasing order of profit.
2. Assign each job to the latest free slot before its deadline.
3. Reject a job if no suitable slot is available.
4. Standard straightforward implementation has O(n²) time complexity.

## Test your understanding

Question: Why do we schedule a selected job in the latest available slot before its deadline?

To keep earlier slots available for other jobs.

To increase the execution time of the job.

To reduce the deadline.

To schedule jobs randomly.

Check answer

Next topic: Fractional Knapsack Problem using Greedy Method.


# Job Scheduling Using Greedy Approach — 12 Marks

SPPU End-Semester Answer

Question (Nov 2023 Q2(a)): Explain job scheduling using the greedy approach with an example. (12 Marks)

Write the following answer in your examination. It includes the definition, greedy principle, algorithm, example, scheduling table and complexity analysis.

## 1. Introduction / Definition (2 Marks)

Job Scheduling with Deadlines is a greedy algorithm used to find an optimal sequence of jobs to maximize the total profit.

Each job has:

1. Job ID: Unique identification of the job.
2. Deadline (D): Maximum time by which the job must be completed.
3. Profit (P): Profit earned if the job is completed before or on its deadline.

Assumptions:

- Each job requires exactly one unit of time.
- Only one job can be executed at a time.
- A job earns profit only if completed before or on its deadline.
- The objective is to maximize total profit.

## 2. Greedy Approach (2 Marks)

The greedy approach selects the job having the highest profit first.

The following steps are performed:

1. Sort all jobs in decreasing order of their profits.
2. Find the maximum deadline among all jobs.
3. Create time slots equal to the maximum deadline.
4. Select the job with the highest profit.
5. Assign the job to the latest available slot before or on its deadline.
6. If no suitable slot is available, reject the job.
7. Repeat until all jobs are considered.
8. Calculate the total profit.

Greedy choice: Select the highest-profit job and place it in the latest available time slot before its deadline.

## 3. Algorithm / Pseudocode (2 Marks)

```
Algorithm JobScheduling(J, n)

{
    Sort jobs in decreasing order of profit;

    Find maximum deadline D;

    Initialize all slots from 1 to D as empty;

    for i = 1 to n do
    {
        for j = min(D, deadline[i]) down to 1 do
        {
            if slot[j] is empty then
            {
                slot[j] = J[i];
                break;
            }
        }
    }

    Display scheduled jobs;
    Calculate total profit;
}
```

Explanation:

- `J` = Set of jobs.
- `n` = Number of jobs.
- `D` = Maximum deadline.
- `slot[]` = Array used to store scheduled jobs.
- The inner loop searches for the latest available slot.
- If no slot is available, the job is rejected.

## 4. Example (4 Marks)

Consider the following five jobs with their deadlines and profits.

Given data:

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J2  | 1        | 19     |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J5  | 3        | 15     |

Step 1: Sort jobs in decreasing order of profit.

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J2  | 1        | 19     |
| J5  | 3        | 15     |

Step 2: Find maximum deadline.

Maximum deadline = 3.

Therefore, there are three available time slots.

Step 3: Schedule jobs one by one.

| Job | Deadline | Profit | Available slot | Result   |
| --- | -------- | ------ | -------------- | -------- |
| J1  | 2        | 100    | 2              | Selected |
| J3  | 2        | 27     | 1              | Selected |
| J4  | 1        | 25     | None           | Rejected |
| J2  | 1        | 19     | None           | Rejected |
| J5  | 3        | 15     | 3              | Selected |

Explanation of scheduling:

- J1 has the highest profit of 100. It is assigned to slot 2.
- J3 has profit 27. Slot 2 is occupied, so it is assigned to slot 1.
- J4 cannot be scheduled because slot 1 is occupied.
- J2 cannot be scheduled because slot 1 is occupied.
- J5 has deadline 3. It is assigned to slot 3.

Step 4: Final Job Schedule

Final scheduled jobs

### J3

Slot 1

# 27

### J1

Slot 2

# 100

### J5

Slot 3

# 15

Total Maximum Profit

# 142

Therefore, the optimal job sequence is:

\\[ \boxed{J3 \rightarrow J1 \rightarrow J5} \\]

Maximum Profit:

\\[ P=27+100+15 \\]

\\[ \boxed{P=142} \\]

Hence, the maximum profit obtained is 142.

## 5. Time Complexity Analysis (1 Mark)

Let n be the total number of jobs.

| Operation               | Complexity   |
| ----------------------- | ------------ |
| Sorting jobs            | O(n log n)   |
| Finding available slots | O(n) per job |
| Scheduling all jobs     | O(n²)        |

Overall time complexity:

\\[ \boxed{O(n^2)} \\]

Space complexity:

\\[ \boxed{O(n)} \\]

## 6. Applications (1 Mark)

1. CPU job scheduling.
2. Production planning.
3. Manufacturing industries.
4. Project scheduling.
5. Resource allocation.

## Important: How to score well in this 12-mark question

| Section                             | Marks to target |
| ----------------------------------- | --------------- |
| Definition and assumptions          | 2               |
| Greedy approach                     | 2               |
| Algorithm                           | 2               |
| Solved example and scheduling table | 4               |
| Complexity analysis                 | 1               |
| Applications                        | 1               |
| Total                               | 12              |

Must remember for exam

- Jobs must be sorted by decreasing profit.
- Place each job in the latest free slot before its deadline.
- Reject jobs when no suitable slot is available.
- Standard implementation complexity: O(n²).

Exam tip: Never skip the scheduling table. It demonstrates how you selected and rejected jobs, and makes your numerical answer easy to verify.

# Job Sequencing with Deadlines and Profits — 8 Marks

SPPU End-Semester Answer

Question (May 2023 Q2(a)): Schedule four jobs and five jobs using deadlines and profits. (8 Marks)

This question tests your ability to apply the Greedy Job Sequencing algorithm to two sets of jobs.

Since the question mentions four jobs and five jobs, solve both independently using the following method.

## 1. Definition (1 Mark)

Job Sequencing with Deadlines is a greedy algorithm used to schedule jobs to maximize total profit.

Each job has a deadline and an associated profit. Each job requires one unit of time, and only one job can be executed at a time.

Objective: Obtain maximum profit by scheduling jobs before or on their deadlines.

## 2. Greedy Algorithm (1 Mark)

1. Sort jobs in decreasing order of profit.
2. Find the maximum deadline.
3. Create empty time slots.
4. Select jobs in decreasing order of profit.
5. Place each job in the latest available slot before or on its deadline.
6. Reject the job if no slot is available.
7. Calculate total profit.

## 3. Scheduling Four Jobs (3 Marks)

Consider the following four jobs:

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 60     |
| J2  | 1        | 100    |
| J3  | 3        | 20     |
| J4  | 2        | 40     |

Step 1: Sort jobs in descending order of profit.

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J2  | 1        | 100    |
| J1  | 2        | 60     |
| J4  | 2        | 40     |
| J3  | 3        | 20     |

Step 2: Find maximum deadline.

Maximum deadline = 3.

Therefore, three time slots are available.

Step 3: Schedule the jobs.

| Job | Deadline | Profit | Slot | Decision |
| --- | -------- | ------ | ---- | -------- |
| J2  | 1        | 100    | 1    | Selected |
| J1  | 2        | 60     | 2    | Selected |
| J4  | 2        | 40     | None | Rejected |
| J3  | 3        | 20     | 3    | Selected |

Final schedule:

### J2

Slot 1

### J1

Slot 2

### J3

Slot 3

Maximum Profit

# 180

\\[ 100+60+20=\boxed{180} \\]

Therefore, the optimal sequence is:

\\[ \boxed{J2\rightarrow J1\rightarrow J3} \\]

## 4. Scheduling Five Jobs (2 Marks)

Consider the following five jobs:

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J2  | 1        | 19     |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J5  | 3        | 15     |

Step 1: Sort jobs in decreasing order of profit.

| Job | Deadline | Profit |
| --- | -------- | ------ |
| J1  | 2        | 100    |
| J3  | 2        | 27     |
| J4  | 1        | 25     |
| J2  | 1        | 19     |
| J5  | 3        | 15     |

Step 2: Schedule jobs.

| Job | Deadline | Profit | Slot | Decision |
| --- | -------- | ------ | ---- | -------- |
| J1  | 2        | 100    | 2    | Selected |
| J3  | 2        | 27     | 1    | Selected |
| J4  | 1        | 25     | None | Rejected |
| J2  | 1        | 19     | None | Rejected |
| J5  | 3        | 15     | 3    | Selected |

Final schedule:

### J3

Slot 1

### J1

Slot 2

### J5

Slot 3

Maximum Profit

# 142

\\[ 100+27+15=\boxed{142} \\]

Therefore, the optimal sequence is:

\\[ \boxed{J3\rightarrow J1\rightarrow J5} \\]

## 5. Time Complexity (1 Mark)

Let n be the number of jobs.

- Sorting: \\(O(n\log n)\\)
- Finding available slots: \\(O(n)\\) per job.
- Total scheduling: \\(O(n^2)\\).

\\[ \boxed{T(n)=O(n^2)} \\]

Space complexity:

\\[ \boxed{O(n)} \\]

## Final revision: Remember these results

| Particulars      | Four jobs  | Five jobs  |
| ---------------- | ---------- | ---------- |
| Maximum deadline | 3          | 3          |
| Jobs selected    | J2, J1, J3 | J3, J1, J5 |
| Jobs rejected    | J4         | J4, J2     |
| Maximum profit   | 180        | 142        |

Exam preparation tip

For this 8-mark question, focus on:

1. Writing the greedy steps.
2. Sorting the jobs by profit.
3. Showing the scheduling table.
4. Showing the final sequence and maximum profit.

Important: These are illustrative job datasets because the exact numerical data from the May 2023 question has not been provided here. If you upload that question-paper page, I can solve the exact four-job and five-job datasets rather than these practice examples.