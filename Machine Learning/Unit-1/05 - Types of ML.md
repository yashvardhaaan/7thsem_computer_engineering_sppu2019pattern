# Types of Machine Learning

### PYQs — 2022 + 2023

**Types of Machine Learning — Supervised, Unsupervised, Semi-Supervised, etc. with examples.**

Machine Learning can be classified based on **how the model learns from data**. The major types are:

```text
                    MACHINE LEARNING
                           │
          ┌────────────────┼────────────────┐
          ↓                ↓                ↓
     Supervised       Unsupervised    Reinforcement
      Learning          Learning         Learning
          │                │                │
          ↓                ↓                ↓
   Labeled Data       Unlabeled Data   Reward / Penalty
          
                    ┌────────────────┐
                    ↓
              Semi-Supervised
                 Learning
                    │
                    ↓
          Small Labeled + Large
             Unlabeled Data
```

---

## 1. Supervised Learning

**Supervised Learning** is a type of ML in which the model is trained using **labelled data**. Each training example contains both the **input and the correct output**.

The model learns the relationship between input and output and uses it to predict the output for new data.

### Diagram

```text
     Labelled Training Data
     ┌─────────────────────┐
     │ Input → Correct      │
     │         Output       │
     └──────────┬──────────┘
                ↓
         ML Algorithm
                ↓
          Trained Model
                ↓
            New Input
                ↓
         Predicted Output
```

### Types of Supervised Learning

**a) Classification:**
Predicts a category or class.

**Example:**
Classifying an email as **Spam** or **Not Spam**.

**b) Regression:**
Predicts a continuous numerical value.

**Example:**
Predicting the **price of a house** based on its area, location, and number of rooms.

### Other Examples

* Disease classification
* Credit risk prediction
* Student result prediction

---

# 2. Unsupervised Learning

**Unsupervised Learning** is a type of ML in which the model is trained using **unlabelled data**. There is no predefined correct output.

The algorithm discovers **hidden patterns, similarities, or groups** in the data.

### Diagram

```text
        Unlabelled Data
              ↓
        ML Algorithm
              ↓
     ┌────────┼────────┐
     ↓        ↓        ↓
  Group A   Group B   Group C
```

### Main Techniques

**a) Clustering:**
Groups similar data points together.

**Example:**
An e-commerce company groups customers into **low-, medium-, and high-spending customers** based on purchasing behavior.

**b) Association:**
Discovers relationships between items.

**Example:**
A supermarket discovers that customers who buy **bread** often buy **butter**.

### Other Examples

* Customer segmentation
* Pattern discovery
* Market basket analysis

---

# 3. Semi-Supervised Learning

**Semi-Supervised Learning** uses a combination of **small amounts of labelled data and large amounts of unlabelled data**.

It is useful when obtaining labelled data is expensive or time-consuming, but large amounts of unlabelled data are easily available.

### Diagram

```text
       Training Data
             │
      ┌──────┴──────┐
      ↓             ↓
 Labelled Data   Unlabelled Data
   (Small)          (Large)
      └──────┬──────┘
             ↓
       ML Algorithm
             ↓
        Trained Model
```

### Example

Suppose there are **10,000 images**:

* 1,000 images are labelled.
* 9,000 images are unlabelled.

The model uses both types of data to improve its learning.

**Applications:**

* Image classification
* Speech recognition
* Web page classification

---

# 4. Reinforcement Learning

**Reinforcement Learning (RL)** is a type of ML in which an **agent learns by interacting with an environment**.

The agent performs actions and receives **rewards or penalties** based on its actions. Through repeated interaction, it learns a strategy that maximizes the total reward.

### Diagram

```text
              Environment
             ↑          │
             │          │
          Reward       Action
             │          ↓
             └────── Agent
                     │
                     ↓
                  Learns
               better actions
```

### Example

A robot learning to navigate a room:

* Reaches the destination → **Reward**
* Hits an obstacle → **Penalty**
* After repeated attempts → learns the best path.

### Applications

* Game playing
* Robotics
* Autonomous vehicles
* Resource management

---

# 5. Self-Supervised Learning

**Self-Supervised Learning** is a learning approach where the system creates **labels automatically from the available data** instead of requiring humans to label every example.

The data itself provides the learning signal.

### Example

In language processing, a model may be given:

```text
"The sun rises in the ____."
```

The model learns to predict the missing word from the surrounding words.

Self-supervised learning is widely used in **modern language and vision models**.

---

# Comparison of Types of Machine Learning

| Type                | Data Used                                 | Main Idea                              | Example              |
| ------------------- | ----------------------------------------- | -------------------------------------- | -------------------- |
| **Supervised**      | Labelled                                  | Predict known output                   | Spam detection       |
| **Unsupervised**    | Unlabelled                                | Find hidden patterns                   | Customer clustering  |
| **Semi-Supervised** | Small labelled + large unlabelled         | Learn using both                       | Image classification |
| **Reinforcement**   | Rewards / penalties                       | Learn through interaction              | Game-playing robot   |
| **Self-Supervised** | Data with automatically generated targets | Learn representations from data itself | Language modeling    |

## Easy Way to Remember

