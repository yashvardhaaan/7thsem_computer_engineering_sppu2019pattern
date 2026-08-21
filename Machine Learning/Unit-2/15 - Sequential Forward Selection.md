# 15. Sequential Forward Selection (SFS)

### PYQ

**No direct PYQ**

## Definition

**Sequential Forward Selection (SFS)** is a **wrapper-based feature selection technique** that starts with an **empty set of features** and sequentially adds the feature that gives the **best improvement in model performance**.

The process continues until the required number of features is selected or adding another feature does not provide sufficient improvement.

---

# Working of SFS

```text id="c7d4k3"
        All Features
             ↓
      Start with Empty Set
             ↓
   Test Each Feature Individually
             ↓
     Select Best Feature
             ↓
    Add One Feature at a Time
             ↓
       Evaluate Model
             ↓
    Repeat Until Stopping Rule
             ↓
      Selected Features
```

---

# Step-by-Step Example

Suppose a dataset has four features:

```text id="w8b8gd"
A, B, C, D
```

### Step 1: Start with no features

```text
Selected = { }
```

Test each feature separately:

| Feature | Accuracy |
| ------- | -------: |
| A       |      78% |
| B       |      82% |
| C       |      75% |
| D       |      80% |

The best feature is **B**.

```text
Selected = {B}
```

---

### Step 2: Add another feature

Now test each remaining feature with B:

| Feature Set | Accuracy |
| ----------- | -------: |
| B + A       |      85% |
| B + C       |      83% |
| B + D       |      84% |

Best combination:

```text
B + A = 85%
```

So:

```text
Selected = {B, A}
```

---

### Step 3: Continue

Test adding the remaining features:

```text
B + A + C → 86%
B + A + D → 87%
```

Select `D`.

```text
Selected = {B, A, D}
```

The process continues until the desired number of features is selected.

---

# Algorithm

```text id="d1k8h0"
1. Start with an empty feature set S.

2. Evaluate each feature not in S
   by adding it to S.

3. Select the feature that gives
   the best model performance.

4. Add that feature to S.

5. Repeat Steps 2–4 until:
   - required number of features is selected, OR
   - no significant improvement occurs.

6. Return the selected feature set.
```

---

# Diagram

```text id="6x9m0m"
All Features
 A  B  C  D
     │
     ↓
Select Best
     │
     ↓
    {B}
     │
     ↓
Try B+A, B+C, B+D
     │
     ↓
   {B,A}
     │
     ↓
Try B+A+C, B+A+D
     │
     ↓
  {B,A,D}
     │
     ↓
 Final Feature Set
```

---

# Advantages

1. Simple and easy to understand.
2. Starts with only a small number of features.
3. Uses actual model performance to select features.
4. Can identify useful combinations of features.
5. Useful when only a relatively small number of features need to be selected.

# Limitations

1. **Computationally expensive** because the model is trained many times.
2. It is a **greedy algorithm**, so a feature selected early cannot normally be removed later.
3. The final result may not be the globally optimal feature subset.
4. Performance depends on the chosen ML model and evaluation metric.

---

# SFS vs Backward Elimination

| SFS                                       | Backward Elimination                        |
| ----------------------------------------- | ------------------------------------------- |
| Starts with **no features**               | Starts with **all features**                |
| Adds features                             | Removes features                            |
| Forward approach                          | Backward approach                           |
| Stops when required features are selected | Stops when unnecessary features are removed |

---

## Exam-Friendly Answer

> **Sequential Forward Selection (SFS) is a wrapper-based feature selection technique that starts with an empty set of features. It evaluates each feature individually and selects the feature that gives the best model performance. Then, one feature at a time is added to the selected set based on the improvement in performance. The process continues until the required number of features is selected or no significant improvement occurs. SFS is simple and can provide effective feature subsets, but it is computationally expensive and may not find the globally optimal feature subset.**

### Key Point to Remember

> **SFS = Start Empty → Add Best Feature → Evaluate → Repeat.**
