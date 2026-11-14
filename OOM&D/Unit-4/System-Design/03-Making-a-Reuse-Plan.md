# Unit IV — 4. Making a Reuse Plan

PYQ Priority: Medium

## 1. Definition of Reuse Plan

A reuse plan is a systematic strategy developed during system design to identify, select, organize and reuse existing software components, designs, frameworks, libraries and other software assets in a new system.

The main objective is to reduce development time, cost and effort while improving software quality and reliability.

In simple words, a reuse plan defines what can be reused, where it can be reused and how it will be reused.

## 2. Objectives of a reuse plan

1. Reduce software development time and cost.
2. Avoid developing the same functionality repeatedly.
3. Improve software quality and reliability.
4. Increase productivity of developers.
5. Maintain consistency across different software projects.
6. Encourage standardization and maintainability.

## 3. Reusable assets

Reusable assets are existing software components or resources that can be used again in the development of other software systems.

Important reusable assets include:

| Reusable asset | Description                                                       | Example                    |
| -------------- | ----------------------------------------------------------------- | -------------------------- |
| Source code    | Existing code reused in another application.                      | Login validation code      |
| Library        | Collection of reusable functions or classes.                      | Java Collections Framework |
| Framework      | Reusable software structure providing predefined functionality.   | Spring Boot                |
| Design pattern | General reusable solution to a commonly occurring design problem. | Singleton, Factory         |
| Components     | Independent software modules.                                     | Payment module             |
| Documentation  | Existing technical documents and specifications.                  | API documentation          |
| Test cases     | Previously written test cases reused for testing.                 | Login test cases           |

## 4. Steps involved in making a reuse plan

1\. Identify reusable requirements

Identify the functionalities and requirements that may be fulfilled using existing assets.

Example: Authentication, payment processing and notification services.

2\. Search for reusable assets

Search existing repositories, libraries, frameworks and organizational resources for suitable assets.

3\. Evaluate reusable assets

Check whether the selected assets satisfy the requirements.

Evaluation criteria include:

- Functionality
- Compatibility
- Reliability
- Performance
- Security
- Documentation
- Licensing and maintenance

4\. Select suitable assets

Choose the reusable assets that best match the system requirements.

5\. Adapt and integrate assets

Modify or configure selected assets if required and integrate them into the system architecture.

6\. Test integrated assets

Test the reused components to ensure they work correctly with other system components.

7\. Maintain reusable assets

Document, store and update reusable assets so they can be used in future projects.

## 5. Important concepts: Library, Framework and Pattern

These three concepts are important because they are common sources of software reuse.

### A. Library

A library is a collection of pre-written functions, classes or modules that developers can directly use to perform specific tasks.

Examples:

- Java Collections
- JDBC
- Apache Commons
- NumPy

Advantages:

1. Reduces code duplication.
2. Saves development time.
3. Provides tested functionality.
4. Makes development easier.

