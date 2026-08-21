# Filtering Technique for Feature Selection

### Exam Question

**Explain Filtering Technique. [5 Marks]**

## Definition

**Filtering technique** is a **feature selection method** that selects the most relevant features using **statistical or mathematical measures**, without training a Machine Learning model for every possible feature subset.

Features are evaluated independently and ranked according to their relevance to the target variable.

---

## Working of Filtering Technique

```text
          Dataset
             ↓
      Identify Features
             ↓
    Apply Statistical Test
             ↓
      Calculate Scores
             ↓
       Rank Features
             ↓
     Select Best Features
             ↓
        ML Model
```

---

# Common Filtering Techniques

### 1. Correlation

Correlation measures the relationship between numerical variables.

* High correlation with the target → feature may be useful.
* Very low correlation → feature may be removed.
* Highly correlated duplicate features may also be considered for removal.

**Example:**

```text
Age          → Correlation = 0.75
Income       → Correlation = 0.91
Customer ID  → Correlation = 0.02
```

`Income` and `Age` may be retained, while `Customer ID` may be discarded if it provides no useful predictive information.

---

### 2. Chi-Square Test

The **Chi-Square test** is commonly used for evaluating relationships between **categorical features and a categorical target**.

A higher Chi-Square score generally indicates a stronger association with the target.

**Example:**

```text
Feature → Education
Target  → Purchased (Yes/No)
```

The Chi-Square test can determine whether education category and purchase outcome are associated.

---

### 3. Information Gain

**Information Gain** measures how much information a feature provides about the target.

A feature with higher information gain is generally considered more useful for predicting the target.

It is commonly associated with decision-tree learning.

---

### 4. ANOVA

**ANOVA (Analysis of Variance)** can be used to evaluate whether the mean values of a numerical feature differ significantly across categories of a categorical target, under appropriate assumptions.

---

# Example

Suppose we have four features:

| Feature     | Relevance Score |
| ----------- | --------------: |
| Income      |            0.92 |
| Age         |            0.81 |
| Experience  |            0.76 |
| Customer ID |            0.01 |

If the selection threshold is `0.70`:

```text
Selected Features
       ↓
Income
Age
Experience

Removed
       ↓
Customer ID
```

The selected features are then given to the Machine Learning model.

---

# Advantages

1. **Fast and simple**.
2. Computationally inexpensive.
3. Does not depend on a particular ML algorithm.
4. Suitable for high-dimensional datasets.
5. Reduces training time and dimensionality.

# Limitation

The filtering technique generally evaluates features **individually**, so it may fail to identify useful combinations or interactions between features.

---

## Exam Answer

> **Filtering is a feature selection technique in which relevant features are selected using statistical or mathematical measures before training the Machine Learning model. Features are ranked according to their relationship with the target variable, and the highest-ranked features are selected. Common filtering methods include correlation, Chi-Square test, Information Gain, and ANOVA. It is fast, simple, computationally efficient, and suitable for high-dimensional datasets. However, it may not consider interactions between multiple features.**

### Conclusion

**Filtering technique selects important features based on their statistical relevance to the target without repeatedly training an ML model.**
