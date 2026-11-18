## **Topic 11: Micro-Average Precision, Recall and F-score**

Topic 11 of Unit IV

### **Definition**

Micro-Averaging is an evaluation technique used in multiclass classification. It calculates overall Precision, Recall and F-score by combining the total True Positives, False Positives and False Negatives across all classes.

It gives equal importance to every individual prediction rather than calculating a separate average for each class.

### **Micro-Average Precision**

Micro-average precision is calculated by dividing the total True Positives across all classes by the total True Positives and False Positives across all classes.

\\[ P\_{\text{micro}}= \frac{\sum TP}{\sum TP+\sum FP} \\]

### **Micro-Average Recall**

Micro-average recall is calculated by dividing the total True Positives across all classes by the total True Positives and False Negatives across all classes.

\\[ R\_{\text{micro}}= \frac{\sum TP}{\sum TP+\sum FN} \\]

### **Micro-Average F-score**

Micro-average F-score is the harmonic mean of micro-average precision and micro-average recall.

\\[ F1\_{\text{micro}}= 2\times\frac{P\_{\text{micro}}\times R\_{\text{micro}}} {P\_{\text{micro}}+R\_{\text{micro}}} \\]

### **Numerical Example**

Suppose a multiclass classification model has three classes: A, B and C.

The results are:

| Class     | TP     | FP     | FN     |
| --------- | ------ | ------ | ------ |
| A         | 40     | 10     | 5      |
| B         | 30     | 5      | 10     |
| C         | 20     | 5      | 5      |
| **Total** | **90** | **20** | **20** |

**Step 1: Calculate Micro-Average Precision**

\\[ P\_{\text{micro}}=\frac{90}{90+20} \\]

\\[ \boxed{P\_{\text{micro}}=81.82\\%} \\]

**Step 2: Calculate Micro-Average Recall**

\\[ R\_{\text{micro}}=\frac{90}{90+20} \\]

\\[ \boxed{R\_{\text{micro}}=81.82\\%} \\]

**Step 3: Calculate Micro-Average F-score**

\\[ F1\_{\text{micro}}= 2\times\frac{0.8182\times0.8182}{0.8182+0.8182} \\]

\\[ \boxed{F1\_{\text{micro}}=81.82\\%} \\]

Final Answers

| Metric          | Result |
| --------------- | ------ |
| Micro Precision | 81.82% |
| Micro Recall    | 81.82% |
| Micro F-score   | 81.82% |

*Note:* In single-label multiclass classification, micro-precision, micro-recall and micro-F1 are equal to overall accuracy.

### **Advantages**

- Considers all classes collectively.
- Useful for evaluating overall classification performance.
- Easy to calculate using total TP, FP and FN.
- Suitable when overall performance across individual predictions is important.

### **Limitation**

Micro-averaging can hide poor performance on minority classes because larger classes may contribute more predictions to the overall calculation.

### **Relevant PYQ**

Actual PYQ – 6 Marks

**Nov/Dec 2024 – Q6(c)**

*Micro-Average Precision and Recall, Micro-Average F-score.*

Nov_Dec_2024 (3)(1).pdf

**Exam tip:** Remember the three formulas and practise one numerical problem. In single-label multiclass classification, all three micro scores are equal.

**Topic 11 completed.** Say **next** to study Topic 12: Macro-Average Precision, Recall and F-score.