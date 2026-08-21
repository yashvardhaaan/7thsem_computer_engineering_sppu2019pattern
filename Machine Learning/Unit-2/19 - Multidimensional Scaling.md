# 19. Multidimensional Scaling (MDS)

### PYQ — 2024 [5 Marks]

**What are the features of Multidimensional Scaling?**

## Definition

**Multidimensional Scaling (MDS)** is a dimensionality reduction and data visualization technique that represents **high-dimensional data in a lower-dimensional space** while trying to preserve the **distances or similarities between data points**.

In simple words:

> **MDS converts relationships between objects into a visual map where similar objects are placed close together and dissimilar objects are placed farther apart.**

---

## Basic Concept

Suppose we have several objects and know the distances between them:

```text id="zj6x8f"
       Distance / Similarity Data
                 ↓
                MDS
                 ↓
       Low-Dimensional Space
                 ↓
        2D / 3D Visualization
```

### Example

If:

```text id="g5a1tc"
A is similar to B
A is very different from C
```

MDS attempts to produce:

```text id="t8e4w2"
        A ●──● B


                         ● C
```

Thus, **A and B are close**, while **C is farther away**.

---

# Features of Multidimensional Scaling

## 1. Dimensionality Reduction

MDS can convert high-dimensional relationships into a **2D or 3D representation**.

```text id="5a1xqf"
High-Dimensional Data
        ↓
       MDS
        ↓
     2D / 3D Map
```

---

## 2. Preserves Pairwise Distances

One of the most important features of MDS is that it attempts to preserve the **relative distances between data points**.

If two objects are close in the original data, MDS tries to keep them close in the reduced representation.

---

## 3. Similarity Visualization

MDS can visualize the **similarity or dissimilarity** between objects.

```text id="k5v4z2"
High Similarity → Close Points

Low Similarity → Distant Points
```

This makes hidden relationships easier to understand.

---

## 4. Useful for Visualization

MDS is commonly used to visualize complex datasets in **two or three dimensions**.

### Example

```text id="j7l9x3"
100-Dimensional Data
        ↓
       MDS
        ↓
      2D Plot
        ↓
Visualize Relationships
```

---

## 5. Works with Distance / Dissimilarity Matrix

MDS generally starts with a **distance or dissimilarity matrix** rather than requiring the original feature representation.

Example:

```text id="9c6d3h"
       A    B    C
A      0    2    8
B      2    0    7
C      8    7    0
```

Here:

* A and B are similar because their distance is `2`.
* A and C are more different because their distance is `8`.

MDS tries to represent these relationships visually.

---

## 6. Preserves Relative Structure

MDS attempts to preserve the **overall geometric relationship** between observations.

The exact distances may not always be preserved perfectly, but the method tries to minimize the difference between original and represented distances.

---

## 7. Useful for Clustering Analysis

MDS can help identify groups of similar observations.

```text id="q9p0b4"
       ● ● ●
      ● ● ●          Group 1


                     ● ●
                    ● ● ●
                     Group 2
```

Points appearing close together may indicate naturally similar groups.

---

## 8. Can Handle Non-Linear Relationships

MDS can represent relationships that are not easily captured using simple linear dimensionality reduction techniques, depending on the distance measure and MDS variant used.

---

# Working of MDS

```text id="b4j8m1"
          Original Data
                ↓
    Calculate Distances /
       Dissimilarities
                ↓
       Distance Matrix
                ↓
             MDS
                ↓
      Find Low-Dimensional
        Representation
                ↓
           2D / 3D Map
```

---

# Example

Suppose we have four cities:

```text id="3u0n7m"
Pune
Mumbai
Delhi
Chennai
```

Their geographical distances can be calculated.

MDS can use these distances to create a 2D representation:

```text id="m6q4x8"
             Delhi ●


       Pune ●
              \
               ● Mumbai


                         ● Chennai
```

The map attempts to preserve the **relative distances** between the cities.

---

# Advantages

1. Useful for **visualizing high-dimensional data**.
2. Preserves pairwise distance relationships as much as possible.
3. Can work directly with similarity/dissimilarity data.
4. Helps identify clusters and patterns.
5. Useful for exploratory data analysis.

# Limitations

1. Can be computationally expensive for large datasets.
2. Choosing an appropriate distance measure is important.
3. Some information is lost when reducing dimensions.
4. The resulting axes may not have a direct physical meaning.
5. Results can depend on initialization and algorithm settings.

---

# MDS vs PCA

| PCA                                  | MDS                                               |
| ------------------------------------ | ------------------------------------------------- |
| Works on feature covariance/variance | Works primarily from distances/dissimilarities    |
| Finds directions of maximum variance | Attempts to preserve pairwise distances           |
| Produces principal components        | Produces low-dimensional coordinates              |
| Mainly linear                        | Can represent more general distance relationships |
| Common for dimensionality reduction  | Common for visualization of similarities          |

---

## ⭐ Exam-Friendly Answer

> **Multidimensional Scaling (MDS) is a dimensionality reduction and visualization technique that represents high-dimensional data in a low-dimensional space while preserving the distances or similarities between data points as much as possible. Its main features include dimensionality reduction, preservation of pairwise distances, visualization of similarities and dissimilarities, support for 2D/3D visualization, use of distance matrices, and identification of clusters or patterns. MDS is useful for visualizing complex relationships that are difficult to understand in high-dimensional data.**

### Key Point to Remember

> **MDS = Distance/Similarity → Low-dimensional map → Similar points close, dissimilar points far apart.**
