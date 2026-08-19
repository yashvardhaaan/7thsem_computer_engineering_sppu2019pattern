# Software Quality, Verification and Validation

## 1. Software Quality

### Definition

**Software Quality** is the degree to which a software product satisfies specified requirements, user expectations, and relevant quality standards.

A high-quality software product should:

* Meet functional requirements.
* Be reliable.
* Be usable.
* Be secure.
* Perform efficiently.
* Be maintainable.
* Be compatible with its environment.

### Simple Definition

> **Software Quality = Conformance to requirements + Fitness for user needs.**

---

# 2. Characteristics of Software Quality

Important quality characteristics include:

### 1. Functionality

The software should provide the required functions correctly.

### 2. Reliability

The software should operate consistently without failures.

### 3. Usability

The software should be easy to learn and use.

### 4. Performance Efficiency

The software should use resources efficiently and provide acceptable response time.

### 5. Security

The software should protect data and prevent unauthorized access.

### 6. Maintainability

The software should be easy to modify, correct, and enhance.

### 7. Compatibility

The software should work correctly with other systems and environments.

### 8. Portability

The software should be capable of being moved between environments when required.

---

# 3. Verification

## Definition

**Verification** is the process of evaluating software work products to determine whether they satisfy specified requirements and standards.

It focuses on whether the product is being developed **correctly according to specifications**.

### Simple Question

> **"Are we building the product right?"**

### Verification Activities

Verification can include:

* Requirement reviews
* Design reviews
* Code reviews
* Inspections
* Walkthroughs
* Static analysis
* Document reviews

### Important Point

Verification generally does not require executing the software.

It is largely associated with **static activities**.

---

# 4. Verification Example

Suppose the requirement states:

> Password must contain at least 8 characters.

During verification, the team reviews:

* Requirement specification
* Design
* Code
* Test cases

The team checks whether these artifacts correctly implement the stated requirement.

This is verification.

---

# 5. Validation

## Definition

**Validation** is the process of evaluating the developed software to determine whether it satisfies user needs and intended usage.

It focuses on whether the **right product** has been built.

### Simple Question

> **"Are we building the right product?"**

### Validation Activities

Validation commonly includes:

* Functional testing
* System testing
* Integration testing
* User Acceptance Testing
* Performance testing
* Security testing
* Usability testing

Validation generally involves executing the software.

---

# 6. Validation Example

Suppose an online shopping application has a requirement that users should be able to purchase products.

The testing team performs the complete flow:

```text id="h6k2p9"
Login
  ↓
Search Product
  ↓
Add to Cart
  ↓
Checkout
  ↓
Payment
  ↓
Order Confirmation
```

If users can successfully complete the purchase process and the system satisfies their needs, the product is validated.

---

# 7. Verification vs Validation

| Verification                                        | Validation                                        |
| --------------------------------------------------- | ------------------------------------------------- |
| Checks whether the product is being built correctly | Checks whether the correct product is being built |
| Focuses on specifications                           | Focuses on user needs                             |
| Mainly static activities                            | Mainly dynamic activities                         |
| Usually does not execute software                   | Usually executes software                         |
| Reviews and inspections                             | Testing                                           |
| Performed throughout development                    | Performed through testing of developed software   |
| Example: Code review                                | Example: Functional testing                       |

### Easy Memory Trick

> **Verification = "Are we building it right?"**

> **Validation = "Are we building the right thing?"**

---

# 8. V-Model Relationship

Verification and validation are closely associated with the **V-Model**.

```text id="j4n8q2"
        Verification                 Validation

Requirements -------------------- Acceptance Testing
     ↓                                   ↑
System Design -------------------- System Testing
     ↓                                   ↑
Architecture --------------------- Integration Testing
     ↓                                   ↑
Module Design -------------------- Unit Testing
     ↓                                   ↑
              Coding
```

### Explanation

On the left side:

* Requirements
* System design
* Architecture
* Module design

are verified through reviews and other static activities.

On the right side:

* Unit testing
* Integration testing
* System testing
* Acceptance testing

validate the implemented software.

---

# 9. Verification Activities

## 1. Requirement Review

Checks whether requirements are:

* Correct
* Complete
* Consistent
* Unambiguous
* Testable

## 2. Design Review

Checks whether the design satisfies requirements.

## 3. Code Review

Checks source code for:

* Errors
* Standards violations
* Security problems
* Maintainability issues

## 4. Inspection

A formal examination of a software work product.

## 5. Walkthrough

An author-led review in which the work product is explained to other team members.

## 6. Static Analysis

Analyses source code without executing it.

---

# 10. Validation Activities

## 1. Unit Testing

Tests individual modules or components.

## 2. Integration Testing

Tests interactions between integrated components.

## 3. System Testing

Tests the complete integrated system.

## 4. Acceptance Testing

Determines whether the software satisfies business and user requirements.

## 5. Performance Testing

Evaluates response time, throughput, scalability, and resource usage.

## 6. Security Testing

Checks whether the application protects data and prevents unauthorized access.

## 7. Usability Testing

Evaluates whether the software is easy and effective for users.

---

# 11. Software Quality and Verification

Verification contributes to software quality by preventing problems early.

### Example

If a requirement incorrectly states:

> "The system should allow passwords of any length."

A requirement review may identify that no minimum password length is specified.

The requirement can be corrected before development begins.

This prevents future defects.

---

# 12. Software Quality and Validation

Validation contributes to software quality by confirming that the actual software behaves as expected.

### Example

