# 2. Preprocessing of Data

### PYQs

* **2022:** How to handle missing values in a dataset that will be used for training the ML model? **[5]**
* **2024:** Describe the various steps involved in developing a machine learning application. **[5]**

## Definition

**Data preprocessing** is the process of **cleaning, transforming, and preparing raw data** before it is given to a Machine Learning model.

Raw data may contain **missing values, duplicate records, noise, inconsistent formats, categorical values, and different numerical scales**. Preprocessing converts this raw data into a suitable format for ML algorithms.

### Basic Process

```text
        RAW DATA
            ↓
    Data Preprocessing
            ↓
   ┌────────┼─────────┐
   ↓        ↓         ↓
 Missing   Noise    Incorrect
 Values    /Outliers  Data
   │        │         │
   └────────┼─────────┘
            ↓
      Cleaned Data
            ↓
   Feature Transformation
            ↓
       ML Model
            ↓
        Prediction
```

---

# Steps in Data Preprocessing

## 1. Data Collection

The first step is to **collect relevant data** from suitable sources such as:

* Databases
* APIs
* Sensors
* Websites
* Files
* Surveys

The collected data should be relevant to the ML problem.

---

# 2. Data Cleaning

Data cleaning identifies and corrects problems in the dataset.

It includes:

* Handling missing values
* Removing duplicate records
* Correcting inconsistent values
* Handling noisy data
* Detecting outliers

```text
Raw Data
   ↓
Data Cleaning
   ↓
Clean & Consistent Data
```

---

# 3. Handling Missing Values

### PYQ — 2022 [5 Marks]

Missing values occur when some observations do not contain a value for a particular feature.

### Example

```text
Name      Age     Salary
A         21      30000
B         ?       35000
C         23      ?
```

Missing values can be handled using the following methods.

### a) Removing Records

Rows containing missing values can be removed when only a small number of records are affected and removing them will not introduce significant bias.

```text
Missing Row → Remove Row
```

### b) Mean Imputation

For numerical data, a missing value can be replaced with the **mean** of the available values.

```text
Values = 20, 22, ?, 24

Mean = (20 + 22 + 24) / 3
     = 22

Missing value → 22
```

### c) Median Imputation

The missing value can be replaced by the **median**. This is often preferred when the data contains outliers.

### d) Mode Imputation

For categorical data, the missing value can be replaced by the **most frequently occurring category**.

```text
City = Pune, Mumbai, Pune, ?, Pune

Mode = Pune

Missing value → Pune
```

### e) Forward/Backward Filling

For sequential or time-series data, a nearby previous or next value can sometimes be used.

### Important Point

> The method used to handle missing values should depend on the **type of data, amount of missing data, and nature of the problem**.

---

# 4. Handling Outliers

An **outlier** is an observation that is significantly different from the majority of the data.

### Example

```text
Age:
20, 21, 22, 23, 24, 150
                  ↑
               Outlier
```

Outliers can be:

* Removed if they are errors.
* Transformed or capped when appropriate.
* Retained if they represent genuine observations.

---

# 5. Encoding Categorical Data

Machine Learning algorithms often require numerical input. Therefore, categorical values are converted into numerical representations.

### Example

```text
City

Pune
Mumbai
Delhi
```

Using one-hot encoding:

```text
        Pune  Mumbai  Delhi
Pune      1      0      0
Mumbai    0      1      0
Delhi     0      0      1
```

---

# 6. Feature Scaling

Different features may have very different ranges.

```text
Age       → 18–60
Salary    → 20,000–10,00,000
```

Features can be scaled so that their values are on comparable scales.

### Common techniques

* **Normalization:** Usually scales values to a fixed range such as 0 to 1.
* **Standardization:** Transforms data based on mean and standard deviation.

Scaling is particularly important for algorithms that depend on **distance or magnitude**, such as KNN and SVM.

---

# 7. Data Transformation

