## **Topic 8: Variants of Multiclass Classification – One-vs-All and One-vs-One**

Topic 8 of Unit IV

### **Definition**

Multiclass classification is a problem in which a machine learning model classifies data into more than two classes.

Some classification algorithms, such as SVM, are naturally designed for binary classification. Therefore, two strategies are used to extend binary classifiers to multiclass problems:

1. One-vs-All (OvA), also called One-vs-Rest (OvR).
2. One-vs-One (OvO).

### **One-vs-All (OvA)**

One-vs-All is a multiclass classification technique in which one binary classifier is trained for each class.

Each classifier separates one class from all the remaining classes.

**Working:**

1. Consider a dataset containing K classes.
2. Create K binary classifiers.
3. Each classifier treats one class as positive and all other classes as negative.
4. Train each classifier independently.
5. For a new input, calculate the prediction score from every classifier.
6. Select the class with the highest score.

**Example:**

Suppose we have three classes: Apple, Banana and Orange.

| Classifier   | Classification             |
| ------------ | -------------------------- |
| Classifier 1 | Apple vs (Banana + Orange) |
| Classifier 2 | Banana vs (Apple + Orange) |
| Classifier 3 | Orange vs (Apple + Banana) |

If the highest prediction score is from Classifier 2, the final prediction is Banana.

[Assignment 6 for CSE 415 (Spring 2021)](https://images.openai.com/static-rsc-4/CZrC1MOV-50tOkhYGB_BtvWOIyyNsUmHWXBR-t3-yZDQOdFkpP8jXGhYw7QiidLRHgU8_Waq0bTKUyfN4wGQ0NHXQiGBZwqw1G0VaT1m5E8TUiY456BcQiHbGkggMrZBq85jEArIihoJrmXe5XMQS0GrOJSIsM2s3dXiVBdytyo?purpose=inline)

[courses.cs.washington.edu](https://courses.cs.washington.edu/courses/cse415/21sp/assign/a6/A6.html?utm_source=chatgpt.com)

**Number of classifiers:**

\\[ N=K \\]

Where K is the total number of classes.

### **One-vs-One (OvO)**

One-vs-One is a multiclass classification technique in which a separate binary classifier is trained for every possible pair of classes.

Each classifier distinguishes between only two classes.

**Working:**

1. Consider a dataset containing K classes.
2. Create a binary classifier for every possible pair of classes.
3. Train each classifier using data from its two selected classes.
4. Each classifier predicts one of the two classes.
5. Combine predictions using majority voting.
6. The class receiving the maximum votes becomes the final prediction.

**Example:**

Suppose we have three classes: Apple, Banana and Orange.

| Classifier   | Classification   |
| ------------ | ---------------- |
| Classifier 1 | Apple vs Banana  |
| Classifier 2 | Apple vs Orange  |
| Classifier 3 | Banana vs Orange |

If Apple receives the highest number of votes, the final prediction is Apple.

[Machine Learning: Multiclass Strategy for Binary classifier | by Andrew | Medium](https://images.openai.com/static-rsc-4/sdtWSY-F9LwzGrQuQOE_D67f-vECMrNSs8qXy4ZS22V8V9ZRx5GsYd9siXIFtbneKGSCs5PGQg56EEwk3_zUp-CIFYsaFOyx2GJ1gb8WG-SIifhyqcIhcLS0sXLkHU2lowijB0oagsjiQWoWaAmrBlcq6gJnvCz5QviCyivmgvg?purpose=inline)

[medium.com](https://medium.com/%40andrew12271997/machine-learning-multiclass-strategy-for-binary-classifier-a7442bbf57f6?utm_source=chatgpt.com)

**Number of classifiers:**

\\[ N=\frac{K(K-1)}{2} \\]

Where K is the total number of classes.

For K = 3:

\\[ N=\frac{3(3-1)}{2}=3 \\]

### **Difference Between One-vs-All and One-vs-One**

| One-vs-All (OvA)                                              | One-vs-One (OvO)                                        |
| ------------------------------------------------------------- | ------------------------------------------------------- |
| One class is compared with all other classes.                 | Two classes are compared at a time.                     |
| Creates K classifiers.                                        | Creates K(K−1)/2 classifiers.                           |
| Uses positive and negative class grouping.                    | Uses pairwise classification.                           |
| Each classifier uses the complete dataset with binary labels. | Each classifier uses samples from two selected classes. |
| Final prediction uses the highest score.                      | Final prediction generally uses majority voting.        |
| Fewer classifiers for large K.                                | Number of classifiers increases rapidly with K.         |

### **Advantages**

**OvA:**

- Simple to implement.
- Requires fewer classifiers.
- Computationally efficient when the number of classes is large.

**OvO:**

- Each classifier solves a simpler binary problem.
- Each classifier focuses on two classes.
- Can work effectively with binary classifiers such as SVM.

### **Relevant PYQs**

Actual PYQs

**May/June 2023 – Q3(c) [6 Marks]**

*What are different variants of multiclass classification? Explain them with suitable example.*

**Nov/Dec 2024 – Q4(a) [5 Marks]**

*What is Multi Class Classification? Explain the variants of Multi Class Classification.*

**Nov/Dec 2023 – Q4(a) [5 Marks]**

*Explain Multiclass Classification and its variants.*



May_Jun_2023 (3)(2).pdf

Nov_Dec_2024 (3)(1).pdf

May_Jun_2024 (3)(2).pdf



**Exam tip:** Memorise these two formulas:

\\[ \boxed{\text{OvA}=K} \\]

\\[ \boxed{\text{OvO}=\frac{K(K-1)}{2}} \\]

**Topic 8 completed.** Say **next** to study Topic 9: Classification Evaluation Metrics — Accuracy, Precision, Recall and F-score.