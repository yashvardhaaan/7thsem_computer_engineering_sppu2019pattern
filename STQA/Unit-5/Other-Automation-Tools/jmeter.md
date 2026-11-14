# I. Apache JMeter



SPPU PYQ – May 2024

6 Marks



This question focuses on the aim/purpose, working and advantages of Apache JMeter. Prepare its architecture and important components as well.

## 1. Introduction to Apache JMeter

Apache JMeter is an open-source Java-based testing tool developed by the Apache Software Foundation. It is mainly used for performance testing, load testing and stress testing of applications and services.

It helps testers analyse the performance of web applications, APIs, databases and other supported services under different workloads.

Example: Testing how a website behaves when 1,000 users access it simultaneously.

[Test Automation Noob: JMeter: An Overview](https://images.openai.com/static-rsc-4/CJqYKlucYHCS6OrtKFB87rLymBmsMBCoyJ3RdVfL-gCS2mMwsVQFut-zY1ABnws7efdPV-2HegFGP7CHy7soOh6Y9sn81iZskSAapurkkmD79KgYwnuur1fqXFue_vplfwuFCD4lSPsy5jxZbgd65C41vb256-mpqCA3W7VUsXc?purpose=inline)

[testautomationnoob.blogspot.com](https://testautomationnoob.blogspot.com/2013/02/jmeter-overview.html?utm_source=chatgpt.com)

## 2. Aim / Purpose of Apache JMeter

The main purposes of Apache JMeter are:

1. Load Testing: Checks application behaviour under expected user loads.
2. Stress Testing: Determines how an application behaves under excessive workload.
3. Performance Testing: Measures response time, throughput and latency.
4. Scalability Testing: Evaluates application performance as the number of users increases.
5. API Testing: Tests REST and other supported web services.
6. Database Testing: Tests database performance using supported JDBC connections.

## 3. Architecture of Apache JMeter

[JMeter Tutorial: Performance Testing & Load Testing Guide](https://images.openai.com/static-rsc-4/X1-g2r1t0r4N2r4VBj2Sr37b7VpKsHiCME7Zs0BnCXEorefIOJCSd3T4Xw8sVWs_faHucqYDNIaeLsOQ4Dp8ExJRuLr-OJeq_BoU-Pd28A6jkEqst4SFKCR9KbEgqqM2beg__QYu9HwBk_bo4EcGHe3fYw2ib-dLZixzxTzMkCo?purpose=inline)

[leantest.io](https://leantest.io/blog/jmeter-tutorial?utm_source=chatgpt.com)

The main components of JMeter are:

1\. Test Plan

- It is the root element of a JMeter test.
- It contains all the components required to execute a test.
- It defines the overall testing configuration.

2\. Thread Group

- Represents a group of virtual users.
- Defines the number of users, ramp-up period and loop count.
- Controls how many users execute the test.

3\. Samplers

- Send requests to the application or server.
- Examples include HTTP Request Sampler and JDBC Request Sampler.

4\. Listeners

- Collect and display test execution results.
- Show response time, throughput and error information.
- Examples: View Results Tree, Summary Report and Aggregate Report.

5\. Assertions

- Verify whether the server response meets expected conditions.
- Example: Check whether the HTTP response code is 200.

6\. Timers

- Introduce delays between requests.
- Help simulate realistic user behaviour.

## 4. Working of Apache JMeter

The working process involves the following steps:

Step 1: Create a Test Plan

- Open JMeter and create a new Test Plan.
- Define the application or API to be tested.

Step 2: Add Thread Group

- Add a Thread Group to the Test Plan.
- Specify the number of virtual users, ramp-up time and loop count.

Step 3: Add Samplers

- Add suitable samplers to send requests.
- Example: Add an HTTP Request Sampler to test a website.

Step 4: Configure Assertions and Timers

- Add assertions to validate server responses.
- Configure timers to simulate realistic user delays.

Step 5: Add Listeners

- Add listeners to collect and display test results.
- Select reports such as Summary Report or Aggregate Report.

Step 6: Execute the Test

- Run the test plan.
- JMeter generates requests from virtual users and collects server responses.

Step 7: Analyse Results

- Analyse response time, throughput, error percentage and other performance metrics.
- Identify performance bottlenecks.

## 5. Example of Apache JMeter

Suppose an e-commerce website wants to test its login page for 100 users.

| Parameter       | Configuration    |
| --------------- | ---------------- |
| Number of users | 100              |
| Ramp-up period  | 20 seconds       |
| Loop count      | 5                |
| Sampler         | HTTP Request     |
| Listener        | Aggregate Report |

Explanation:

1. Create a Test Plan.
2. Configure 100 virtual users in the Thread Group.
3. Set a 20-second ramp-up period.
4. Add an HTTP Request Sampler for the login endpoint.
5. Add an Aggregate Report Listener.
6. Execute the test and analyse response times and errors.

This helps determine whether the login service can handle the expected user load.

## 6. Important Performance Metrics in JMeter

| Metric                | Meaning                                       |
| --------------------- | --------------------------------------------- |
| Response Time         | Time taken by the server to respond           |
| Throughput            | Number of requests processed per unit of time |
| Latency               | Time until the first response is received     |
| Error Percentage      | Percentage of failed requests                 |
| Average Response Time | Average time taken to process requests        |

## 7. Advantages of Apache JMeter

1. Open Source: Free to download and use.
2. Platform Independent: Works on systems supporting Java.
3. Multiple Protocol Support: Supports HTTP, HTTPS, JDBC and other protocols.
4. Load Testing: Simulates multiple virtual users.
5. Detailed Reports: Provides performance reports and graphs.
6. Extensibility: Supports plugins and custom components.
7. Automation: Can execute tests through command-line mode and integrate with CI/CD tools.
8. Distributed Testing: Supports load generation across multiple machines.

## 8. Conclusion

Apache JMeter is a powerful open-source performance testing tool used to measure the performance, reliability and scalability of applications. Its components, such as Test Plan, Thread Group, Samplers and Listeners, help simulate user activity and analyse application performance under different workloads.

## Quick Revision for Examination

JMeter test structure

Test Plan

Thread Group

Virtual Users

Sampler

Sends Requests

Application / Server

Listener

Displays Results

| Component    | Remember                   |
| ------------ | -------------------------- |
| Test Plan    | Overall test configuration |
| Thread Group | Virtual users              |
| Sampler      | Sends requests             |
| Listener     | Displays results           |
| Assertion    | Validates responses        |
| Timer        | Adds delay                 |

Exam tip

For 6 marks, focus on:

- Introduction and purpose.
- Architecture/components.
- Working steps.
- Advantages.

Important: JMeter primarily measures server-side performance. Its virtual users do not behave exactly like real graphical browser users rendering pages. Also, for large load tests, command-line (non-GUI) execution is generally preferred over GUI mode.