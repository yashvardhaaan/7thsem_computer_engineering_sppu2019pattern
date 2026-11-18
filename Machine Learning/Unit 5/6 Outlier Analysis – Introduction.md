# **Unit V – Topic 7: Isolation Factor Model**

PYQ priority: High

## **1. What is the Isolation Factor Model?**

The **Isolation Factor Model** is an outlier-detection approach used to identify unusual or abnormal data points in a dataset.

It is based on the idea that outliers are different from normal data points and can therefore be isolated more easily.

A commonly used approach for this is **Isolation Forest**.

- Normal data points usually require more partitioning steps to isolate.
- Outliers are generally isolated in fewer partitioning steps.
- Therefore, a point that is isolated quickly is more likely to be an outlier.

## **2. Isolation Forest – Working**

Isolation Forest uses multiple random trees called *Isolation Trees (iTrees)*.

**Steps:**

1. Select a random subset of data.
2. Randomly select a feature.
3. Choose a random split value within that feature's range.
4. Divide the data into two groups.
5. Repeat splitting until points are isolated or a stopping condition is reached.
6. Repeat the process to construct multiple isolation trees.
7. Calculate the average path length for each data point.

[Anomaly Detection in Python — Part 2; Multivariate Unsupervised Methods and Code | by Nitish Kumar Thakur | TDS Archive | Medium](https://images.openai.com/static-rsc-4/LlHOdaeJSuG_Q8ucXx3SgMb3l-57RFGF3LC2Uw82SBMvnfTaWW2jjPkwCCMEGCnGC1VSqau-h1MEpT7XSSmy0d6uOcMpNBZCrSsAZ4twl3J4tgRtmQDrvBbBqrMgNMnnxntByudlGFxlozZU-zzE7AK1ONG2a-bqsuJ5KCtqGas?purpose=inline)

[medium.com](https://medium.com/data-science/anomaly-detection-in-python-part-2-multivariate-unsupervised-methods-and-code-b311a63f298b?utm_source=chatgpt.com)

## **3. Average Path Length**

Path length is the number of edges a data point travels from the root of an isolation tree until it becomes isolated.

- **Short path length:** Likely an outlier.
- **Long path length:** Likely a normal data point.

The average path length is calculated across multiple isolation trees.

## **4. Isolation Score**

The anomaly score is calculated using:

\\[ s(x,n)=2^{-\frac{E(h(x))}{c(n)}} \\]

Where:

- \\(E(h(x))\\) = Average path length of point \\(x\\).
- \\(c(n)\\) = Expected path length of an unsuccessful search in a Binary Search Tree.
- \\(n\\) = Number of samples.

**Interpretation:**

| Score        | Interpretation                   |
| ------------ | -------------------------------- |
| Close to 1   | Likely outlier                   |
| Close to 0.5 | No strong evidence of an outlier |
| Below 0.5    | Likely normal point              |

## **5. Advantages**

1. Efficient for large datasets.
2. Does not require labelled training data.
3. Can detect unusual patterns in high-dimensional datasets.
4. Does not require calculating distances between every pair of data points.
5. Useful for detecting anomalies in complex datasets.

## **6. Applications**

- Banking fraud detection.
- Network intrusion detection.
- Detecting abnormal transactions.
- Manufacturing defect detection.
- Healthcare anomaly detection.
- Identifying unusual sensor readings.

## **7. Limitations**

1. Random splitting can produce varying results.
2. Performance depends on parameters such as the number of trees and sample size.
3. Interpretation may be difficult.
4. Small or clustered anomalies can be harder to detect.

## **8. PYQs from your uploaded papers**

Repeated in two papers

**Nov/Dec 2024 – Q6(a) [5 marks]**

> What is isolation factor model?

**May/June 2024 – Q6(a) [5 marks]**

> What is isolation factor model?

**Exam tip:** Prepare the definition, working of Isolation Forest, isolation trees, average path length, anomaly score and applications. These points form a good structure for a 5-mark answer.

**Next topic: Local Outlier Factor (LOF)** — another important outlier-detection method. Type **next** to continue.