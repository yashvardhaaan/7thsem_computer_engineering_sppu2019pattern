## **Topic 4: Random Forest**

Topic 4 of Unit IV

### **Definition**

Random Forest is a supervised machine learning algorithm based on **Ensemble Learning and Bagging**. It combines multiple decision trees to produce a more accurate and reliable prediction.

It can be used for both classification and regression problems.

### **Working of Random Forest**

1. Select random samples from the original dataset using bootstrap sampling.
2. Create multiple decision trees using these samples.
3. At each split, select a random subset of features.
4. Each decision tree independently makes a prediction.
5. Combine predictions from all decision trees.
6. For classification, use majority voting. For regression, use the average prediction.

[Machine Learning With Random Forest Classifier](https://images.openai.com/static-rsc-4/pOgYl7cVnmGt4Tiv9qy5UXM-q65G6aBHv046R0Yl93yxeXUHQ4K2BqLbFo6gMavyQRk2FPc_MF4J0jS8VNQs6JSvFKLx1hjhVM66GiAkMfmWb0OKpeCLfdWZA7FfoHR69tilVVOtzps-AvU_rXXlRi2bNBcUTw8peIexhvE6Gm0?purpose=inline)

[shyamnivas.hashnode.dev](https://shyamnivas.hashnode.dev/machine-learning-with-random-forest-classifier?utm_source=chatgpt.com)

### **Example**

Suppose a Random Forest contains five decision trees predicting whether an email is spam or not.

| Decision Tree | Prediction |
| ------------- | ---------- |
| Tree 1        | Spam       |
| Tree 2        | Spam       |
| Tree 3        | Not Spam   |
| Tree 4        | Spam       |
| Tree 5        | Not Spam   |

Final prediction:

- Spam = 3 votes
- Not Spam = 2 votes

Therefore, the Random Forest predicts **Spam**.

### **Important Features**

- Uses multiple decision trees.
- Uses bootstrap sampling.
- Uses random feature selection.
- Combines predictions through majority voting or averaging.
- Reduces variance compared to relying on a single decision tree.

### **Advantages**

- Provides good prediction accuracy.
- Reduces overfitting compared with a single decision tree.
- Handles large datasets and many features.
- Can be used for classification and regression.
- Works with complex relationships in data.

### **Disadvantages**

- Requires more memory and computation.
- Training and prediction can be slower than a single decision tree.
- Less interpretable than an individual decision tree.
- May not perform well on extremely sparse, high-dimensional data without suitable tuning.

### **Applications**

- Fraud detection.
- Disease prediction.
- Credit risk analysis.
- Customer churn prediction.
- Stock market analysis.

### **Relevant PYQs**

**May/June 2023 – Q4(b) [6 Marks]**

*Write a short note on Random Forest and AdaBoost.*

For Random Forest, explain its definition, working, example and advantages. AdaBoost will be covered in the next topic.

**Nov/Dec 2024 – Q4(c) [6 Marks]**

*Explain Random Forest with a neat diagram and example.*

For this question, draw the diagram showing multiple decision trees receiving data and their outputs combining into a final prediction.

**Exam tip:** Remember: Random Forest = Bagging + Multiple Decision Trees + Random Feature Selection + Voting/Averaging.

**Topic 4 completed.** Say **next** to study Topic 5: AdaBoost.