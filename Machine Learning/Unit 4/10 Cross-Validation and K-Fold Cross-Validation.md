## **Topic 10: Cross-Validation and K-Fold Cross-Validation**

Topic 10 of Unit IV

### **Definition of Cross-Validation**

Cross-validation is a model evaluation technique used to estimate how well a machine learning model performs on unseen data.

It divides the available dataset into multiple subsets and uses different subsets for training and validation.

It helps to identify overfitting and check whether a model generalises well to new data.

### **K-Fold Cross-Validation**

K-Fold Cross-Validation is a technique in which the dataset is divided into K approximately equal-sized folds.

The model is trained K times. In each iteration, one fold is used for testing or validation, while the remaining K−1 folds are used for training.

### **Working of K-Fold Cross-Validation**

1. Divide the dataset into K equal-sized folds.
2. Select the first fold for validation.
3. Train the model using the remaining K−1 folds.
4. Evaluate the model on the selected fold.
5. Repeat the process until every fold has been used for validation once.
6. Calculate the average of all K evaluation scores.

[5.4.3 Cross-Validation | AI Roads](https://images.openai.com/static-rsc-4/cYqKCNENlmohmft07xhIgwEDCw5nWyP83T8FXJU-ZFtziLcdoTqSEkQ6ORyl4OeoTNPrS_i_PFqiVsPxHW-xMPuxRnCGHVrsQg98SrMFe1resRtVPNdDF0VntLMGgZZisTKgt5WNTJqd0EeFvUFXWzPbU0-eur4yMj7fymXPRxo?purpose=inline)

[airoads.org](https://airoads.org/ch05-machine-learning/ch04-evaluation/02-cross-validation/?utm_source=chatgpt.com)

### **Example**

Suppose a dataset contains 100 records and we choose K = 5.

Each fold contains 20 records.

| Iteration | Training Data    | Validation Data |
| --------- | ---------------- | --------------- |
| 1         | Folds 2, 3, 4, 5 | Fold 1          |
| 2         | Folds 1, 3, 4, 5 | Fold 2          |
| 3         | Folds 1, 2, 4, 5 | Fold 3          |
| 4         | Folds 1, 2, 3, 5 | Fold 4          |
| 5         | Folds 1, 2, 3, 4 | Fold 5          |

Suppose the validation accuracies are:

- Fold 1 = 80%
- Fold 2 = 85%
- Fold 3 = 90%
- Fold 4 = 75%
- Fold 5 = 90%

Average accuracy:

\\[ =\frac{80+85+90+75+90}{5} \\]

\\[ \boxed{84\\%} \\]

Therefore, the average cross-validation accuracy is 84%.

### **Choosing the Value of K**

- **K = 5:** Common choice; provides a balance between computation and evaluation reliability.
- **K = 10:** Commonly used for more extensive evaluation.
- **K = N:** Called Leave-One-Out Cross-Validation (LOOCV), where each observation is used once for validation.

### **When K Is Too Large**

- Each training set contains almost all observations.
- Computational cost increases because the model is trained many times.
- Validation sets become very small.
- Evaluation estimates may have higher variability.

### **When K Is Too Small**

- Each training set contains fewer observations.
- The model may not learn the complete data patterns.
- Performance estimates may be less reliable.
- Results may depend heavily on how the data is divided.

### **Advantages**

- Makes efficient use of available data.
- Helps detect overfitting.
- Provides a more reliable estimate than a single train-test split.
- Every observation gets an opportunity to be used for validation.

### **Disadvantages**

- Requires training the model multiple times.
- Computationally expensive for large datasets.
- Results depend on the choice of K and data splitting method.

### **Relevant PYQ**

Actual PYQ – 9 Marks

**Nov/Dec 2023 – Q4(a)**

*What is K-fold cross-validation? In K-fold cross-validation, comment on the following situations:*

1. When the value of K is too large.
2. When the value of K is too small.
3. How do you decide the value of K in K-fold cross-validation?

Nov_Dec_2023 (3)(1).pdf

**Exam tip:** For this 9-mark question, explain the definition, working with a diagram, example, effects of large and small K, and selection of K.

**Topic 10 completed.** Say **next** to study Topic 11: Micro-Average Precision, Recall and F-score.