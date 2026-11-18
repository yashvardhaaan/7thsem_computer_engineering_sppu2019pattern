We’ll cover **Unit IV – Supervised Learning: Classification** one topic at a time, in syllabus order.

For every topic, I’ll provide:

- Exam-oriented notes with definitions and explanations.
- Examples, diagrams or formulas wherever needed.
- Relevant PYQs with exam session, question number and marks.
- A ready-to-write answer for the exam.

I’ll keep the notes concise and organised under the main topic, without unnecessary subheadings.

## **Topic 1: K-Nearest Neighbours (KNN)**

Topic 1 of Unit IV

### **Definition**

K-Nearest Neighbours (KNN) is a **supervised machine learning algorithm** used for classification and regression. It classifies a new data point based on the majority class of its K nearest neighbours.

It is called a lazy learning algorithm because it does not build an explicit model during training. Instead, it stores the training data and performs calculations when a new prediction is required.

### **Working of KNN**

1. Select the value of K (number of neighbours).
2. Calculate the distance between the new data point and all training data points.
3. Sort the distances in ascending order.
4. Select the K nearest neighbours.
5. For classification, assign the majority class among those neighbours.
6. For regression, calculate the average value of the K neighbours.

### **Distance Metrics**

The most commonly used distance metric is Euclidean distance.

**Euclidean Distance:**

\\[ d=\sqrt{\sum\_{i=1}^{n}(x_i-y_i)^2} \\]

For two-dimensional data:

\\[ d=\sqrt{(x_2-x_1)^2+(y_2-y_1)^2} \\]

Other distance metrics include:

- Manhattan Distance: Sum of absolute differences.
- Minkowski Distance: Generalised distance metric.
- Hamming Distance: Counts the number of differing positions; useful for categorical or binary data.

### **Example**

Suppose the three nearest neighbours of a new student are:

| Neighbour | Result |
| --------- | ------ |
| Student 1 | Pass   |
| Student 2 | Pass   |
| Student 3 | Fail   |

If K = 3, the majority class is Pass.

Therefore, KNN predicts that the new student will **Pass**.

### **Choosing the value of K**

- Small K: More sensitive to noise and may overfit.
- Large K: May ignore local patterns and underfit.
- Odd values of K are often preferred in binary classification to reduce ties.
- The best K can be selected using cross-validation.

### **Advantages**

- Simple and easy to understand.
- No explicit training phase.
- Supports multiclass classification.
- Works well for smaller datasets.

### **Disadvantages**

- Prediction becomes slow for large datasets.
- Requires more memory to store training data.
- Sensitive to irrelevant features and feature scaling.
- Performance may decrease with high-dimensional data.

### **Applications**

- Handwriting recognition.
- Recommendation systems.
- Medical diagnosis.
- Image classification.
- Pattern recognition.

### **Relevant PYQ**

**Nov/Dec 2024 – Q3(b) [6 Marks]**

*Explain the advantages and disadvantages of KNN.*

**Answer:** Write the definition, working, followed by the advantages and disadvantages listed above.

**Nov/Dec 2024 – Q3(c) [5 Marks]**

*Explain the different distance metrics used in KNN.*

**Answer:** Explain Euclidean, Manhattan, Minkowski and Hamming distances with their formulas or examples.

**Topic 1 completed.** Say **next** to study Topic 2: Support Vector Machine (SVM).