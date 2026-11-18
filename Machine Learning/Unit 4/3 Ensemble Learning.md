## **Topic 3: Ensemble Learning**

Topic 3 of Unit IV

### **Definition**

Ensemble Learning is a machine learning technique that combines multiple individual models (called **weak learners or base learners**) to produce a stronger and more accurate predictive model.

Instead of depending on a single model, ensemble learning combines predictions from several models to improve performance, accuracy and reliability.

### **Working of Ensemble Learning**

1. Select a dataset.
2. Train multiple machine learning models.
3. Each model makes its own prediction.
4. Combine the predictions using voting, averaging or another combination method.
5. Generate the final prediction.

[A machine learning technique for estimating the zeta potential of clay minerals under various brine conditions | Clays and Clay Minerals | Cambridge Core](https://images.openai.com/static-rsc-4/ija9x29Lka6mznBRebq8L-CWCelyQtqI2T-54vvS2cbRvpNkuDRF7a2J5uXHGWutq0dSnIuksFM0FnnmbKdlwb_TcDtagcgDcro-srGel487L2u8__a8HWNedB1p-Advn79mw3nfWBhOFBBRWF0spIhTO20OS5OZCg5HpiYSWsM?purpose=inline)

[cambridge.org](https://www.cambridge.org/core/journals/clays-and-clay-minerals/article/abs/machine-learning-technique-for-estimating-the-zeta-potential-of-clay-minerals-under-various-brine-conditions/A4A7F7F8A21D65F125C50E857D3C2634?utm_source=chatgpt.com)

### **Types of Ensemble Learning**

The two major techniques are:

**1. Bagging (Bootstrap Aggregating)**

Bagging is an ensemble technique in which multiple models are trained independently on different random samples of the original dataset.

- Uses sampling with replacement.
- Models are trained in parallel.
- Predictions are combined using majority voting for classification.
- Averaging is used for regression.
- Helps reduce variance and overfitting.

Example: Random Forest.

**2. Boosting**

Boosting is an ensemble technique in which models are trained sequentially. Each new model focuses more on the errors made by previous models.

- Models are trained sequentially.
- Incorrectly predicted observations receive greater attention or weight.
- Predictions are combined to produce the final result.
- Helps reduce bias and improve predictive performance.

Examples: AdaBoost, Gradient Boosting and XGBoost.

### **Advantages**

- Improves prediction accuracy.
- Reduces overfitting in suitable ensemble methods.
- Combines the strengths of multiple models.
- Provides more reliable predictions.
- Can improve performance on complex datasets.

### **Disadvantages**

- Requires more computational resources.
- Training can take more time.
- Models can be difficult to interpret.
- Boosting may be sensitive to noisy data and outliers.

### **Applications**

- Fraud detection.
- Medical diagnosis.
- Financial forecasting.
- Spam detection.
- Customer behaviour prediction.

### **Important PYQs**

**May/June 2023 – Q3(b) [6 Marks]**

*Explain Ensemble Learning and differentiate between Bagging and Boosting.*

**May/June 2025 – Q3(b) [6 Marks]**

*Explain Ensemble Learning with an example.*

**Exam-ready difference: Bagging vs Boosting**

| Bagging                     | Boosting                               |
| --------------------------- | -------------------------------------- |
| Models train independently. | Models train sequentially.             |
| Uses bootstrap samples.     | Focuses on previous prediction errors. |
| Training can be parallel.   | Training is generally sequential.      |
| Mainly reduces variance.    | Mainly reduces bias.                   |
| Uses voting or averaging.   | Combines weighted predictions.         |
| Example: Random Forest.     | Example: AdaBoost.                     |

**Exam tip:** For a 6-mark answer, write the definition, working, types, one example and the Bagging vs Boosting table if asked.

**Topic 3 completed.** Say **next** to study Topic 4: Random Forest.