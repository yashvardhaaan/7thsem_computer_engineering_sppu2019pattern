# E. Experience-Based Techniques



SPPU PYQ – 6 Marks

Very High Priority



There are four PYQs covering Experience-Based Testing, Error Guessing, Exploratory Testing and Adhoc Testing.

Important: Exploratory Testing appears twice (Nov 2022 and May 2025). Prepare it once thoroughly instead of memorising separate answers.

## Q1. Write a brief outline of Experience-Based Techniques. (May 2023 – 6 Marks)

Definition:

Experience-Based Testing is a software testing technique in which test cases are designed based on the tester's knowledge, experience, intuition and understanding of previous defects.

In this technique, testers use their practical experience to identify defects that may not be detected through formal testing techniques.

Types of Experience-Based Testing Techniques:

### 1. Error Guessing

- Test cases are designed based on the tester's experience and knowledge of common errors.
- The tester predicts areas where defects are likely to occur.
- Example: Entering blank input, special characters or invalid passwords in a login form.

### 2. Exploratory Testing

- Testing and learning about the application are performed simultaneously.
- Testers explore different functionalities without strictly following predefined test cases.
- Example: Exploring an online shopping application by adding products, changing quantities and applying invalid coupons.

### 3. Adhoc Testing

- Testing is performed informally without predefined test cases or documentation.
- The tester randomly checks application functionality to identify defects.
- Example: Randomly clicking buttons and entering unexpected inputs to identify application failures.

Advantages:

1. Helps identify unexpected defects.
2. Requires less documentation.
3. Uses the practical knowledge of testers.
4. Useful when requirements are incomplete.
5. Helps discover defects missed by formal testing.

Disadvantages:

1. Depends heavily on tester experience.
2. Test coverage may be incomplete.
3. Difficult to reproduce some defects.
4. Results may vary between testers.

Conclusion: Experience-Based Testing uses the tester's knowledge and practical experience to identify defects that may be missed by other testing techniques.

## Q2. Explain Error Guessing and Exploratory Testing. (Nov 2022 – 6 Marks)

### 1. Error Guessing

Definition:

Error Guessing is an experience-based testing technique in which test cases are designed based on the tester's experience, intuition and knowledge of common software errors.

The tester guesses where defects are most likely to occur and tests those areas.

Common Areas Tested:

1. Empty or blank input fields.
2. Invalid or incorrect data.
3. Division by zero.
4. Special characters in input fields.
5. Incorrect date formats.
6. Very large or very small input values.

Example:

Consider a login page.

A tester tries the following inputs:

- Empty username and password.
- Incorrect password.
- Special characters in username.
- Very long password.
- Spaces in username.

The tester checks whether the application handles these situations correctly.

Advantages:

1. Helps identify common and unexpected errors.
2. Requires less preparation.
3. Useful when documentation is unavailable.
4. Saves testing time.

Disadvantages:

1. Depends on tester experience.
2. Cannot guarantee complete test coverage.
3. Difficult to measure effectiveness.

### 2. Exploratory Testing

Definition:

Exploratory Testing is a software testing technique in which testers simultaneously learn about the application, design test cases and execute tests without strictly following predefined test cases.

It allows testers to explore different application functionalities and discover unexpected defects.

Characteristics:

1. Test design and execution happen simultaneously.
2. No strict predefined test cases are required.
3. Depends on tester knowledge and creativity.
4. Helps discover unexpected defects.
5. Testing can be adapted based on previous results.

Process of Exploratory Testing:

1. Learning: Understand the application and its functionalities.
2. Test Design: Identify areas and scenarios to test.
3. Test Execution: Execute tests while exploring the application.
4. Result Analysis: Analyse the results and identify defects.
5. Reporting: Record and report the identified defects.

Example:

Consider an online shopping application.

A tester explores the application by:

- Registering a new account.
- Searching for products.
- Adding and removing products from the cart.
- Applying invalid discount coupons.
- Changing product quantities.
- Testing checkout with incomplete information.

The tester discovers unexpected errors while exploring the application.

Advantages:

1. Identifies unexpected defects.
2. Encourages creative testing.
3. Useful when requirements are incomplete.
4. Provides quick feedback.

Disadvantages:

1. Depends on tester skills.
2. Difficult to measure test coverage.
3. Results may not be reproducible without proper documentation.

Conclusion: Error Guessing predicts defects using experience, whereas Exploratory Testing combines learning, test design and execution simultaneously.

## Q3. Explain Adhoc Testing with an example. (Nov 2023 – 6 Marks)

Definition:

Adhoc Testing is an informal software testing technique performed without predefined test cases, test plans or formal documentation.

It is carried out randomly by testers to identify defects and unexpected application behaviour.

Characteristics:

1. No predefined test cases are required.
2. Testing is performed randomly and informally.
3. It depends on tester knowledge and intuition.
4. No formal documentation is necessary, although defects should be reported.
5. It is generally performed after basic functional testing.

Types of Adhoc Testing:

1\. Buddy Testing: Two people, generally a developer and tester, work together to test the same functionality and identify defects.

2\. Pair Testing: Two testers work together on the same application. One performs testing while the other observes and suggests test scenarios.

3\. Monkey Testing: Random inputs and actions are performed to check whether the application crashes or behaves unexpectedly.

Example:

Consider an online banking application.

A tester performs random actions such as:

- Entering incorrect login credentials.
- Clicking the transfer button multiple times.
- Entering negative transaction amounts.
- Refreshing the page during a transaction.
- Leaving mandatory fields empty.

The tester observes whether the application crashes, displays incorrect results or allows invalid transactions.

Advantages:

1. Helps identify unexpected defects.
2. Requires less preparation time.
3. Useful for finding application crashes.
4. Can be performed without detailed documentation.

Disadvantages:

1. Testing is unstructured.
2. Test coverage cannot be measured accurately.
3. Depends on tester experience.
4. Difficult to reproduce defects if actions are not recorded.

Conclusion: Adhoc Testing is an informal testing technique that helps discover unexpected defects through random testing without predefined test cases.

## Q4. Explain Exploratory Testing. (May 2025 – 6 Marks)

Repeated PYQ – Prepare once

Definition:

Exploratory Testing is a software testing technique in which testers simultaneously learn about the application, design test cases and execute them.

Unlike traditional testing, it does not strictly depend on predefined test cases.

Characteristics:

1. Test design and execution happen simultaneously.
2. Testers explore application functionalities freely.
3. It depends on tester knowledge and creativity.
4. Test cases can change based on observations.
5. Helps identify unexpected defects.

Steps involved:

1. Understand the application.
2. Identify important functionalities.
3. Explore different test scenarios.
4. Execute tests and observe behaviour.
5. Record and report defects.

Example:

Consider a railway ticket booking application.

A tester explores the application by:

- Searching for trains.
- Selecting different travel dates.
- Entering invalid passenger details.
- Booking tickets without filling mandatory fields.
- Trying to book unavailable seats.
- Refreshing the page during booking.

The tester identifies unexpected defects during exploration.

Advantages:

1. Finds defects that predefined test cases may miss.
2. Useful when requirements are incomplete.
3. Encourages creative thinking.
4. Provides immediate feedback.

Disadvantages:

1. Depends on tester experience.
2. Difficult to measure coverage.
3. Requires proper recording to reproduce defects.

Conclusion: Exploratory Testing is an effective technique in which learning, test design and test execution are performed together to discover unexpected software defects.

## Important comparison: Error Guessing vs Exploratory Testing vs Adhoc Testing

| Error Guessing                       | Exploratory Testing                                       | Adhoc Testing                                        |
| ------------------------------------ | --------------------------------------------------------- | ---------------------------------------------------- |
| Based on experience and intuition.   | Based on learning and exploration.                        | Based on random and informal testing.                |
| Tester predicts possible errors.     | Tester learns, designs and executes tests simultaneously. | Tester performs tests without predefined test cases. |
| Focuses on likely error-prone areas. | Focuses on discovering unexpected defects.                | Focuses on finding defects through random actions.   |
| Uses knowledge of common defects.    | Uses observation, learning and creativity.                | Uses tester intuition and experience.                |
| Example: Testing blank inputs.       | Example: Exploring checkout functionality.                | Example: Randomly clicking buttons.                  |

## SPPU PYQ mapping and preparation priority

| Question                               | Examination | Marks | Preparation |
| -------------------------------------- | ----------- | ----- | ----------- |
| Error Guessing and Exploratory Testing | Nov 2022    | 6     | Q2          |
| Outline of Experience-Based Techniques | May 2023    | 6     | Q1          |
| Adhoc Testing with example             | Nov 2023    | 6     | Q3          |
| Exploratory Testing                    | May 2025    | 6     | Q4          |

Preparation status: 3 core answers + 1 repeated answer

## Exam preparation strategy

1. Highest priority: Exploratory Testing – repeated in two examinations.
2. High priority: Error Guessing – prepare definition, common error areas and example.
3. High priority: Adhoc Testing – prepare its characteristics and three types.
4. Important: Experience-Based Techniques – learn all three techniques and their differences.

Quick revision trick:

- Error Guessing → Guess errors.
- Exploratory Testing → Learn + Design + Execute.
- Adhoc Testing → Random and informal testing.

Important SPPU tip: If the question asks for the outline of Experience-Based Techniques, explain all three techniques rather than writing only the definition. This gives your answer sufficient coverage for 6 marks.