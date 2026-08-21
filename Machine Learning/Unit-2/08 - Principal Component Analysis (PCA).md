# 8. Principal Component Analysis (PCA)

### PYQs

* **2022:** Explain the process of Principal Component Analysis (PCA) in brief. **[7]**
* **2024:** Elaborate use of PCA in preprocessing stage. **[5]**
* **2025:** Explain Principal Component Analysis (PCA) and its Algorithm in detail. **[5]**

---

# Definition

**Principal Component Analysis (PCA)** is a **dimensionality reduction technique** used to reduce the number of features in a dataset while preserving as much of the important information (variance) as possible.

PCA transforms the original correlated features into a smaller set of **uncorrelated variables called Principal Components (PCs)**.

### Basic Idea

```text id="k8g8m4"
Original Dataset
      │
      │ Many Features
      ↓
 ┌─────────────┐
 │     PCA     │
 └──────┬──────┘
        ↓
 Principal Components
        │
        │ Fewer Features
        ↓
 Reduced Dataset
        ↓
   ML Algorithm
```

---

# Why is PCA Used?

PCA is mainly used during **data preprocessing** for:

1. **Dimensionality reduction**
2. Removing redundant information
3. Reducing noise
4. Reducing computational cost
5. Improving visualization
6. Reducing model complexity
7. Helping reduce overfitting in some settings

---

# Example

Suppose a dataset contains:

```text id="j5uw9j"
Original Features

X₁ → Age
X₂ → Income
X₃ → Experience
X₄ → Spending
X₅ → Savings
X₆ → Credit Score
```

Some features may be correlated.

PCA transforms them into:

```text id="u8r6w0"
6 Original Features
        ↓
       PCA
        ↓
PC1 ───────────────┐
PC2 ───────────────┤
PC3 ───────────────┘
        ↓
3 Principal Components
```

Instead of using six correlated features, the ML model can use three principal components while retaining much of the important variation.

---

# Principal Components

A **Principal Component** is a new variable formed as a **linear combination of the original features**.

For example:

$$
PC_1 = w_1X_1 + w_2X_2 + w_3X_3 + \cdots + w_nX_n
$$

where $(w_1, w_2, \ldots, w_n)$ are weights.

### Important Properties

* **PC1** captures the maximum possible variance.
* **PC2** captures the maximum remaining variance while being uncorrelated with PC1.
* **PC3** captures the next highest variance, and so on.

```text id="v9u7ga"
Total Variance
      │
      ├──────── PC1 → Maximum variance
      │
      ├────── PC2 → Next highest variance
      │
      ├──── PC3 → Next highest variance
      │
      └── Remaining components
```

---

# PCA Algorithm / Steps

### Step 1: Collect the Dataset

Start with the original feature matrix.

```text id="b7p6c4"
X =
┌───────────────┐
│ x₁ x₂ x₃ x₄  │
│ x₁ x₂ x₃ x₄  │
│ x₁ x₂ x₃ x₄  │
└───────────────┘
```

---

## Step 2: Standardize the Data

Features may have different scales, so they are commonly standardized before PCA.

[
Z=\frac{X-\mu}{\sigma}
]

This prevents a feature with a larger numerical scale from dominating the analysis.

```text
Different Scales
      ↓
 Standardization
      ↓
Comparable Scale
```

---

## Step 3: Calculate the Covariance Matrix

The **covariance matrix** shows how the features vary together.

For features (X_1,X_2,\ldots,X_n), the covariance matrix can be represented as:

[
C=
\begin{bmatrix}
Cov(X_1,X_1)&Cov(X_1,X_2)&\cdots\
Cov(X_2,X_1)&Cov(X_2,X_2)&\cdots\
\vdots&\vdots&\ddots
\end{bmatrix}
]

### Purpose

It helps identify **relationships and correlations between features**.

---

## Step 4: Calculate Eigenvalues and Eigenvectors

Find the **eigenvalues and eigenvectors** of the covariance matrix.

* **Eigenvectors** determine the directions of the principal components.
* **Eigenvalues** indicate the amount of variance captured by each component.

