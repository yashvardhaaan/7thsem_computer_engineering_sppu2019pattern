# 7. Geometric Models

### PYQ — 2024 [5 Marks]

**Explain geometric models and its types.**

## Definition

**Geometric models** are Machine Learning models that represent data as **points in a geometric space** and use **geometric relationships such as distance, direction, boundaries, and angles** to perform prediction or classification.

In these models, each data item is represented as a point or vector in a **feature space**.

### Example

Suppose we have two features: **Age** and **Income**.

```text
Income
  ↑
  │       ● ● ●
  │      ● ● ●        Class A
  │
  │─────────────── Decision Boundary
  │
  │   ▲ ▲ ▲
  │  ▲ ▲ ▲          Class B
  │
  └──────────────────────→ Age
```

The model uses the position of data points and a **decision boundary** to separate different classes.

---

# Types of Geometric Models

The important geometric models include:

## 1. Linear Models

A **linear model** uses a straight line, plane, or hyperplane to represent the relationship between input features and output.

For two dimensions:

```text
y
↑
│       ●
│     ●
│   ●
│ ●
└────────────→ x
```

A linear equation can be represented as:

**y = w₁x₁ + w₂x₂ + b**

Where:

* `x₁, x₂` = input features
* `w₁, w₂` = weights
* `b` = bias

### Example

**Linear Regression** predicts house prices using features such as area and number of rooms.

---

## 2. Distance-Based Models

These models use the **distance between data points** to make predictions.

The most commonly used distance is **Euclidean distance**.

```text
      A ●
        │\
        │ \
        │  \ Distance
        │   \
        │    ● B
```

### Example: K-Nearest Neighbors (KNN)

KNN finds the nearest training examples to a new data point and uses them to determine its class.

```text
       ● ●
      ● X ●      ← New point
       ▲ ▲
      ▲ ▲ ▲
```

If most nearby points belong to a particular class, `X` is assigned to that class.

---

## 3. Projection-Based Models

Projection-based models transform or project data into another space where the important structure becomes easier to identify.

A common example is **Principal Component Analysis (PCA)**.

```text
Original Data

   ●
     ●
       ●
         ●
           ●
             ●

        ↓ Projection

        ─────────────
        Principal Component
```

PCA finds directions called **principal components** that capture the maximum variation in the data.

### Applications

* Dimensionality reduction
* Data visualization
* Feature extraction

---

## 4. Hyperplane-Based Models

These models use a **hyperplane** to separate different classes of data.

A hyperplane is a generalization of a line in 2D and a plane in 3D.

```text
Class A          Class B

 ● ● ●          ▲ ▲ ▲
 ● ● ●          ▲ ▲ ▲
 ● ● ●          ▲ ▲ ▲
        │
        │
        │
   Hyperplane
```

### Example: Support Vector Machine (SVM)

SVM finds an optimal hyperplane that separates classes while maximizing the margin between them.

---

# Important Geometric Concepts

### 1. Feature Space

The space in which data points are represented using their features.

```text
Feature 2
   ↑
   │      ●
   │   ●
   │
   └────────────→ Feature 1
```

### 2. Distance

Distance measures how close or similar two data points are.

### 3. Decision Boundary

A line, plane, or hyperplane that separates different classes.

### 4. Hyperplane

A geometric boundary used to separate data into different regions.

---

## Summary

| Type                        | Main Concept                                | Example           |
| --------------------------- | ------------------------------------------- | ----------------- |
| **Linear Models**           | Straight-line/linear relationship           | Linear Regression |
| **Distance-Based Models**   | Similarity based on distance                | KNN               |
| **Projection-Based Models** | Project data into a lower-dimensional space | PCA               |
| **Hyperplane-Based Models** | Separate classes using a boundary           | SVM               |

### Conclusion

**Geometric models represent data as points in a feature space and use geometric properties such as distance, projections, and decision boundaries for learning.** Important types include **linear, distance-based, projection-based, and hyperplane-based models**. They are widely used for classification, regression, dimensionality reduction, and pattern recognition.
