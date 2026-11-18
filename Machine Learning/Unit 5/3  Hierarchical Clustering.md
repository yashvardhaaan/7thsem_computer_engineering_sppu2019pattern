# **Unit V – Topic 3: Hierarchical Clustering**

### **Definition**

Hierarchical clustering is an **unsupervised learning technique** that groups similar data points into a hierarchy of clusters.

Unlike K-Means, it does not require the number of clusters to be specified at the beginning. It creates a tree-like structure called a **dendrogram**, which shows how clusters are formed or divided.

[Hierarchical Clustering in Machine Learning | EJable](https://images.openai.com/static-rsc-4/FZFKEyBokmt57ZHjFsHN_KHoX63afjyUm2OmWZ89HtDKFtYiFW_DlEG7qr0SO4wUGJnZmkzAYOT67AhqocQnM7FD9H_lWpf5zHPHa7WlgdkyowpAdO2AZNLe7us6LRZ5D5_47aacAwiqc5HVC9sLCiaHSZHjbLfiudDwTzBApt8?purpose=inline)

[ejable.com](https://www.ejable.com/tech-corner/ai-machine-learning-and-deep-learning/hierarchical-clustering-in-data-science/?utm_source=chatgpt.com)

### **Types of hierarchical clustering**

**Agglomerative clustering (Bottom-Up)**

- Initially, every data point is treated as an individual cluster.
- Find the two closest clusters.
- Merge them into one cluster.
- Repeat until all points form one cluster or the desired number of clusters is reached.

**Divisive clustering (Top-Down)**

- Initially, all data points belong to one large cluster.
- Divide the cluster into smaller clusters.
- Continue splitting until each point is separate or the desired number of clusters is reached.

### **Working of Agglomerative clustering**

1. Consider each data point as an individual cluster.
2. Calculate the distance between all clusters.
3. Identify the two closest clusters.
4. Merge the closest clusters.
5. Recalculate distances between the new clusters and remaining clusters.
6. Repeat until the required hierarchy is formed.

### **Dendrogram**

A dendrogram is a tree-like diagram used to represent the hierarchy of clusters.

[Introduction to Hierarchical Clustering in Python | by Margaret Sabelhaus | Medium](https://images.openai.com/static-rsc-4/1cK6wHaru5VbPSmfhkg02fh68h2oU6WoSyu3BDbIzuJca4ugU3wgllbWAkOfTbojGGystS_1ZMnZnzTbv_A8pR8So_5kWMxwQ4e26tbjeGabQriPZl4gSGzx7kbKoSGYZgYTRUZm9hGj85hZJer4go3VhMDRMKonYyHhvdmbtP8?purpose=inline)

[medium.com](https://medium.com/%40margaret.sabelhaus/introduction-to-hierarchical-clustering-in-python-7b4c8a8d8752?utm_source=chatgpt.com)

- **X-axis:** Represents individual data points.
- **Y-axis:** Represents distance or dissimilarity between clusters.
- **Branches:** Show how clusters merge or split.
- **Horizontal cut:** Helps determine the number of clusters.

### **Linkage methods**

Linkage methods determine the distance between two clusters.

| Method           | Meaning                                                                        |
| ---------------- | ------------------------------------------------------------------------------ |
| Single linkage   | Minimum distance between two points in different clusters.                     |
| Complete linkage | Maximum distance between two points in different clusters.                     |
| Average linkage  | Average distance between all pairs of points in two clusters.                  |
| Ward's method    | Merges clusters that produce the smallest increase in within-cluster variance. |

### **Example**

Suppose a library has books belonging to different categories.

- Initially, every book is a separate cluster.
- Similar books are grouped together.
- Fiction books may form one cluster.
- Non-fiction books may form another cluster.
- Fiction can further be divided into mystery, science fiction and romance.

This hierarchy can be represented using a dendrogram.

### **Advantages**

- Does not require the number of clusters initially.
- Provides a visual representation of cluster relationships.
- Can identify clusters at different levels.
- Useful for understanding hierarchical data.

### **Disadvantages**

- Computationally expensive for large datasets.
- Once clusters are merged or split, the decision cannot normally be reversed.
- Sensitive to noise and outliers.
- Results depend on the distance and linkage methods selected.

### **Applications**

- Document and text clustering
- Biological classification
- Customer segmentation
- Grouping similar products
- Gene expression analysis

## **Previous Year Questions (PYQs)**

**Nov/Dec 2024 – Q6(b)**

6 Marks

“Explain Hierarchical Clustering with an example.”

**May/June 2024 – Q6(a)**

9 Marks

“Explain how hierarchical clustering can be used for visualizing hierarchical relationships in data with suitable example? What are some real-world applications of hierarchical clustering?”

**Nov/Dec 2023 – Q6(a)**

9 Marks

“Explain Hierarchical and Density-based Clustering approaches.”

**Nov/Dec 2024 – Q5(a), additional question from your notes**

“What is Hierarchical clustering? Explain hierarchical clustering algorithms.”

### **Exam preparation priority**

1. Explain Agglomerative and Divisive clustering.
2. Explain hierarchical clustering with a dendrogram.
3. Explain linkage methods.
4. Applications, advantages and disadvantages.
5. Compare Hierarchical clustering with K-Means.

**Next topic: Density-Based Clustering (DBSCAN).**

Say **next** to continue with its explanation and PYQs.