Data may need to be transformed into a form suitable for the ML algorithm.

Examples:

* Log transformation
* Standardization
* Normalization
* Converting date/time into useful features

---

# 8. Feature Selection

Irrelevant or redundant features can be removed.

```text
20 Available Features
        ↓
Feature Selection
        ↓
8 Important Features
        ↓
ML Model
```

This can reduce model complexity and improve efficiency.

---

# 9. Splitting the Dataset

The dataset is commonly divided into:

```text
             Dataset
                │
        ┌───────┴───────┐
        ↓               ↓
    Training Set     Test Set
        │               │
        ↓               ↓
     Train Model     Evaluate
```

A **validation set** may also be used for model selection and hyperparameter tuning.

A common example is:

```text
Training → 70%
Validation → 15%
Testing → 15%
```

The exact proportions depend on the dataset and problem.

---

# Complete Steps in Developing a Machine Learning Application

### PYQ — 2024 [5 Marks]

The development of an ML application generally follows these steps:

```text
1. Define Problem
       ↓
2. Collect Data
       ↓
3. Preprocess Data
       ↓
4. Explore & Analyze Data
       ↓
5. Select / Engineer Features
       ↓
6. Split Data
       ↓
7. Select ML Algorithm
       ↓
8. Train Model
       ↓
9. Evaluate Model
       ↓
10. Tune / Improve Model
       ↓
11. Deploy Model
       ↓
12. Monitor & Maintain
```

## Explanation of Each Step

### 1. Define the Problem

Clearly identify the problem and determine what the model needs to predict.

**Example:** Predict whether a customer will leave a service.

### 2. Collect Data

Gather relevant and sufficient data from appropriate sources.

### 3. Preprocess Data

Clean the data by handling:

* Missing values
* Outliers
* Duplicates
* Incorrect formats

### 4. Explore and Analyze Data

Use statistical analysis and visualization to understand patterns, relationships, and distributions in the data.

### 5. Feature Engineering

Select important features and create or transform features that can improve model performance.

### 6. Split Data

Divide the data into training, validation, and test sets as appropriate.

### 7. Select Algorithm

Choose an appropriate ML algorithm based on the problem.

```text
Classification → Logistic Regression / Decision Tree / SVM
Regression     → Linear Regression
Clustering     → K-Means
```

### 8. Train the Model

The algorithm learns patterns and relationships from the training data.

### 9. Evaluate the Model

Measure performance using suitable metrics.

Examples:

* Accuracy
* Precision
* Recall
* F1-score
* MSE
* RMSE

### 10. Tune and Improve

Adjust hyperparameters, features, or algorithms to improve performance and generalization.

### 11. Deploy

Make the trained model available in a real application.

### 12. Monitor and Maintain

After deployment, monitor performance and retrain or update the model when data or real-world conditions change.

---

# Exam-Friendly Summary

### Data Preprocessing

> **Data preprocessing is the process of converting raw data into clean, consistent, and suitable data for Machine Learning. It includes data cleaning, handling missing values and outliers, encoding categorical data, feature transformation, feature scaling, feature selection, and dataset splitting.**

### Handling Missing Values

```text
Missing Value
     │
     ├── Remove record
     ├── Mean
     ├── Median
     ├── Mode
     └── Forward / Backward Fill
```

### Development of ML Application

```text
Problem Definition
       ↓
Data Collection
       ↓
Data Preprocessing
       ↓
Feature Engineering
       ↓
Data Splitting
       ↓
Algorithm Selection
       ↓
Training
       ↓
Evaluation
       ↓
Tuning
       ↓
Deployment
       ↓
Monitoring
```

### Conclusion

Proper data preprocessing is essential because **the quality of input data directly affects the performance of a Machine Learning model**. A complete ML application therefore requires a systematic process from **problem definition and data collection to preprocessing, model training, evaluation, deployment, and monitoring**.
