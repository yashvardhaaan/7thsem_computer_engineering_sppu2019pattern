# F. Functional Testing



SPPU PYQ – 6 Marks

Very High Priority



There are three PYQs covering four major levels of software testing:

1. Unit Testing
2. Integration Testing
3. System Testing
4. Acceptance Testing

Unit Testing and Integration Testing are repeated in May 2023 and November 2023. Prepare them once, including Integration Testing approaches.

## Q1. Explain Unit Testing and Integration Testing. (Nov 2023 – 6 Marks, May 2023 – 6 Marks)

### 1. Unit Testing

Definition:

Unit Testing is a software testing technique in which individual components or modules of a software application are tested independently to verify that they work correctly.

It is generally performed by developers during the development phase.

Characteristics:

1. Tests individual functions, methods or modules.
2. Usually performed by developers.
3. Helps identify errors at an early stage.
4. Often uses test frameworks and mock objects.
5. It is the first level of software testing.

Example:

Consider an online shopping application having a function to calculate the total price.

```
public int calculateTotal(int price, int quantity) {
    return price * quantity;
}
```

Test cases:

| Test Case | Price | Quantity | Expected Output |
| --------- | ----- | -------- | --------------- |
| 1         | 100   | 2        | 200             |
| 2         | 50    | 3        | 150             |
| 3         | 0     | 5        | 0               |

The function is tested independently without involving other application modules.

Advantages:

1. Detects errors early.
2. Simplifies debugging.
3. Improves code quality.
4. Reduces the cost of fixing defects.

### 2. Integration Testing

Definition:

Integration Testing is a software testing technique in which two or more individually tested modules are combined and tested together to verify whether they communicate and work correctly.

It focuses on detecting defects in interfaces and interactions between modules.

Characteristics:

1. Tests interaction between different modules.
2. Usually performed after Unit Testing.
3. Identifies interface and communication errors.
4. Checks data flow between modules.
5. Can be performed using different integration approaches.

Example:

Consider an online shopping application containing:

- Login Module
- Product Module
- Cart Module
- Payment Module

During Integration Testing, the tester verifies whether:

1. Login successfully connects to the Product Module.
2. Selected products are correctly transferred to the Cart Module.
3. Cart details are correctly passed to the Payment Module.
4. Payment results are correctly updated in the Order Module.

Advantages:

1. Identifies interface defects.
2. Verifies communication between modules.
3. Improves system reliability.
4. Detects errors that Unit Testing may miss.

## Approaches Used in Integration Testing

There are four important approaches.

### 1. Big Bang Integration Testing

In this approach, all individual modules are integrated together at once and then tested as a complete group.

Example: All modules of an online shopping application are combined and tested together.

Advantages:

- Suitable for small applications.
- Simple integration approach.

Disadvantages:

- Defects are difficult to locate.
- Testing starts only after all modules are ready.

### 2. Top-Down Integration Testing

In this approach, testing begins with the top-level modules and gradually moves towards lower-level modules.

If lower-level modules are not available, temporary programs called Stubs are used.

Example:

Testing begins with the Login Module, followed by Product Module and Cart Module.

