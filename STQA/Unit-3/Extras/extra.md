# 3. Topics with NO Direct PYQs



Important – Do Not Skip

SPPU Syllabus Coverage



These topics did not have direct questions in the six End-Sem papers analysed. However, they are part of the syllabus and can be asked in future examinations.

I recommend preparing each topic in an exam-oriented format: Definition, working/technique, example, advantages and applications.

We will cover them one by one, without skipping any topic.

## A. Static Testing

### 1. Technical Reviews

Definition:

Technical Review is a static testing technique in which software work products such as requirements, design documents and source code are examined by technically qualified team members to identify defects and verify compliance with technical specifications.

Objectives:

1. Identify technical errors in software documents and code.
2. Verify compliance with technical standards.
3. Improve software quality and maintainability.
4. Identify missing or incorrect requirements.
5. Reduce the cost of fixing defects.

Process of Technical Review:

1. Planning – Select the document or code to review.
2. Preparation – Reviewers study the material.
3. Review Meeting – Discuss technical issues and defects.
4. Defect Reporting – Record identified problems.
5. Follow-up – Verify whether defects are corrected.

Example:

A development team reviews the architecture of an online banking application to identify security issues, database design problems and incorrect data flow before implementation.

Advantages:

- Detects defects early.
- Improves technical quality.
- Ensures coding and design standards.
- Reduces development costs.

Conclusion: Technical Reviews help identify technical defects in software work products without executing the application.

## B. Black Box Testing Techniques

### 2. State Transition Testing

Definition:

State Transition Testing is a Black Box Testing technique used to verify how an application changes from one state to another based on different events or inputs.

Important terms:

- State: Current condition of the system.
- Event: An action that causes a state change.
- Transition: Movement from one state to another.
- Initial State: Starting condition of the system.

Example: ATM PIN Validation

