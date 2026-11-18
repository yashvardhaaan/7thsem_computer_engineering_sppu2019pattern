Absolutely. From now on, **every Unit V topic will include its relevant PYQs** from the SPPU question papers you uploaded, with the exam session, question number and marks wherever available.

# **Unit V – Topic 1: K-Means Clustering**

### **Definition**

K-Means is an **unsupervised machine learning algorithm** used to divide an unlabelled dataset into K clusters based on similarity.

It groups similar data points together and separates dissimilar data points into different clusters.

[Machine Learning Algorithms You Should Know for Data Science - StrataScratch](https://images.openai.com/static-rsc-4/P2Cq2YPviPUGclxIF7Vi_IVQ0t_8ipGm9LsO7fg70zEfvGyIT2gWILDVRRiUWhrAXuOV1T1ZItY85dJQf_Xb_XkAMzUQAYj6qhM-OIgDVuREI7TTt_RYmdyhb63rH6KACMfeiMh4w1zonn-MOBaHTdTSD9DzVTzffqosxwfw6LU?purpose=inline)

[stratascratch.com](https://www.stratascratch.com/blog/machine-learning-algorithms-you-should-know-for-data-science/?utm_source=chatgpt.com)

### **Working principle**

K-Means assigns each data point to its nearest cluster centroid and repeatedly updates the centroids until the clusters become stable.

**Algorithm steps:**

1. Select the number of clusters K.
2. Initialize K centroids randomly.
3. Calculate the distance between each data point and every centroid.
4. Assign each point to its nearest centroid.
5. Recalculate each centroid using the mean of the points in its cluster.
6. Repeat steps 3–5 until the centroids stop changing significantly.

### **Mathematical formulas**

**Euclidean distance:**

\\[ d(x,y)=\sqrt{\sum\_{i=1}^{n}(x_i-y_i)^2} \\]

**Centroid calculation:**

\\[ \mu_j=\frac{1}{N_j}\sum\_{i=1}^{N_j}X_i \\]

**Objective function (WCSS):**

\\[ WCSS=\sum\_{j=1}^{K}\sum\_{x_i\in C_j} \\|x_i-\mu_j\\|^2 \\]

The objective of K-Means is to minimize WCSS (Within-Cluster Sum of Squares).

### **Example**

A shopping company wants to divide its customers into three groups based on annual income and spending score.

- Cluster 1: Low-income customers.
- Cluster 2: Medium-income customers.
- Cluster 3: High-income customers.

K-Means groups customers according to the similarity of their income and spending scores.

### **Advantages**

- Simple and easy to implement.
- Fast for large datasets.
- Easy to understand and interpret.
- Works well for compact, well-separated clusters.

### **Disadvantages**

- K must be specified in advance.
- Sensitive to initial centroid selection.
- Sensitive to outliers.
- Not suitable for irregularly shaped clusters.
- Results may vary depending on initialization.

### **Applications**

- Customer segmentation
- Image segmentation
- Document clustering
- Market analysis
- Grouping similar products

## **Previous Year Questions (PYQs)**

These are the relevant questions found in your uploaded SPPU papers.

**Nov/Dec 2023**

8 Marks

Q5(a): “Explain K-Means clustering in detail with a suitable example.”

**May/June 2024**

6 Marks

Q6(b): “Explain k means algorithm.”

**Nov/Dec 2024**

6 Marks

Q5(c): Numerical problem — Cluster the given nine points into three clusters using the K-Means algorithm.

Points: P1(1,3), P2(2,2), P3(5,8), P4(8,5), P5(3,9), P6(10,7), P7(3,3), P8(9,4), P9(3,7).

**Nov/Dec 2023 (another uploaded paper)**

8 Marks

Q5(a): Numerical problem — Perform the first iteration of K-Means using Euclidean distance, with initial centres A1, B1 and C1.

- A1(2,10), A2(2,5), A3(8,4)
- B1(5,8), B2(7,5), B3(6,4)
- C1(1,2), C2(4,9)

**Nov/Dec 2022**

Q5(a): Numerical problem — Apply K-Means to the given eight points using Euclidean distance and initial centres A1, B1 and C1. Show the three cluster centres after the first iteration, with steps.

9 Marks

### **Exam preparation priority**

1. K-Means algorithm with a suitable example.
2. Numerical problems involving first iteration and centroid calculation.
3. Advantages and disadvantages.
4. WCSS and the objective of minimizing within-cluster variation.

**Next topic: K-Medoids Clustering.**

Say **next** and I'll cover it with its relevant PYQs as well.