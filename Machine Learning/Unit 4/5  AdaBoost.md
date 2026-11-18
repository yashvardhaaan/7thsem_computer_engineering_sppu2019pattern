## **Topic 5: AdaBoost (Adaptive Boosting)**

Topic 5 of Unit IV

### **Definition**

AdaBoost (Adaptive Boosting) is an ensemble machine learning algorithm that combines multiple weak learners to create a strong classifier.

It works by training models sequentially, where each new model gives more attention to the incorrectly classified data points from previous models.

It is mainly used for classification problems.

### **Working of AdaBoost**

1. Initially, assign equal weights to all training data points.
2. Train the first weak classifier, usually a decision stump (a decision tree with one split).
3. Calculate the classification error of the classifier.
4. Increase the weights of incorrectly classified data points and decrease the relative importance of correctly classified points.
5. Train the next weak classifier using the updated weights.
6. Repeat the process for a specified number of iterations.
7. Combine all weak classifiers using weighted voting to obtain the final prediction.

[Gradient Boosting](https://images.openai.com/static-rsc-4/VBx8BL7LEdFGY2zsOcZvpI8rOuja_TtK_wnM5ow-lLs-YUzWhJx4dHcogoEtFU7XotPEI1h2T2tM_GNrOIzKxNzZNFgYRAMoVuR0gilVzRAYQzh5qXwpeUbLnnuRGKUNeB6pyolgtQWUeY3spu4oaIxMwttGZKEUYBG3loyzjc8?purpose=inline)

[arunp77.github.io](https://arunp77.github.io/gradient_boosting.html?utm_source=chatgpt.com)

### **Important Terms**

- **Weak Learner:** A model that performs slightly better than random guessing.
- **Decision Stump:** A decision tree having only one split.
- **Sample Weight:** Importance assigned to each training data point.
- **Weighted Voting:** Final prediction is calculated by combining predictions according to each classifier's importance.

### **Example**

Suppose an AdaBoost model uses three weak classifiers to classify emails.

| Classifier   | Prediction | Weight |
| ------------ | ---------- | ------ |
| Classifier 1 | Spam       | 0.5    |
| Classifier 2 | Not Spam   | 0.3    |
| Classifier 3 | Spam       | 0.7    |

Weighted votes:

- Spam = 0.5 + 0.7 = 1.2
- Not Spam = 0.3

Therefore, the final prediction is **Spam**.

### **Advantages**

- Improves the performance of weak learners.
- Focuses on incorrectly classified observations.
- Can produce high classification accuracy.
- Simple models can be combined to create a strong model.

### **Disadvantages**

- Sensitive to noisy data and outliers.
- Sequential training can take more time.
- Performance depends on the quality of weak learners.
- Incorrectly labelled data can affect the model significantly.

### **Applications**

- Face detection.
- Spam email classification.
- Fraud detection.
- Medical diagnosis.
- Text classification.

### **Relevant PYQ**

**May/June 2023 – Q4(b) [6 Marks]**

*Write a short note on Random Forest and AdaBoost.*

For the AdaBoost portion, write its definition, sequential working, example, advantages and disadvantages.

**May/June 2025 – Q4(c) [6 Marks]**

*Explain Bagging and Boosting.*

AdaBoost is an example of Boosting because it trains weak learners sequentially and focuses on previous classification errors.

**Exam tip:** Remember the key difference:

- Random Forest → Multiple trees trained independently.
- AdaBoost → Weak learners trained sequentially, focusing on previous errors.

**Topic 5 completed.** Say **next** to study Topic 6: Binary vs Multiclass Classification.