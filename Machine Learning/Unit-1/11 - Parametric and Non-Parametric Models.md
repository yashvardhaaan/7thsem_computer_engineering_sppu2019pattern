# 11. Parametric and Non-Parametric Models

### PYQ — 2022 [5 Marks]

**Describe Parametric and Non-Parametric Machine Learning Models.**

## Introduction

Machine Learning models can be classified into **Parametric** and **Non-Parametric** models based on how they represent the relationship between input and output.

The main difference is:

> **Parametric models assume a fixed mathematical form with a fixed number of parameters, while non-parametric models do not assume a fixed form and can become more complex as the amount of data increases.**

---

# 1. Parametric Models

## Definition

A **Parametric Machine Learning Model** assumes that the relationship between input and output can be represented using a **fixed mathematical function** with a fixed number of parameters.

The model learns the values of these parameters from the training data.

### Basic Structure

```text id="u2r4cz"
       Training Data
             ↓
      Fixed Model Form
             ↓
      Learn Parameters
             ↓
       Trained Model
             ↓
      Make Prediction
```

### Example: Linear Regression

Linear Regression assumes a relationship such as:

**y = w₁x + b**

Here:

* `w₁` = weight
* `b` = bias
* `x` = input
* `y` = predicted output

The model learns `w₁` and `b` from the training data.

```text id="5d4j2p"
Data Points
    ●
      ●
        ●
          ●
            ●
             ╱
            ╱  ← Learned linear function
           ╱
```

### Examples of Parametric Models

* Linear Regression
* Logistic Regression
* Naive Bayes
* Some forms of neural networks

### Advantages

1. **Simple and fast** to train.
2. Requires relatively **less computational resources**.
3. Easier to interpret in many cases.
4. Works well when the assumed relationship is appropriate.

### Limitations

1. Depends on assumptions about the data.
2. May perform poorly when the actual relationship is highly complex.
3. Less flexible than non-parametric models.

---

# 2. Non-Parametric Models

## Definition

A **Non-Parametric Machine Learning Model** does not assume a fixed mathematical form or a fixed number of parameters.

The complexity of the model can **increase with the amount of training data**.

### Basic Structure

```text id="1x4jlo"
       Training Data
             ↓
     Learn Data Structure
             ↓
     Flexible Model
             ↓
       New Input
             ↓
        Prediction
```

The model can adapt to complex relationships present in the data.

### Example: K-Nearest Neighbors (KNN)

KNN does not learn a fixed equation. Instead, it stores training examples and uses the **nearest data points** to classify a new observation.

```text id="5e1w5j"
       ● ●
      ● X ●       ← New point
       ▲ ▲
      ▲ ▲ ▲
```

The class of `X` is determined using its nearest neighbors.

### Examples of Non-Parametric Models

* K-Nearest Neighbors (KNN)
* Decision Trees
* Random Forests
* Kernel-based methods

### Advantages

1. **Highly flexible**.
2. Can model complex relationships.
3. Makes fewer assumptions about the underlying data distribution.
4. Can adapt as more training data becomes available.

### Limitations

1. Usually requires more **training data**.
2. Can require more **computational resources**.
3. May be slower during prediction.
4. Can suffer from overfitting if not properly controlled.

---

# Parametric vs Non-Parametric Models

| Basis                    | Parametric                       | Non-Parametric                   |
| ------------------------ | -------------------------------- | -------------------------------- |
| **Model Form**           | Fixed                            | Flexible                         |
| **Number of Parameters** | Fixed                            | Not fixed                        |
| **Assumptions**          | Makes stronger assumptions       | Makes fewer assumptions          |
| **Flexibility**          | Less flexible                    | More flexible                    |
| **Data Requirement**     | Generally needs less data        | Generally needs more data        |
| **Complexity**           | Usually simpler                  | Can become more complex          |
| **Training**             | Usually faster                   | Can be computationally expensive |
| **Example**              | Linear Regression                | KNN                              |
| **Other Examples**       | Logistic Regression, Naive Bayes | Decision Tree, Random Forest     |

---

## Simple Diagram

```text id="m1w3rv"
             MACHINE LEARNING MODELS
                       │
              ┌────────┴────────┐
              ↓                 ↓
         PARAMETRIC        NON-PARAMETRIC
              │                 │
              ↓                 ↓
        Fixed structure     Flexible structure
              │                 │
              ↓                 ↓
      Learn parameters     Learn from data
              │                 │
              ↓                 ↓
     Linear Regression         KNN
     Logistic Regression       Decision Tree
     Naive Bayes               Random Forest
```

## Easy Way to Remember

**Parametric → Fixed form + fixed parameters**

**Non-Parametric → Flexible form + complexity can grow with data**

### Conclusion

Parametric models use a **predefined functional form with a fixed number of parameters**, making them simple and computationally efficient. Non-parametric models are **more flexible and data-driven**, allowing them to model complex relationships without assuming a fixed functional form. The choice depends on the **amount of data, complexity of the problem, computational resources, and assumptions about the data**.
