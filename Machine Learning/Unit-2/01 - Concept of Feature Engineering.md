# 1. Concept of Feature Engineering

### PYQ

**No direct PYQ**

## Definition

**Feature Engineering** is the process of **selecting, transforming, creating, or modifying features (variables) from raw data** so that Machine Learning algorithms can learn more effectively and produce better predictions.

A **feature** is an individual measurable property or characteristic of the data.

### Example

For predicting the price of a house:

```text
Raw Data
   │
   ├── Area = 1200 sq.ft
   ├── Bedrooms = 3
   ├── Location = Pune
   ├── Built Year = 2015
   └── Distance from City = 8 km
             ↓
      Feature Engineering
             ↓
   ┌─────────────────────────┐
   │ Useful / Transformed    │
   │ Features                │
   └────────────┬────────────┘
                ↓
          ML Model
                ↓
       Predicted Price
```

---

## Why Feature Engineering is Important

Raw data is often **incomplete, inconsistent, or not in a suitable form** for an ML algorithm.

Feature engineering helps to:

1. **Improve model accuracy**
2. **Make data suitable for ML algorithms**
3. **Reduce irrelevant information**
4. **Capture important patterns**
5. **Reduce model complexity**
6. **Improve model performance**
7. **Handle different types of raw data**

---

# Main Steps in Feature Engineering

## 1. Feature Selection

Selecting the **most relevant features** from the available dataset.

### Example

If predicting house prices:

```text
Available Features
 ├── Area
 ├── Bedrooms
 ├── Location       ← Useful
 ├── Wall Color     ← May be less useful
 ├── Price
 └── Distance       ← Useful
```

Only relevant features are selected for the model.

---

## 2. Feature Creation

Creating **new features from existing features**.

### Example

Suppose we have:

```text
Date of Birth
Current Year
```

We can create:

```text
Age = Current Year - Birth Year
```

The new **Age** feature may be more useful for prediction.

---

## 3. Feature Transformation

Changing the representation of a feature into a more useful form.

### Example

If salary values range from:

```text
₹20,000 → ₹10,00,000
```

the values can be transformed using **normalization or standardization** so that features are on comparable scales.

---

## 4. Encoding Categorical Features

Machine Learning algorithms generally require numerical input. Therefore, categorical values can be converted into numerical representations.

### Example

```text
City

Pune
Mumbai
Delhi
```

Can be represented using **One-Hot Encoding**:

```text
        Pune  Mumbai  Delhi
Pune     1      0       0
Mumbai   0      1       0
Delhi    0      0       1
```

---

## 5. Handling Missing Values

Missing values can affect model performance.

They can be handled using techniques such as:

* Mean/median/mode imputation
* Forward/backward filling
* Removing records when appropriate

### Example

```text
Age = 21
Age = ?
Age = 24
```

The missing value may be replaced using an appropriate statistical method such as the **median**.

---

## 6. Feature Scaling

Features may have very different numerical ranges.

For example:

```text
Age       → 18–60
Salary    → 20,000–10,00,000
```

Scaling converts them to comparable ranges.

Common techniques:

* **Normalization**
* **Standardization**

---

# Feature Engineering Process

```text
              RAW DATA
                  ↓
          Data Understanding
                  ↓
          Handle Missing Values
                  ↓
          Select Relevant Features
                  ↓
          Create New Features
                  ↓
          Transform Features
                  ↓
          Encode Categorical Data
                  ↓
             Scale Data
                  ↓
          Machine Learning Model
                  ↓
              Prediction
```

---

# Example: Customer Churn Prediction

Suppose a company wants to predict whether a customer will leave its service.

### Raw Data

```text
Customer ID
Total Calls
Monthly Bill
Join Date
Last Login
City
```

### Feature Engineering

We can create useful features:

```text
Join Date + Current Date → Customer Tenure
Last Login → Days Since Last Login
Total Calls → Average Calls per Month
City → One-Hot Encoding
Monthly Bill → Scaled Value
```

These engineered features may help the ML model identify customers likely to **churn**.

---

## Benefits

| Benefit                   | Explanation                                            |
| ------------------------- | ------------------------------------------------------ |
| **Better Accuracy**       | Relevant features improve predictions                  |
| **Better Learning**       | Model can identify useful patterns more easily         |
| **Reduced Complexity**    | Unnecessary features can be removed                    |
| **Faster Training**       | Fewer and better features can reduce computation       |
| **Better Generalization** | Useful features can improve performance on unseen data |

## Conclusion

**Feature Engineering is an important preprocessing step in Machine Learning that converts raw data into meaningful and useful features.** It involves **feature selection, feature creation, transformation, encoding, handling missing values, and scaling**. Proper feature engineering can significantly improve the **accuracy, efficiency, and generalization** of a Machine Learning model.
