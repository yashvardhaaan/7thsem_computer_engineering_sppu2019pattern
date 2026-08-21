# Introduction to Machine Learning — Detailed Exam Answer

## 1. What is Machine Learning? Explain applications of Machine Learning in Data Science. [5 Marks]

### Definition

**Machine Learning (ML)** is a branch of **Artificial Intelligence (AI)** that enables computers to **learn from data, identify patterns, and make predictions or decisions without being explicitly programmed for every task**.

In traditional programming, rules are given to the computer and the computer produces an output. In machine learning, **data and expected results are used to learn a model**, which can then predict the output for new data.

### Basic Working of Machine Learning

```text
             Training Data
        ┌─────────────────────┐
        │ Input Data + Output │
        │      Examples       │
        └──────────┬──────────┘
                   ↓
        ┌─────────────────────┐
        │ Machine Learning    │
        │     Algorithm       │
        └──────────┬──────────┘
                   ↓
        ┌─────────────────────┐
        │   Trained Model     │
        └──────────┬──────────┘
                   ↓
              New Data
                   ↓
        ┌─────────────────────┐
        │ Prediction / Result │
        └─────────────────────┘
```

### Applications of Machine Learning in Data Science

1. **Prediction and Forecasting**
   ML is used to predict future values such as sales, stock prices, weather, and product demand.

2. **Classification**
   It classifies data into predefined categories.
   **Example:** Classifying emails as **Spam** or **Not Spam**.

3. **Recommendation Systems**
   ML analyzes user behavior and recommends relevant products, movies, songs, or videos.
   **Example:** Netflix and Amazon recommendations.

4. **Fraud Detection**
   ML identifies unusual patterns in financial transactions and helps detect fraudulent activities.

5. **Customer Segmentation**
   Customers can be grouped according to their behavior, interests, purchasing patterns, etc.

6. **Natural Language Processing**
   ML is used to understand and process human language in chatbots, translation, sentiment analysis, and voice assistants.

7. **Image and Pattern Recognition**
   ML can recognize objects, faces, handwriting, and other patterns in images.

### Example

Suppose a company has previous data about **house size and house price**:

```text
House Size ────────┐
                   │
Location ──────────┤
                   │──→ ML Model ──→ Predicted Price
Bedrooms ──────────┤
                   │
Age of House ──────┘
```

The ML model learns the relationship between these features and house prices. When information about a **new house** is provided, the model predicts its price.

### Conclusion

Thus, Machine Learning is an important part of Data Science because it helps **analyze large datasets, discover patterns, automate decision-making, and make accurate predictions**.

---

# 2. What is Machine Learning? Compare Supervised Learning with Unsupervised Learning. [5 Marks]

### Definition

**Machine Learning** is a field of Artificial Intelligence that allows computers to **learn automatically from data and improve their performance through experience without being explicitly programmed**.

Machine Learning can broadly be divided into **Supervised Learning** and **Unsupervised Learning**.

## Supervised Learning

In **Supervised Learning**, the model is trained using **labelled data**, where both the input and the correct output are already known.

The model learns the relationship between input and output and uses this relationship to predict the output for new data.

### Diagram

```text
       Labelled Training Data
       ┌──────────────────────┐
       │ Input → Correct      │
       │         Output       │
       └──────────┬───────────┘
                  ↓
        ┌─────────────────┐
        │ ML Algorithm    │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │ Trained Model   │
        └────────┬────────┘
                 ↓
             New Input
                 ↓
        ┌─────────────────┐
        │ Predicted Output│
        └─────────────────┘
```

### Types

* **Classification:** Predicts a category.

  * Example: Spam / Not Spam
* **Regression:** Predicts a continuous numerical value.

  * Example: House price prediction

---

## Unsupervised Learning

In **Unsupervised Learning**, the model is trained using **unlabelled data**. There is no predefined output given to the model.

The algorithm tries to **discover hidden patterns, relationships, or groups** within the data.

### Diagram

```text
          Unlabelled Data
       ┌────────────────────┐
       │ ● ● ●  ▲ ▲ ▲       │
       │ ● ● ●  ▲ ▲ ▲       │
       │        ■ ■ ■       │
       └─────────┬──────────┘
                 ↓
        ┌─────────────────┐
        │ ML Algorithm    │
        └────────┬────────┘
                 ↓
       ┌──────────────────┐
       │ Discovered Groups│
       │ / Patterns       │
       └──────────────────┘
```

### Example

A shopping company may have customer information but no predefined customer categories.

```text
Customer Data
      ↓
Unsupervised ML
      ↓
┌─────────┬─────────┬─────────┐
│ Group 1 │ Group 2 │ Group 3 │
│ Budget  │ Regular │ Premium │
│ Buyers  │ Buyers  │ Buyers  │
└─────────┴─────────┴─────────┘
```

The algorithm automatically discovers these groups based on similarities in customer behavior.

---

## Comparison

| Basis               | Supervised Learning              | Unsupervised Learning             |
| ------------------- | -------------------------------- | --------------------------------- |
| **Training Data**   | Labelled data                    | Unlabelled data                   |
| **Output**          | Known during training            | Not known                         |
| **Main Purpose**    | Predict output                   | Find hidden patterns              |
| **Major Tasks**     | Classification, Regression       | Clustering, Association           |
| **Learning Method** | Learns input-output relationship | Finds similarities and structures |
| **Example**         | Spam detection                   | Customer segmentation             |
| **Result**          | Predicted value/class            | Discovered groups/patterns        |

### Simple Difference

```text
SUPERVISED                         UNSUPERVISED

Input + Correct Output             Only Input
        ↓                                ↓
   ML Algorithm                    ML Algorithm
        ↓                                ↓
 Learn relationship                Find patterns
        ↓                                ↓
 Predict output                    Create groups
```

### Conclusion

**Supervised Learning** learns from **labelled data** to predict known outputs, whereas **Unsupervised Learning** works with **unlabelled data** to discover hidden patterns and structures. Both are important techniques used in Machine Learning and Data Science.
