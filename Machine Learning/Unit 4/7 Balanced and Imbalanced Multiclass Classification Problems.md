## **Topic 7: Balanced and Imbalanced Multiclass Classification**

Topic 7 of Unit IV

### **Balanced Multiclass Classification**

A balanced multiclass classification problem is one in which the number of training samples is approximately equal for every class.

**Example:** A dataset contains 300 images of fruits:

| Class     | Number of samples |
| --------- | ----------------- |
| Apple     | 100               |
| Banana    | 100               |
| Orange    | 100               |
| **Total** | **300**           |

Here, all three classes have equal representation. Therefore, it is a balanced dataset.

### **Imbalanced Multiclass Classification**

An imbalanced multiclass classification problem occurs when the number of samples in each class is significantly different.

**Example:** A dataset contains 1,000 medical records:

| Class     | Number of samples |
| --------- | ----------------- |
| Disease A | 800               |
| Disease B | 150               |
| Disease C | 50                |
| **Total** | **1,000**         |

Here, Disease A has many more samples than Disease C. Therefore, the dataset is imbalanced.

### **Causes of Imbalanced Classification**

- Unequal distribution of classes in the original dataset.
- Rare events, such as fraud or uncommon diseases.
- Limited availability of samples for minority classes.
- Data collection or sampling bias.

### **Problems Caused by Imbalanced Data**

- The model becomes biased towards the majority class.
- Minority classes may be incorrectly classified.
- Overall accuracy can be misleading.
- Important rare events may go undetected.

### **Techniques for Handling Imbalanced Data**

**1. Oversampling**

Increases the number of samples in minority classes.

Example: If Class A has 800 samples and Class C has 50 samples, additional samples are generated for Class C.

**2. Undersampling**

Reduces the number of samples in majority classes to balance the dataset.

Example: Reduce Class A from 800 samples to 100 samples.

**3. SMOTE (Synthetic Minority Over-sampling Technique)**

Generates synthetic minority-class samples using existing minority-class observations and their nearest neighbours.

**4. Class Weighting**

Assigns higher weights to minority classes so that classification errors involving those classes receive greater importance during training.

**5. Appropriate Evaluation Metrics**

Use precision, recall, F1-score and macro-average metrics instead of depending only on accuracy.

### **Difference Between Balanced and Imbalanced Classification**

| Balanced Classification                                          | Imbalanced Classification                  |
| ---------------------------------------------------------------- | ------------------------------------------ |
| Classes have approximately equal samples.                        | Classes have unequal samples.              |
| Less bias towards a particular class due to sample distribution. | Model may favour majority classes.         |
| Accuracy can be useful.                                          | Accuracy alone can be misleading.          |
| Usually requires less class rebalancing.                         | May require oversampling or undersampling. |

### **Relevant PYQ**

Actual PYQ – 6 Marks

**May/June 2025 – Q4(b)**

*Write short note on handling imbalance data in multiclass classification.*

**Exam-ready answer:** Define imbalanced classification, explain its causes and problems, and describe oversampling, undersampling, SMOTE, class weighting and suitable evaluation metrics.

May_Jun_2025 (3)(1).pdf

**Topic 7 completed.** Say **next** to study Topic 8: Variants of Multiclass Classification — One-vs-One (OvO) and One-vs-All (OvA).