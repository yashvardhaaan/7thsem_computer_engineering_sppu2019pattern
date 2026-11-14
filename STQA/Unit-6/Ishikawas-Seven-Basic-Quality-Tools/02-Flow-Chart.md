# D. Quality-Control Charts and Diagrams



Extremely High PYQ Priority

6 Marks



This is a highly repeated SQA topic. Four quality-control tools appear repeatedly across your six examination papers:

1. Flowchart
2. Run Chart
3. Control Chart
4. Histogram

The questions include explanations and comparisons. Prepare all four individually, especially Run Chart vs Control Chart and Flowchart vs Control Chart.

## 1. PYQ Analysis

| Topic         | Examination appearances                          |
| ------------- | ------------------------------------------------ |
| Flowchart     | May 2023, Nov 2023, Nov 2024, May 2024, May 2025 |
| Run Chart     | Nov 2022, Nov 2023, Nov 2024, May 2025           |
| Control Chart | Nov 2022, Nov 2023, Nov 2024, May 2024, May 2025 |
| Histogram     | Nov 2022, Nov 2024, May 2023, May 2024, May 2025 |

Each appearance indicates that the topic was included in the supplied paper analysis; it does not necessarily mean a separate standalone question.

## 2. Flowchart

Appeared in 5 papers

[How to Make Flowcharts and Bring Joy to your Coding](https://images.openai.com/static-rsc-4/rTnOxI2csnPW4c0vwRa0LepkSHJ2lPlcSOSYvjjnY4y0GiJfvPQIGLdHpj4KlNkXNB22EbPiz3-uHtIsHXY_6UvIljL4NVzUmIBaqahEjc0KGa1u1hYeWBAgQ_YlgYd2_1PE91g0bCZtvafUp-GuVha-Io-QRMkPebx0mk6t5AE?purpose=inline)

[freecodecamp.org](https://www.freecodecamp.org/news/how-to-make-flowcharts-with-mermaid?utm_source=chatgpt.com)

Definition:

A Flowchart is a graphical representation of a process that shows the sequence of activities, decisions and operations using standard symbols connected by arrows.

Purpose:

- Understand the sequence of activities.
- Identify unnecessary steps and bottlenecks.
- Improve process efficiency.
- Identify errors in a workflow.

Common Flowchart Symbols

| Symbol        | Meaning            |
| ------------- | ------------------ |
| Oval          | Start / End        |
| Rectangle     | Process / Activity |
| Diamond       | Decision           |
| Parallelogram | Input / Output     |
| Arrow         | Direction of flow  |

Example: Software Login Process

Start

Enter Username and Password

Validate Credentials?

Yes

Login Successful

No

Display Error

Illustrative login workflow; both outcomes lead to the end of this simplified process.

Advantages:

- Easy to understand.
- Improves communication.
- Helps identify process-related problems.
- Supports process documentation.

## 3. Run Chart

Appeared in 4 papers

[Run Charts: A Comprehensive Guide - My Chart Guide](https://images.openai.com/static-rsc-4/N6tINLDx53FGrCDfbScEloSSpeS1qpk4nJznR5IwpM1W24dOwzb1X7Lp042SdKHj3nBPPyNoPaxXzyfIR1a6acmHzTdTCalj4Stz_FzshSdBvyqfauqCVW4eRRgEuhvKYY4iWKQp7ayt73vnE3maBI3Xt4S0mqvsMhOTZibMUqs?purpose=inline)

[mychartguide.com](https://mychartguide.com/run-charts-a-comprehensive-guide/?utm_source=chatgpt.com)

Definition:

A Run Chart is a graphical representation of data collected over time. It is used to identify trends, patterns, shifts and variations in a process.

It generally displays data points connected by lines against time or observation sequence, often with a median reference line.

Characteristics:

1. Displays process data over time.
2. Helps identify increasing or decreasing trends.
3. Shows shifts and patterns in data.
4. Usually includes a median line.
5. Does not normally use statistically calculated control limits.

Example:

A software company records the number of defects detected each week.

| Week | Defects |
| ---- | ------- |
| 1    | 20      |
| 2    | 18      |
| 3    | 15      |
| 4    | 12      |
| 5    | 9       |
| 6    | 7       |

The run chart shows a decreasing trend in defects, indicating improvement in software quality.

Advantages:

- Simple to create and understand.
- Helps monitor performance over time.
- Identifies trends and shifts.
- Useful for tracking process improvement.

## 4. Control Chart

Appeared in 5 papers

[PPT - Chapter 10 PowerPoint Presentation, free download - ID:1221772](https://images.openai.com/static-rsc-4/Gy2B-H7D-V8YX8vnKSlTSilA-SNro5Qy4kpeCC1hsugfuDq4tOQ2HvuUxjp4WNl0FRS17Eqkg6NovRvye58HQlvs4hgwprNR_6GOhU8gWQl8JdLoIyAroswuzwixnF6f6vqR_sLweuQKbGs48Eu-tX9AHrvGsoHY-81ISlCFrlI?purpose=inline)

[slideserve.com](https://www.slideserve.com/Leo/quality-control?utm_source=chatgpt.com)

Definition:

A Control Chart is a statistical quality-control tool used to monitor process stability over time and identify whether variations are caused by common or special causes.

It contains three important reference lines:

1. UCL (Upper Control Limit): Upper statistical boundary of expected process variation.
2. CL (Central Line): Represents the process average or centre.
3. LCL (Lower Control Limit): Lower statistical boundary of expected process variation.

Characteristics:

- Monitors process performance over time.
- Uses statistically calculated control limits.
- Identifies unusual variations.
- Helps determine whether a process is statistically stable.
- Supports corrective action when special causes are detected.

Example:

A software company monitors the response time of its application every day.

If a plotted point goes above the UCL, it may indicate an unusual performance problem that requires investigation.

Advantages:

1. Helps monitor process stability.
2. Identifies unusual variations.
3. Reduces defects and process failures.
4. Supports data-based decisions.
5. Helps maintain consistent quality.

## 5. Histogram

Appeared in 5 papers

[Histograms vs Summaries | OpenTelemetry](https://images.openai.com/static-rsc-4/OMLK9o5CgPRB9AKUfrs9OTBgwfJx3r7IkbfTL1pwrCbO4IEKCh72YMZrc6yzb1ysh2cho7Sxx2dUtyKD6c16f2G83bsVHRX9P3h99Flesbq-b529jwezRMzf6hGlBvy4TO7CpZdQ8fL-gRyk694MEsSMXw0gZOnj-p2rycOrNWA?purpose=inline)

[opentelemetry.io](https://opentelemetry.io/blog/2023/histograms-vs-summaries/?utm_source=chatgpt.com)

Definition:

A Histogram is a graphical representation of the frequency distribution of numerical data. It uses adjacent rectangular bars to show how frequently values occur within specified intervals.

Characteristics:

1. Represents numerical data.
2. Groups observations into intervals or bins.
3. Uses adjacent bars.
4. Shows the distribution and variation of data.
5. Helps identify patterns such as concentration, spread and skewness.

Example:

Suppose a website's response times are recorded during performance testing.

| Response time | Number of requests |
| ------------- | ------------------ |
| 0–1 second    | 20                 |
| 1–2 seconds   | 35                 |
| 2–3 seconds   | 25                 |
| 3–4 seconds   | 15                 |
| 4–5 seconds   | 5                  |

A histogram visually displays how response times are distributed.

Advantages:

- Easy to understand data distribution.
- Identifies variation.
- Helps identify unusual patterns.
- Supports quality analysis and improvement.

## 6. Difference Between Run Chart and Control Chart

Important repeated comparison

| Basis                | Run Chart                      | Control Chart                                |
| -------------------- | ------------------------------ | -------------------------------------------- |
| Meaning              | Displays data over time        | Monitors process stability over time         |
| Main purpose         | Identifies trends and patterns | Identifies process variation and instability |
| Centre reference     | Usually median                 | Usually process mean or centre               |
| Control limits       | No UCL and LCL                 | Has UCL and LCL                              |
| Statistical analysis | Generally simpler              | Uses statistical methods                     |
| Complexity           | Easy to construct              | More complex                                 |
| Main use             | Observe process trends         | Determine whether process is stable          |
| Example              | Weekly defect count            | Daily response-time monitoring               |

Conclusion: A Run Chart identifies trends and patterns over time, whereas a Control Chart uses statistical control limits to determine whether a process is stable.

## 7. Difference Between Flowchart and Control Chart

| Basis      | Flowchart                                 | Control Chart                              |
| ---------- | ----------------------------------------- | ------------------------------------------ |
| Meaning    | Graphical representation of process steps | Statistical chart for monitoring a process |
| Purpose    | Understand process sequence               | Monitor process stability                  |
| Structure  | Symbols, arrows and decision boxes        | Data points and control lines              |
| Data       | Does not require numerical data           | Requires numerical process data            |
| Time-based | Not necessarily time-based                | Usually tracks data over time              |
| Main use   | Process analysis                          | Quality control                            |
| Example    | Software login workflow                   | Application response-time monitoring       |

Conclusion: A Flowchart represents how a process works, whereas a Control Chart monitors whether a process operates within expected statistical limits.

## 8. Comparison of All Four Tools

| Tool          | What does it show?       | Main purpose              |
| ------------- | ------------------------ | ------------------------- |
| Flowchart     | Process steps            | Understand workflow       |
| Run Chart     | Data over time           | Identify trends           |
| Control Chart | Data with control limits | Monitor process stability |
| Histogram     | Frequency distribution   | Understand data variation |

## 9. PYQ Preparation Strategy

| Question pattern                               | What to prepare     |
| ---------------------------------------------- | ------------------- |
| Compare Run Chart and Control Chart            | Section 6           |
| Explain Flowchart, Run Chart and Control Chart | Sections 2, 3 and 4 |
| Compare Flowchart and Control Chart            | Section 7           |
| Explain Histogram, Flowchart and Control Chart | Sections 2, 4 and 5 |

Must Prepare All Four

Exam priorities:

1. Control Chart – definition, UCL, CL, LCL and diagram.
2. Run Chart – definition, characteristics and comparison with Control Chart.
3. Flowchart – symbols, diagram and comparison.
4. Histogram – definition, example and diagram.

Important distinction to remember:

- Flowchart = Process sequence.
- Run Chart = Trend over time.
- Control Chart = Process stability.
- Histogram = Frequency distribution.

These four one-line distinctions will help you quickly identify which chart to explain in the examination.