```text
Supervised       → Teacher gives answers
Unsupervised     → No teacher; find patterns
Semi-Supervised  → Few answers + many unanswered examples
Reinforcement    → Learn through reward and penalty
Self-Supervised  → Data creates its own learning signal
```

### Conclusion

The major types of Machine Learning are **Supervised, Unsupervised, Semi-Supervised, and Reinforcement Learning**. Self-supervised learning is also an important modern learning approach. The choice of learning type depends on the **availability of labelled data and the nature of the problem**.


# Supervised vs Unsupervised Learning

### PYQs

* **2022 + 2025:** Compare Supervised Learning and Unsupervised Learning.

## Supervised Learning

**Supervised Learning** is a type of Machine Learning in which the model learns from **labelled data**, where both input and the correct output are provided.

The model learns the relationship between input and output and uses it to predict the output for new data.

### Diagram

```text
        Labelled Data
      Input + Correct Output
               │
               ↓
       ┌───────────────┐
       │ ML Algorithm  │
       └───────┬───────┘
               ↓
        Trained Model
               │
               ↓
          New Input
               │
               ↓
       Predicted Output
```

### Examples

* **Classification:** Email → Spam / Not Spam
* **Regression:** House features → House price

---

# Unsupervised Learning

**Unsupervised Learning** is a type of Machine Learning in which the model learns from **unlabelled data**. No correct output is provided.

The algorithm identifies **hidden patterns, similarities, relationships, or groups** within the data.

### Diagram

```text
        Unlabelled Data
               │
               ↓
       ┌───────────────┐
       │ ML Algorithm  │
       └───────┬───────┘
               ↓
       Hidden Patterns
          /    |    \
         ↓     ↓     ↓
      Group A Group B Group C
```

### Examples

* **Clustering:** Grouping customers based on purchasing behavior.
* **Association:** Finding products frequently purchased together.

---

## Comparison

| Basis              | Supervised Learning              | Unsupervised Learning             |
| ------------------ | -------------------------------- | --------------------------------- |
| **Data**           | Labelled data                    | Unlabelled data                   |
| **Output**         | Known during training            | Not known                         |
| **Objective**      | Predict output                   | Discover patterns                 |
| **Main Tasks**     | Classification, Regression       | Clustering, Association           |
| **Learning**       | Learns input-output relationship | Finds similarities and structures |
| **Human Guidance** | Higher                           | Lower                             |
| **Example**        | Spam detection                   | Customer segmentation             |
| **Result**         | Predicted class/value            | Groups/patterns                   |

### Key Difference

> **Supervised Learning learns from labelled data to predict an output, whereas Unsupervised Learning works with unlabelled data to discover hidden patterns or structures.**

---

# Supervised vs Reinforcement Learning

### PYQ — 2024

**Compare Supervised Learning and Reinforcement Learning.**

> **Note:** Keep this comparison separate from Supervised vs Unsupervised because **Reinforcement Learning is based on interaction, rewards, and penalties**, not simply labelled/unlabelled data.

## Supervised Learning

Supervised Learning trains a model using **labelled training examples**. The correct answer is provided during training, allowing the model to learn the relationship between input and output.

```text
     Input + Correct Output
              │
              ↓
       ML Algorithm
              │
              ↓
       Trained Model
              │
              ↓
         Prediction
```

**Example:**
Training an email classifier using emails labelled **Spam** and **Not Spam**.

---

## Reinforcement Learning

**Reinforcement Learning (RL)** is a type of Machine Learning where an **agent learns by interacting with an environment**.

The agent performs actions and receives **rewards or penalties**. It learns through repeated interaction to select actions that maximize the total reward.

```text
             Environment
            ↗           ↘
       Reward             Action
          ↑                 ↓
          └────── Agent ────┘
                    │
                    ↓
                 Learns
              best action
```

**Example:**
A robot learns to reach a destination. Moving toward the destination may give a reward, while hitting an obstacle may give a penalty.

---

## Comparison

| Basis                | Supervised Learning                     | Reinforcement Learning                  |
| -------------------- | --------------------------------------- | --------------------------------------- |
| **Learning Method**  | Learns from labelled examples           | Learns through interaction              |
| **Training Data**    | Labelled dataset                        | Experience from environment             |
| **Correct Answer**   | Provided                                | Not directly provided                   |
| **Feedback**         | Correct output/error                    | Reward or penalty                       |
| **Learning Process** | Learns input-output mapping             | Learns best actions/policy              |
| **Interaction**      | Usually no interaction with environment | Continuous interaction with environment |
| **Main Objective**   | Minimize prediction error               | Maximize cumulative reward              |
| **Main Tasks**       | Classification, Regression              | Sequential decision-making              |
| **Example**          | Spam detection                          | Robot navigation                        |
| **Applications**     | Image classification, price prediction  | Robotics, games, autonomous systems     |

### Key Difference

```text
SUPERVISED LEARNING
       ↓
Learn from labelled examples
       ↓
Predict correct output


REINFORCEMENT LEARNING
       ↓
Interact with environment
       ↓
Receive reward / penalty
       ↓
Learn the best action
```

### Conclusion

**Supervised Learning learns from labelled data where the correct output is known, whereas Reinforcement Learning learns through interaction with an environment using rewards and penalties to improve its actions.**
