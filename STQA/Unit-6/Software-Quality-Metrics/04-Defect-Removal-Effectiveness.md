# F. Defect Removal Effectiveness (DRE)



PYQ Repeated – 2 Times

6 Marks



Defect Removal Effectiveness is an important SQA metric used to measure how effectively defects are identified and removed before software is delivered to customers.

## 1. PYQ Analysis

| Examination   | Question                                        | Question No. |
| ------------- | ----------------------------------------------- | ------------ |
| May/June 2023 | Explain Defect Removal Effectiveness.           | Q8(c)        |
| May/June 2025 | Explain Defect Removal Effectiveness in detail. | Q7(c)        |

Both questions cover the same concept. Prepare one detailed answer with definition, formula, example, importance and advantages.

## 2. What is Defect Removal Effectiveness?

Defect Removal Effectiveness (DRE) is a software quality metric used to measure the percentage of total defects identified and removed before software is delivered to the customer.

It indicates how effectively the software development and testing teams detect and remove defects during development.

A higher DRE value indicates that more defects are detected before release and fewer defects escape to customers.

## 3. Formula of DRE

\\[ \boxed{ DRE = \frac{E}{E+D}\times100 } \\]

Where:

- E = Number of defects found and removed before software delivery.
- D = Number of defects discovered after software delivery.

Alternatively:

\\[ DRE = \frac{\text{Pre-release defects removed}} {\text{Total defects found before and after release}} \times100 \\]

## 4. Numerical Example

Suppose a software company identifies the following defects:

- Defects removed before release (E) = 180
- Defects discovered after release (D) = 20

Calculate DRE.

Solution:

Given:

\\[ E=180,\quad D=20 \\]

Using the formula:

\\[ DRE=\frac{E}{E+D}\times100 \\]

Substitute the values:

\\[ DRE=\frac{180}{180+20}\times100 \\]

\\[ =\frac{180}{200}\times100 \\]

\\[ \boxed{DRE=90\\%} \\]

Result: The Defect Removal Effectiveness is 90%. This means 90% of the identified defects were removed before software delivery, while 10% were discovered after release.

## 5. Importance of DRE in Software Quality Assurance

1\. Measures Testing Effectiveness

\- Evaluates how effectively testing activities identify defects before release.

2\. Improves Software Quality

- Helps reduce defects reaching customers.
- Improves software reliability.

3\. Identifies Process Weaknesses

- Helps identify weaknesses in development and testing activities.
- Supports corrective actions.

4\. Supports Process Improvement

- Helps organisations improve testing strategies and quality procedures.
- Encourages early defect detection.

5\. Reduces Maintenance Costs

- Early defect detection reduces expensive post-release corrections.
- Minimises customer complaints and support costs.

6\. Helps Management Decision-Making

- Provides measurable information about software quality.
- Helps management evaluate the effectiveness of quality assurance activities.

## 6. Advantages of DRE

1. Provides a measurable quality indicator.
2. Helps evaluate defect detection efficiency.
3. Reduces post-release defects.
4. Improves customer satisfaction.
5. Helps improve testing processes.
6. Reduces software maintenance and correction costs.

## 7. Factors Affecting DRE

1. Quality of test cases.
2. Testing coverage.
3. Experience of testing team.
4. Code review and inspection effectiveness.
5. Availability of proper testing tools.
6. Complexity of the software application.

## 8. Conclusion

Defect Removal Effectiveness is an important software quality metric that measures the efficiency of defect detection and removal before software delivery. A higher DRE indicates better defect detection and fewer defects escaping to customers. It helps organisations improve testing processes, reduce maintenance costs and deliver reliable software.

## Quick Revision for Examination

DRE Formula

\\[ DRE=\frac{E}{E+D}\times100 \\]

| Symbol | Meaning                          |
| ------ | -------------------------------- |
| E      | Defects removed before release   |
| D      | Defects discovered after release |

Remember:

- DRE = Defect Removal Effectiveness.
- It is an SQA metric.
- Higher DRE generally indicates better defect removal.
- Ideal target: 100% of identified defects removed before release.

Exam tip

For a 6-mark answer, write:

1. Definition – 1 mark.
2. Formula – 1 mark.
3. Numerical example – 1–2 marks.
4. Importance and advantages – 1–2 marks.
5. Conclusion – remaining marks.

Important: DRE is not the percentage of test cases passed. It measures the proportion of identified defects removed before release. Also, a high DRE alone does not prove that the software is defect-free; defects that remain undiscovered are not counted.