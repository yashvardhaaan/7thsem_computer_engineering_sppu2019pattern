# 14. Wrapper Methods for Feature Selection

### PYQ — 2022 [5 Marks]

**Explain the types of wrapper methods for feature selection.**

## Definition

**Wrapper methods** are feature selection techniques that use a **Machine Learning model to evaluate different subsets of features**.

The model is trained using different combinations of features, and the subset that gives the **best model performance** is selected.

### Basic Idea

```text
        Dataset
           ↓
   Select Feature Subset
           ↓
    Train ML Model
           ↓
    Evaluate Performance
           ↓
    Change Feature Set
           ↓
   Repeat the Process
           ↓
 Best Feature Subset
```

---

# Types of Wrapper Methods

The three important wrapper methods are:

```text id="3x0q1k"
             WRAPPER METHODS
                    │
       ┌────────────┼────────────┐
       ↓            ↓            ↓
    Forward       Backward       RFE
    Selection     Elimination
```

---

# 1. Forward Selection

**Forward Selection** starts with **no features** and adds features one at a time.

At each step, the feature that provides the greatest improvement in model performance is added.

### Process

```text id="0u8e3y"
Start: No Features
        ↓
   Add Best Feature
        ↓
     Feature A
        ↓
 Add Best Remaining Feature
        ↓
      A + C
        ↓
 Add Another Best Feature
        ↓
    A + C + D
```

### Example

Suppose there are:

```text
A, B, C, D
```

The algorithm may evaluate:

```text
A → Accuracy = 80%
B → Accuracy = 75%
C → Accuracy = 82%
D → Accuracy = 70%
```

It selects **C**.

Then it evaluates combinations:

```text
C + A → 85%
C + B → 83%
C + D → 84%
```

It selects **C + A**.

The process continues until adding another feature no longer provides sufficient improvement.

### Advantage

* Starts with a small feature set.
* Can be efficient when only a few features are important.

### Limitation

* Once a feature is selected, it generally cannot be removed later.

---

# 2. Backward Elimination

**Backward Elimination** starts with **all features** and removes the least useful feature one at a time.

### Process

```text id="z6c4i7"
All Features
 A B C D E
      ↓
Remove Least Useful
      ↓
 A B C D
      ↓
Remove Least Useful
      ↓
 A B C
      ↓
Best Feature Set
```

### Example

Suppose the initial features are:

```text
A, B, C, D, E
```

The algorithm trains the model using all features.

If `E` contributes the least, it is removed:

```text
A B C D E
      ↓
A B C D
```

Then another feature is removed if doing so does not significantly reduce performance.

### Advantage

* Considers the complete feature set initially.
* Can identify and remove unnecessary features.

### Limitation

* Computationally expensive when there are many features.

---

# 3. Recursive Feature Elimination (RFE)

**Recursive Feature Elimination (RFE)** repeatedly trains a model, ranks features according to their importance, and removes the **least important features**.

### Process

```text id="n8f0gq"
       All Features
            ↓
      Train ML Model
            ↓
     Rank Features
            ↓
 Remove Least Important
            ↓
      Train Again
            ↓
 Remove Least Important
            ↓
     Final Features
```

### Example

Suppose:

```text
A → Importance = 0.80
B → Importance = 0.60
C → Importance = 0.10
D → Importance = 0.45
```

Feature `C` has the lowest importance, so it is removed.

```text
A B C D
  ↓
A B D
```

The process continues until the required number of features remains.

### Advantage

* Directly uses model-based feature importance.
* Often produces a strong feature subset.

### Limitation

* Computationally expensive because the model is trained repeatedly.

---

# Comparison of Wrapper Methods

| Method                   | Starting Point        | Main Operation                              |
| ------------------------ | --------------------- | ------------------------------------------- |
| **Forward Selection**    | No features           | Adds important features                     |
| **Backward Elimination** | All features          | Removes least useful features               |
| **RFE**                  | All/selected features | Repeatedly removes least important features |

---

# Diagram for Exam

```text
                 WRAPPER METHODS
                        │
          ┌─────────────┼─────────────┐
          ↓             ↓             ↓
      FORWARD        BACKWARD         RFE
      SELECTION     ELIMINATION
          │             │             │
          ↓             ↓             ↓
       Start with    Start with    Train Model
       no features  all features        ↓
          ↓             ↓         Rank Features
       Add best      Remove           ↓
       feature       worst        Remove Least
          ↓             ↓         Important
       Repeat        Repeat           ↓
          ↓             ↓           Repeat
       Final Set     Final Set      Final Set
```

## Advantages of Wrapper Methods

1. Consider the **actual performance of the ML model**.
2. Can consider interactions between features.
3. Often provide better feature subsets than simple filtering methods.

## Disadvantages

1. **Computationally expensive**.
2. Training the model repeatedly takes time.
3. Can be impractical for datasets with a very large number of features.
4. Results can depend on the ML algorithm used.

---

## Exam Answer

> **Wrapper methods are feature selection techniques that use a Machine Learning model to evaluate different subsets of features. The main types are Forward Selection, Backward Elimination, and Recursive Feature Elimination (RFE). Forward selection starts with no features and adds the best features one by one. Backward elimination starts with all features and removes the least useful features one by one. RFE repeatedly trains a model, ranks features according to their importance, and removes the least important feature until the required number of features remains. Wrapper methods generally provide effective feature subsets but are computationally expensive.**

### Conclusion

**Forward Selection adds features, Backward Elimination removes features, and RFE repeatedly removes the least important features based on model performance or feature importance.**
