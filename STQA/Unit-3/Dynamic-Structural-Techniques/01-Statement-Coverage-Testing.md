# C. Structural Testing and Coverage



SPPU PYQ – 6 Marks

Very High Priority



There are four PYQs covering five important coverage techniques. Statement Coverage and Branch Coverage are repeated in May 2023 and November 2024.

Prepare the following consolidated answers instead of studying repeated questions separately.

## Q1. Explain Statement Coverage Testing and Branch Coverage Testing. (May 2023 – 6 Marks, Nov 2024 – 6 Marks)

### 1. Statement Coverage Testing

Definition:

Statement Coverage is a White Box Testing technique that ensures every executable statement in the program is executed at least once during testing.

Formula:

\\[ \text{Statement Coverage} = \frac{\text{Executed Statements}}{\text{Total Statements}} \times 100 \\]

Example:

```
int a = 10;

if (a > 5) {
    System.out.println("Greater");
}

System.out.println("End");
```

Test input: `a = 10`

Executed statements:

1. `int a = 10`
2. `if (a > 5)`
3. `System.out.println("Greater")`
4. `System.out.println("End")`

All executable statements are executed.

Statement Coverage = 100%.

Advantages:

1. Identifies statements that are never executed.
2. Improves code coverage.
3. Simple to understand and implement.

Limitation: It does not guarantee that every decision outcome is tested.

### 2. Branch Coverage Testing

Definition:

Branch Coverage is a White Box Testing technique that ensures every possible outcome of a decision statement, such as True and False, is executed at least once.

Formula:

\\[ \text{Branch Coverage} = \frac{\text{Executed Branches}}{\text{Total Branches}} \times 100 \\]

Example:

```
int a = 10;

if (a > 5) {
    System.out.println("Greater");
} else {
    System.out.println("Smaller");
}
```

Test cases:

- Test Case 1: `a = 10` → Condition True → Greater.
- Test Case 2: `a = 3` → Condition False → Smaller.

Both branches are executed.

Branch Coverage = 100%.

Advantages:

1. Tests all decision outcomes.
2. Helps identify logical errors.
3. Provides better decision testing than statement coverage.

Limitation: It does not guarantee that every possible execution path is tested.

Conclusion: Statement Coverage checks whether every statement executes, whereas Branch Coverage checks whether every decision outcome executes.

## Q2. Explain Path Coverage Testing and Conditional Coverage Testing. (Nov 2022 – 6 Marks)

### 1. Path Coverage Testing

Definition:

Path Coverage is a White Box Testing technique that ensures all possible execution paths in a program are executed at least once.

An execution path is a sequence of statements and decisions followed during program execution.

Example:

```
if (a > 5) {
    System.out.println("A");
} else {
    System.out.println("B");
}

if (b > 10) {
    System.out.println("C");
} else {
    System.out.println("D");
}
```

Possible execution paths:

1. A → C
2. A → D
3. B → C
4. B → D

To achieve 100% Path Coverage, all four paths must be executed.

Advantages:

1. Provides detailed testing of program logic.
2. Helps identify errors in execution paths.
3. Detects defects that may be missed by statement coverage.

Limitations:

1. The number of paths can increase rapidly.
2. Testing all paths may be impractical.
3. Loops can create an extremely large or infinite number of paths.

### 2. Conditional Coverage Testing

Definition:

Conditional Coverage is a White Box Testing technique that ensures every individual Boolean condition in a decision statement evaluates to both True and False at least once.

Example:

```
if (a > 5 && b < 10) {
    System.out.println("Valid");
}
```

There are two conditions:

- Condition 1: `a > 5`
- Condition 2: `b < 10`

Test cases:

| Test Case | a  | b  | Condition 1 | Condition 2 |
| --------- | -- | -- | ----------- | ----------- |
| 1         | 10 | 5  | True        | True        |
| 2         | 3  | 5  | False       | True        |
| 3         | 10 | 15 | True        | False       |

Here, both conditions have been evaluated as True and False.

