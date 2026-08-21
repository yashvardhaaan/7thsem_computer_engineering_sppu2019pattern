# 7. Introduction to Dimensionality Reduction

### PYQ

**No direct PYQ**

## Definition

**Dimensionality Reduction** is the process of **reducing the number of features (dimensions) in a dataset while preserving as much important information as possible**.

A dataset may contain a large number of features, some of which may be redundant or irrelevant. Dimensionality reduction converts the original high-dimensional data into a **lower-dimensional representation**.

### Basic Idea

```text
High-Dimensional Data
      ↓
Dimensionality Reduction
      ↓
Low-Dimensional Data
      ↓
ML Model
```

### Example

Suppose a dataset contains **100 features**:

```text
Feature 1
Feature 2
Feature 3
   ...
Feature 100
```

After dimensionality reduction:

```text
100 Features
     ↓
Dimensionality Reduction
     ↓
10 Important Components
```

The model can then work with these 10 components instead of all 100 features.

---

# Why Dimensionality Reduction is Required

## 1. Reduces Computational Complexity

Fewer features mean fewer calculations, which can make ML algorithms **faster**.

```text
100 Features → More Computation
10 Features  → Less Computation
```

---

## 2. Removes Redundant Features

Some features may contain similar or repeated information.

### Example

```text
Height in cm
Height in inches
```

Both represent essentially the same information.

Dimensionality reduction can help represent such information more efficiently.

---

## 3. Reduces Noise

Irrelevant or noisy features can negatively affect model performance. Reducing dimensions can help retain the more informative structure.

---

## 4. Helps Prevent Overfitting

A very large number of features compared with the amount of training data can make a model overly complex.

Reducing dimensions can help create a simpler representation and may improve **generalization**.

---

## 5. Data Visualization

Humans cannot directly visualize data with hundreds of dimensions.

Dimensionality reduction can convert high-dimensional data into **2D or 3D**, making it easier to visualize.

```text
100-Dimensional Data
        ↓
       PCA
        ↓
    2 Dimensions
        ↓
      Graph
```

---

# Main Techniques

## 1. Feature Selection

Feature selection chooses the **most important original features** and removes irrelevant or redundant ones.

### Example

```text
20 Features
     ↓
Feature Selection
     ↓
5 Important Features
```

The selected features remain in their original form.

---

## 2. Feature Extraction

Feature extraction creates **new features or components** from the original features.

A common technique is **Principal Component Analysis (PCA)**.

```text
Original Features
       ↓
      PCA
       ↓
Principal Components
       ↓
Reduced Dataset
```

Unlike feature selection, the resulting components may be combinations of the original features.

---

# Principal Component Analysis (PCA)

**PCA** is one of the most commonly used dimensionality reduction techniques.

It transforms the original correlated features into a smaller set of **uncorrelated principal components**.

The first principal component captures the **maximum possible variance**, the second captures the next highest variance, and so on.

### Diagram

```text
Original Data

       ●
     ●
       ●
         ●
           ●
             ●
               

          ↓ PCA

       Principal
       Component
       ───────────────→
```

### Example

Suppose:

```text
10 Original Features
        ↓
       PCA
        ↓
3 Principal Components
```

The 3 components can retain much of the important variation in the original data.

---

# Advantages

1. Reduces the number of features.
2. Decreases computational cost.
3. Can reduce noise and redundancy.
4. Helps visualization.
5. Can reduce the risk of overfitting.
6. Makes high-dimensional datasets easier to analyze.

# Limitations

1. Some information may be lost.
2. Reduced features may be difficult to interpret.
3. Choosing the correct number of dimensions can be difficult.
4. Some techniques require appropriate preprocessing such as feature scaling.

---

# Example

Consider a student dataset:

```text
Original Features

Maths
Physics
Chemistry
English
Programming
Attendance
Assignments
Internal Marks
```

Instead of using all 8 features, dimensionality reduction may create a smaller representation:

```text
8 Features
     ↓
Dimensionality Reduction
     ↓
3 Components
     ↓
ML Model
     ↓
Prediction
```

---

## Feature Selection vs Dimensionality Reduction

| Feature Selection              | Dimensionality Reduction / Feature Extraction |
| ------------------------------ | --------------------------------------------- |
| Selects existing features      | Creates new lower-dimensional representations |
| Removes irrelevant features    | Combines/transforms information               |
| Original meaning is retained   | New components may be harder to interpret     |
| Example: selecting Age, Salary | Example: PCA components                       |

## Conclusion

**Dimensionality Reduction is the process of reducing the number of features in a dataset while preserving important information.** It helps reduce computational complexity, remove redundancy and noise, improve visualization, and potentially reduce overfitting. Common approaches include **feature selection and feature extraction**, with **PCA** being a widely used feature-extraction technique.
