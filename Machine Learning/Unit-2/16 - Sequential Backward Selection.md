# 16. Sequential Backward Selection (SBS)

### PYQ

**No direct PYQ**

## Definition

**Sequential Backward Selection (SBS)** is a **wrapper-based feature selection technique** that starts with **all available features** and sequentially removes the feature whose removal causes the **least reduction in model performance**.

The process continues until the required number of features remains.

---

# Working of SBS

```text id="2v4b4j"
       All Features
            ↓
    Train ML Model
            ↓
 Remove One Feature at a Time
            ↓
   Evaluate Model Performance
            ↓
 Remove Least Important Feature
            ↓
         Repeat
            ↓
   Required Feature Set
```

---

# Step-by-Step Example

Suppose a dataset contains:

```text id="y4kq7v"
A, B, C, D
```

### Step 1: Start with all features

```text id="p8y7w3"
Selected = {A, B, C, D}
```

Assume the model gives:

```text
Accuracy = 90%
```

---

### Step 2: Remove one feature at a time

Evaluate the model after removing each feature:

| Removed Feature | Remaining Features | Accuracy |
| --------------- | ------------------ | -------: |
| A               | B, C, D            |      87% |
| B               | A, C, D            |      89% |
| C               | A, B, D            |      85% |
| D               | A, B, C            |      88% |

Removing **B** causes the smallest decrease in accuracy:

```text
90% → 89%
```

Therefore, remove `B`.

```text id="l4y8km"
Selected = {A, C, D}
```

---

### Step 3: Repeat

Now test removing each remaining feature:

| Removed | Remaining | Accuracy |
| ------- | --------- | -------: |
| A       | C, D      |      84% |
| C       | A, D      |      88% |
| D       | A, C      |      83% |

Removing `C` gives the best result:

```text
Selected = {A, D}
```

The process continues until the desired number of features remains.

---

# Algorithm

```text id="h4c6e4"
1. Start with all features.

2. Train the ML model using all features.

3. Temporarily remove each feature
   one at a time.

4. Evaluate model performance
   after each removal.

5. Remove the feature whose removal
   gives the best result / causes the
   smallest performance degradation.

6. Repeat until the required number
   of features remains.

7. Return the selected feature set.
```

---

# Diagram

```text id="4q7u3j"
             All Features
          A  B  C  D  E
                 │
                 ↓
       Test Removing Each Feature
                 │
                 ↓
         Remove Least Useful
                 │
                 ↓
            A  B  C  D
                 │
                 ↓
       Test Removing Each Feature
                 │
                 ↓
         Remove Least Useful
                 │
                 ↓
            A  B  C
                 │
                 ↓
         Final Feature Set
```

---

# Advantages

1. Considers the **actual performance of the ML model**.
2. Can consider interactions between features.
3. Simple and systematic approach.
4. Can remove unnecessary or redundant features.
5. Useful when the initial feature set is reasonably sized.

# Limitations

1. **Computationally expensive** because the model is trained repeatedly.
2. Requires starting with all features.
3. Once a feature is removed, it generally cannot be added back.
4. It is a **greedy method**, so it may not find the globally optimal feature subset.
5. Can be slow when the dataset has a very large number of features.

---

# SBS vs SFS

| Sequential Forward Selection          | Sequential Backward Selection                 |
| ------------------------------------- | --------------------------------------------- |
| Starts with **no features**           | Starts with **all features**                  |
| Adds features                         | Removes features                              |
| Selects the best feature at each step | Removes the least useful feature at each step |
| Forward direction                     | Backward direction                            |
| **Empty → Full**                      | **Full → Reduced**                            |

### Easy Memory Trick

```text
SFS → Start Empty → Add features

SBS → Start with all → Remove features
```

## Exam-Friendly Answer

> **Sequential Backward Selection (SBS) is a wrapper-based feature selection technique that starts with all available features. It temporarily removes each feature one at a time and evaluates the Machine Learning model. The feature whose removal causes the least decrease in model performance is permanently removed. This process is repeated until the required number of features remains. SBS can produce useful feature subsets and considers model performance, but it is computationally expensive and may not find the globally optimal subset.**
