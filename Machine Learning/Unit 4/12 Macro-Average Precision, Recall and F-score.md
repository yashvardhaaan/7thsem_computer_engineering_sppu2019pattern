## **Topic 12: Macro-Average Precision, Recall and F-score**

**Macro averaging** is a technique used to evaluate a multiclass classification model by calculating the performance metrics separately for each class and then taking their arithmetic mean.

Unlike micro averaging, macro averaging gives **equal importance to every class**, irrespective of the number of samples in each class.

### **Formulas**

For \\(N\\) classes:

**Macro Precision**

\\[ P\_{macro}=\frac{P_1+P_2+\cdots+P_N}{N} \\]

**Macro Recall**

\\[ R\_{macro}=\frac{R_1+R_2+\cdots+R_N}{N} \\]

**Macro F-score**

\\[ F1\_{macro}=\frac{F1_1+F1_2+\cdots+F1_N}{N} \\]

Where the F1-score for each class is:

\\[ F1_i=\frac{2P_iR_i}{P_i+R_i} \\]

### **Solved example – SPPU PYQ**

May/June 2023 · Q4(a) · 6 Marks

Calculate macro-average precision, macro-average recall and macro-average F-score for the following confusion matrix.

| Actual / Predicted | A   | B  | C  | D  |
| ------------------ | --- | -- | -- | -- |
| A                  | 100 | 80 | 10 | 10 |
| B                  | 0   | 9  | 0  | 1  |
| C                  | 0   | 1  | 8  | 1  |
| D                  | 0   | 1  | 0  | 9  |

**Step 1: Calculate class-wise precision and recall**

\\[ Precision=\frac{TP}{TP+FP} \\]

\\[ Recall=\frac{TP}{TP+FN} \\]

| Class | Precision | Recall |
| ----- | --------- | ------ |
| A     | 1.0000    | 0.5000 |
| B     | 0.0989    | 0.9000 |
| C     | 0.4444    | 0.8000 |
| D     | 0.4286    | 0.9000 |

**Step 2: Calculate class-wise F1-score**

\\[ F1=\frac{2\times P\times R}{P+R} \\]

| Class | F1-score |
| ----- | -------- |
| A     | 0.6667   |
| B     | 0.1782   |
| C     | 0.5714   |
| D     | 0.5806   |

**Step 3: Calculate macro averages**

Macro Precision:

\\[ =\frac{1+0.0989+0.4444+0.4286}{4} \\]

\\[ =\boxed{0.4930=49.30\\%} \\]

Macro Recall:

\\[ =\frac{0.5+0.9+0.8+0.9}{4} \\]

\\[ =\boxed{0.775=77.5\\%} \\]

Macro F-score:

\\[ =\frac{0.6667+0.1782+0.5714+0.5806}{4} \\]

\\[ =\boxed{0.4992=49.92\\%} \\]

Final Answer

- **Macro Precision = 49.30%**
- **Macro Recall = 77.50%**
- **Macro F-score = 49.92%**

### **Advantages and limitations**

**Advantages**

- Gives equal importance to all classes.
- Useful for imbalanced datasets.
- Helps identify poor performance on minority classes.

**Limitations**

- Does not consider class frequency.
- A poorly performing minority class can significantly reduce the overall macro score.

### **Important exam point**

Do not calculate Macro F1 by taking the harmonic mean of Macro Precision and Macro Recall. Calculate each class's F1-score first, then take their arithmetic mean.

**Remember:** Macro averaging = Calculate separately for each class → Take the average.

This is the **12th and final topic** in the Unit IV syllabus you shared.