[PPT - C++ Network Programming Systematic Reuse with ACE &amp; Frameworks PowerPoint Presentation - ID:5185089](https://images.openai.com/static-rsc-4/L3nMZcHhmvaimdyPk2UDxcRWbeeBlNtlSmu_hJUqso7t6ammU8Xd_VIKCAHXtqlDvmD6rgKxmwlqTPZceRUd3ZoUChFqRnjfNeB60UTXhfWfXogal8OcH548p7P6tyPIdZCo-lD1QmbvsAYtjMLbzYA1f61sJBIE2tIN2NtoD94?purpose=inline)

[slideserve.com](https://www.slideserve.com/silvio/c-network-programming-systematic-reuse-with-ace-frameworks?utm_source=chatgpt.com)

### B. Framework

A framework is a reusable software platform that provides a predefined structure, components and rules for developing applications.

It controls the overall application structure, while developers add their own code according to the framework.

Examples:

- Spring Boot
- Angular
- Django
- ASP.NET Core

Advantages:

1. Provides predefined architecture.
2. Reduces development effort.
3. Promotes standard coding practices.
4. Improves maintainability.
5. Provides built-in features.

[Inversion of Control (IoC). Definition & Core Concept | by Mehadi Hossain | Medium](https://images.openai.com/static-rsc-4/wPV4anrRzxI85YGfeaQtFWddQwxGx_hwAkiNGQ4NVQ4_kSRyXXB1y7i_D0n-Z9PTEN2t160LWM9GOaWzV50AXentQ3jPLsUG3XgEOtqWY7Xm9uj36s-IJmJ8vPY9RqkPnS8xpJOhIjFdlSbgPkHlpVrNsf2QxKVd8hZRDC2UeWA?purpose=inline)

[medium.com](https://medium.com/%40mehadi13/inversion-of-control-ioc-13efdc5b0a1b?utm_source=chatgpt.com)

### C. Design Pattern

A design pattern is a general reusable solution to a commonly occurring software design problem.

It is not a complete program or ready-made code; it provides a proven approach to solving a design problem.

Examples:

- Singleton Pattern
- Factory Pattern
- Observer Pattern
- Adapter Pattern

Advantages:

1. Provides proven design solutions.
2. Improves code reusability.
3. Improves communication between developers.
4. Makes software easier to maintain.
5. Encourages flexible software design.

[Object-Oriented Design Patterns in Java – Best Practices for Scalable Software Architecture | prgrmmng.com](https://images.openai.com/static-rsc-4/pUWEyOf7IyNjHzGe_1JPfAK-Eok8m7oXQ4lPKZCAoGFn2jAPp5E2Suof8hUKutshLikW_74Ci8BbkNmvnHkAQJXpWyi2NMhwS3DKRaommQShE2WwdaNV3x4XAmcBkf82gQSuErLjp9TqluLRuyYyv-1PnOppvhkyzfefcqnX6aY?purpose=inline)

[prgrmmng.com](https://prgrmmng.com/object-oriented-design-patterns-java?utm_source=chatgpt.com)

Note: Detailed design pattern categories and individual patterns belong to Unit VI.

## 6. Difference between Library, Framework and Design Pattern

| Basis       | Library                         | Framework                             | Design Pattern                   |
| ----------- | ------------------------------- | ------------------------------------- | -------------------------------- |
| Meaning     | Collection of reusable code     | Predefined application structure      | General design solution          |
| Purpose     | Performs specific tasks         | Provides application architecture     | Solves recurring design problems |
| Control     | Developer controls program flow | Framework often controls program flow | No control over program flow     |
| Reusability | Reuses functions/classes        | Reuses structure and components       | Reuses design knowledge          |
| Example     | Java Collections                | Spring Boot                           | Singleton                        |

Important concept — Inversion of Control (IoC):

- In a library, the developer calls the library functions.
- In a framework, the framework often calls the developer's code at predefined points.

This is a key distinction between a library and a framework.

## 7. Example: Reuse Plan for an Online Shopping System

Suppose a company wants to develop an online shopping application.

Instead of developing every feature from scratch, it can prepare the following reuse plan:

| Requirement              | Reusable asset          |
| ------------------------ | ----------------------- |
| User authentication      | Spring Security         |
| Database operations      | Spring Data JPA         |
| Payment processing       | Payment gateway SDK     |
| Product listing          | Existing product module |
| Notifications            | Email/SMS library       |
| Application architecture | Spring Boot framework   |
| Object creation          | Factory design pattern  |

Result: Development time is reduced, code duplication is avoided and system reliability can improve.

## 8. Advantages of software reuse

1. Reduced cost: Less code needs to be developed from scratch.
2. Time saving: Existing components can be integrated directly.
3. Improved reliability: Previously tested components can reduce defects.
4. Better productivity: Developers can focus on new functionality.
5. Maintainability: Standard reusable components simplify maintenance.
6. Consistency: Similar functionality can be implemented uniformly.

## 9. Conclusion

A reuse plan is an important system design activity that identifies and organizes reusable software assets for application development. Libraries, frameworks, components and design patterns help reduce development effort, cost and duplication while improving software quality and maintainability.

## Exam preparation checklist

Study progress

0/8

Definition and objectives of reuse plan

Meaning of reusable assets with examples

Steps involved in making a reuse plan

Library: definition, examples and advantages

Framework: definition, examples and advantages

Design pattern: definition and examples

Difference between library, framework and pattern

Online shopping reuse plan example

PYQ strategy: Prepare the definition, steps, reusable assets and the three concepts (library, framework and pattern) with examples. The comparison table is particularly useful for questions asking you to differentiate them.