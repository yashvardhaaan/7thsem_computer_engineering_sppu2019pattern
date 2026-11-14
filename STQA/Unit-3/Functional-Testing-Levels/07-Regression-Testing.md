# H. Regression Testing



SPPU PYQ – 6 Marks

Repeated 3 Times



This is a very important topic because the same question has appeared in November 2022, November 2023 and November 2024.

All three questions ask essentially the same thing. Therefore, prepare one complete 6-mark answer.

## Q1. Explain the importance of Regression Testing. (Nov 2022, Nov 2023, Nov 2024 – 6 Marks)

Definition:

Regression Testing is a type of software testing performed after modifications, bug fixes, updates or enhancements to ensure that existing functionalities of the application continue to work correctly.

It verifies that new changes have not introduced defects into previously working features.

Why is Regression Testing important?

1\. Detects New Defects: Helps identify defects introduced due to modifications in existing code.

2\. Maintains Existing Functionality: Ensures that previously working features continue to function correctly after software changes.

3\. Verifies Bug Fixes: Checks whether previously identified defects have been corrected without affecting other functionalities.

4\. Improves Software Quality: Maintains the overall quality, stability and reliability of the application.

5\. Supports Software Updates: Ensures that new features and enhancements do not negatively affect existing modules.

6\. Reduces Risk: Helps prevent unexpected failures when new changes are introduced into the software.

Example:

Consider an online shopping application having the following modules:

- Login
- Product Search
- Shopping Cart
- Payment
- Order History

Suppose developers modify the Payment Module to add a new payment option.

After modification, Regression Testing is performed to verify:

1. Users can still log in successfully.
2. Product searching works correctly.
3. Products can still be added to the cart.
4. Existing payment methods work correctly.
5. New payment methods work correctly.
6. Order history displays accurate information.

If the changes affect previously working functionality, Regression Testing helps identify those defects.

When is Regression Testing performed?

1. After fixing software bugs.
2. After adding new features.
3. After modifying existing code.
4. After software updates.
5. After database or configuration changes.
6. After integration of new modules.

Advantages:

1. Improves software reliability.
2. Prevents previously fixed defects from reappearing.
3. Maintains application stability.
4. Reduces the risk of software failures.
5. Ensures existing functionalities remain unaffected.

Conclusion: Regression Testing is important because it ensures that software modifications do not negatively affect existing functionalities and helps maintain software quality and reliability.

## Q2. Types of Regression Testing

Additional preparation

Learn these types for a possible additional question.

1\. Corrective Regression Testing: Performed when there are no changes in existing requirements and existing test cases can be reused.

2\. Progressive Regression Testing: Performed when software requirements or specifications are modified and new test cases are required.

3\. Selective Regression Testing: Only selected test cases related to modified functionalities are executed.

4\. Retest-All Regression Testing: All existing test cases are executed again after software modifications.

5\. Partial Regression Testing: Tests the modified module and its interaction with related modules.

6\. Complete Regression Testing: Tests the entire application to ensure that changes have not affected any existing functionality.

## Q3. Difference between Retesting and Regression Testing

| Retesting                                                   | Regression Testing                                                               |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Checks whether a previously reported defect has been fixed. | Checks whether software changes have affected existing functionality.            |
| Tests failed test cases again.                              | Tests previously working functionalities.                                        |
| Focuses on specific defects.                                | Focuses on the impact of changes.                                                |
| Uses test cases that previously failed.                     | Uses relevant existing and sometimes new test cases.                             |
| Example: Checking a login bug after fixing it.              | Example: Checking login, cart and payment after modifying payment functionality. |

## SPPU PYQ mapping and preparation priority

| Question                                           | Examination | Marks | Preparation |
| -------------------------------------------------- | ----------- | ----- | ----------- |
| Explain importance of Regression Testing           | Nov 2022    | 6     | Q1          |
| Explain why Regression Testing is important        | Nov 2023    | 6     | Q1          |
| Identify importance and explain Regression Testing | Nov 2024    | 6     | Q1          |

Preparation status: 1 core answer

## Exam preparation strategy

Priority: Extremely High

Since this question appeared in three consecutive November examinations, prepare it thoroughly.

For a 6-mark answer, remember this structure:

1. Definition – 1 mark.
2. Importance – 2 marks.
3. Example – 1–2 marks.
4. When performed / advantages – remaining marks.
5. Conclusion.

Quick revision:

Regression Testing = Testing existing functionalities after software modifications.

Remember these six keywords:

- Defect detection
- Existing functionality
- Bug fixes
- Software quality
- Stability
- Risk reduction

Exam tip: Do not confuse Regression Testing with Retesting. Retesting checks whether a particular bug has been fixed; Regression Testing checks whether the fix or modification has broken something else.