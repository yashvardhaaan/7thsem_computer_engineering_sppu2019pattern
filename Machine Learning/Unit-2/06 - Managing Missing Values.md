# 6. Managing Missing Values

### PYQ — 2022 [5 Marks]

**How to handle missing values in a dataset that will be used for training the ML model?**

## Definition

**Missing values** are data entries for which no value is available in a dataset. They may occur because of **data entry errors, incomplete surveys, sensor failures, or unavailable information**.

### Example

```text
Age    Salary    Experience
21     30000     2
?      35000     3
23     ?         4
25     40000     ?
```

Missing values can negatively affect the performance of an ML model. Therefore, they should be identified and handled appropriately before training.

---

# Methods for Handling Missing Values

## 1. Delete the Record

If only a small number of records contain missing values, those rows can be removed.

```text
Before:
21   30000
?    35000
23   40000

After:
21   30000
23   40000
```

### Advantage

* Simple and easy.

### Limitation

* Can result in loss of useful data.
* May introduce bias if many records are removed or missingness is systematic.

---

## 2. Mean Imputation

For numerical data, a missing value can be replaced by the **mean** of the available values.

### Example

```text
Age = 20, 22, ?, 24
```

[
Mean=\frac{20+22+24}{3}=22
]

Therefore:

```text
20, 22, ?, 24
        ↓
20, 22, 22, 24
```

### Suitable for

Numerical data without severe outliers.

---

## 3. Median Imputation

The missing value is replaced by the **median** of the available values.

### Example

```text
Age = 20, 22, ?, 24, 40
```

Sorted data:

```text
20, 22, 24, 40
```

Median:

[
\frac{22+24}{2}=23
]

Therefore:

```text
20, 22, 23, 24, 40
```

**Median is often preferred when the data contains outliers.**

---

## 4. Mode Imputation

For **categorical data**, the missing value can be replaced with the **mode**, i.e., the most frequently occurring value.

### Example

```text
City = Pune, Mumbai, Pune, ?, Pune
```

Mode = **Pune**

Therefore:

```text
City = Pune, Mumbai, Pune, Pune, Pune
```

---

## 5. Forward and Backward Filling

For **time-series or sequential data**, a missing value can sometimes be filled using a nearby value.

### Forward Fill

```text
100 → 105 → ? → 115

             ↓
100 → 105 → 105 → 115
```

### Backward Fill

```text
100 → ? → 110 → 115

      ↓
100 → 110 → 110 → 115
```

This method should be used only when it makes sense for the sequence and data-generating process.

---

## 6. Predictive Imputation

A Machine Learning or statistical model can be used to **predict the missing value** based on other available features.

```text
Other Features
      ↓
Imputation Model
      ↓
Predicted Missing Value
```

### Example

If salary is missing, it can be estimated using:

```text
Age + Experience + Education
             ↓
      ML Imputation Model
             ↓
       Estimated Salary
```

---

# Complete Process

```text
          Dataset
             ↓
     Identify Missing Values
             ↓
    Determine Type & Pattern
             ↓
    ┌────────┼─────────┐
    ↓        ↓         ↓
  Remove   Impute    Predict
  Rows     Values    Values
    │        │         │
    └────────┼─────────┘
             ↓
       Clean Dataset
             ↓
       ML Model Training
```

---

# Which Method Should Be Used?

| Situation                         | Suitable Method                   |
| --------------------------------- | --------------------------------- |
| Very few missing records          | Remove records                    |
| Numerical data, no major outliers | Mean                              |
| Numerical data with outliers      | Median                            |
| Categorical data                  | Mode                              |
| Time-series data                  | Forward/Backward filling          |
| Complex missing patterns          | Predictive/model-based imputation |

## Important Points

While handling missing values:

1. **Identify the amount and pattern of missing data.**
2. Choose a method according to the **type of feature**.
3. Avoid blindly replacing all missing values with zero.
4. Imputation should be performed carefully to avoid introducing bias.
5. When using train/test data, **learn imputation values from the training set only** and apply the same transformation to validation/test data.

## Conclusion

Missing values must be handled before training an ML model because they can affect **model accuracy and reliability**. Common techniques include **deleting records, mean/median/mode imputation, forward/backward filling, and predictive imputation**. The appropriate method depends on the **type, amount, and pattern of missing data**.
