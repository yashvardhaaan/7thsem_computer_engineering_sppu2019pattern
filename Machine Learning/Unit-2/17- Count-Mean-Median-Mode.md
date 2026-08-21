# 17. Statistical Feature Engineering

Statistical feature engineering uses **statistical measures calculated from data** to create or summarize features that can be used by Machine Learning models.

The important measures in this topic are:

* **Count**
* **Mean**
* **Median**
* **Mode**

---

# 17.1 Count

### PYQ

**No direct PYQ**

## Definition

**Count** is the number of observations or occurrences of a particular value, category, or event in a dataset.

### Example

Suppose the number of failures recorded is:

```text
Wire ID:  W1  W2  W3  W4  W5
Failure:   1   1   0   1   0
```

Number of failures:

[
\boxed{Count=3}
]

Count can be used as a feature.

### Example in ML

For customer data:

```text
Customer → Number of purchases
```

A model can use **purchase count** as a feature to predict customer behavior.

### Applications

* Number of purchases
* Number of failures
* Number of visits
* Number of transactions
* Number of occurrences of an event

---

# 17.2 Mean

### PYQ — 2025 [5 Marks]

**Calculate the mean, median & mode of time between failures of wire-cut.**

## Definition

The **Mean** is the arithmetic average of all observations.

### Formula

[
\boxed{\bar{x}=\frac{\sum x}{n}}
]

Where:

* (\bar{x}) = mean
* (\sum x) = sum of all observations
* (n) = number of observations

---

## Example

Suppose the time between failures of a wire-cut machine is:

```text
10, 15, 20, 15, 25
```

### Step 1: Add all values

[
10+15+20+15+25=85
]

### Step 2: Number of observations

[
n=5
]

### Step 3: Calculate Mean

[
Mean=\frac{85}{5}
]

[
\boxed{Mean=17}
]

---

# 17.3 Median

### PYQ — 2025 [5 Marks]

## Definition

The **Median** is the **middle value** of a dataset after arranging the observations in ascending or descending order.

### Example

Given:

```text
25, 10, 15, 20, 15
```

### Step 1: Arrange in ascending order

```text
10, 15, 15, 20, 25
```

There are 5 observations.

The middle value is:

[
\boxed{Median=15}
]

---

## Formula

For an **odd number** of observations:

[
\boxed{Median=x_{\frac{n+1}{2}}}
]

For an **even number** of observations:

[
\boxed{Median=\frac{x_{\frac n2}+x_{\frac n2+1}}{2}}
]

### Even Example

```text
10, 15, 20, 25
```

There are 4 values.

The two middle values are `15` and `20`.

[
Median=\frac{15+20}{2}
]

[
\boxed{Median=17.5}
]

---

# 17.4 Mode

### PYQ — 2025 [5 Marks]

## Definition

The **Mode** is the value that occurs **most frequently** in a dataset.

### Example

```text
10, 15, 20, 15, 25
```

Frequency:

```text
10 → 1 time
15 → 2 times
20 → 1 time
25 → 1 time
```

Therefore:

[
\boxed{Mode=15}
]

---

# Complete 2025 Numerical Example

Suppose the **time between failures of a wire-cut machine** is:

[
10,;15,;20,;15,;25
]

## 1. Mean

[
Mean=\frac{10+15+20+15+25}{5}
]

[
\boxed{Mean=17}
]

## 2. Median

Arrange the data:

[
10,;15,;15,;20,;25
]

Middle value:

[
\boxed{Median=15}
]

## 3. Mode

The value `15` occurs twice, while the other values occur once.

[
\boxed{Mode=15}
]

### Final Answer

| Statistical Measure | Result |
| ------------------- | -----: |
| **Mean**            |     17 |
| **Median**          |     15 |
| **Mode**            |     15 |

---

# Mean vs Median vs Mode

| Measure    | Meaning                         | Calculation                  |
| ---------- | ------------------------------- | ---------------------------- |
| **Mean**   | Arithmetic average              | Sum / Number of observations |
| **Median** | Middle value                    | Arrange data and find middle |
| **Mode**   | Most frequently occurring value | Highest frequency            |

### Easy Memory Trick

```text
MEAN   → Average
MEDIAN → Middle
MODE   → Most frequent
```

---

# Why Statistical Features are Useful in ML

Statistical measures can summarize large amounts of data and provide useful input features.

### Example: Machine Failure Prediction

Raw failure data:

```text
10, 15, 20, 15, 25, 30, 15
```

Statistical features:

```text
Mean   → 18.57
Median → 15
Mode   → 15
Count  → 7
```

These features can be provided to an ML model:

```text
 id="1q6k3m"
Failure Data
     ↓
Statistical Feature Engineering
     ↓
┌────────┬────────┬────────┬────────┐
│ Count  │ Mean   │ Median │ Mode   │
└────────┴────────┴────────┴────────┘
     ↓
 ML Model
     ↓
Failure Prediction
```

## Conclusion

**Statistical feature engineering uses statistical measures such as count, mean, median, and mode to summarize data and create useful features for Machine Learning.** Mean represents the average, median represents the middle value, mode represents the most frequent value, and count represents the number of observations or occurrences. These measures can help convert raw data into meaningful features for prediction and analysis.


# Mean, Median and Mode — Wire-Cut Failure Data

### PYQ — 2025 [5 Marks]

**Calculate the mean, median & mode of time between failures of wire-cut.**

> **Note:** The actual time-between-failures values from the PYQ are not included in your message. So the numerical answer below demonstrates the exact method using a suitable example. If your question has different values, substitute those values into the same formulas.

## Given Data

Assume the time between failures is:

[
10,;15,;20,;15,;25
]

---

## 1. Mean

The **mean** is the arithmetic average of all observations.

### Formula

[
\boxed{Mean=\frac{\sum x}{n}}
]

Here:

[
\sum x=10+15+20+15+25=85
]

[
n=5
]

Therefore:

[
Mean=\frac{85}{5}
]

[
\boxed{Mean=17}
]

---

## 2. Median

The **median** is the middle value after arranging the data in ascending order.

### Arrange the data

[
10,;15,;15,;20,;25
]

There are 5 observations, so the middle value is the **3rd value**.

[
\boxed{Median=15}
]

---

## 3. Mode

The **mode** is the value that occurs most frequently.

| Value | Frequency |
| ----: | --------: |
|    10 |         1 |
|    15 |     **2** |
|    20 |         1 |
|    25 |         1 |

Therefore:

[
\boxed{Mode=15}
]

---

# Final Answer

| Measure    | Result |
| ---------- | -----: |
| **Mean**   | **17** |
| **Median** | **15** |
| **Mode**   | **15** |

### Short Exam Conclusion

> The **mean** is calculated by dividing the sum of all observations by the number of observations. The **median** is the middle value after arranging the data, and the **mode** is the most frequently occurring value. For the given example, Mean = **17**, Median = **15**, and Mode = **15**.