Advantages:

1. Tests individual Boolean conditions.
2. Helps identify errors in complex conditions.
3. Improves testing of decision expressions.

Limitations:

1. Does not guarantee all execution paths are tested.
2. May require multiple test cases for complex conditions.

Conclusion: Path Coverage tests all possible execution paths, whereas Conditional Coverage tests the True and False outcomes of individual Boolean conditions.

## Q3. Discuss Loop Coverage Testing and its types. (May 2024 – 6 Marks)

Definition:

Loop Coverage Testing is a White Box Testing technique used to verify whether loops in a program execute correctly for different numbers of iterations.

It helps identify errors related to loop initialization, termination conditions and repeated execution.

Types of Loop Coverage Testing:

### 1. Simple Loop Testing

Used for testing a single loop in a program.

The following cases are tested:

- Zero iterations.
- One iteration.
- Two iterations.
- Typical number of iterations.
- Maximum number of iterations.
- One more than the maximum number of iterations, where applicable.

Example:

```
for (int i = 0; i < n; i++) {
    System.out.println(i);
}
```

Test with different values of `n`, such as 0, 1, 2, 5 and the boundary limit.

### 2. Nested Loop Testing

Used when one loop is present inside another loop.

Testing approach:

- Start with the innermost loop.
- Keep the outer loops at their minimum values.
- Test the innermost loop.
- Move outward and test the next loop.
- Continue until all loops are tested.

Example: A nested loop used to print rows and columns of a matrix.

### 3. Concatenated Loop Testing

Used when two or more loops are placed one after another.

- If loops are independent, test each loop separately.
- If loops are dependent, test them together.
- Check whether the output of one loop affects the next loop.

Example:

```
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}

for (int j = 0; j < 3; j++) {
    System.out.println(j);
}
```

Both loops are tested independently.

### 4. Unstructured Loop Testing

Unstructured loops contain irregular control flow, making them difficult to test.

- Such loops should ideally be redesigned into structured loops.
- Testing focuses on identifying incorrect execution and termination conditions.

Advantages of Loop Coverage Testing:

1. Identifies infinite loop errors.
2. Detects incorrect loop termination conditions.
3. Checks boundary conditions.
4. Improves program reliability.

Conclusion: Loop Coverage Testing ensures that loops execute correctly under different iteration conditions and helps identify looping errors.

## Q4. Difference between Statement Coverage, Branch Coverage, Path Coverage and Conditional Coverage

This comparison is useful for short-answer questions and for understanding the differences between the four techniques.

| Technique            | What does it check?                                             |
| -------------------- | --------------------------------------------------------------- |
| Statement Coverage   | Every executable statement is executed.                         |
| Branch Coverage      | Every decision outcome (True/False) is executed.                |
| Path Coverage        | Every possible execution path is executed.                      |
| Conditional Coverage | Every individual Boolean condition evaluates to True and False. |

Remember the difference:

- Statement = Lines of code.
- Branch = Decision outcomes.
- Path = Complete execution sequence.
- Condition = Individual Boolean expressions.

## SPPU PYQ mapping and preparation priority

| Question                               | Examination | Marks | Preparation |
| -------------------------------------- | ----------- | ----- | ----------- |
| Path Coverage and Conditional Coverage | Nov 2022    | 6     | Q2          |
| Statement Coverage and Branch Coverage | May 2023    | 6     | Q1          |
| Loop Coverage and its types            | May 2024    | 6     | Q3          |
| Statement Coverage and Branch Coverage | Nov 2024    | 6     | Q1          |

Preparation status: 3 core answers

## Important exam strategy

1. Highest priority: Statement Coverage and Branch Coverage — repeated twice.
2. High priority: Path Coverage and Conditional Coverage.
3. High priority: Loop Coverage and its four types.

Important: For every 6-mark coverage question, write the definition, formula (where applicable), example, explanation and advantages. Examples are particularly useful for securing full marks.

You should understand the difference between the four coverage techniques rather than memorising only their definitions.