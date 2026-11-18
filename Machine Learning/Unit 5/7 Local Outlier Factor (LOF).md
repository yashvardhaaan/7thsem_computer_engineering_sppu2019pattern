# **Unit V – Topic 8: Local Outlier Factor (LOF)**

Important for exams

## **1. What is Local Outlier Factor?**

**Local Outlier Factor (LOF)** is an unsupervised outlier-detection algorithm that identifies abnormal data points by comparing the local density of a point with the local densities of its neighbouring points.

The main idea is:

- Normal points usually have a density similar to their neighbours.
- Outliers have significantly lower density than their neighbours.
- A point with a much lower local density is considered a potential outlier.

**Example:** Imagine students in a classroom generally have study times between 2 and 5 hours. One student studies for only 10 minutes while nearby students study for several hours. That student may be considered an outlier relative to the local group.

## **2. Working of LOF**

[Intrusion Detection System IDS Anomaly Detection using Outlier](https://images.openai.com/static-rsc-4/eQYCCBjkmqHXYuKl__V_h79I5ZgUB2mP78rWG6bCNaNQG-QH7IvsZgdk8wv8uEEMxdOsZWVp66rTJ3ULX5iMg5WYW7CI1pIOMJqmBgQJ55GOFfn760c0hNmo4OVkvgcF8oej9pt-f322CCotOwgoJtL3XleKRc5DwUrG4EcXs3o?purpose=inline)

[slidetodoc.com](https://slidetodoc.com/intrusion-detection-system-ids-anomaly-detection-using-outlier/?utm_source=chatgpt.com)

LOF works through these steps:

1. **Find k-nearest neighbours:** Identify the k nearest neighbouring points for each data point.
2. **Calculate k-distance:** Find the distance to the kth nearest neighbour.
3. **Calculate reachability distance:** Measure the adjusted distance between a point and its neighbour.
4. **Calculate local reachability density (LRD):** Estimate how densely a point is surrounded by neighbours.
5. **Calculate LOF score:** Compare the density of the point with the average density of its neighbours.

## **3. Formulae Used in LOF**

**A. Reachability Distance**

\\[ reach\\\_dist_k(p,o)= \max(k\text{-distance}(o),d(p,o)) \\]

Where:

- \\(p\\) = data point being examined.
- \\(o\\) = neighbouring point.
- \\(d(p,o)\\) = distance between the two points.

**B. Local Reachability Density (LRD)**

\\[ LRD_k(p)= \frac{1}{ \frac{\sum\_{o\in N_k(p)}reach\\\_dist_k(p,o)} {|N_k(p)|} } \\]

It represents the local density around point \\(p\\).

**C. Local Outlier Factor**

\\[ LOF_k(p)= \frac{1}{|N_k(p)|} \sum\_{o\in N_k(p)} \frac{LRD_k(o)}{LRD_k(p)} \\]

## **4. Interpretation of LOF Score**

| LOF score                    | Meaning                                          |
| ---------------------------- | ------------------------------------------------ |
| Approximately 1              | Similar density to neighbours; likely normal     |
| Greater than 1               | Lower density than neighbours; potential outlier |
| Significantly greater than 1 | Stronger indication of an outlier                |
| Below 1                      | Denser than neighbouring points                  |

*Note:* There is no universal fixed threshold for declaring an outlier. It depends on the dataset and application.

## **5. Advantages**

1. Detects local outliers effectively.
2. Works with datasets having different density regions.
3. Does not require labelled data.
4. Can identify anomalies that global methods may miss.

## **6. Disadvantages**

1. Choosing the value of \\(k\\) is important.
2. Distance calculations can be expensive for large datasets.
3. Sensitive to the distance metric and feature scaling.
4. High-dimensional data can reduce distance-based accuracy.

## **7. Applications**

- Credit-card fraud detection.
- Network intrusion detection.
- Medical abnormality detection.
- Industrial fault detection.
- Unusual customer behaviour detection.

## **8. Difference Between Isolation Forest and LOF**

| Isolation Forest               | LOF                                 |
| ------------------------------ | ----------------------------------- |
| Tree-based method              | Density-based method                |
| Uses random partitions         | Uses nearest neighbours             |
| Measures isolation path length | Measures local density difference   |
| Shorter path indicates anomaly | Higher LOF indicates anomaly        |
| Suitable for large datasets    | Useful for local density variations |

## **9. PYQ from your uploaded paper**

5 marks

**Nov/Dec 2023 – Q5(b)**

> What is outlier analysis? How is Local Outlier Factor detected?

This is a direct PYQ. For the LOF portion, prepare the five working steps and the LOF formula.

**Next topic: Elbow Method** — used to determine the optimal number of clusters in K-Means. Type **next** to continue.