```text id="zz8bqi"
Covariance Matrix
       ↓
Eigenvalue + Eigenvector Calculation
       ↓
Principal Component Directions
```

---

## Step 5: Sort Principal Components

Arrange the eigenvectors according to their corresponding eigenvalues in **descending order**.

```text id="y7a0d8"
Highest Eigenvalue
       ↓
      PC1
       ↓
Second Highest
       ↓
      PC2
       ↓
Third Highest
       ↓
      PC3
```

The component with the largest eigenvalue contains the most variance.

---

## Step 6: Select the Required Components

Choose the first (k) principal components according to the required amount of information/variance to retain.

For example:

```text id="kq9b7m"
10 Original Features
        ↓
       PCA
        ↓
PC1 + PC2 + PC3
        ↓
3 Components
```

---

## Step 7: Transform the Dataset

The original data is projected onto the selected principal components.

[
Z_{PCA}=XW
]

where:

* (X) = standardized data
* (W) = selected eigenvectors
* (Z_{PCA}) = transformed/reduced data

```text id="v9s6tq"
Original Data
      ↓
Selected Eigenvectors
      ↓
Projection
      ↓
Reduced Dataset
```

---

# Complete PCA Algorithm

```text id="7zzr5a"
              Original Dataset
                     ↓
             Standardize Data
                     ↓
          Calculate Covariance Matrix
                     ↓
        Calculate Eigenvalues & Eigenvectors
                     ↓
          Sort by Eigenvalues
                     ↓
        Select Top k Components
                     ↓
          Transform / Project Data
                     ↓
            Reduced Dataset
                     ↓
                 ML Model
```

---

# PCA in the Preprocessing Stage

### PYQ — 2024 [5 Marks]

PCA can be used during preprocessing when the dataset contains **many correlated features**.

### Before PCA

```text id="c9qv21"
100 Features
     ↓
Large Dataset
     ↓
High Computational Cost
```

### After PCA

```text id="k1xq5n"
100 Features
     ↓
     PCA
     ↓
10 Principal Components
     ↓
Lower Computational Cost
```

Thus, PCA can make the dataset **smaller and easier to process** while retaining most of its important variance.

---

# Advantages of PCA

1. **Reduces dimensionality**.
2. Removes/reduces redundant information from correlated features.
3. Reduces computational requirements.
4. Helps visualize high-dimensional data in 2D or 3D.
5. Can reduce noise.
6. Can improve the efficiency of subsequent ML algorithms.

---

# Limitations of PCA

1. Some information may be lost during dimensionality reduction.
2. Principal components may be difficult to interpret.
3. PCA is sensitive to feature scaling.
4. PCA is affected by outliers.
5. Selecting the appropriate number of components requires care.

---

# Example of PCA

Suppose a dataset has four correlated features:

```text id="5r6t9c"
X₁ → Mathematics
X₂ → Physics
X₃ → Chemistry
X₄ → Biology
```

After PCA:

```text id="k0s6j3"
4 Original Features
       ↓
      PCA
       ↓
PC1 → 60% variance
PC2 → 25% variance
PC3 → 10% variance
PC4 → 5% variance
```

If we retain PC1 and PC2:

[
60%+25%=85%
]

So **2 principal components retain 85% of the variance** while reducing the dimensionality from 4 to 2.

---

# ⭐ Important Points for Exam

Remember this sequence:

> **Standardize → Covariance Matrix → Eigenvalues & Eigenvectors → Sort → Select Components → Transform Data**

And remember:

* **Eigenvectors → Direction of principal components**
* **Eigenvalues → Amount of variance**
* **PC1 → Maximum variance**
* **PC2 → Next highest variance**
* PCA produces **uncorrelated principal components**.

## Conclusion

**Principal Component Analysis (PCA)** is an important dimensionality reduction technique used during preprocessing. It transforms correlated features into a smaller number of uncorrelated principal components while retaining maximum possible variance. The main steps are **standardization, covariance matrix calculation, eigenvalue/eigenvector calculation, component selection, and data transformation**. PCA reduces computational complexity, removes redundancy, and makes high-dimensional data easier to analyze.
