# 8. Probabilistic Models

### PYQs

* **2023:** Explain Geometric Model and Probabilistic Model with suitable examples. **[5]**
* **2025:** Explain Geometric Model and Probabilistic Model with suitable examples. **[5]**

> **Important:** Since both PYQs ask **Geometric Model + Probabilistic Model**, write both together in the exam. Do not write only probabilistic models.

---

# Probabilistic Models

## Definition

A **Probabilistic Model** is a Machine Learning model that represents uncertainty using **probability**. It estimates the likelihood of different outcomes based on the available data.

Instead of always giving a fixed answer, the model can determine **how probable each possible outcome is**.

### Basic Idea

```text
             Training Data
                  ↓
        ┌──────────────────┐
        │ Probabilistic     │
        │      Model        │
        └────────┬─────────┘
                 ↓
        Probability of
        Different Outcomes
          /       |       \
         ↓        ↓        ↓
       0.8       0.15     0.05
       Class A   Class B   Class C
```

The model selects the outcome with the highest probability or uses the probabilities according to the application.

---

# How Probabilistic Models Work

Probabilistic models generally follow these steps:

1. **Collect training data.**
2. **Identify relevant features and variables.**
3. **Estimate probability distributions or relationships** from the data.
4. For new input, **calculate the probability of possible outcomes**.
5. Select or rank the outcomes based on their probabilities.

---

# Important Probabilistic Models

## 1. Naive Bayes

**Naive Bayes** is a probabilistic classification algorithm based on **Bayes' theorem**.

Bayes' theorem is:

**P(A|B) = P(B|A) P(A) / P(B)**

It calculates the probability of a class based on the observed features.

### Example: Spam Detection

```text
              Email
                ↓
        ┌──────────────┐
        │ Naive Bayes  │
        └──────┬───────┘
               ↓
       ┌───────┴────────┐
       ↓                ↓
 P(Spam) = 0.90   P(Not Spam) = 0.10
       ↓
     SPAM
```

If the probability of an email being spam is higher than being non-spam, it is classified as **Spam**.

### Applications

* Spam filtering
* Sentiment analysis
* Text classification
* Document classification

---

# 2. Bayesian Networks

A **Bayesian Network** is a probabilistic model that represents relationships between variables using a **directed graph**.

```text
      Rain
       ↓
    Wet Road
       ↑
       │
     Traffic
```

The nodes represent variables and the directed edges represent probabilistic dependencies between them.

### Example

The probability of a **wet road** depends on whether it is raining.

### Applications

* Medical diagnosis
* Risk analysis
* Decision support
* Fault diagnosis

---

# 3. Gaussian / Normal Distribution Models

A Gaussian model assumes that data follows a **normal distribution**.

```text
Probability
    ↑
    │           /\
    │          /  \
    │         /    \
    │________/______\________→ Value
               μ
```

It is useful when continuous data approximately follows a normal distribution.

### Examples

* Measurement analysis
* Statistical classification
* Anomaly detection

---

# 4. Hidden Markov Models (HMM)

A **Hidden Markov Model** is a probabilistic model used for systems where the actual state is **hidden**, but observable outputs are available.

```text
Hidden States:

   S1 ─────→ S2 ─────→ S3
    ↓         ↓         ↓
   O1        O2        O3

Observable Outputs
```

### Example

In speech recognition, the actual spoken word or phonetic state may be hidden, while the **sound signal** is observed.

### Applications

* Speech recognition
* Time-series analysis
* Activity recognition
* Natural Language Processing

---

# Geometric Model vs Probabilistic Model

Since **2023 and 2025** specifically ask for both, this comparison is important.

| Basis                   | Geometric Model                                      | Probabilistic Model                          |
| ----------------------- | ---------------------------------------------------- | -------------------------------------------- |
| **Basic Idea**          | Represents data as points in geometric space         | Represents uncertainty using probabilities   |
| **Main Concept**        | Distance, direction, boundaries                      | Probability and likelihood                   |
| **Data Representation** | Points/vectors                                       | Probability distributions                    |
| **Decision Making**     | Based on geometric relationships                     | Based on probability                         |
| **Common Models**       | KNN, SVM, PCA                                        | Naive Bayes, Bayesian Network, HMM           |
| **Example**             | SVM separates classes using a hyperplane             | Naive Bayes calculates probability of Spam   |
| **Main Use**            | Classification, regression, dimensionality reduction | Classification, prediction under uncertainty |

---

# Simple Difference

```text
GEOMETRIC MODEL
       ↓
Represent data as points
       ↓
Use distance / boundary
       ↓
Make prediction


PROBABILISTIC MODEL
       ↓
Represent uncertainty
       ↓
Calculate probabilities
       ↓
Make prediction
```

## Exam Conclusion

A **Geometric Model** makes predictions using the geometric properties of data such as **distance, direction, and decision boundaries**, whereas a **Probabilistic Model** uses **probability and statistical relationships** to handle uncertainty and predict outcomes. Examples of geometric models include **KNN and SVM**, while **Naive Bayes, Bayesian Networks, and Hidden Markov Models** are examples of probabilistic models.
