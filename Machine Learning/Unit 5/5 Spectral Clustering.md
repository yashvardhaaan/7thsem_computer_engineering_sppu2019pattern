# **Unit V – Topic 5: Spectral Clustering**

### **Definition**

Spectral Clustering is an **unsupervised clustering technique** that uses graph theory and eigenvalues/eigenvectors of a similarity matrix to group similar data points.

It represents data points as nodes in a graph. The connections between nodes represent the similarity between data points.

It is especially useful for identifying complex, non-spherical clusters that traditional K-Means may not handle well.

[Spectral Clustering algorithm. Spectral Clustering is a beautiful and… | by Dilip Kumar | Medium](https://images.openai.com/static-rsc-4/WTT5g2xxlhQBiM8NICA86gRqBKgr6D1JDjCU6yyQEYJd7rujKTYJ96EPPj4y9VWcUmxrKVm6KkAFMKR9cpJOjBAObsj1RxsawY6YKWzqaRwxuJW0J6frs0Mizru8q43GWTgNNQDjsBBeH-kRg-3wzXn9ZKkLcBhni-_vwIJ95eE?purpose=inline)

[dilipkumar.medium.com](https://dilipkumar.medium.com/spectral-clustering-algorithm-03a62854d19b?utm_source=chatgpt.com)

### **Working principle**

Spectral clustering converts the dataset into a similarity graph and uses the eigenvectors of its graph Laplacian matrix to transform the data into a space where clustering becomes easier.

### **Steps involved**

1. **Construct similarity matrix:** Calculate similarity between every pair of data points.
2. **Construct degree matrix:** Calculate the sum of similarities connected to each data point.
3. **Calculate graph Laplacian:** Use the degree matrix and similarity matrix.
4. **Eigenvalue decomposition:** Calculate eigenvalues and eigenvectors of the Laplacian.
5. **Select eigenvectors:** Choose the first K relevant eigenvectors.
6. **Apply clustering:** Use K-Means on the selected eigenvector representation to form clusters.

### **Mathematical concepts**

**Similarity matrix (W):** Stores the similarity between pairs of data points.

**Degree matrix (D):** A diagonal matrix containing the sum of similarities for each point.

**Graph Laplacian matrix:**

\\[ L=D-W \\]

Where:

- \\(D\\) = Degree matrix
- \\(W\\) = Similarity matrix
- \\(L\\) = Graph Laplacian matrix

The eigenvectors of the Laplacian are used to create a new representation of the data for clustering.

### **Example**

Consider a dataset containing two crescent-shaped groups of data points.

K-Means may struggle because the groups are not circular or spherical. Spectral clustering uses similarities between neighbouring points to identify the two crescent-shaped clusters.

### **Advantages**

- Identifies complex and non-spherical clusters.
- Uses relationships between data points.
- Useful for graph-based data.
- Can identify clusters that K-Means cannot easily separate.

### **Disadvantages**

- Computationally expensive for large datasets.
- Requires selection of the number of clusters.
- Choosing the similarity function can be difficult.
- Sensitive to parameter selection.

### **Applications**

- Image segmentation
- Social network analysis
- Document clustering
- Biological data analysis
- Community detection

### **Spectral Clustering vs K-Means**

| K-Means                             | Spectral Clustering                 |
| ----------------------------------- | ----------------------------------- |
| Centroid-based algorithm            | Graph-based algorithm               |
| Uses distance from centroids        | Uses similarity between points      |
| Works well for compact clusters     | Handles complex cluster shapes      |
| Directly clusters original data     | Uses eigenvectors before clustering |
| Generally computationally efficient | More computationally expensive      |

## **Previous Year Questions (PYQs)**

**Nov/Dec 2023 – Q5(c)**

5 Marks

“Explain Spectral Clustering algorithm.”

**May/June 2023 – Q6(c)**

6 Marks

“Differentiate between K-means and Spectral clustering.”

### **Exam preparation priority**

1. Explain Spectral Clustering algorithm with a diagram.
2. Explain the role of similarity matrix and graph Laplacian.
3. Differentiate K-Means and Spectral Clustering.
4. Advantages, disadvantages and applications.

**Next topic: Outlier Analysis – Introduction.**

Say **next** to continue with the explanation and PYQs.