A requirement says:

> "Users should be able to reset their password."

During validation, testers execute:

```text id="v5m9x3"
Click Forgot Password
       ↓
Enter Registered Email
       ↓
Receive Reset Link/OTP
       ↓
Set New Password
       ↓
Login With New Password
```

If the complete process works correctly, the requirement is validated.

---

# 13. Verification and Validation Throughout SDLC

```text id="p8k3n6"
Requirements
    ↓
Verification
    ↓
Design
    ↓
Verification
    ↓
Development
    ↓
Verification
    ↓
Testing
    ↓
Validation
    ↓
Acceptance
    ↓
Validation
    ↓
Release
```

Both activities contribute to software quality throughout the life cycle.

---

# 14. Differences in Detail

| Basis              | Verification                         | Validation                          |
| ------------------ | ------------------------------------ | ----------------------------------- |
| Main Question      | Are we building the product right?   | Are we building the right product?  |
| Objective          | Ensure conformance to specifications | Ensure satisfaction of user needs   |
| Nature             | Mostly static                        | Mostly dynamic                      |
| Software Execution | Usually not required                 | Usually required                    |
| Main Activities    | Reviews, inspections, walkthroughs   | Testing                             |
| Focus              | Work products/process                | Final or executable product         |
| Defect Detection   | Early                                | During/after implementation         |
| Example            | Requirement review                   | System testing                      |
| Relationship       | Prevents errors                      | Detects failures in actual behavior |

---

# 15. Example – Banking Application

Suppose a banking application requires:

> Users must be able to transfer money securely.

### Verification

The team reviews:

* Requirement document.
* Security design.
* Database design.
* Source code.
* Test cases.

They verify that the development artifacts correctly address the requirement.

### Validation

Testers execute:

```text id="q6r2m8"
Login
  ↓
Select Fund Transfer
  ↓
Enter Beneficiary
  ↓
Enter Amount
  ↓
Authenticate Transaction
  ↓
Confirm Transfer
  ↓
Verify Transaction
```

They check whether the system actually performs the transfer correctly and securely.

---

# 16. Why Both Are Important

Using only verification is not enough because:

* The specifications may be correct but implementation may fail.

Using only validation is not enough because:

* Defects in requirements and design may be discovered too late.

Therefore:

> **Verification + Validation = Better Software Quality**

### Combined Process

```text id="r7n4p2"
Correct Requirements
       ↓
   Verification
       ↓
Correct Design
       ↓
   Verification
       ↓
Correct Implementation
       ↓
    Validation
       ↓
Correct User Behavior
       ↓
   Quality Software
```

---

# 17. Verification vs Validation – Easy Example

Imagine building a chair.

### Verification

You check:

* Is the design according to the specification?
* Are the correct materials used?
* Are dimensions correct?

**Question:**

> Did we build the chair correctly according to the design?

### Validation

A person sits on the chair.

You check:

* Is it comfortable?
* Is it stable?
* Does it satisfy the user's needs?

**Question:**

> Did we build the right chair for the user?

---

# 18. PYQ – 2023, 2025

**Question:** Differentiate between verification and validation.

### Detailed Answer

Verification and validation are two important quality assurance activities used to ensure software quality.

### Verification

Verification checks whether software work products conform to specified requirements and standards.

It asks:

> **"Are we building the product right?"**

Verification activities include:

* Requirement reviews
* Design reviews
* Code reviews
* Inspections
* Walkthroughs
* Static analysis

Verification is mainly static and generally does not require executing the software.

### Validation

Validation checks whether the developed software satisfies user needs and intended requirements.

It asks:

> **"Are we building the right product?"**

Validation activities include:

* Unit testing
* Integration testing
* System testing
* Acceptance testing
* Performance testing
* Security testing
* Usability testing

Validation generally involves executing the software.

### Difference Table

| Verification                              | Validation                              |
| ----------------------------------------- | --------------------------------------- |
| Checks whether product is built correctly | Checks whether correct product is built |
| Focuses on specifications                 | Focuses on user needs                   |
| Mainly static                             | Mainly dynamic                          |
| Usually does not execute software         | Usually executes software               |
| Reviews and inspections                   | Testing                                 |
| Finds problems early                      | Finds failures in actual behavior       |
| Example: Code review                      | Example: System testing                 |

### Example

For an online banking application:

**Verification:**

Review the requirement and design to confirm that the fund-transfer feature correctly specifies security and transaction rules.

**Validation:**

Execute the fund-transfer functionality and verify that users can successfully transfer money according to those requirements.

### Conclusion

Verification ensures that software artifacts are developed correctly according to specifications, while validation ensures that the final software satisfies user requirements and intended usage. Both are necessary to achieve high software quality.

---

# 19. Exam-Oriented Revision

## Software Quality

Remember:

**Correct + Reliable + Secure + Usable + Efficient + Maintainable**

## Verification

Remember:

> **Building the product right**

Main activities:

**Reviews + Inspections + Walkthroughs + Static Analysis**

## Validation

Remember:

> **Building the right product**

Main activities:

**Testing + Execution + User Validation**

---

# PYQ Coverage

| Syllabus Concept | PYQ                                                               |
| ---------------- | ----------------------------------------------------------------- |
| Software Quality | No direct PYQ listed in this file                                 |
| Verification     | **2023, 2025:** Differentiate between verification and validation |
| Validation       | **2023, 2025:** Differentiate between verification and validation |

## Important Question

### 2023, 2025

**Differentiate between verification and validation.**
