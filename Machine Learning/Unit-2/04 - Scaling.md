# Min-Max Scaling

### PYQ — 2023 [5 Marks]

**Explain Min-Max scaling with suitable example.**

## Definition

**Min-Max Scaling** is a data normalization technique used to transform the values of a numerical feature into a **fixed range**, usually **0 to 1**.

It preserves the relative relationship between the original values while changing their scale.

### Formula

[
\boxed{x'=\frac{x-x_{min}}{x_{max}-x_{min}}}
]

Where:

* `x` = original value
* `xmin` = minimum value in the dataset
* `xmax` = maximum value in the dataset
* `x'` = normalized/scaled value

---

## Working

```text id="6i5yfd"
       Original Data
            │
            ↓
   Find Minimum & Maximum
            │
            ↓
     Apply Min-Max Formula
            │
            ↓
       Values from 0 to 1
            │
            ↓
        ML Algorithm
```

---

## Suitable Example

Consider the following **Age** values:

```text
Age = 20, 30, 40, 50
```

Here:

[
x_{min}=20
]

[
x_{max}=50
]

### For Age = 20

[
x'=\frac{20-20}{50-20}=0
]

### For Age = 30

[
x'=\frac{30-20}{50-20}
=\frac{10}{30}
=0.33
]

### For Age = 40

[
x'=\frac{40-20}{50-20}
=\frac{20}{30}
=0.67
]

### For Age = 50

[
x'=\frac{50-20}{50-20}=1
]

### Final Result

| Original Age | Min-Max Scaled Value |
| -----------: | -------------------: |
|           20 |                 0.00 |
|           30 |                 0.33 |
|           40 |                 0.67 |
|           50 |                 1.00 |

Therefore, the normalized dataset is:

[
\boxed{[0,;0.33,;0.67,;1]}
]

---

## Advantages

1. Converts features to a **common scale**.
2. Preserves the relative relationships between values.
3. Useful for **distance-based algorithms** such as KNN and K-Means.
4. Helps algorithms that are sensitive to feature magnitude.
5. Easy to calculate and interpret.

## Limitation

Min-Max scaling is **sensitive to outliers** because the minimum and maximum values determine the scaling range.

### Conclusion

**Min-Max Scaling transforms numerical data into a fixed range, commonly 0 to 1, using the minimum and maximum values of the feature. It is an important preprocessing technique that prevents features with different numerical ranges from dominating the Machine Learning model.**


# Data Scaling and Normalization

### PYQ — 2025 [5 Marks]

**Explain the term data scaling and normalization task.**

## 1. Data Scaling

**Data Scaling** is the process of transforming numerical features so that they have a **comparable range or scale** before they are given to a Machine Learning algorithm.

Different features may have very different ranges.

### Example

```text
Age          → 18 – 60
Salary       → 20,000 – 1,00,000
Experience   → 0 – 20
```

If these features are directly used, the feature with larger numerical values may dominate calculations in some algorithms.

Therefore:

```text
Raw Data
   ↓
Data Scaling
   ↓
Comparable Scale
   ↓
ML Model
```

---

# 2. Normalization

**Normalization** is a scaling technique used to transform numerical values to a **specific range**, commonly **0 to 1**.

The most common method is **Min-Max Normalization**.

### Formula

[
\boxed{x'=\frac{x-x_{min}}{x_{max}-x_{min}}}
]

Where:

* `x` = original value
* `xmin` = minimum value
* `xmax` = maximum value
* `x'` = normalized value

---

# 3. Example of Normalization

Suppose the ages are:

```text
20, 30, 40, 50
```

Minimum = `20`
Maximum = `50`

For age `30`:

[
x'=\frac{30-20}{50-20}
]

[
x'=\frac{10}{30}=0.33
]

Similarly:

| Age | Normalized Value |
| --: | ---------------: |
|  20 |                0 |
|  30 |             0.33 |
|  40 |             0.67 |
|  50 |                1 |

Thus:

[
\boxed{[20,30,40,50]\rightarrow[0,0.33,0.67,1]}
]

---

# 4. Other Scaling Technique — Z-Score

Another important scaling technique is **Z-score standardization**.

It transforms the data based on its mean and standard deviation.

[
\boxed{z=\frac{x-\mu}{\sigma}}
]

Where:

* `μ` = mean
* `σ` = standard deviation

After standardization:

```text
Mean ≈ 0
Standard Deviation ≈ 1
```

---

# 5. Why Scaling and Normalization are Required

They are used to:

1. Bring features to a comparable scale.
2. Prevent large-valued features from dominating.
3. Improve numerical stability.
4. Improve convergence of optimization algorithms.
5. Improve performance of distance-based algorithms such as **KNN, K-Means and SVM**.

---

## Difference

| Data Scaling                                      | Normalization                              |
| ------------------------------------------------- | ------------------------------------------ |
| General process of changing the scale of features | Specific scaling approach, commonly to 0–1 |
| Includes different techniques                     | Commonly uses Min-Max scaling              |
| Example: Z-score, Min-Max                         | Example: Min-Max normalization             |
| Makes features comparable                         | Maps values to a defined range             |

### Simple Diagram

```text
             DATA
               ↓
        Data Scaling
               ↓
      ┌────────┴────────┐
      ↓                 ↓
 Min-Max Scaling    Z-Score Scaling
      ↓                 ↓
     0–1             Mean = 0
                     SD = 1
```

## Conclusion

**Data scaling** is the process of bringing numerical features to a comparable scale, while **normalization** commonly refers to transforming values into a fixed range such as 0 to 1. These techniques are important preprocessing steps that can improve the performance and stability of Machine Learning algorithms.


# Apply Feature Scaling: Min-Max and Z-Score

### PYQ — 2022 [8 Marks]

**Apply feature scaling and find out Min-Max scaled values as well as Z-score values.**

For numerical questions, always write the **formula → calculation → final table**.

## Given Data

Consider the following feature values:

[
X = [10,;20,;30,;40,;50]
]

---

# A. Min-Max Scaling

### Formula

[
\boxed{X'=\frac{X-X_{min}}{X_{max}-X_{min}}}
]

Here:

[
X_{min}=10
]

[
X_{max}=50
]

Therefore:

[
X'=\frac{X-10}{50-10}
=\frac{X-10}{40}
]

### Calculations

For (X=10):

[
X'=\frac{10-10}{40}=0
]

For (X=20):

[
X'=\frac{20-10}{40}=0.25
]

For (X=30):

[
X'=\frac{30-10}{40}=0.50
]

For (X=40):

[
X'=\frac{40-10}{40}=0.75
]

For (X=50):

[
X'=\frac{50-10}{40}=1
]

### Min-Max Result

| Original Value | Min-Max Value |
| -------------: | ------------: |
|             10 |          0.00 |
|             20 |          0.25 |
|             30 |          0.50 |
|             40 |          0.75 |
|             50 |          1.00 |

Therefore:

[
\boxed{X'=[0,;0.25,;0.50,;0.75,;1]}
]

---

# B. Z-Score Scaling

Z-score scaling, also called **standardization**, transforms data using the mean and standard deviation.

genui{"learning_viz":{"type_id":"STANDARD_SCORE_Z"}}

### Formula

[
\boxed{Z=\frac{X-\mu}{\sigma}}
]

Where:

* (X) = original value
* (\mu) = mean
* (\sigma) = standard deviation

---

## Step 1: Calculate Mean

[
\mu=\frac{10+20+30+40+50}{5}
]

[
\boxed{\mu=30}
]

---

## Step 2: Calculate Standard Deviation

|         X | (X-\mu) | ((X-\mu)^2) |
| --------: | ------: | ----------: |
|        10 |     -20 |         400 |
|        20 |     -10 |         100 |
|        30 |       0 |           0 |
|        40 |      10 |         100 |
|        50 |      20 |         400 |
| **Total** |         |    **1000** |

Using population standard deviation:

[
\sigma=\sqrt{\frac{\sum(X-\mu)^2}{n}}
]

[
\sigma=\sqrt{\frac{1000}{5}}
]

[
\sigma=\sqrt{200}
]

[
\boxed{\sigma\approx14.14}
]

---

## Step 3: Calculate Z-Scores

For (X=10):

[
Z=\frac{10-30}{14.14}\approx-1.41
]

For (X=20):

[
Z=\frac{20-30}{14.14}\approx-0.71
]

For (X=30):

[
Z=\frac{30-30}{14.14}=0
]

For (X=40):

[
Z=\frac{40-30}{14.14}\approx0.71
]

For (X=50):

[
Z=\frac{50-30}{14.14}\approx1.41
]

### Z-Score Result

| Original Value | Z-Score |
| -------------: | ------: |
|             10 |   -1.41 |
|             20 |   -0.71 |
|             30 |    0.00 |
|             40 |   +0.71 |
|             50 |   +1.41 |

Therefore:

[
\boxed{Z=[-1.41,;-0.71,;0,;+0.71,;+1.41]}
]

---

# Final Answer

| Original (X) | Min-Max Scaling | Z-Score |
| -----------: | --------------: | ------: |
|           10 |            0.00 |   -1.41 |
|           20 |            0.25 |   -0.71 |
|           30 |            0.50 |    0.00 |
|           40 |            0.75 |   +0.71 |
|           50 |            1.00 |   +1.41 |

### Key Formulas

[
\boxed{\text{Min-Max}=\frac{X-X_{min}}{X_{max}-X_{min}}}
]

[
\boxed{\text{Z-score}=\frac{X-\mu}{\sigma}}
]

### Exam Conclusion

**Min-Max scaling converts the data to a fixed range, usually 0 to 1, whereas Z-score scaling transforms the data based on its mean and standard deviation, producing data with mean approximately 0 and standard deviation approximately 1.**
