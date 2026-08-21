# 3. Normalization / Data Scaling

### PYQs

* **2023:** Explain Min-Max scaling with suitable example. **[5]**
* **2023:** Given data for AGE, calculate Z-score normalization. **[5]**
* **2022:** Apply feature scaling and find Min-Max scaled values as well as Z-score values. **[8]**
* **2025:** With reference to feature engineering, explain data scaling and normalization task. **[5]**
* **2024:** Convert given data set into normalized data set. **[8]**

---

## 1. Introduction

**Data Scaling** is a feature engineering technique used to bring numerical features to a **common scale** without changing the important relationships in the data.

Different features may have very different ranges.

### Example

```text
Age       → 18 – 60
Salary    → 20,000 – 1,00,000
Experience → 0 – 20
```

If these features are directly given to certain ML algorithms, the feature with larger numerical values may have an excessive influence.

Therefore, scaling is performed.

```text
Original Data
      ↓
 Scaling / Normalization
      ↓
Common Numerical Scale
      ↓
Machine Learning Model
```

---

# 2. Why Normalization / Scaling is Required

Feature scaling is particularly important for algorithms that depend on **distance or magnitude**.

### Benefits

1. Prevents features with large values from dominating.
2. Improves the performance of distance-based algorithms.
3. Helps optimization algorithms converge faster.
4. Makes features comparable.
5. Can improve model accuracy and stability.

### Commonly affected algorithms

* K-Nearest Neighbors (KNN)
* K-Means
* Support Vector Machine (SVM)
* Neural Networks
* Gradient-based models

---

# 3. Min-Max Normalization

### PYQ — 2023 [5 Marks]

**Min-Max scaling** transforms the values of a feature into a specified range, commonly **0 to 1**.

### Formula

[
x' = \frac{x-x_{min}}{x_{max}-x_{min}}
]

Where:

* `x` = original value
* `xmin` = minimum value
* `xmax` = maximum value
* `x'` = normalized value

