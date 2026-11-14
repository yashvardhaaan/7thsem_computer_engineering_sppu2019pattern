# B. Static Testing Techniques



SPPU PYQ – 6 Marks

High Priority



There are four PYQs covering Static Testing, its usefulness, and review techniques. Prepare the following consolidated answers to avoid repetition.

## Q1. What do you think about Static Techniques? Explain Static Testing. (Nov 2022 – 6 Marks, Nov 2023 – 6 Marks)

Definition:

Static Testing is a software testing technique in which software documents, requirements, design and source code are examined without executing the program.

It is performed to identify defects at an early stage of software development.

Objectives of Static Testing:

1. To identify errors in requirements and design documents.
2. To detect coding standards violations.
3. To improve software quality.
4. To reduce the cost of fixing defects.
5. To identify defects before dynamic testing.

Static Testing Techniques:

1\. Reviews: Software documents and code are examined by team members to identify defects.

2\. Walkthroughs: The author explains the document or code step by step to other team members to obtain feedback.

3\. Inspections: A formal review process in which trained reviewers systematically examine documents or code using defined procedures and checklists.

4\. Static Analysis: Software tools analyse source code without executing it to identify errors, coding standard violations and potential security issues.

Example:

Consider a software requirement document for an online banking application.

During static testing, reviewers may identify:

- Missing password validation requirements.
- Incomplete transaction requirements.
- Incorrect descriptions of security rules.

These defects are identified without executing the application.

Advantages:

1. Detects defects at an early stage.
2. Reduces software development and maintenance costs.
3. Improves code quality and documentation.
4. Helps identify security and design issues.
5. Does not require execution of the software.

Conclusion: Static Testing helps identify defects early by examining software documents and source code without executing the program.

## Q2. Identify how different Static Test Case Design Techniques are useful for Software Testing. (Nov 2023 – 6 Marks)

Static Test Case Design Techniques help identify defects in software work products without executing the software.

The following techniques are useful:

1\. Reviews

- Software requirements, design documents and code are examined by team members.
- Helps identify missing requirements, inconsistencies and errors.

2\. Walkthroughs

- The author explains the document or code step by step.
- Other members provide suggestions and identify possible defects.
- Useful for knowledge sharing and understanding the software.

3\. Inspections

- A formal and systematic examination of software documents or code.
- Uses defined roles, checklists and procedures.
- Helps identify defects in a structured manner.

4\. Static Analysis

- Automated tools examine source code without executing it.
- Detects unused variables, coding standard violations, security vulnerabilities and possible programming errors.

5\. Informal Reviews

- Documents or code are checked without a formal process.
- Team members provide feedback and identify simple mistakes.
- Requires less time and documentation.

Usefulness in Software Testing:

1. Detects defects before execution.
2. Reduces the cost of defect correction.
3. Improves software quality and reliability.
4. Helps maintain coding standards.
5. Reduces the number of defects found during dynamic testing.

Conclusion: Static techniques help detect defects early and improve the quality of software development work products.

## Q3. Explain Informal Reviews, Walkthroughs and Inspection. (May 2024 – 6 Marks)

Static Testing includes different review techniques used to examine software documents and source code without executing the program.

### 1. Informal Review

An Informal Review is a simple review technique in which software documents or code are examined by colleagues or team members without following a formal procedure.

Characteristics:

- No formal meeting or documentation is required.
- Feedback is provided directly.
- It is quick and easy to perform.
- Helps identify basic errors and defects.

Example: A developer asks another developer to check the source code for mistakes.

### 2. Walkthrough

A Walkthrough is a review technique in which the author explains the software document or source code step by step to other team members.

Characteristics:

- The author leads the walkthrough.
- Participants ask questions and provide feedback.
- Helps identify defects and missing information.
- Improves understanding and knowledge sharing.

Example: A developer explains the working of a login module to the testing team to identify possible errors.

### 3. Inspection

Inspection is a formal and systematic review technique used to identify defects in software documents or source code.

Characteristics:

- It follows a defined process.
- A trained moderator manages the inspection.
- Reviewers use checklists to identify defects.
- Defects are recorded and communicated for correction.
- It does not involve executing the software.

Example: A team formally inspects a software requirement document to identify missing requirements and inconsistencies.

### Difference between Informal Review, Walkthrough and Inspection

| Informal Review             | Walkthrough                        | Inspection                                     |
| --------------------------- | ---------------------------------- | ---------------------------------------------- |
| No formal process.          | Semi-formal process.               | Formal process.                                |
| No specific roles required. | Author leads the process.          | Moderator and defined reviewer roles are used. |
| No mandatory documentation. | Documentation may be maintained.   | Defects and results are formally recorded.     |
| Quick and simple.           | Involves step-by-step explanation. | Systematic and structured.                     |
| Less preparation required.  | Moderate preparation required.     | More preparation required.                     |

Conclusion: Informal Reviews, Walkthroughs and Inspections are important Static Testing techniques used to identify defects before software execution.

## Q4. Differentiate between Static Testing and Dynamic Testing. (Important – Prepare for 6 Marks)

| Static Testing                                          | Dynamic Testing                                                    |
| ------------------------------------------------------- | ------------------------------------------------------------------ |
| 1. Software is tested without executing the program.    | 1. Software is tested by executing the program.                    |
| 2. It examines documents, design and source code.       | 2. It examines the actual behaviour of software.                   |
| 3. Helps identify defects at an early stage.            | 3. Helps identify failures during execution.                       |
| 4. Does not require test execution.                     | 4. Requires test execution.                                        |
| 5. Generally performed during early development stages. | 5. Generally performed after executable software is available.     |
| 6. Examples: Reviews, Walkthroughs and Inspections.     | 6. Examples: Unit Testing, Integration Testing and System Testing. |
| 7. Helps identify coding and documentation defects.     | 7. Helps identify runtime errors and functional failures.          |

Conclusion: Static Testing identifies defects without executing software, whereas Dynamic Testing identifies defects by executing software with different test inputs.

## SPPU PYQ mapping and preparation priority

| Question                                                  | Examination                      | Marks | Covered in |
| --------------------------------------------------------- | -------------------------------- | ----- | ---------- |
| What do you think about Static Techniques?                | Nov 2022                         | 6     | Q1         |
| Identify usefulness of Static Test Case Design Techniques | Nov 2023                         | 6     | Q2         |
| What do you think about Static Techniques?                | Nov 2023                         | 6     | Q1         |
| Explain Informal Reviews, Walkthroughs and Inspection     | May 2024                         | 6     | Q3         |
| Static vs Dynamic Testing                                 | Important additional preparation | 6     | Q4         |

Preparation status: 4 core answers

Exam tip: Do not study the Nov 2022 and Nov 2023 Static Techniques questions separately. They are repeated questions. Prepare Q1 once, with the definition, objectives, techniques, example and advantages.

Also remember the distinction: Static Testing = No execution; Dynamic Testing = Execution.