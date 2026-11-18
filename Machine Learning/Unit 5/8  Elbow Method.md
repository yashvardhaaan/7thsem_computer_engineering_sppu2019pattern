# **Unit V – Topic 9: Elbow Method**

PYQ: 6 marks

## **1. What is the Elbow Method?**

The **Elbow Method** is a technique used to determine the optimal number of clusters (\\(K\\)) in the K-Means clustering algorithm.

It works by calculating the **Within-Cluster Sum of Squares (WCSS)** for different values of \\(K\\).

The WCSS measures how close data points are to their respective cluster centroids.

- Lower WCSS means points are closer to their centroids.
- Increasing the number of clusters generally decreases WCSS.
- The best value of \\(K\\) is selected at the point where the decrease in WCSS starts becoming less significant. This point looks like an elbow in a graph.

## **2. Formula: WCSS**

\\[ WCSS=\sum\_{j=1}^{K}\sum\_{x_i\in C_j} \\|x_i-\mu_j\\|^2 \\]

Where:

- \\(K\\) = Number of clusters.
- \\(C_j\\) = Cluster \\(j\\).
- \\(x_i\\) = Data point.
- \\(\mu_j\\) = Centroid of cluster \\(j\\).

## **3. Steps of the Elbow Method**

1. Select a range of K values, for example, \\(K=1\\) to \\(K=10\\).
2. Apply K-Means for each K value.
3. Calculate WCSS for every clustering result.
4. Plot a graph:
   - X-axis: Number of clusters (K).
   - Y-axis: WCSS.
5. Identify the elbow point.
6. Select the corresponding K as the optimal number of clusters.

## **4. Elbow Graph**

[Weather Typing and Synoptic Climatology – CEVE 543 - Fall 2025](https://images.openai.com/static-rsc-4/97VOIqvuPECxNORhms5bM4QV9NeaktnYZiycPNHBH6PL3_5v4Rle-GnvA58isbQCcofvhYG6LRnKdRAdRsDZueoJSbxbYSHVQOwI3TN2ofRMf40prS4MaJ65Cj-wrLvIKWJziThEcvH8Qpo9hdmHwZTsf-5P4q-3GlYHGYEN-tI?purpose=inline)

[ceve543.github.io](https://ceve543.github.io/lectures/2025-10-27/index.html?utm_source=chatgpt.com)

**How to interpret the graph:**

- Initially, WCSS decreases rapidly as K increases.
- After a certain point, WCSS decreases slowly.
- The point where the curve bends is called the elbow point.
- This point suggests a suitable number of clusters.

## **5. Example**

Suppose we apply K-Means to a dataset and obtain:

| Number of clusters (K) | WCSS |
| ---------------------- | ---- |
| 1                      | 1000 |
| 2                      | 600  |
| 3                      | 300  |
| 4                      | 250  |
| 5                      | 220  |
| 6                      | 200  |

Here, WCSS decreases significantly until \\(K=3\\). After that, the reduction becomes smaller.

Therefore, **the optimal number of clusters is approximately 3**.

## **6. Advantages**

1. Simple and easy to understand.
2. Helps select the number of clusters.
3. Reduces unnecessary clustering complexity.
4. Works well when clusters have a clear separation.

## **7. Limitations**

1. The elbow point may not always be clearly visible.
2. Results can be subjective.
3. It does not guarantee the best clustering.
4. It is mainly associated with K-Means and WCSS.

## **8. PYQ from your uploaded paper**

6 marks

**May/June 2025 – Q5(c)**

> Write short note on Elbow method used in K-mean clustering.

**Exam answer structure:** Definition → WCSS formula → Steps → Elbow graph → Example → Advantages and limitations.

**Next topic: Extrinsic Evaluation Methods** — how to evaluate clustering results using known class labels. Type **next** to continue.