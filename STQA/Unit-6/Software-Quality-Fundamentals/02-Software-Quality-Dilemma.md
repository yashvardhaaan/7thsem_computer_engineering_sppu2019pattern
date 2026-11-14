# J. Software Quality Dilemma, Formal SQA, Product and In-process Quality Metrics

These are four related Software Quality Assurance concepts. I'll explain them separately in an exam-oriented format, with definitions, examples, comparisons and important points.

## 1. Software Quality Dilemma

### Definition

The Software Quality Dilemma refers to the difficulty of balancing software quality with factors such as development cost, time, resources and customer expectations.

An organisation may face pressure to release software quickly and within budget, but reducing testing or quality activities can introduce defects and increase maintenance costs.

### Main factors involved

1. Cost: More quality assurance and testing may increase initial development cost.
2. Time: Thorough testing and reviews require additional time.
3. Quality: Software must be reliable, secure, efficient and easy to maintain.
4. Customer expectations: Customers expect high-quality software at a reasonable price and within the promised deadline.
5. Resources: Skilled developers, testers and tools may be limited.

### Example

Suppose a company is developing an online banking application.

- Releasing it quickly may help meet the deadline.
- Skipping security and performance testing may reduce initial cost and time.
- However, defects could cause failed transactions, financial loss and damage to customer trust.

Therefore, the organisation must balance delivery time, cost and quality instead of focusing on only one factor.

### How to overcome the dilemma

- Apply quality assurance throughout the SDLC.
- Perform reviews and testing at every development stage.
- Prioritise critical features and high-risk areas.
- Use automation where appropriate.
- Follow coding standards and quality processes.
- Allocate sufficient time and resources for testing.

Conclusion: Software quality should not be treated as an optional activity. Investing in quality during development can reduce defects, rework and maintenance costs later.

## 2. Formal Software Quality Assurance (Formal SQA)

### Definition

Formal Software Quality Assurance is a systematic and documented approach used to ensure that software development processes and products follow predefined quality standards, procedures and requirements.

It involves planned quality activities, reviews, audits, testing and documentation to verify that software meets specified quality requirements.

### Main activities of Formal SQA

1. SQA Planning: Prepare an SQA plan defining quality objectives, standards, responsibilities and activities.
2. Standards and Procedures: Establish coding standards, development guidelines and testing procedures.
3. Formal Technical Reviews: Conduct structured reviews of requirements, design, code and test cases to identify defects.
4. Software Testing: Perform unit, integration, system and acceptance testing.
5. SQA Audits: Independently verify whether development activities comply with defined standards and procedures.
6. Defect Tracking: Record, classify, monitor and resolve defects.
7. Documentation: Maintain review reports, test reports, audit records and quality documents.
8. Corrective Actions: Identify process weaknesses and take steps to prevent their recurrence.

### Formal SQA process

1\. Define quality standards and requirements

2\. Prepare the SQA plan

3\. Perform reviews, audits and testing

4\. Identify and document defects

5\. Take corrective actions

6\. Verify compliance and improve the process

### Advantages

- Ensures consistent software quality.
- Detects defects at an early stage.
- Improves compliance with standards.
- Reduces rework and maintenance costs.
- Improves reliability and customer satisfaction.
- Provides documented evidence of quality activities.

Example: A banking software company follows documented coding standards, conducts formal code reviews, performs security testing and maintains audit reports before releasing its application.

Conclusion: Formal SQA provides a planned and documented method of controlling software quality throughout the development life cycle.

## 3. Product Quality Metrics

### Definition

Product Quality Metrics are quantitative measurements used to evaluate the quality and characteristics of the software product itself.

They measure the actual software, such as its reliability, performance, complexity, maintainability and defect level.

### Important Product Quality Metrics

| Metric          | Meaning                                          | Example                            |
| --------------- | ------------------------------------------------ | ---------------------------------- |
| Defect Density  | Number of defects per unit of software size      | 10 defects per 1,000 lines of code |
| Reliability     | Ability to operate without failure               | Failure frequency                  |
| Maintainability | Ease of modifying and fixing software            | Time required to fix a defect      |
| Complexity      | Difficulty of understanding and maintaining code | Cyclomatic complexity              |
| Performance     | Speed and responsiveness                         | Response time                      |
| Test Coverage   | Percentage of requirements or code tested        | 90% code coverage                  |
| Usability       | Ease of using the software                       | User task completion rate          |

### Important formulas

1\. Defect Density

\\[ \text{Defect Density}=\frac{\text{Total Defects}}{\text{Software Size}} \\]

Example: If 20 defects are found in 10,000 lines of code:

