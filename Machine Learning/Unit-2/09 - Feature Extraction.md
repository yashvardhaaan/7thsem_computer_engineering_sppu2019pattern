# 9. Feature Extraction

### PYQ — 2025 [5 Marks]

**Explain feature extraction technique with suitable example.**

## Definition

**Feature Extraction** is the process of **transforming raw data into a smaller set of meaningful features** that contain the most useful information for a Machine Learning model.

Unlike feature selection, which selects existing features, feature extraction **creates new features by transforming or combining the original features**.

### Basic Idea

```text
Raw Data
   ↓
Feature Extraction
   ↓
New / Meaningful Features
   ↓
ML Model
   ↓
Prediction
```

---

# Example

Suppose a student dataset contains:

```text
Mathematics
Physics
Chemistry
English
Programming
```

Instead of using all five features directly, feature extraction can create new features such as:

```text
Science Score = Average(Maths, Physics, Chemistry)

Overall Score = Average(All Subjects)
```

```text
Original Features
       │
       ↓
Feature Extraction
       │
       ↓
┌───────────────────┐
│ Science Score     │
│ Overall Score     │
└─────────┬─────────┘
          ↓
      ML Model
```

These newly created features can represent the original information more compactly.

---

# Feature Extraction Using PCA

**Principal Component Analysis (PCA)** is a common feature extraction technique.

PCA transforms multiple original features into a smaller number of **principal components**.

### Example

Suppose a dataset contains:

```text
10 Original Features
        ↓
       PCA
        ↓
3 Principal Components
```

The three components may retain most of the important information contained in the original ten features.

```text
X₁ ──┐
X₂ ──┤
X₃ ──┤
X₄ ──┤──→ PCA ──→ PC1
X₅ ──┤           PC2
X₆ ──┤           PC3
X₇ ──┤
X₈ ──┤
X₉ ──┤
X₁₀─┘
```

---

# Feature Extraction from Images

Feature extraction is widely used in **image processing and computer vision**.

An image contains a large number of pixels. Instead of directly using every pixel, important characteristics such as:

* Edges
* Shapes
* Texture
* Color information

can be extracted.

```text
Image
  ↓
Feature Extraction
  ↓
Edges + Shapes + Texture
  ↓
ML Model
  ↓
Object Classification
```

### Example

For face recognition, an image can be converted into meaningful numerical features representing important characteristics of the face.

---

# Feature Extraction vs Feature Selection

| Feature Extraction                                      | Feature Selection                           |
| ------------------------------------------------------- | ------------------------------------------- |
| Creates new features                                    | Selects existing features                   |
| Transforms/combine original features                    | Removes irrelevant features                 |
| Original features may not remain directly interpretable | Original feature meaning is preserved       |
| Example: PCA                                            | Example: Selecting Age and Salary           |
| Reduces dimensionality by transformation                | Reduces dimensionality by removing features |

### Simple Difference

```text
Feature Selection:
10 Features → Select 4 existing features

Feature Extraction:
10 Features → Transform → 4 new features
```

---

# Advantages of Feature Extraction

1. **Reduces dimensionality**.
2. Removes redundant information.
3. Reduces computational cost.
4. Can improve model performance.
5. Helps reduce noise.
6. Makes high-dimensional data easier to process.

# Limitations

1. Extracted features may be difficult to interpret.
2. Some information may be lost.
3. Choosing an appropriate extraction technique can be difficult.

---

## Exam-Friendly Answer

> **Feature extraction is a technique of converting raw data into a smaller set of meaningful features by transforming or combining the original features. It reduces dimensionality while attempting to preserve important information. PCA is a common feature extraction technique that converts correlated features into principal components. For example, 10 original features can be transformed into 3 principal components containing most of the useful information. Feature extraction is widely used in image processing, text processing, and dimensionality reduction.**

### Conclusion

**Feature extraction converts high-dimensional raw data into a smaller and more informative representation. Techniques such as PCA help reduce the number of features while retaining important information, making Machine Learning models faster and more efficient.**
