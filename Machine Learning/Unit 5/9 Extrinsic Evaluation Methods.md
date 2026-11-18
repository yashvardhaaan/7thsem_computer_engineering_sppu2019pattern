# **Unit V – Topic 10: Extrinsic Evaluation Methods**

## **1. What is Extrinsic Evaluation?**

**Extrinsic evaluation** is a method used to evaluate the quality of clustering by comparing the clustering results with the actual class labels or ground-truth labels.

In simple words, it checks whether the clusters formed by an algorithm match the actual categories in the dataset.

**Example:**

Suppose a dataset contains information about animals with known labels:

- Cats
- Dogs
- Birds

After applying a clustering algorithm, we get three clusters.

Extrinsic evaluation checks how closely these three clusters match the actual animal categories.

## **2. Common Extrinsic Evaluation Metrics**

### **A. Purity**

Purity measures the proportion of correctly assigned data points in each cluster, considering its majority class.

\\[ Purity=\frac{1}{N}\sum\_{k=1}^{K} \max_j |C_k\cap L_j| \\]

Where:

- \\(N\\) = Total number of data points.
- \\(C_k\\) = Cluster \\(k\\).
- \\(L_j\\) = Actual class \\(j\\).

**Interpretation:**

- Purity ranges from 0 to 1.
- Higher purity indicates better clustering.

### **B. Rand Index (RI)**

Rand Index measures the similarity between the clustering result and actual class labels by considering pairs of data points.

It checks:

- Whether two points belong to the same cluster and same actual class.
- Whether two points belong to different clusters and different actual classes.

\\[ RI=\frac{TP+TN}{TP+FP+FN+TN} \\]

Where:

- TP = True Positive pairs.
- TN = True Negative pairs.
- FP = False Positive pairs.
- FN = False Negative pairs.

Higher Rand Index indicates better agreement.

### **C. Adjusted Rand Index (ARI)**

Adjusted Rand Index is an improved version of Rand Index. It adjusts for the similarity that could occur by chance.

\\[ ARI=\frac{RI-\text{Expected}(RI)} {\text{Maximum}(RI)-\text{Expected}(RI)} \\]

- ARI = 1: Perfect agreement.
- ARI approximately 0: Similarity expected by chance.
- ARI below 0: Agreement worse than expected by chance.

### **D. Normalized Mutual Information (NMI)**

NMI measures the amount of shared information between the predicted clusters and actual class labels.

\\[ NMI(U,V)=\frac{2I(U;V)}{H(U)+H(V)} \\]

Where:

- \\(I(U;V)\\) = Mutual information.
- \\(H(U)\\) and \\(H(V)\\) = Entropy of the two label assignments.

Higher NMI indicates better agreement.

## **3. Advantages**

1. Provides quantitative evaluation.
2. Compares clustering with known categories.
3. Helps compare different clustering algorithms.
4. Useful when labelled datasets are available.

## **4. Limitations**

1. Requires actual class labels.
2. Ground-truth labels may not always be available.
3. Results depend on the quality of the reference labels.
4. A good clustering may discover meaningful groups that do not match the original labels.

## **5. Extrinsic vs Intrinsic Evaluation**

| Extrinsic evaluation                | Intrinsic evaluation                             |
| ----------------------------------- | ------------------------------------------------ |
| Uses actual class labels            | Does not require actual class labels             |
| Compares clusters with ground truth | Measures cluster quality using the data itself   |
| Examples: Purity, RI, ARI, NMI      | Examples: Silhouette Score, Davies-Bouldin Index |
| Requires labelled reference data    | Can work with unlabelled data                    |

## **6. PYQ relevance**

The uploaded papers include:

**Nov/Dec 2023 – Q6(b)(iii), part of [9 marks]**

> Write short note on: Evaluation metrics.

The paper lists this as one of three short-note subtopics under a combined 9-mark question. It does not specify separate marks for this subtopic.

**Exam tip:** Prepare Purity, Rand Index, ARI and NMI with definitions and formulas. These are standard extrinsic metrics; the cited PYQ asks generally about evaluation metrics.

**Next topic: Intrinsic Evaluation Methods** — evaluating clusters without using actual class labels. Type **next** to continue.