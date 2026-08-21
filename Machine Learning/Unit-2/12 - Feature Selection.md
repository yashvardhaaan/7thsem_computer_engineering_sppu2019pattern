# Feature Selection and Filtering Technique

### PYQ — 2023 [5 Marks]

**What is feature selection? Explain filtering technique.**

## 1. Feature Selection

**Feature Selection** is the process of selecting the **most relevant features** from a dataset and removing irrelevant, redundant, or noisy features before training a Machine Learning model.

### Example

Suppose a dataset contains:

```text
Age
Salary
Experience
Education
Customer ID
Favorite Color
```

If the target is customer spending, features such as **Age, Salary, Experience, and Education** may be useful, while **Customer ID** may provide no predictive information.

```text
        All Features
             ↓
      Feature Selection
             ↓
   ┌───────────────────┐
   │ Relevant Features  │
   │ Age                │
   │ Salary             │
   │ Experience         │
   │ Education          │
   └─────────┬─────────┘
             ↓
          ML Model
```

### Benefits

* Reduces dimensionality.
* Reduces training time.
* Removes irrelevant information.
* Can reduce overfitting.
* Can improve model performance.

---

# 2. Filtering Technique

**Filtering is a feature-selection technique that selects features using statistical or mathematical measures, without using a Machine Learning model to evaluate every possible feature subset.**

The features are **ranked according to their relevance** to the target variable, and the best features are selected.

### Working

```text
          Dataset
             ↓
    Calculate Statistical
        Relevance
             ↓
      Rank Features
             ↓
      Select Best Features
             ↓
          ML Model
```

---

## Common Filtering Techniques

### 1. Correlation

Measures the relationship between a numerical feature and another numerical variable/target.

Highly relevant features can be retained, while features with very low relevance may be removed.

### 2. Chi-Square Test

Used mainly to measure the relationship between **categorical features and categorical target variables**.

### 3. Information Gain

Measures how much information a feature provides about the target.

Higher information gain generally indicates a more useful feature.

### 4. ANOVA

Can be used to assess the relationship between a numerical feature and a categorical target under appropriate assumptions.

---

# Example of Filtering

Suppose we have:

| Feature        | Relevance Score |
| -------------- | --------------: |
| Income         |            0.92 |
| Age            |            0.81 |
| Experience     |            0.76 |
| Favorite Color |            0.08 |
| Customer ID    |            0.01 |

If the selection threshold is `0.70`:

```text
Selected:
Income
Age
Experience

Removed:
Favorite Color
Customer ID
```

---

# Advantages of Filtering Technique

1. **Fast and simple**.
2. Computationally inexpensive.
3. Independent of a particular ML algorithm.
4. Suitable for datasets with a large number of features.
5. Reduces dimensionality before model training.

# Limitation

Filter methods generally evaluate features **individually**, so they may not fully capture useful interactions between multiple features.

---

## ⭐ Exam Answer

> **Feature selection is the process of selecting the most relevant features from a dataset and removing irrelevant or redundant features. Filtering is a feature-selection technique in which features are selected using statistical measures without repeatedly training a Machine Learning model. Features are ranked according to their relevance using methods such as correlation, Chi-square, information gain, and ANOVA. The features with the highest relevance are selected for model training. Filtering is fast, computationally efficient, and suitable for high-dimensional datasets.**

### Conclusion

**Feature selection reduces the number of input variables, while the filtering technique selects relevant features using statistical properties of the data before applying the ML algorithm.**


# Methods for Feature Selection

### PYQ — 2025 [5 Marks]

**Explain the methods for feature selection.**

## Definition

**Feature Selection** is the process of selecting the **most relevant features** from a dataset and removing irrelevant, redundant, or noisy features.

It reduces the number of input features and can improve **model performance, training speed, and generalization**.

There are three main methods of feature selection:

```text id="m6h0s7"
             FEATURE SELECTION
                    │
        ┌───────────┼───────────┐
        ↓           ↓           ↓
      Filter      Wrapper     Embedded
       Method      Method       Method
```

---

# 1. Filter Method

The **Filter method** selects features using **statistical or mathematical measures** without depending on a specific ML model.

Features are ranked according to their relevance to the target.

### Common techniques

* Correlation
* Chi-Square Test
* Information Gain
* ANOVA

### Example

```text id="3x6r4m"
Features
   ↓
Statistical Test
   ↓
Rank Features
   ↓
Select Best Features
```

If `Income`, `Age`, and `Experience` have high relevance while `Customer ID` has very low relevance, the relevant features are selected and the ID is removed.

### Advantages

* Fast
* Simple
* Computationally inexpensive
* Suitable for high-dimensional data

### Limitation

It may not consider interactions between multiple features.

---

# 2. Wrapper Method

The **Wrapper method** selects features by repeatedly **training and evaluating a Machine Learning model** using different feature subsets.

The subset that gives the best model performance is selected.

### Working

```text id="ynq1r8"
      Feature Subset
           ↓
      Train ML Model
           ↓
      Evaluate Model
           ↓
      Change Features
           ↓
      Train Again
           ↓
   Best Feature Subset
```

### Common techniques

* Forward Selection
* Backward Elimination
* Recursive Feature Elimination (RFE)

### Example

Suppose there are five features:

```text id="c2zqgt"
A B C D E
```

The algorithm may test:

```text id="r1u7yr"
A
A + B
A + B + C
A + B + C + D
...
```

and select the combination that provides the best model performance.

### Advantages

* Considers feature combinations.
* Can produce highly effective feature subsets.

### Limitation

* Computationally expensive.
* Slow when the number of features is large.

---

# 3. Embedded Method

The **Embedded method** performs feature selection **during the training of the Machine Learning model itself**.

The algorithm automatically determines which features are important.

### Working

```text id="8p4u8b"
       Dataset
          ↓
    ML Algorithm
          ↓
 Feature Importance
          ↓
 Important Features
```

### Examples

* **LASSO Regression**
* Decision Trees
* Random Forests

### Example: LASSO

LASSO uses **L1 regularization** and can reduce some feature coefficients to zero.

```text id="0x0q4p"
Feature A → 0.85
Feature B → 0.61
Feature C → 0
Feature D → 0.42
```

Feature C can be considered unnecessary and removed.

### Advantages

* Feature selection occurs during model training.
* Usually more efficient than wrapper methods.
* Considers the relationship between features and the model.

### Limitation

* Depends on the model/algorithm being used.

---

# Comparison

| Method       | Selection Based On    | Model Required? | Speed    | Examples                |
| ------------ | --------------------- | --------------- | -------- | ----------------------- |
| **Filter**   | Statistical measures  | No              | Fast     | Correlation, Chi-square |
| **Wrapper**  | Model performance     | Yes             | Slow     | RFE, Forward Selection  |
| **Embedded** | During model training | Yes             | Moderate | LASSO, Decision Tree    |

---

# Simple Diagram for Exam

```text id="9ex0c8"
                 FEATURE SELECTION
                        │
          ┌─────────────┼─────────────┐
          ↓             ↓             ↓
       FILTER        WRAPPER       EMBEDDED
          ↓             ↓             ↓
    Statistics       Model       Model Training
          ↓         Evaluation         ↓
    Correlation       RFE            LASSO
    Chi-Square        Forward        Decision Tree
    Information      Selection       Random Forest
      Gain
```

## Conclusion

The three major methods of feature selection are **Filter, Wrapper, and Embedded methods**. Filter methods select features using statistical measures, wrapper methods select features based on ML model performance, and embedded methods perform feature selection during model training. These methods help **reduce dimensionality, computational cost, and irrelevant information**, while potentially improving model performance.