![Image](https://images.openai.com/static-rsc-4/US9yxvBxJkgWdf7woB_YEj9ql-6Vdl5VxodH-VDnsXOfNVmqhdsTdEK5_bHTTp-bJeCBf2qj9Z3cb8lpIWukK7pu92YVyFJ84xWNt6Pw72cB8sjDEEYxezJEz39tUdgVobi4iS1waC0MPa7H3akF5Ds4QPf89lMqpjjHj_to5-HHcvFoIxEYtIAGeWM_DL9P?purpose=fullsize)

![Image](https://images.openai.com/static-rsc-4/1qgICTJBl-lHswvei3Qn6qWCa9v_14iwfQ7YN6Dh2ay50xrGRDnIVz-4kW9_ii81K9fHqMHBsMTrnwclnFi7Hz2eEMOIJ4OlqdtWprqFuHoZWYU0gJnOwib3psdj4mef6aXJ54j2uFzp8A_xiP_7jgwBqalCuDUBJCApkkn9ZAMoQxkCvl0345DsPMUP8cF7?purpose=fullsize)

![Image](https://images.openai.com/static-rsc-4/dGsfbx7WiiXzhynz2bhbHbG32Lpw9f8eBcy7zBesZrK4Hp2NLlIlcNE6N2qpCiepZRrTEJBCU5B1LLeXjt1aCtgB8yGqdCFK7RbhXr8RjL7vXhlpFkSRd4GWOww7M77nDtib0S3_fVBDWuce309QQpVCIv2iP39Zeo8P-NSmJTkkW_g5FxbC9ceT6W4lKsx8?purpose=fullsize)

![Image](https://images.openai.com/static-rsc-4/kJdgM89LB4wnaj8nyMeeV8cHMoBucTNQfWA06pMoXo9efRXrguRqd5FmJ6UnAc2HfnxTzGoG8If1eI21yKPFErbGOrgIZAQ_kKYwJMmzqesSdAc3-aGJBqnq-2JaiaXnm-9lDWQlaynyYkN0mxERsHsHxUdg5uHWJFQ0fOpPb97OaanbDztMegWPcDE13yRM?purpose=fullsize)

![Image](https://images.openai.com/static-rsc-4/xBGDs87GQFMzurlaWOaTuhadDtWXnv_4SQ4ksAKB-I8qdvJYa7EnDOGA86rpBFnRaK1fM0cYipYB6V9E-5B3ibrw92skXsnjDNUkW87Fy9VbB7kOqHM6Y0kr30uOyd6iPZLLOzuG1t4-OaqVLD9n4s0gfmiRKBkTi8ckqVuFUoV4WlbH0Yi5fWw0c_B-_S-W?purpose=fullsize)

### Example

Given:

```text
Age = [20, 30, 40, 50]
```

Here:

```text
Minimum = 20
Maximum = 50
```

For `Age = 30`:

[
x' = \frac{30-20}{50-20}
]

[
x' = \frac{10}{30} = 0.33
]

For `Age = 50`:

[
x' = \frac{50-20}{50-20}=1
]

### Result

| Age | Min-Max Value |
| --: | ------------: |
|  20 |             0 |
|  30 |          0.33 |
|  40 |          0.67 |
|  50 |             1 |

Thus, the original values are converted approximately into the range **0 to 1**.

---

# 4. Z-Score Normalization / Standardization

### PYQ — 2023 [5 Marks]

**Z-score normalization**, also called **standardization**, transforms data based on its **mean and standard deviation**.

genui{"learning_viz":{"type_id":"STANDARD_SCORE_Z"}}

### Formula

[
z = \frac{x-\mu}{\sigma}
]

Where:

* `x` = original value
* `μ` = mean of the data
* `σ` = standard deviation
* `z` = Z-score

The transformed data generally has:

```text
Mean ≈ 0
Standard Deviation ≈ 1
```

---

# 5. Z-Score Numerical Example

### PYQ — Given AGE, calculate Z-score normalization

Suppose the ages are:

```text
20, 25, 30, 35, 40
```

### Step 1: Calculate Mean

[
\mu = \frac{20+25+30+35+40}{5}
]

[
\mu = 30
]

### Step 2: Calculate Standard Deviation

Using population standard deviation:

[
\sigma = \sqrt{\frac{\sum(x-\mu)^2}{n}}
]

```text
Age    x - μ    (x - μ)²
20      -10        100
25       -5         25
30        0          0
35        5         25
40       10        100
```

[
\sigma = \sqrt{\frac{250}{5}}
]

[
\sigma = \sqrt{50} \approx 7.07
]

### Step 3: Calculate Z-Scores

For age `20`:

[
z = \frac{20-30}{7.07}
]

[
z \approx -1.41
]

For age `25`:

[
z = \frac{25-30}{7.07}
]

[
z \approx -0.71
]

For age `30`:

[
z = \frac{30-30}{7.07}=0
]

For age `35`:

[
z \approx 0.71
]

For age `40`:

[
z \approx 1.41
]

### Final Answer

| Age | Z-score |
| --: | ------: |
|  20 |   -1.41 |
|  25 |   -0.71 |
|  30 |       0 |
|  35 |   +0.71 |
|  40 |   +1.41 |

> **Exam Tip:** If the question gives a specific standard deviation formula or asks for **sample standard deviation**, use the formula specified in the question. The above calculation uses population standard deviation.

---

# 6. Min-Max vs Z-Score

### PYQ — 2022 [8 Marks]

| Basis                        | Min-Max Scaling          | Z-Score Standardization                            |
| ---------------------------- | ------------------------ | -------------------------------------------------- |
| **Formula**                  | `(x − min)/(max − min)`  | `(x − mean)/standard deviation`                    |
| **Result**                   | Usually 0 to 1           | Mean 0, SD 1                                       |
| **Uses minimum/maximum?**    | Yes                      | No                                                 |
| **Uses mean?**               | No                       | Yes                                                |
| **Uses standard deviation?** | No                       | Yes                                                |
| **Effect of outliers**       | Highly affected          | Less affected than Min-Max, though still sensitive |
| **Useful when**              | Bounded scale is desired | Data needs centering and standardization           |
| **Example**                  | Neural networks, KNN     | SVM, linear/logistic models                        |

---

# 7. Solved Min-Max + Z-Score Example

### PYQ — 2022 [8 Marks]

Suppose the data is:

```text
10, 20, 30, 40, 50
```

## A. Min-Max Scaling

```text
Minimum = 10
Maximum = 50
```

Formula:

[
x'=\frac{x-10}{50-10}
]

### Results

| Original | Min-Max |
| -------: | ------: |
|       10 |       0 |
|       20 |    0.25 |
|       30 |    0.50 |
|       40 |    0.75 |
|       50 |    1.00 |

---

## B. Z-Score

Mean:

[
\mu = \frac{10+20+30+40+50}{5}=30
]

Standard deviation:

[
\sigma = \sqrt{\frac{(10-30)^2+(20-30)^2+(30-30)^2+(40-30)^2+(50-30)^2}{5}}
]

[
\sigma = \sqrt{200}\approx14.14
]

Now:

[
z=\frac{x-30}{14.14}
]

### Results

| Original | Z-score |
| -------: | ------: |
|       10 |   -1.41 |
|       20 |   -0.71 |
|       30 |       0 |
|       40 |   +0.71 |
|       50 |   +1.41 |

---

# 8. Data Scaling and Normalization in Feature Engineering

### PYQ — 2025 [5 Marks]

**Data scaling** is the process of transforming numerical features so that they have a comparable scale.

**Normalization** is commonly used to transform values into a particular range, such as **0 to 1**, using Min-Max scaling.

### Example

Before scaling:

```text
Age       = 20–60
Salary    = 20,000–1,00,000
```

After Min-Max scaling:

```text
Age       → 0–1
Salary    → 0–1
```

This allows the ML algorithm to treat the features on a more comparable numerical scale.

---

# 9. Important Difference: Normalization vs Standardization

In many ML textbooks, **normalization** is used broadly for feature scaling. However, technically:

### Normalization

Usually refers to scaling values to a fixed range.

**Example: Min-Max**

[
x'=\frac{x-x_{min}}{x_{max}-x_{min}}
]

### Standardization

Refers specifically to transforming values using mean and standard deviation.

**Example: Z-score**

[
z=\frac{x-\mu}{\sigma}
]

So in the exam, if the question says **"normalization"**, check whether it expects **Min-Max**, **Z-score**, or both based on the wording/data given.

---

# 10. 2024 — Convert Given Dataset into Normalized Dataset [8 Marks]

For this type of numerical question, follow these steps:

### Step 1: Find Minimum and Maximum

```text
xmin = minimum value
xmax = maximum value
```

### Step 2: Apply Min-Max Formula

[
x'=\frac{x-x_{min}}{x_{max}-x_{min}}
]

### Step 3: Calculate Each Value

Create a table:

| Original Value | Calculation              | Normalized Value |
| -------------: | ------------------------ | ---------------: |
|             x₁ | `(x₁ − min)/(max − min)` |            value |
|             x₂ | `(x₂ − min)/(max − min)` |            value |
|             x₃ | `(x₃ − min)/(max − min)` |            value |

### Step 4: State the Result

The resulting dataset will generally have values between:

[
\boxed{0 \leq x' \leq 1}
]

---

# ⭐ Exam Formula Sheet

### Min-Max Scaling

[
\boxed{x'=\frac{x-x_{min}}{x_{max}-x_{min}}}
]

### Z-Score Standardization

[
\boxed{z=\frac{x-\mu}{\sigma}}
]

### Mean

[
\boxed{\mu=\frac{\sum x}{n}}
]

### Population Standard Deviation

[
\boxed{\sigma=\sqrt{\frac{\sum(x-\mu)^2}{n}}}
]

---

## Exam Conclusion

**Data scaling and normalization are important feature engineering techniques used to bring numerical features to comparable scales. Min-Max scaling converts values to a fixed range, commonly 0 to 1, while Z-score standardization transforms data using its mean and standard deviation. These techniques can improve the performance and stability of many Machine Learning algorithms, especially those based on distance or numerical optimization.**
