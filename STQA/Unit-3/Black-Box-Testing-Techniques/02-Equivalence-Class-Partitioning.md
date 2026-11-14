# D. Black Box Test Case Design



SPPU PYQ – 6 Marks

High Priority



There are two PYQs in this section. Boundary Value Analysis (BVA) and Equivalence Class Partitioning (ECP) are important conceptual as well as numerical topics.

Prepare both techniques with definitions, examples, advantages and numerical practice.

## Q1. Discuss Boundary Value Analysis and Equivalence Class Partitioning. (May 2024 – 6 Marks)

Black Box Testing techniques are used to design test cases based on input and output requirements without examining the internal source code.

Two important techniques are:

### 1. Boundary Value Analysis (BVA)

Definition:

Boundary Value Analysis is a Black Box Testing technique in which test cases are designed using the boundary values of the input range.

It is based on the principle that errors frequently occur at the boundaries of input ranges.

Important test values:

For a valid input range from `10 to 50`, the following values are tested:

1. Minimum value − 1 = 9
2. Minimum value = 10
3. Minimum value + 1 = 11
4. Maximum value − 1 = 49
5. Maximum value = 50
6. Maximum value + 1 = 51

Example:

Consider an application that accepts age between 18 and 60 years.

| Test Case | Input Age | Expected Result |
| --------- | --------- | --------------- |
| 1         | 17        | Invalid         |
| 2         | 18        | Valid           |
| 3         | 19        | Valid           |
| 4         | 59        | Valid           |
| 5         | 60        | Valid           |
| 6         | 61        | Invalid         |

These test cases verify the minimum and maximum boundaries.

Advantages:

1. Detects errors at boundary conditions.
2. Reduces the number of test cases.
3. Simple to understand and implement.
4. Effective for range-based input validation.

### 2. Equivalence Class Partitioning (ECP)

Definition:

Equivalence Class Partitioning is a Black Box Testing technique in which input data is divided into different groups called equivalence classes.

All values within one class are expected to behave similarly. Therefore, one representative value from each class is selected for testing.

Types of Equivalence Classes:

1. Valid Equivalence Class: Contains input values that are accepted by the system.
2. Invalid Equivalence Class: Contains input values that are rejected by the system.

Example:

Consider an application that accepts age between 18 and 60 years.

| Equivalence Class | Input Range | Test Value | Expected Result |
| ----------------- | ----------- | ---------- | --------------- |
| Invalid Class 1   | Below 18    | 15         | Invalid         |
| Valid Class       | 18–60       | 30         | Valid           |
| Invalid Class 2   | Above 60    | 65         | Invalid         |

Only one representative value from each class is selected.

Advantages:

1. Reduces the number of test cases.
2. Avoids testing every possible input.
3. Improves testing efficiency.
4. Helps identify invalid input conditions.

### Difference between BVA and ECP

| Boundary Value Analysis                       | Equivalence Class Partitioning               |
| --------------------------------------------- | -------------------------------------------- |
| Tests boundary values of input ranges.        | Divides input data into equivalent groups.   |
| Focuses on minimum and maximum limits.        | Focuses on valid and invalid input classes.  |
| Tests values around boundaries.               | Tests representative values from each class. |
| Useful for detecting boundary-related errors. | Useful for reducing redundant test cases.    |
| Example: 17, 18, 19, 59, 60, 61.              | Example: 15, 30, 65.                         |

Conclusion: BVA focuses on testing input boundaries, whereas ECP divides input data into groups and selects representative values to reduce testing effort.

## Q2. What is Cookies Testing? Explain with an example. (May 2024 – 6 Marks)

Definition:

Cookie Testing is a Black Box Testing technique used to verify whether cookies are properly created, stored, managed and deleted by a web application.

Cookies are small pieces of data stored in the user's browser by websites. They help maintain user sessions and remember user preferences.

Objectives of Cookie Testing:

1. To verify whether cookies are created correctly.
2. To check whether cookies store the correct information.
3. To verify cookie expiration time.
4. To check whether cookies are deleted after logout.
5. To verify cookie security and privacy.

