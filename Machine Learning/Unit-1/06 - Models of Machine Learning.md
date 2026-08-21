# 6. Models of Machine Learning

### PYQs

* **2024:** Describe in detail different Machine Learning models used. **[5]**
* **2025:** Explain models of Machine Learning in detail. **[5]**

## Introduction

A **Machine Learning model** is a mathematical or computational representation learned from training data. It identifies patterns and relationships in the data and uses them to **make predictions, classifications, or decisions on new data**.

Different ML models are selected depending on the **type of data and the problem to be solved**.

---

## 1. Linear Regression

**Linear Regression** is a supervised learning model used to predict a **continuous numerical value**.

It assumes that there is a linear relationship between the input variables and the output.

### Equation

```text
y = b₀ + b₁x
```

Where:

* `y` = predicted output
* `x` = input
* `b₀` = intercept
* `b₁` = coefficient

### Example

Predicting the **price of a house** based on its area.

```text
House Area
    ↓
Linear Regression
    ↓
Predicted House Price
```

**Applications:** Price prediction, sales forecasting, demand prediction.

---

# 2. Logistic Regression

**Logistic Regression** is a supervised learning model mainly used for **classification problems**.

It predicts the probability of an observation belonging to a particular class.

### Example

```text
Email Features
      ↓
Logistic Regression
      ↓
Spam / Not Spam
```

It is commonly used for **binary classification**, where there are two possible outcomes.

**Applications:**

* Spam detection
* Disease classification
* Customer churn prediction

---

# 3. Decision Tree

A **Decision Tree** is a supervised learning model that makes decisions using a tree-like structure of **conditions and branches**.

```text
             Age > 30?
             /       \
           Yes        No
           /           \
     Income > 50K?    No
       /      \
     Yes      No
      ↓        ↓
    Buy      Don't Buy
```

Each internal node represents a **decision**, branches represent possible outcomes, and leaf nodes represent the final prediction.

### Advantages

* Easy to understand
* Easy to visualize
* Can be used for classification and regression

**Example:** Determining whether a customer will purchase a product.

---

# 4. Random Forest

**Random Forest** is an ensemble learning model that combines the predictions of **multiple decision trees**.

Instead of depending on one tree, it creates many trees and combines their results.

```text
             Training Data
                  ↓
       ┌──────────┼──────────┐
       ↓          ↓          ↓
    Tree 1     Tree 2      Tree 3
       ↓          ↓          ↓
       └──────────┼──────────┘
                  ↓
          Combined Prediction
```

For classification, the final result is generally based on **majority voting**.

### Advantages

* Good accuracy
* Reduces overfitting compared with a single decision tree
* Works with large datasets

**Applications:** Classification, fraud detection, prediction.

---

# 5. Support Vector Machine (SVM)

**Support Vector Machine** is a supervised learning algorithm used mainly for **classification**.

It finds the best boundary, called a **hyperplane**, that separates different classes of data.

```text
Class A       |       Class B
 ● ● ●        |        ▲ ▲ ▲
 ● ● ●        |        ▲ ▲ ▲
 ● ● ●        |        ▲ ▲ ▲
              ↑
          Hyperplane
```

The model attempts to maximize the **margin** between different classes.

**Applications:**

* Image classification
* Text classification
* Pattern recognition

---

# 6. K-Nearest Neighbors (KNN)

**KNN** is a supervised learning algorithm that classifies a new data point based on the classes of its **nearest neighboring data points**.

```text
        ● ●
       ● X ●       ← New point
        ▲ ▲
       ▲ ▲ ▲
```

If most of the nearest points belong to one class, the new point is assigned to that class.

### Example

A new customer can be classified as a **high-value or low-value customer** based on similar existing customers.

**Applications:** Classification, recommendation, pattern recognition.

---

# 7. K-Means Clustering

**K-Means** is an unsupervised learning model used to divide data into **K clusters** based on similarity.

```text
       ● ● ●                 ▲ ▲ ▲
      ● ● ●                  ▲ ▲ ▲
       ● ●                    ▲ ▲
          Cluster 1          Cluster 2

                    ■ ■ ■
                   ■ ■ ■
                    ■ ■
                   Cluster 3
```

The algorithm assigns data points to clusters and tries to keep similar points together.

### Example

An e-commerce company can use K-Means to divide customers into different groups based on purchasing behavior.

**Applications:**

* Customer segmentation
* Market analysis
* Pattern discovery

---

# 8. Neural Networks

A **Neural Network** is a machine learning model inspired by the structure of the human brain. It consists of interconnected **neurons arranged in layers**.

```text
Input Layer       Hidden Layer       Output Layer

   ○ ───────────→   ○ ───────────→
   ○ ───────────→   ○ ───────────→   ○
   ○ ───────────→   ○ ───────────→
                   ○
```

The main layers are:

1. **Input Layer**
2. **Hidden Layer(s)**
3. **Output Layer**

Neural networks are particularly useful for complex problems involving images, speech, and text.

**Applications:**

* Face recognition
* Speech recognition
* Image classification
* Natural Language Processing

---

# 9. Naive Bayes

**Naive Bayes** is a supervised classification model based on **Bayes' theorem**.

It calculates the probability of different classes based on the available features.

### Example

```text
Email Content
     ↓
Naive Bayes
     ↓
Spam probability
     ↓
Spam / Not Spam
```

**Applications:**

* Spam filtering
* Sentiment analysis
* Text classification

---

# Summary of Important ML Models

| Model                   | Type                               | Main Use                  | Example                  |
| ----------------------- | ---------------------------------- | ------------------------- | ------------------------ |
| **Linear Regression**   | Supervised                         | Regression                | House price prediction   |
| **Logistic Regression** | Supervised                         | Classification            | Spam detection           |
| **Decision Tree**       | Supervised                         | Classification/Regression | Customer decision        |
| **Random Forest**       | Supervised                         | Classification/Regression | Fraud detection          |
| **SVM**                 | Supervised                         | Classification            | Image classification     |
| **KNN**                 | Supervised                         | Classification            | Pattern recognition      |
| **K-Means**             | Unsupervised                       | Clustering                | Customer segmentation    |
| **Neural Network**      | Supervised/other learning settings | Complex prediction        | Face recognition         |
| **Naive Bayes**         | Supervised                         | Classification            | Text/spam classification |

## Exam Conclusion

Machine Learning provides different models for different types of problems. **Regression models** are useful for predicting numerical values, **classification models** predict categories, **clustering models** discover groups, and **neural networks** handle complex patterns. The appropriate model is selected based on the **problem, data characteristics, accuracy requirements, and computational resources**.
