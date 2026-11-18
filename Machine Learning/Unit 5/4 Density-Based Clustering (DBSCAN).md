# **Unit V – Topic 4: Density-Based Clustering (DBSCAN)**

### **Definition**

Density-Based Spatial Clustering of Applications with Noise (DBSCAN) is an unsupervised clustering algorithm that groups data points based on their density.

It forms clusters in regions where many data points are closely packed and identifies points in low-density regions as noise or outliers.

Unlike K-Means, DBSCAN does not require the number of clusters to be specified in advance and can identify clusters of irregular shapes.

[Clustering Isn’t Just Grouping — It’s Decision Making](https://images.openai.com/static-rsc-4/XP23snn_CAZTuJuN1Bk739Gm_1fVc1KxYOV2codNVvir2gARQF-77250lsIEgcumZUwxjdOsigWvleDqhzdjRftZEBfH13yLYA8EH-wEExCupWbbQFVeUag-ROPWhEKB9El2LlntSVEjoEnt2qYt51EpXfgaA2oCGc7uNCSHsCg?purpose=inline)

[codeandclarity.substack.com](https://codeandclarity.substack.com/p/clustering-isnt-just-grouping-its?utm_source=chatgpt.com)

### **Important parameters**

**Epsilon (ε):** The maximum radius around a data point within which neighbouring points are searched.

**MinPts:** The minimum number of points required within the ε-neighbourhood for a point to be considered a core point.

### **Types of points in DBSCAN**

- **Core point:** A point having at least MinPts points within its ε-neighbourhood, including itself.
- **Border point:** A point that has fewer than MinPts neighbours but lies within the ε-neighbourhood of a core point.
- **Noise point:** A point that is neither a core point nor a border point. It is treated as an outlier.

### **DBSCAN algorithm**

1. Select the values of ε and MinPts.
2. Select an unvisited data point.
3. Find all points within its ε-neighbourhood.
4. If the point has at least MinPts neighbours, mark it as a core point and create a new cluster.
5. Add its density-reachable neighbouring points to the cluster.
6. Continue expanding the cluster by examining neighbouring core points.
7. If a point does not belong to any cluster, mark it as noise.
8. Repeat until all points are visited.

### **Mathematical concept**

The ε-neighbourhood of a point \\(P\\) is:

\\[ N\_\varepsilon(P)=\\{Q\mid d(P,Q)\leq\varepsilon\\} \\]

A point is a core point if:

\\[ |N\_\varepsilon(P)|\geq MinPts \\]

Here, \\(d(P,Q)\\) represents the distance between two points.

### **Example**

Suppose a shopping mall records the locations of customers visiting different shops.

- Areas with many customers close together form clusters.
- Customers near these dense areas but with fewer nearby customers are border points.
- Customers far away from other customers are treated as noise or outliers.

DBSCAN identifies groups based on customer density without requiring the number of groups beforehand.

### **Advantages**

- Does not require specifying the number of clusters.
- Detects clusters of arbitrary shapes.
- Identifies noise and outliers.
- Works well with spatial datasets.
- Does not require calculating cluster centroids.

### **Disadvantages**

- Selecting suitable ε and MinPts values can be difficult.
- Struggles with clusters having significantly different densities.
- Performance can decrease in high-dimensional datasets.
- Results depend on the selected distance measure.

### **Applications**

- Geographic data analysis
- Customer location analysis
- Fraud detection
- Anomaly detection
- Image processing

### **DBSCAN vs K-Means**

| K-Means                              | DBSCAN                                   |
| ------------------------------------ | ---------------------------------------- |
| Centroid-based clustering            | Density-based clustering                 |
| Requires K in advance                | Does not require K                       |
| Sensitive to outliers                | Identifies noise points                  |
| Works best with compact clusters     | Can identify irregularly shaped clusters |
| Every point is assigned to a cluster | Some points can remain noise             |

## **Previous Year Questions (PYQs)**

**May/June 2023 – Q5(c)**

6 Marks

“Explain how a cluster is formed in the density based clustering algorithm.”

**Nov/Dec 2024 – Q5(b)**

6 Marks

“Why density based clustering is used? Explain any one.”

**Nov/Dec 2023 – Q6(a)**

9 Marks

“Explain Hierarchical and Density-based Clustering approaches.”

### **Exam preparation priority**

1. Explain DBSCAN with a neat diagram.
2. Explain Core, Border and Noise points.
3. Explain ε and MinPts.
4. Explain the DBSCAN algorithm step by step.
5. Advantages and disadvantages.
6. Compare DBSCAN with K-Means.

**Next topic: Spectral Clustering.**

Say **next** to continue with the explanation and PYQs.