Types of Cookie Testing:

1\. Session Cookie Testing: Checks whether session cookies are created and deleted when the browser session ends.

2\. Persistent Cookie Testing: Checks whether cookies remain stored until their specified expiration time.

3\. Secure Cookie Testing: Verifies that secure cookies are transmitted only over HTTPS.

4\. Cookie Deletion Testing: Checks whether cookies are properly deleted after logout or when cleared by the user.

5\. Cookie Modification Testing: Verifies whether changing cookie values affects application behaviour or creates security issues.

Example:

Consider an online shopping website.

When a user logs into the website:

1. The website creates a session cookie.
2. The cookie is stored in the user's browser.
3. When the user visits another page, the cookie helps maintain the login session.
4. When the user logs out, the session cookie should become invalid or be deleted.

Test Cases:

| Test Case                           | Expected Result                                              |
| ----------------------------------- | ------------------------------------------------------------ |
| Login to the website                | Session cookie should be created.                            |
| Navigate to another page            | User session should remain active.                           |
| Close browser (for session cookies) | Session cookie should expire according to its configuration. |
| Logout from website                 | Session should be invalidated.                               |
| Modify cookie value                 | Application should reject invalid or tampered session data.  |

Advantages:

1. Ensures proper session management.
2. Improves application security.
3. Verifies correct storage of user preferences.
4. Helps identify cookie-related errors.

Conclusion: Cookie Testing ensures that cookies are properly managed and that user sessions, preferences and security are maintained correctly.

## Q3. Numerical Practice – BVA and ECP

Important practice for SPPU

### Problem 1: Boundary Value Analysis

An application accepts marks between 0 and 100. Design test cases using Boundary Value Analysis.

Solution:

Minimum = 0

Maximum = 100

Using the six-value boundary approach:

| Test Case | Input | Expected Result |
| --------- | ----- | --------------- |
| 1         | -1    | Invalid         |
| 2         | 0     | Valid           |
| 3         | 1     | Valid           |
| 4         | 99    | Valid           |
| 5         | 100   | Valid           |
| 6         | 101   | Invalid         |

### Problem 2: Equivalence Class Partitioning

An application accepts employee age between 21 and 58 years. Identify valid and invalid equivalence classes.

Solution:

| Class           | Range    | Representative Value | Result  |
| --------------- | -------- | -------------------- | ------- |
| Invalid Class 1 | Below 21 | 18                   | Invalid |
| Valid Class     | 21–58    | 35                   | Valid   |
| Invalid Class 2 | Above 58 | 65                   | Invalid |

Three equivalence classes are identified, so three representative test cases are selected.

### Problem 3: Combined BVA and ECP

A password field accepts passwords containing 8 to 16 characters.

Design test cases using BVA.

Solution:

| Test Case | Password Length | Expected Result |
| --------- | --------------- | --------------- |
| 1         | 7               | Invalid         |
| 2         | 8               | Valid           |
| 3         | 9               | Valid           |
| 4         | 15              | Valid           |
| 5         | 16              | Valid           |
| 6         | 17              | Invalid         |

Note: This assumes all other password requirements are satisfied.

## SPPU PYQ mapping and preparation priority

| Question                                                   | Examination | Marks | Preparation |
| ---------------------------------------------------------- | ----------- | ----- | ----------- |
| Boundary Value Analysis and Equivalence Class Partitioning | May 2024    | 6     | Q1          |
| Cookies Testing with example                               | May 2024    | 6     | Q2          |

Preparation status: 2 core answers

## Important exam strategy

- BVA: Memorise the six boundary values and practise at least 3 numerical examples.
- ECP: Understand valid and invalid classes and how to select representative values.
- Cookies Testing: Prepare the definition, objectives, types and login-session example.

Remember:

- BVA = Test values at and around boundaries.
- ECP = Divide inputs into valid and invalid groups.
- Cookie Testing = Test browser-stored data and session management.

My recommendation: Give extra practice to BVA and ECP because they are easy scoring topics when you can correctly identify the ranges, test values and expected results.