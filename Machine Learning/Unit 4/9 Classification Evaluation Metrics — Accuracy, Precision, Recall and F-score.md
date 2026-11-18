## **Topic 9: Classification Evaluation Metrics – Accuracy, Precision, Recall and F-score**

Topic 9 of Unit IV

Classification evaluation metrics are used to measure how well a classification model predicts the correct class labels.

The four important metrics are **Accuracy, Precision, Recall and F-score (F1-score)**.

### **Confusion Matrix**

A confusion matrix is a table used to evaluate the performance of a classification model by comparing actual values with predicted values.

For binary classification:

|                     | Predicted Positive  | Predicted Negative  |
| ------------------- | ------------------- | ------------------- |
| **Actual Positive** | True Positive (TP)  | False Negative (FN) |
| **Actual Negative** | False Positive (FP) | True Negative (TN)  |

- **True Positive (TP):** Model correctly predicts positive.
- **True Negative (TN):** Model correctly predicts negative.
- **False Positive (FP):** Model predicts positive, but actual class is negative.
- **False Negative (FN):** Model predicts negative, but actual class is positive.

### **Accuracy**

Accuracy measures the proportion of total predictions that are correctly classified.

\\[ Accuracy=\frac{TP+TN}{TP+TN+FP+FN} \\]

### **Precision**

Precision measures how many predicted positive observations are actually positive.

\\[ Precision=\frac{TP}{TP+FP} \\]

**Example:** Out of 100 emails predicted as spam, 90 are actually spam.

\\[ Precision=\frac{90}{100}=0.9=90\\% \\]

### **Recall**

Recall measures how many actual positive observations are correctly identified by the model.

\\[ Recall=\frac{TP}{TP+FN} \\]

**Example:** Out of 100 actual spam emails, the model correctly identifies 80.

\\[ Recall=\frac{80}{100}=0.8=80\\% \\]

### **F-score (F1-score)**

F-score combines Precision and Recall into a single evaluation metric. The commonly used F1-score is their harmonic mean.

\\[ F1=2\times\frac{Precision\times Recall}{Precision+Recall} \\]

**Example:** If Precision = 90% and Recall = 80%:

\\[ F1=2\times\frac{0.9\times0.8}{0.9+0.8} \\]

\\[ \boxed{F1=84.71\\%} \\]

### **Difference Between Evaluation Metrics**

| Metric    | Measures                             | Important when                                  |
| --------- | ------------------------------------ | ----------------------------------------------- |
| Accuracy  | Overall correct predictions          | Classes are reasonably balanced                 |
| Precision | Correctness of positive predictions  | False positives are costly                      |
| Recall    | Identification of actual positives   | False negatives are costly                      |
| F1-score  | Balance between precision and recall | Both false positives and false negatives matter |

### **Example of All Four Metrics**

Suppose a model gives the following results:

- TP = 80
- TN = 70
- FP = 20
- FN = 30

**Accuracy:**

\\[ =\frac{80+70}{80+70+20+30} =\frac{150}{200}=75\\% \\]

**Precision:**

\\[ =\frac{80}{80+20}=80\\% \\]

**Recall:**

\\[ =\frac{80}{80+30}=72.73\\% \\]

**F1-score:**

\\[ =2\times\frac{0.8\times0.7273}{0.8+0.7273} \approx76.19\\% \\]

Final Answers

| Metric    | Result |
| --------- | ------ |
| Accuracy  | 75%    |
| Precision | 80%    |
| Recall    | 72.73% |
| F1-score  | 76.19% |

### **Relevant PYQs**

**Nov/Dec 2023 – Q4(b) [8 Marks]**

*Explain i) Accuracy, ii) Precision, iii) Recall, and iv) F-Score.*

**May/June 2025 – Q3(c) [6 Marks]**

*Write short note on metrics for Evaluating classifier performance.*

**Nov/Dec 2023 – Q3(c) [4 Marks]**

*What is the relation between precision and recall? Explain with an example.*

**May/June 2023 – Q4(a) [6 Marks]**

*Calculate macro average precision, macro average recall and macro average F-score for the given multiclass confusion matrix.* This numerical will be covered under macro-average metrics.



Nov_Dec_2023 (3)(1).pdf

May_Jun_2025 (3)(1).pdf

May_Jun_2023 (3)(2).pdf



**Topic 9 completed.** Say **next** to study Topic 10: Cross-Validation and K-Fold Cross-Validation.