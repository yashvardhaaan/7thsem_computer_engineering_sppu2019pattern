# **Unit V – Topic 2: K-Medoids Clustering**

### **Definition**

K-Medoids is an **unsupervised clustering algorithm** that divides a dataset into K clusters. It is similar to K-Means, but instead of using the mean (centroid), it uses an actual data point called a **medoid** as the centre of each cluster.

A medoid is the data point within a cluster whose total distance from all other points in that cluster is minimum.

[Cluster Analysis: Definition and Examples - Qualtrics](https://images.openai.com/static-rsc-4/XPRs1Gteyy20DtVOr2eGRKfhBPi7QLX3KvGHcNlrnr76R2qj-aj6755z6ai_kcktm058dl3DonpZfyncVK_I83CIfmTMhnrqa--9G7R-WBS05rVbND_yguejKtlSZZVQnX3D_R-Q3_ykCuvGClPMdfC5jRCaD0L4JnzncDEN7MA?purpose=inline)

[qualtrics.com](https://www.qualtrics.com/articles/strategy-research/analyse-cluster/?utm_source=chatgpt.com)

### **Working principle**

K-Medoids groups data points around representative actual data points (medoids). It attempts to minimize the total dissimilarity between points and their assigned medoids.

### **K-Medoids algorithm (PAM – Partitioning Around Medoids)**

1. Select the number of clusters K.
2. Randomly select K data points as initial medoids.
3. Assign every remaining data point to its nearest medoid.
4. Calculate the total cost (sum of distances between points and their assigned medoids).
5. Replace a selected medoid with a non-medoid point and calculate the new cost.
6. If the new cost is lower, accept the replacement.
7. Repeat until no replacement reduces the total cost.

### **Mathematical formula**

The objective is to minimize:

\\[ J=\sum\_{j=1}^{K}\sum\_{x_i\in C_j} d(x_i,m_j) \\]

Where:

- \\(K\\) = Number of clusters
- \\(C_j\\) = Cluster j
- \\(x_i\\) = Data point
- \\(m_j\\) = Medoid of cluster j
- \\(d(x_i,m_j)\\) = Distance between point and medoid

### **Example**

Suppose a company wants to group customers based on their spending behaviour.

Assume the dataset contains spending scores:

\\[ 10,\ 12,\ 15,\ 50,\ 55,\ 60 \\]

For \\(K=2\\), K-Medoids may select actual observations such as 12 and 55 as medoids.

- Cluster 1: 10, 12, 15
- Cluster 2: 50, 55, 60

The medoids represent actual customers rather than calculated average positions.

### **Advantages**

- Less sensitive to outliers than K-Means.
- Medoids are actual data points, making them easier to interpret.
- Can work with different distance or dissimilarity measures.
- Suitable for datasets containing noise and extreme values.

### **Disadvantages**

- Computationally expensive for large datasets.
- Requires K to be specified in advance.
- Results depend on initial medoid selection.
- Can take more time than K-Means.

### **K-Means vs K-Medoids**

| K-Means                                                    | K-Medoids                                 |
| ---------------------------------------------------------- | ----------------------------------------- |
| Uses centroid (mean).                                      | Uses medoid (actual data point).          |
| Centroid may not be an actual observation.                 | Medoid is an actual observation.          |
| Sensitive to outliers.                                     | More robust to outliers.                  |
| Generally faster.                                          | Generally more computationally expensive. |
| Usually uses squared Euclidean distance for its objective. | Can use different distance measures.      |

## **Previous Year Questions (PYQs)**

These questions are present in your uploaded SPPU papers.

**Nov/Dec 2024 – Q5(a)**

5 Marks

“Why K-medoid is used? Explain K-medoid algorithm.”

**Nov/Dec 2023 – Q6(b)(ii)**

Short note

Write a short note on K-Medoids. It appears as one of three subtopics under Q6(b), carrying 9 marks in total.

**May/June 2023 – Q6(a)**

6 Marks

“How would you choose the number of clusters when designing a K-Medoid clustering algorithm?”

### **Exam preparation priority**

1. Explain K-Medoids algorithm (PAM).
2. Why is K-Medoids used?
3. Compare K-Means and K-Medoids.
4. Explain how to choose the number of clusters.

**Next topic: Hierarchical Clustering** — including Agglomerative and Divisive approaches, dendrograms and PYQs.

Say **next** to continue.