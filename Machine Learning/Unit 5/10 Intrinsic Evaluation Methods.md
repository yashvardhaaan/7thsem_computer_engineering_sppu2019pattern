# **Unit V – Topic 11: Intrinsic Evaluation Methods**

## **1. What is Intrinsic Evaluation?**

**Intrinsic evaluation** is a method used to evaluate the quality of clustering without comparing the results with actual class labels.

It evaluates clusters using the properties of the data itself, mainly:

- **Cohesion:** How closely data points are grouped within the same cluster.
- **Separation:** How far apart different clusters are from one another.

A good clustering result generally has:

- High cohesion (points within a cluster are close).
- High separation (different clusters are far apart).

## **2. Common Intrinsic Evaluation Metrics**

### **A. Silhouette Score**

The Silhouette Score measures how similar a data point is to its own cluster compared with other clusters.

\\[ S(i)=\frac{b(i)-a(i)}{\max(a(i),b(i))} \\]

Where:

- \\(a(i)\\) = Average distance between point \\(i\\) and other points in its own cluster.
- \\(b(i)\\) = Minimum average distance between point \\(i\\) and points in another cluster.

**Interpretation:**

| Score       | Meaning                                    |
| ----------- | ------------------------------------------ |
| Close to +1 | Well-clustered point                       |
| Around 0    | Point lies near a cluster boundary         |
| Close to -1 | Point may be assigned to the wrong cluster |

### **B. Davies–Bouldin Index (DBI)**

It measures the similarity between clusters based on their within-cluster spread and the distance between their centroids.

\\[ DBI=\frac{1}{K}\sum\_{i=1}^{K} \max\_{j\ne i}\left(\frac{S_i+S_j}{M\_{ij}}\right) \\]

Where:

- \\(S_i\\) = Average distance of points in cluster \\(i\\) from its centroid.
- \\(M\_{ij}\\) = Distance between centroids of clusters \\(i\\) and \\(j\\).
- \\(K\\) = Number of clusters.

**Interpretation:** Lower DBI indicates better clustering because clusters are compact and well-separated.

### **C. Calinski–Harabasz Index**

It measures the ratio of between-cluster dispersion to within-cluster dispersion.

\\[ CH=\frac{B_K/(K-1)}{W_K/(N-K)} \\]

Where:

- \\(B_K\\) = Between-cluster dispersion.
- \\(W_K\\) = Within-cluster dispersion.
- \\(K\\) = Number of clusters.
- \\(N\\) = Total number of data points.

**Interpretation:** Higher Calinski–Harabasz score generally indicates better clustering.

## **3. Comparison of Intrinsic Metrics**

| Metric                  | What it measures                  | Better result |
| ----------------------- | --------------------------------- | ------------- |
| Silhouette Score        | Cohesion and separation           | Higher        |
| Davies–Bouldin Index    | Cluster similarity                | Lower         |
| Calinski–Harabasz Index | Between/within cluster dispersion | Higher        |

## **4. Advantages**

1. Does not require labelled data.
2. Useful for evaluating unsupervised clustering.
3. Helps compare different clustering algorithms.
4. Helps identify suitable clustering configurations.

## **5. Limitations**

1. Different metrics may give different results.
2. Results can depend on the distance measure.
3. Some metrics favour particular cluster shapes.
4. A good numerical score does not always mean the clusters are meaningful in the real world.

## **6. Intrinsic vs Extrinsic Evaluation**

| Intrinsic                        | Extrinsic                              |
| -------------------------------- | -------------------------------------- |
| No actual labels required        | Actual labels required                 |
| Uses internal cluster structure  | Compares with ground-truth labels      |
| Measures cohesion and separation | Measures agreement with actual classes |
| Silhouette, DBI, CH              | Purity, RI, ARI, NMI                   |

## **7. PYQ relevance from your uploaded papers**

**Nov/Dec 2023 – Q6(b)(iii), part of [9 marks]**

> Write short note on: Evaluation metrics.

This is a general evaluation-metrics question, not a direct question specifically naming intrinsic metrics.

**Exam preparation:** Learn Silhouette Score and Davies–Bouldin Index with formulas and interpretations. Also understand the difference between intrinsic and extrinsic evaluation.

## **Unit V completion checklist**

All 11 topics covered

- K-Means
- K-Medoids
- Hierarchical Clustering
- Density-Based Clustering (DBSCAN)
- Spectral Clustering
- Outlier Analysis
- Isolation Factor Model
- Local Outlier Factor
- Elbow Method
- Extrinsic Evaluation
- Intrinsic Evaluation

**Unit V is complete.** Next, I can prepare a consolidated Unit V PYQ list arranged topic-wise, with repeated questions and marks.