[PPT - Testing Strategies PowerPoint Presentation, free download - ID:2198758](https://images.openai.com/static-rsc-4/mGsLlVkZdtvrJ27MuGnidQlKj_WuJIAaKug7hIOk0wGRDVSY6ryczG6aer2pl9gUf0iGFO7Mi16ahJVsPvCrtRbBwQ8rJ8GR6ckOCtBDBvYubt9ZHUFjCS9RVsLYu55CYdeFZk6wqfLZ9Y8cbVtlCM3dz410ONAns--zXBSfoQo?purpose=inline)

Advantages:

- High-level logic is tested early.
- Major control flow can be verified.

Disadvantages:

- Stubs are required.
- Lower-level modules are tested later.

### 3. Bottom-Up Integration Testing

In this approach, testing begins with lower-level modules and gradually moves towards higher-level modules.

Temporary programs called Drivers are used when higher-level modules are unavailable.

Example:

Testing begins with database and payment modules, followed by Cart and Order modules.

[Software Testing - Bottom Up Testing](https://images.openai.com/static-rsc-4/P0eYY3QStpRg8OFdKT0ZPpaA6TBQzUYkR5NdL_FzaYRgJN8EJxe-4oB3Abkgp6SpPq_QTI_pfbJV5U1A9f2Wwv4QbiPKhG_SPAHjCptQD0Ilt7NxvCZ9k5tGePdxd5T2C2vlc13n1PLUOmW-_8ScYBB6OIkIkCCNOB6KMESXF5Q?purpose=inline)

Advantages:

- Lower-level modules are tested thoroughly.
- Drivers are generally easy to develop for testing.

Disadvantages:

- High-level logic is tested later.
- Drivers are required.

### 4. Sandwich or Hybrid Integration Testing

It is a combination of Top-Down and Bottom-Up Integration Testing.

Testing is performed simultaneously from the top-level and bottom-level modules towards the middle-level modules.

Advantages:

- Combines benefits of both approaches.
- Allows parallel testing.

Disadvantages:

- Requires proper planning.
- More complex to manage.

Conclusion: Unit Testing verifies individual modules, whereas Integration Testing verifies the communication and interaction between combined modules.

## Q2. Explain System Testing and Acceptance Testing. (Nov 2022 – 6 Marks)

### 1. System Testing

Definition:

System Testing is a software testing technique in which the complete and integrated software system is tested as a whole to verify whether it satisfies the specified requirements.

It is generally performed after Integration Testing.

Characteristics:

1. Tests the complete application.
2. Checks both functional and non-functional requirements.
3. Usually performed by an independent testing team.
4. Verifies whether the complete system meets specifications.
5. Performed in an environment similar to the production environment.

Types of System Testing:

1. Functional Testing: Checks whether all software functionalities work correctly.
2. Performance Testing: Checks application speed, stability and response time.
3. Security Testing: Identifies security vulnerabilities.
4. Usability Testing: Checks whether the application is easy to use.
5. Recovery Testing: Checks whether the application can recover after failures.

Example:

Consider an online banking application.

System Testing verifies:

- User login and authentication.
- Balance enquiry.
- Fund transfer.
- Transaction history.
- Account logout.
- Overall system performance and security.

Advantages:

1. Validates the complete application.
2. Identifies system-level defects.
3. Verifies functional and non-functional requirements.
4. Improves software quality.

### 2. Acceptance Testing

Definition:

Acceptance Testing is the final level of software testing performed to verify whether the software meets business requirements and is acceptable to the customer or end user.

It is generally performed before the software is released or delivered.

Characteristics:

1. Performed by customers, end users or authorised representatives.
2. Checks whether business requirements are satisfied.
3. Validates real-world application scenarios.
4. Helps determine whether software is ready for release.
5. It is the final testing level in the typical testing sequence.

Types of Acceptance Testing:

1\. User Acceptance Testing (UAT): End users verify whether the application meets their requirements.

2\. Alpha Testing: Testing is performed at the developer's site by internal testers or selected users before external release.

3\. Beta Testing: A pre-release version is tested by selected external users in real-world environments.

4\. Operational Acceptance Testing: Verifies operational readiness, including backup, recovery, maintenance and deployment procedures.

Example:

Consider an online banking application.

During Acceptance Testing, bank representatives verify:

- Whether customers can transfer money successfully.
- Whether transaction receipts are generated correctly.
- Whether account balances are updated.
- Whether the application satisfies banking business requirements.

Advantages:

1. Confirms customer requirements are satisfied.
2. Identifies business-related defects.
3. Increases customer confidence.
4. Helps determine release readiness.

Conclusion: System Testing verifies the complete software system, whereas Acceptance Testing verifies whether the software meets customer and business expectations.

## Q3. Difference between Unit, Integration, System and Acceptance Testing

Important additional preparation

| Unit Testing                         | Integration Testing                   | System Testing                                     | Acceptance Testing                                     |
| ------------------------------------ | ------------------------------------- | -------------------------------------------------- | ------------------------------------------------------ |
| Tests individual modules.            | Tests combined modules.               | Tests the complete system.                         | Tests customer requirements.                           |
| Usually performed by developers.     | Developers or testers.                | Usually independent testers.                       | Customers or end users.                                |
| Focuses on individual functionality. | Focuses on module interaction.        | Focuses on overall system behaviour.               | Focuses on business requirements.                      |
| First testing level.                 | Second testing level.                 | Third testing level.                               | Final testing level.                                   |
| Example: Testing login function.     | Example: Login connected to database. | Example: Testing the complete banking application. | Example: Bank representative approves the application. |

## Order of Software Testing

1\. Unit Testing

Individual modules

2\. Integration Testing

Combined modules

3\. System Testing

Complete application

4\. Acceptance Testing

Customer approval

## SPPU PYQ mapping and preparation priority

| Question                              | Examination | Marks | Preparation |
| ------------------------------------- | ----------- | ----- | ----------- |
| System Testing and Acceptance Testing | Nov 2022    | 6     | Q2          |
| Unit Testing and Integration Testing  | May 2023    | 6     | Q1          |
| Unit Testing and Integration Testing  | Nov 2023    | 6     | Q1          |

Preparation status: 2 core answers

## Important exam strategy

1. Highest priority: Unit Testing and Integration Testing — repeated twice.
2. High priority: Four Integration Testing approaches — Big Bang, Top-Down, Bottom-Up and Sandwich.
3. High priority: System Testing and Acceptance Testing.
4. Additional preparation: Difference between all four testing levels.

Remember for SPPU:

- Unit = Individual module.
- Integration = Interaction between modules.
- System = Complete application.
- Acceptance = Customer satisfaction and approval.

Exam tip: For Integration Testing, never forget to mention Stubs in Top-Down and Drivers in Bottom-Up. These are important technical terms that strengthen your 6-mark answer.