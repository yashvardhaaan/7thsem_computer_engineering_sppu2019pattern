# I. Other Testing Questions



SPPU PYQ – 5/6 Marks

High Priority



There are four PYQs in this section. Dynamic Techniques is repeated in November 2023 and November 2024, so prepare it once. The remaining topics are Risk-Based Testing and Use Case Testing.

## Q1. Explain Dynamic Techniques. (Nov 2023 – 6 Marks, Nov 2024 – 6 Marks)

Definition:

Dynamic Testing is a software testing technique in which the software is executed with different input values to verify its actual behaviour and output.

It helps identify defects by comparing the actual output with the expected output.

Characteristics:

1. Requires execution of the software.
2. Uses test cases with different input values.
3. Verifies actual application behaviour.
4. Helps identify runtime errors and failures.
5. Can be performed at different levels of testing.

Types of Dynamic Testing Techniques:

Dynamic Testing techniques are mainly classified into three categories:

### 1. Black Box Testing

- Internal source code is not visible to the tester.
- Testing is based on requirements and specifications.
- Focuses on input and output behaviour.

Examples:

- Equivalence Class Partitioning.
- Boundary Value Analysis.
- Decision Table Testing.
- State Transition Testing.

### 2. White Box Testing

- Internal source code and program structure are examined.
- Requires programming knowledge.
- Focuses on statements, branches, conditions and execution paths.

Examples:

- Statement Coverage.
- Branch Coverage.
- Path Coverage.
- Condition Coverage.

### 3. Grey Box Testing

- Combines Black Box and White Box Testing.
- Tester has partial knowledge of internal software structure.
- Focuses on both external functionality and internal data flow.

Example: Testing an online shopping application by checking its user interface and verifying whether order information is correctly stored in the database.

Advantages of Dynamic Testing:

1. Identifies runtime errors.
2. Verifies actual software behaviour.
3. Checks functional requirements.
4. Helps identify performance and security issues.
5. Improves software reliability.

Conclusion: Dynamic Testing verifies software by executing it with different inputs and checking whether the actual results match the expected results.

## Q2. Explain Risk-Based Testing in detail. (May 2025 – 6 Marks)

Definition:

Risk-Based Testing is a software testing approach in which testing activities are prioritised based on the probability of failure and the impact of that failure on the software or business.

It focuses more testing effort on high-risk areas to reduce the possibility of serious defects.

Objectives:

1. Identify high-risk areas of the application.
2. Prioritise testing activities.
3. Reduce the possibility of critical failures.
4. Use testing resources efficiently.
5. Improve software quality and reliability.

Steps involved in Risk-Based Testing:

### 1. Risk Identification

Identify possible risks that may cause software failure.

Example: Payment failure in an online shopping application.

### 2. Risk Analysis

Evaluate each risk based on:

- Probability: How likely is the failure?
- Impact: How serious will the failure be?

### 3. Risk Prioritisation

Classify risks into High, Medium and Low categories.

### 4. Test Planning

Prepare test cases according to risk priority. High-risk functionalities receive more testing attention.

### 5. Test Execution

Execute test cases, starting with the highest-risk areas.

### 6. Risk Monitoring

Monitor identified risks and update priorities when requirements or software change.

Example:

Consider an online banking application.

| Functionality   | Probability of Failure | Impact | Risk Priority |
| --------------- | ---------------------- | ------ | ------------- |
| Fund Transfer   | High                   | High   | High          |
| User Login      | Medium                 | High   | High          |
| Profile Update  | Low                    | Low    | Low           |
| Theme Selection | Low                    | Low    | Low           |

In this application, Fund Transfer and User Login receive higher testing priority because their failure can cause serious problems.

Advantages:

1. Focuses on critical functionalities.
2. Saves testing time and resources.
3. Reduces business risks.
4. Helps identify serious defects early.
5. Improves testing efficiency.

Conclusion: Risk-Based Testing helps organisations focus testing efforts on high-risk functionalities and reduces the possibility of critical software failures.

## Q3. Explain Use Case Testing with an example. (In-Sem 2022 – 5 Marks)

Definition:

Use Case Testing is a Black Box Testing technique in which test cases are designed based on use cases to verify whether the software performs the expected actions from the user's point of view.