\\[ =\frac{20}{10}=2 \\]

Defect density = 2 defects per 1,000 lines of code.

2\. Reliability – Mean Time Between Failures (MTBF)

\\[ MTBF=\frac{\text{Total Operating Time}}{\text{Number of Failures}} \\]

Example: If software operates for 100 hours and experiences 5 failures:

\\[ MTBF=\frac{100}{5}=20\text{ hours} \\]

3\. Test Coverage

\\[ \text{Test Coverage}= \frac{\text{Items Tested}}{\text{Total Items}}\times100 \\]

Example: If 90 out of 100 requirements are tested, coverage = 90%.

### Importance

- Measures actual software quality.
- Identifies defects and weaknesses.
- Helps compare different software versions.
- Supports quality improvement.
- Helps estimate reliability and maintainability.

## 4. In-process Quality Metrics

### Definition

In-process Quality Metrics are measurements used to evaluate the quality and effectiveness of software development and quality assurance activities while the software is being developed.

They help identify problems in the development process before the final product is delivered.

### Important In-process Quality Metrics

| Metric                          | Meaning                                                                        |
| ------------------------------- | ------------------------------------------------------------------------------ |
| Defect Removal Efficiency (DRE) | Measures how effectively defects are removed before release                    |
| Defect Arrival Rate             | Number of defects discovered during a specific period                          |
| Review Effectiveness            | Measures defects detected through reviews                                      |
| Rework Percentage               | Percentage of development effort spent correcting previous work                |
| Test Execution Rate             | Number of test cases executed within a given time                              |
| Phase Containment               | Measures how many defects are detected in the phase where they were introduced |
| Defect Fix Time                 | Average time required to resolve defects                                       |

### Important formulas

1\. Defect Removal Efficiency (DRE)

\\[ DRE=\frac{E}{E+D}\times100 \\]

Where:

- E = Defects removed before software release.
- D = Defects discovered after software release.

Example: If 90 defects are removed before release and 10 are discovered after release:

\\[ DRE=\frac{90}{90+10}\times100=90\\% \\]

2\. Defect Arrival Rate

\\[ \text{Defect Arrival Rate}= \frac{\text{Defects Discovered}}{\text{Time Period}} \\]

Example: If 40 defects are discovered in 5 days:

\\[ =\frac{40}{5}=8 \\]

Defect arrival rate = 8 defects per day.

3\. Review Effectiveness

One commonly used measure is:

\\[ \text{Review Effectiveness}= \frac{\text{Defects Found in Reviews}} {\text{Total Defects Found}}\times100 \\]

Example: If 60 defects are found during reviews and 40 during later testing:

\\[ =\frac{60}{60+40}\times100=60\\% \\]

### Importance

- Identifies process weaknesses early.
- Helps improve development activities.
- Measures the effectiveness of reviews and testing.
- Reduces rework and development costs.
- Helps management monitor quality progress.
- Supports continuous process improvement.

## 5. Difference Between Product Quality Metrics and In-process Quality Metrics

Important comparison

| Basis       | Product Quality Metrics                 | In-process Quality Metrics                     |
| ----------- | --------------------------------------- | ---------------------------------------------- |
| Meaning     | Measure software product quality        | Measure development process quality            |
| Focus       | Final or intermediate software product  | Activities performed during development        |
| Purpose     | Evaluate product characteristics        | Improve development effectiveness              |
| Examples    | Defect density, reliability, complexity | DRE, defect arrival rate, review effectiveness |
| Measurement | Software product attributes             | Development and testing activities             |
| Benefit     | Improves product quality                | Prevents defects and improves processes        |

### Simple example

Suppose a company develops an e-commerce application.

- Product metric: The application has 5 defects per 1,000 lines of code and an average response time of 2 seconds.
- In-process metric: The development team detects 90% of defects before release and finds 20 defects during code reviews.

The first measures the software product; the second measures how effectively the team develops and checks it.

## 6. Quick Revision

| Topic                      | Remember                                         |
| -------------------------- | ------------------------------------------------ |
| Software Quality Dilemma   | Balance between cost, time and quality           |
| Formal SQA                 | Planned, documented quality assurance activities |
| Product Quality Metrics    | Measure the software product                     |
| In-process Quality Metrics | Measure the development process                  |
| DRE                        | Effectiveness of removing defects before release |
| Defect Density             | Defects per unit of software size                |

Exam preparation: Learn all four topics separately. For metrics, remember the definitions and formulas, especially Defect Density, MTBF, Test Coverage and DRE. Also practise the comparison between Product Quality Metrics and In-process Quality Metrics.