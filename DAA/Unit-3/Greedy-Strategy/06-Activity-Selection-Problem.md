4. Activity Selection Problem Using Greedy Approach — 9 Marks

SPPU End-Semester Preparation
 9 Marks

Question (May 2025 Q1(b)): Given seven activities with start and finish times, use the greedy algorithm to find the maximum number of non-conflicting activities. (9 marks)

This is an important Greedy Algorithm numerical problem.

Since the seven activities' actual start and finish times are not included in your message, let's understand the complete SPPU solving method using an illustrative example.
1. Definition (1 Mark)
The Activity Selection Problem is a greedy algorithm problem in which a set of activities is given, and each activity has a starting time and finishing time.

The objective is to select the maximum number of activities that do not overlap with each other, using a single resource.

Greedy principle: Always select the activity that finishes earliest among the available activities.
2. Greedy Approach (2 Marks)
The following steps are used:
1. Arrange all activities in increasing order of their finishing times.
2. Select the first activity because it has the earliest finishing time.
3. Consider the next activity.
4. If its starting time is greater than or equal to the finishing time of the previously selected activity, select it.
5. Otherwise, reject that activity.
6. Repeat until all activities are considered.
Selection condition:
\[
\boxed{S_i\geq F_j}
\]

Where:
- \(S_i\) = Starting time of the current activity.
- \(F_j\) = Finishing time of the previously selected activity.
3. Algorithm / Pseudocode (2 Marks)
Algorithm ActivitySelection(S, F, n)

{
    Sort activities in increasing order
    of finishing time;

    Select the first activity;

    k = 1;

    for i = 2 to n do
    {
        if S[i] >= F[k] then
        {
            Select activity i;
            k = i;
        }
    }

    Display selected activities;
}


Explanation:
- S[] stores the starting times.
- F[] stores the finishing times.
- n represents the total number of activities.
- k represents the previously selected activity.
- The algorithm selects activities that do not overlap.
4. Solved Numerical Example (3 Marks)
Consider the following seven activities:
Activity	Start Time (S)	Finish Time (F)
A1	1	3
A2	2	5
A3	4	6
A4	6	7
A5	5	8
A6	8	9
A7	8	10

Step 1: Arrange activities in increasing order of finishing time.

In this example, the activities are already sorted.
Activity	Start	Finish
A1	1	3
A2	2	5
A3	4	6
A4	6	7
A5	5	8
A6	8	9
A7	8	10

Step 2: Select activities using the greedy approach.
- Select A1 (1–3), as it has the earliest finishing time.
- A2 (2–5): Reject because 2 is less than 3.
- A3 (4–6): Select because 4 is greater than or equal to 3.
- A4 (6–7): Select because 6 is greater than or equal to 6.
- A5 (5–8): Reject because 5 is less than 7.
- A6 (8–9): Select because 8 is greater than or equal to 7.
- A7 (8–10): Reject because 8 is less than 9.
Step 3: Activity selection table.
Activity	Start	Finish	Decision
A1	1	3	Selected
A2	2	5	Rejected
A3	4	6	Selected
A4	6	7	Selected
A5	5	8	Rejected
A6	8	9	Selected
A7	8	10	Rejected

Activity Timeline:
Selected activities
A1

1–3

A3

4–6

A4

6–7

A6

8–9


Green blocks represent selected non-conflicting activities. Activity endpoints may touch.
Step 4: Final Answer

Selected activities:
\[
\boxed{A1,A3,A4,A6}
\]

Maximum number of non-conflicting activities:
\[
\boxed{4}
\]

Therefore, the maximum number of activities that can be performed without conflict is 4.
5. Time Complexity Analysis (1 Mark)
Let n be the total number of activities.
Operation	Time Complexity
Sorting activities	O(n log n)
Selecting activities	O(n)

Overall time complexity:
\[
\boxed{O(n\log n)}
\]

If activities are already sorted by finishing time:
\[
\boxed{O(n)}
\]

Space complexity: \(O(1)\) auxiliary space for the iterative selection, excluding sorting storage.
6. Applications
1. Meeting room scheduling.
2. CPU resource scheduling.
3. Classroom timetable management.
4. Event planning.
5. Reservation systems.

Important SPPU Exam Revision
Remember these four points:
1. Sort by increasing finishing time.
2. Select the activity that finishes earliest.
3. Select the next activity only if its start time is greater than or equal to the previous selected activity's finish time.
4. Count the selected activities to obtain the maximum number.
   
   Most important formula:
\[
\boxed{S_i\geq F_{\text{previous}}}
\]


Test your understanding
Question: Which criterion is used to select the first activity in the Activity Selection Problem?

Activity with earliest finishing time.

Activity with latest starting time.

Activity with longest duration.

Activity with earliest starting time.

Check answer
Next topic: Minimum Spanning Tree using Prim's Algorithm or Kruskal's Algorithm.

For exact preparation, upload the May 2025 Q1(b) question-paper image. I can solve all seven actual activities, rather than the illustrative dataset above.