A use case describes the interaction between an actor (user or external system) and the application to achieve a particular goal.

Components of Use Case Testing:

1. Actor: Person or external system interacting with the application.
2. Precondition: Conditions that must be satisfied before execution.
3. Main Flow: Normal sequence of steps performed to achieve the goal.
4. Alternative Flow: Other possible successful sequences.
5. Exception Flow: Steps followed when an error occurs.
6. Postcondition: Final state after the use case is completed.

Example: Online Banking – Fund Transfer

[Free UML Use Case Diagram Template to Edit Online](https://images.openai.com/static-rsc-4/275aWJ7rOTHlYfI1AUnRTSmUF-V_dzw5aVkDMKTs0bYBaXUG5vZFdR_7QRdNZ1cSAfAWmbyIziXBmsfQxd2Ao73HbCXNGOHnms5tK_VcJdmnXcta4Zrwj2xQ5RN1pgbW8wDAeVYQy-KXydI7nWB00VQOPYffyWPP-ncvbXf7-yA?purpose=inline)

Use Case: Transfer Money

| Component        | Description                                                            |
| ---------------- | ---------------------------------------------------------------------- |
| Actor            | Bank Customer                                                          |
| Precondition     | Customer must be logged in.                                            |
| Main Flow        | Select beneficiary, enter amount, verify details and confirm transfer. |
| Alternative Flow | Select a different saved beneficiary.                                  |
| Exception Flow   | Insufficient balance or invalid beneficiary details.                   |
| Postcondition    | Amount is transferred and transaction record is generated.             |

Test Scenarios:

1. Transfer money with valid beneficiary details.
2. Transfer an amount within the available balance.
3. Attempt transfer with insufficient balance.
4. Enter an invalid beneficiary account number.
5. Cancel the transaction before confirmation.

Advantages:

1. Tests software from the user's perspective.
2. Covers real-world business scenarios.
3. Helps identify missing functionalities.
4. Improves requirement validation.

Conclusion: Use Case Testing verifies whether an application performs its intended functions correctly through real-world user interactions.

## Q4. Difference between Static Testing and Dynamic Testing

Additional important preparation

| Static Testing                                | Dynamic Testing                                                     |
| --------------------------------------------- | ------------------------------------------------------------------- |
| Software is tested without execution.         | Software is tested through execution.                               |
| Examines documents, design and source code.   | Examines actual software behaviour.                                 |
| Identifies defects before execution.          | Identifies failures during execution.                               |
| Does not require test execution.              | Requires test execution.                                            |
| Examples: Reviews, Walkthroughs, Inspections. | Examples: Functional Testing, Performance Testing and Unit Testing. |

Remember:

- Static Testing = Without execution.
- Dynamic Testing = With execution.

## SPPU PYQ mapping and preparation priority

| Question                      | Examination | Marks | Preparation |
| ----------------------------- | ----------- | ----- | ----------- |
| Explain Dynamic Techniques    | Nov 2023    | 6     | Q1          |
| Explain Dynamic Techniques    | Nov 2024    | 6     | Q1          |
| Risk-Based Testing in detail  | May 2025    | 6     | Q2          |
| Use Case Testing with example | In-Sem 2022 | 5     | Q3          |

Preparation status: 3 core answers + 1 additional comparison

## Exam preparation strategy

| Priority | Topic              | Reason                                     |
| -------- | ------------------ | ------------------------------------------ |
| 1        | Dynamic Techniques | Repeated in two consecutive November exams |
| 2        | Risk-Based Testing | Asked in May 2025                          |
| 3        | Use Case Testing   | Asked in In-Sem 2022                       |
| 4        | Static vs Dynamic  | Important conceptual comparison            |

Quick revision:

- Dynamic Testing → Execute software and verify results.
- Risk-Based Testing → Test high-risk areas first.
- Use Case Testing → Test application from the user's perspective.
- Static Testing → No program execution.

Important exam tip: For Risk-Based Testing, remember the two most important factors: Probability of Failure and Impact of Failure. For Use Case Testing, always include an example with preconditions, main flow, alternative flow and exception flow. These make your answers more complete for SPPU examinations.