[State Transition Testing - Kiểm thử chuyển đổi trạng thái là gì? Sơ đồ, Kỹ thuật, Ví dụ](https://images.openai.com/static-rsc-4/LwV7QYcnzrpXRTqnzOAR2sofq3bjtcQgKrKGEGxyJ2X_EY83uh1FYe7aYAkDJvcHKmHPKydLGn6Kjgj82FzpANpCQG9Qw4relQ0dHmjJaIF9TNHAcZAY6Z7Jqzs-LM2toD0vTGx35i_C_wBY0fod_oMO-0OqBnYiFFKkqH1LpQI?purpose=inline)

| Current State  | Event               | Next State     |
| -------------- | ------------------- | -------------- |
| Ready          | Enter correct PIN   | Authenticated  |
| Ready          | Enter incorrect PIN | First Failure  |
| First Failure  | Enter incorrect PIN | Second Failure |
| Second Failure | Enter incorrect PIN | Account Locked |
| First Failure  | Enter correct PIN   | Authenticated  |
| Second Failure | Enter correct PIN   | Authenticated  |

Advantages:

1. Tests state-dependent behaviour.
2. Identifies invalid state transitions.
3. Useful for applications involving workflows.
4. Helps test authentication and transaction systems.

### 3. Cause-Effect Graph Testing

Definition:

Cause-Effect Graph Testing is a Black Box Testing technique that identifies relationships between input conditions (causes) and system outputs (effects) using a graphical representation.

Steps:

1. Identify input conditions (causes).
2. Identify expected outputs (effects).
3. Establish logical relationships between causes and effects.
4. Construct a cause-effect graph.
5. Convert the graph into a decision table.
6. Design test cases from the decision table.

Example: Login System

Causes:

- C1: Username is valid.
- C2: Password is valid.

Effect:

\- E1: Login successful.

Logical expression:

\\[ E1 = C1 \land C2 \\]

| Valid Username | Valid Password | Expected Effect  |
| -------------- | -------------- | ---------------- |
| Yes            | Yes            | Login Successful |
| Yes            | No             | Login Failed     |
| No             | Yes            | Login Failed     |
| No             | No             | Login Failed     |

Advantages:

- Identifies relationships between inputs and outputs.
- Helps design systematic test cases.
- Useful for complex business rules.

### 4. Decision Table Testing

Definition:

Decision Table Testing is a Black Box Testing technique in which different combinations of input conditions and their corresponding actions are represented in tabular form.

It is useful when software behaviour depends on multiple conditions.

Example: Login System

Conditions:

- Username valid?
- Password valid?

| Conditions / Rules | R1 | R2 | R3 | R4 |
| ------------------ | -- | -- | -- | -- |
| Valid Username     | Y  | Y  | N  | N  |
| Valid Password     | Y  | N  | Y  | N  |
| Actions            |    |    |    |    |
| Login Successful   | Y  | N  | N  | N  |
| Display Error      | N  | Y  | Y  | Y  |

Advantages:

1. Covers different combinations of conditions.
2. Reduces missing test scenarios.
3. Useful for business logic testing.
4. Easy to understand and maintain.

## C. Functional Testing

### 5. Smoke Testing

Definition:

Smoke Testing is a preliminary software testing technique performed on a new software build to verify whether the major functionalities are working properly before detailed testing begins.

Example:

For an online shopping application, testers check:

- Application launches successfully.
- Login works.
- Product search works.
- Cart opens.
- Payment page loads.

If major functionalities fail, the build is rejected for further testing.

Advantages:

1. Identifies major defects early.
2. Saves testing time.
3. Checks build stability.
4. Prevents testing unstable builds.

### 6. Sanity Testing

Definition:

Sanity Testing is a type of software testing performed after minor changes or bug fixes to verify that the specific modified functionality is working correctly.

Example:

A developer fixes a discount coupon calculation bug.

The tester checks:

- Whether the coupon is accepted.
- Whether the correct discount is applied.
- Whether the final price is calculated correctly.

Advantages:

1. Quickly verifies specific changes.
2. Saves testing effort.
3. Helps identify defects after bug fixes.

### Difference between Smoke and Sanity Testing

| Smoke Testing                              | Sanity Testing                               |
| ------------------------------------------ | -------------------------------------------- |
| Checks basic functionality of a new build. | Checks specific modified functionality.      |
| Broad and shallow testing.                 | Narrow and focused testing.                  |
| Performed before detailed testing.         | Performed after minor changes or fixes.      |
| Checks build stability.                    | Checks correctness of changes.               |
| Example: Login, search and cart checks.    | Example: Testing a fixed coupon calculation. |

### 7. Retesting

Definition:

Retesting is a software testing technique in which previously failed test cases are executed again after the identified defects have been fixed.

Example:

A login function fails when the user enters a valid password.

After the developer fixes the defect, the tester executes the same failed test case again to verify whether login works correctly.

Advantages:

1. Confirms that defects are fixed.
2. Prevents unresolved bugs from remaining.
3. Improves software quality.

Important distinction: Retesting verifies a particular bug fix, whereas Regression Testing checks whether modifications have affected existing functionalities.

## D. Non-Functional Testing

### 8. Memory Testing

Definition:

Memory Testing is a type of Non-Functional Testing used to verify how efficiently an application uses memory and whether it releases memory properly during execution.

Objectives:

1. Identify memory leaks.
2. Detect excessive memory consumption.
3. Check memory allocation and deallocation.
4. Verify application stability.

Example:

A mobile application is used continuously for several hours. The tester monitors whether memory usage keeps increasing even when the application is not performing additional tasks.

Advantages:

- Prevents memory-related crashes.
- Improves application stability.
- Helps identify memory leaks.

### 9. Scalability Testing

Definition:

Scalability Testing is a type of Performance Testing used to determine whether an application can handle increasing workloads by adding resources or increasing system capacity.

Example:

An e-commerce website is tested with:

- 1,000 users.
- 5,000 users.
- 10,000 users.

The tester checks whether the application maintains acceptable response time as the number of users increases.

Objectives:

1. Measure system performance under increasing workloads.
2. Identify capacity limitations.
3. Evaluate resource requirements.
4. Ensure future growth can be supported.

### 10. Session Testing

Definition:

Session Testing is a testing technique used to verify whether user sessions are created, maintained, expired and terminated correctly during application usage.

Example:

In an online banking application:

1. User logs in.
2. Session is created.
3. User performs transactions.
4. Session expires after a configured period of inactivity.
5. User is required to log in again.

Objectives:

- Verify session creation.
- Check session timeout.
- Verify logout functionality.
- Prevent unauthorised session access.

### 11. Recovery Testing

Definition:

Recovery Testing is a type of Non-Functional Testing used to verify whether an application can recover successfully after system failures, crashes or unexpected interruptions.

Example:

During an online payment, the server suddenly crashes. The tester checks whether the system recovers correctly and whether the transaction status remains accurate without duplicate payments.

Objectives:

1. Verify system recovery after failures.
2. Check backup and restoration mechanisms.
3. Prevent data loss.
4. Ensure application availability.

### 12. Installation Testing

Definition:

Installation Testing verifies whether software can be installed, upgraded, configured and uninstalled correctly on supported systems.

Example:

A desktop application is tested on Windows to verify:

- Successful installation.
- Correct installation directory.
- Required dependencies.
- Successful upgrade.
- Proper uninstallation.

Objectives:

1. Verify installation process.
2. Identify installation errors.
3. Check upgrade functionality.
4. Verify uninstallation.

### 13. I18N Testing (Internationalization Testing)

Definition:

Internationalization Testing verifies whether an application is designed to support multiple languages, regions and cultural formats without requiring major code changes.

Example:

A shopping application is tested to verify whether it supports:

- English and Hindi.
- Different date formats.
- Different currency formats.
- Unicode characters.

Objectives:

1. Verify multilingual support.
2. Check international date and number formats.
3. Verify Unicode character handling.
4. Ensure the application supports different regions.

### 14. L10N Testing (Localization Testing)

Definition:

Localization Testing verifies whether an application has been correctly adapted for a specific language, country or region.

Example:

An application is adapted for Indian users and tested for:

- Hindi language translation.
- Indian Rupee (₹) currency.
- Indian date and number formats.
- Region-specific content.

Objectives:

1. Verify language translation.
2. Check regional formats.
3. Verify currency and date formats.
4. Ensure culturally appropriate content.

### Difference between I18N and L10N Testing

| I18N Testing                              | L10N Testing                                 |
| ----------------------------------------- | -------------------------------------------- |
| Internationalization Testing.             | Localization Testing.                        |
| Prepares software for multiple regions.   | Adapts software for a particular region.     |
| Focuses on flexible international design. | Focuses on regional adaptation.              |
| Example: Supporting multiple currencies.  | Example: Displaying prices in Indian Rupees. |

### 15. Compliance Testing

Definition:

Compliance Testing is a type of testing performed to verify whether software follows specified legal requirements, industry standards, regulations and organisational policies.

Example:

A banking application is tested to verify whether it follows applicable data protection requirements, security standards and regulatory guidelines.

Objectives:

1. Ensure regulatory compliance.
2. Verify adherence to industry standards.
3. Identify policy violations.
4. Reduce legal and operational risks.

## Complete zero-PYQ topic checklist

Study progress

# 0/15

A. Static Testing

Technical Reviews

B. Black Box Techniques

State Transition Testing

Cause-Effect Graph Testing

Decision Table Testing

C. Functional Testing

Smoke Testing

Sanity Testing

Retesting

D. Non-Functional Testing

Memory Testing

Scalability Testing

Session Testing

Recovery Testing

Installation Testing

I18N Testing

L10N Testing

Compliance Testing

Reset progress

## Recommended study priority

| Priority  | Topics                                           |
| --------- | ------------------------------------------------ |
| Very High | Decision Table, State Transition, Smoke, Sanity  |
| High      | Technical Reviews, Cause-Effect Graph, Retesting |
| High      | Recovery, Scalability, Session Testing           |
| Medium    | Memory, Installation, Compliance                 |
| Medium    | I18N and L10N                                    |

Important SPPU preparation advice: Zero direct PYQs does not mean zero examination importance. These topics complete your syllabus coverage and can appear as standalone 6-mark questions or as short notes.

You now have all 15 topics covered in this section. Study them alongside the repeated PYQs rather than leaving them until the last day.