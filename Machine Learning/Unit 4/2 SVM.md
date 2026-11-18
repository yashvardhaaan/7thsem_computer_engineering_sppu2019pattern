## **Topic 2: Support Vector Machine (SVM)**

Topic 2 of Unit IV

### **Definition**

Support Vector Machine (SVM) is a supervised machine learning algorithm used for **classification and regression**.

It works by finding an optimal decision boundary called a **hyperplane** that separates data points belonging to different classes with the maximum possible margin.

### **Important Terms**

- **Hyperplane:** A decision boundary that separates different classes.
- **Support Vectors:** Data points closest to the hyperplane. They determine the position of the boundary.
- **Margin:** Distance between the hyperplane and the nearest data points of each class.
- **Optimal Hyperplane:** The hyperplane that maximises the margin between classes.

### **Working of SVM**

1. Take labelled training data containing different classes.
2. Plot the data points in the feature space.
3. Identify possible hyperplanes that separate the classes.
4. Find the support vectors closest to the hyperplane.
5. Select the hyperplane with the maximum margin.
6. Use this hyperplane to classify new data points.

[Support Vector Machine : How and What ? |                 cylab.be](https://images.openai.com/static-rsc-4/ycEafdh3gaEVMmzh08Edc2e64WoxNyS_NtH48BAzPAFTbWFCcCMe7JbZwYQJAo36utP8Gdlg7z4DBlX7WYH5w1iOZ_30dSw4SM7Bq6LF8D5u3j0ps1PlNhjUwR8QD5ZuZE7_MzopLIr9ecja3g9azDJBWxZNxT3ys2rM7IkJW7c?purpose=inline)

[cylab.be](https://cylab.be/blog/204/support-vector-machine-how-and-what?utm_source=chatgpt.com)

### **Types of SVM**

**Linear SVM:** Used when data can be separated using a straight line in 2D or a linear hyperplane in higher dimensions.

**Non-Linear SVM:** Used when data cannot be separated by a straight line. It uses kernel functions to transform data into a higher-dimensional feature space.

### **Kernel Functions**

A kernel function helps SVM handle non-linear data by calculating relationships between data points in a transformed feature space.

| Kernel         | Explanation                                                |
| -------------- | ---------------------------------------------------------- |
| Linear         | Used for linearly separable data                           |
| Polynomial     | Handles curved decision boundaries                         |
| RBF (Gaussian) | Handles complex non-linear patterns                        |
| Sigmoid        | Similar to the activation function used in neural networks |

### **SVM Mathematical Equation**

The equation of a hyperplane is:

\\[ w^Tx+b=0 \\]

Where:

- \\(w\\) = Weight vector
- \\(x\\) = Input feature vector
- \\(b\\) = Bias

The main objective of SVM is to maximise the margin between the classes.

### **Advantages**

- Effective in high-dimensional spaces.
- Works well with clear margin separation.
- Can handle non-linear classification using kernels.
- Uses support vectors, making the decision boundary dependent on important training points.

### **Disadvantages**

- Training can be slow for large datasets.
- Choosing the correct kernel is difficult.
- Sensitive to parameter selection.
- Performance may decrease when classes overlap significantly.

### **Applications**

- Face detection.
- Text classification.
- Spam email detection.
- Handwriting recognition.
- Medical image classification.

### **Relevant PYQs**

**May/June 2023 – Q3(a) [5 Marks]**

*Explain Support Vector Regression (SVR).*

SVR is the regression version of SVM. It finds a function that predicts continuous values while allowing errors within a specified margin called the epsilon-insensitive tube. It aims to keep the model as flat as possible while minimising prediction errors outside this tube.

**Nov/Dec 2024 – Q3(a) [6 Marks]**

*Explain different kernel methods suitable for SVM.*

Answer by explaining Linear, Polynomial, RBF and Sigmoid kernels with their uses.

**Topic 2 completed.** Say **next** to study Topic 3: Ensemble Learning.