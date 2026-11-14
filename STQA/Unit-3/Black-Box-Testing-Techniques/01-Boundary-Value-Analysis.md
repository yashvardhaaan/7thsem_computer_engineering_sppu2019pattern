# A. White Box, Black Box and Grey Box Testing



SPPU PYQ – 6 Marks

High Priority



The four questions from May 2023, May 2024 and May 2025 cover three concepts. Instead of writing separate answers repeatedly, prepare the following consolidated answers.

## Q1. Differentiate between Black Box Testing and White Box Testing. (May 2023 – 6 Marks)

| Black Box Testing                                                                                                | White Box Testing                                                                                     |
| ---------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| 1. It is a software testing technique in which the internal structure of the program is not known to the tester. | 1. It is a testing technique in which the internal structure and source code are known to the tester. |
| 2. It focuses on testing the functionality of the software.                                                      | 2. It focuses on testing the internal logic and structure of the software.                            |
| 3. It is also called behavioural or functional testing.                                                          | 3. It is also called structural or glass box testing.                                                 |
| 4. Test cases are designed based on software requirements and specifications.                                    | 4. Test cases are designed based on program code and logic.                                           |
| 5. Programming knowledge is generally not required.                                                              | 5. Programming knowledge is required.                                                                 |
| 6. It is mainly performed by testers.                                                                            | 6. It is mainly performed by developers or testers with programming knowledge.                        |
| 7. Examples: Equivalence Partitioning and Boundary Value Analysis.                                               | 7. Examples: Statement Coverage, Branch Coverage and Path Coverage.                                   |

Conclusion: Black Box Testing checks what the software does, whereas White Box Testing checks how the software works internally.

## Q2. Explain White Box Testing in detail. (May 2024 – 6 Marks)

Definition:

White Box Testing is a software testing technique in which the internal structure, source code, logic and working of the application are examined to verify whether the software functions correctly.

It is also known as Structural Testing, Glass Box Testing or Clear Box Testing.

Characteristics:

1. It examines the internal code and program structure.
2. It requires programming knowledge.
3. It checks logical conditions, loops and execution paths.
4. Test cases are designed by analysing the source code.
5. It helps identify logical errors, coding mistakes and security vulnerabilities.

Types of White Box Testing:

1. Statement Coverage: Ensures that every executable statement in the program is executed at least once.
2. Branch Coverage: Ensures that every possible branch (True and False) of a decision is executed.
3. Condition Coverage: Checks whether each individual Boolean condition evaluates to both True and False.
4. Path Coverage: Ensures that different execution paths of the program are tested.

Example:

Consider the following program:

```
int a = 10;

if (a > 5) {
    System.out.println("Greater");
} else {
    System.out.println("Smaller");
}
```

- If `a = 10`, the IF condition becomes True.
- If `a = 3`, the IF condition becomes False.

Both test cases are executed to check the internal decision-making logic.

Advantages:

1. Helps detect logical and coding errors.
2. Improves code quality and reliability.
3. Helps identify unused code.
4. Provides better code coverage.

Disadvantages:

1. Requires programming knowledge.
2. Time-consuming for large applications.
3. Testing every possible path may be difficult.
4. Cannot easily identify missing requirements.

Conclusion: White Box Testing ensures that the internal code, logic and execution paths of software work correctly.

## Q3. Explain Grey Box Testing in detail. (May 2024 – 6 Marks)

Definition:

Grey Box Testing is a software testing technique that combines the features of Black Box Testing and White Box Testing.

In this technique, the tester has partial knowledge of the internal structure and design of the application but tests the software mainly through its external functionality.

Characteristics:

1. It combines Black Box and White Box Testing.
2. The tester has partial knowledge of internal code and architecture.
3. It focuses on both functionality and internal data flow.
4. It is useful for testing complex applications.
5. It helps identify defects related to integration and data handling.

Techniques of Grey Box Testing:

1. Matrix Testing: Examines the relationship between program variables and their usage.
2. Regression Testing: Checks whether new changes affect existing functionality.
3. Pattern Testing: Analyses previous defects and identifies similar error patterns.
4. Orthogonal Array Testing: Uses selected combinations of input values to reduce the number of test cases.

Example:

Consider an online shopping application.

A tester knows that the application uses a database to store customer details and order information but does not have complete access to the source code.

The tester performs the following checks:

- Enters customer details through the user interface.
- Places an order.
- Checks whether the order is correctly stored in the database.
- Verifies whether the correct order details are displayed.

This tests external functionality along with partial internal knowledge.

Advantages:

1. Combines advantages of Black Box and White Box Testing.
2. Helps identify defects related to database and integration.
3. Requires less internal code knowledge than White Box Testing.
4. Provides better test coverage than pure Black Box Testing.

Disadvantages:

1. Limited knowledge of internal code.
2. Cannot test all internal execution paths.
3. Requires knowledge of software architecture.
4. Designing test cases can be complex.

Conclusion: Grey Box Testing provides a balanced approach by testing software functionality using partial knowledge of its internal structure.

## Exam preparation: PYQ mapping

| Question                              | Examination | Marks | Preparation |
| ------------------------------------- | ----------- | ----- | ----------- |
| Differentiate Black Box and White Box | May 2023    | 6     | Q1          |
| Explain White Box and Grey Box        | May 2024    | 6     | Q2 + Q3     |
| State White Box Testing               | May 2025    | 6     | Q2          |
| State Black Box Testing               | May 2025    | 6     | Q1          |

Important exam strategy:

- Prepare Q1 thoroughly for the comparison question.
- For May 2025's White Box question, write its definition, characteristics, types, example, advantages and disadvantages.
- For the Black Box question, write its definition, characteristics, techniques, example, advantages and disadvantages. You can reuse the comparison points from Q1.

Study priority: Very High

Next topic: I can prepare the Black Box Testing standalone 6-mark answer in the same SPPU exam format if you need it.