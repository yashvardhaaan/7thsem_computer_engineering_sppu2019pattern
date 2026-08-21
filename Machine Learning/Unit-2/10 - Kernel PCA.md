# 10. Kernel PCA

### PYQ — 2023 [5 Marks]

**Explain Kernel PCA in detail.**

## Definition

**Kernel PCA (Kernel Principal Component Analysis)** is an extension of **Principal Component Analysis (PCA)** used for **non-linear dimensionality reduction**.

Traditional PCA works mainly with **linear relationships** between features. Kernel PCA uses a **kernel function** to transform data into a higher-dimensional feature space, where complex non-linear relationships can be represented and analyzed.

### Basic Idea

```text
Original Non-Linear Data
          ↓
     Kernel Function
          ↓
   Higher-Dimensional
      Feature Space
          ↓
        PCA
          ↓
Reduced-Dimensional Data
```

---

# Why Kernel PCA is Required?

Traditional PCA may fail when the data has a **non-linear structure**.

### Example

Suppose data points form a circular pattern:

```text id="7lqz9h"
           ● ● ●
        ●         ●
       ●     ○     ●
        ●         ●
           ● ● ●
```

A simple linear PCA may not be able to separate or represent this structure effectively.

Kernel PCA can map the data into a higher-dimensional space where the structure becomes easier to represent.

---

# Kernel PCA Working

## Step 1: Input Data

Start with the original dataset.

```text id="v2y4z0"
X₁, X₂, X₃, ... Xₙ
```

---

## Step 2: Apply Kernel Function

A **kernel function** calculates the similarity between pairs of data points without explicitly calculating the transformation into the higher-dimensional space.

Common kernel functions include:

* **Polynomial Kernel**
* **Gaussian/RBF Kernel**
* **Sigmoid Kernel**

### Example: RBF Kernel

[
K(x_i,x_j)=e^{-\gamma|x_i-x_j|^2}
]

The kernel function measures similarity between data points.

---

## Step 3: Construct Kernel Matrix

The kernel function is applied to pairs of data points to create a **kernel matrix**.

```text id="y4q4qa"
       Kernel Matrix

     x₁   x₂   x₃
x₁  [ K₁₁ K₁₂ K₁₃ ]
x₂  [ K₂₁ K₂₂ K₂₃ ]
x₃  [ K₃₁ K₃₂ K₃₃ ]
```

This matrix represents relationships/similarities between observations in the transformed feature space.

---

## Step 4: Center the Kernel Matrix

The kernel matrix is centered so that the transformed data has an appropriate zero-centered representation.

---

## Step 5: Calculate Eigenvalues and Eigenvectors

Eigenvalues and eigenvectors of the centered kernel matrix are calculated.

* **Eigenvectors** represent principal directions in the transformed feature space.
* **Eigenvalues** indicate the amount of variance represented by each component.

---

## Step 6: Select Principal Components

The eigenvectors corresponding to the largest eigenvalues are selected.

```text id="6fdrx9"
Largest Eigenvalue
       ↓
      KPC1
       ↓
Second Largest
       ↓
      KPC2
       ↓
Third Largest
       ↓
      KPC3
```

---

## Step 7: Transform the Data

The original data is projected onto the selected kernel principal components.

```text id="4k8t8f"
Original Data
      ↓
Kernel Function
      ↓
Kernel Matrix
      ↓
Eigenvectors
      ↓
Kernel Principal Components
      ↓
Reduced Data
```

---

# Complete Kernel PCA Algorithm

```text id="m7oj4k"
             Original Dataset
                    ↓
          Choose Kernel Function
                    ↓
          Calculate Kernel Matrix
                    ↓
        Center Kernel Matrix
                    ↓
       Calculate Eigenvalues
        and Eigenvectors
                    ↓
       Select Top Components
                    ↓
        Project / Transform Data
                    ↓
          Reduced Data
```

---

# PCA vs Kernel PCA

| Basis               | PCA                             | Kernel PCA                                |
| ------------------- | ------------------------------- | ----------------------------------------- |
| **Relationship**    | Mainly linear                   | Can capture non-linear relationships      |
| **Feature Space**   | Original feature space          | Implicit higher-dimensional feature space |
| **Kernel Function** | Not used                        | Used                                      |
| **Complexity**      | Relatively simple               | More computationally expensive            |
| **Suitable For**    | Linear structures               | Non-linear structures                     |
| **Example**         | Linear dimensionality reduction | Circular/non-linear data                  |

---

# Advantages of Kernel PCA

1. Handles **non-linear relationships**.
2. Useful for complex datasets.
3. Can provide better dimensionality reduction than ordinary PCA for non-linear structures.
4. Can be used for visualization of complex data.
5. Different kernel functions can be selected depending on the problem.

# Limitations

1. More computationally expensive than standard PCA.
2. Choice of kernel affects the result.
3. Kernel parameters such as (\gamma) may require tuning.
4. Less interpretable than ordinary PCA.

---

## Example

Suppose data points have a non-linear circular structure:

```text id="7r4qjc"
         ● ● ●
      ●         ●
     ●           ●
      ●         ●
         ● ● ●
```

### Standard PCA

```text
Circular Data
      ↓
     PCA
      ↓
Linear Components
      ↓
May not represent structure well
```

### Kernel PCA

```text
Circular Data
      ↓
Kernel Transformation
      ↓
Higher-Dimensional Space
      ↓
PCA
      ↓
Non-Linear Structure Captured
```

---

## Conclusion

**Kernel PCA is a non-linear extension of PCA that uses kernel functions to implicitly map data into a higher-dimensional feature space. It then performs PCA in that space to obtain lower-dimensional representations.** It is particularly useful when the original dataset contains **complex non-linear relationships** that ordinary PCA cannot effectively capture.
