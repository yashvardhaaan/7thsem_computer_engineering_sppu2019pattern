## **Topic 6: Binary vs Multiclass Classification**

Topic 6 of Unit IV

### **Definition of Classification**

Classification is a supervised machine learning technique used to predict the category or class label of new data based on previously labelled training data.

Classification problems are mainly divided into two types: Binary Classification and Multiclass Classification.

### **Binary Classification**

Binary classification is a classification problem in which the output contains **only two possible classes**.

Examples:

- Email: Spam or Not Spam.
- Medical diagnosis: Disease or No Disease.
- Loan application: Approved or Rejected.
- Transaction: Fraudulent or Genuine.

**Working:**

1. Train the model using labelled data containing two classes.
2. The model learns patterns that distinguish the classes.
3. Provide new input data.
4. The model predicts one of the two possible classes.

[Machine Learning cơ bản](https://images.openai.com/static-rsc-4/_rCgbLf1L45K8G3AebpJoNM0_dIsW7roH2HU41VwA-1v7q4ZkBG6jQyWqwRImbZ0EaAXjTF4PCN-VFIZcuF-NQK05XgxCFr6m9BmtrPcqkoilV0OOXkfaEIYbMBSyWQ8TY8Cbyz4ui5dmtu7JpqNUT8AbP3Kud1_V3qUNzQAn-U?purpose=inline)

[machinelearningcoban.com](https://machinelearningcoban.com/page5/?utm_source=chatgpt.com)

### **Multiclass Classification**

Multiclass classification is a classification problem in which the output contains **more than two possible classes**.

Examples:

- Fruit classification: Apple, Banana, Orange.
- Animal classification: Cat, Dog, Horse.
- Handwritten digit recognition: 0 to 9.
- Weather prediction: Sunny, Rainy, Cloudy.

**Working:**

1. Train the model using labelled data containing multiple classes.
2. The model learns patterns associated with each class.
3. Provide new input data.
4. The model predicts one class from all available classes.

[A Visual Understanding of the Softmax Function | by Reza Bagheri | TDS Archive | Medium](https://images.openai.com/static-rsc-4/qcto0qMZ1mvFM_8tdXL2uNqsVfOzSE12ZoJMJj8HWdJ6jru0_pS8hWVwWzml1f4roCVgTtnvkiduS783ktUWIIPyYJ0BwIP31pfNFdOoMyQBXs1_GIOp5OLPcs47s_VBcftpJ8o2YVlm5lSznk2kGAItCendIlJrECeXcDMXkMk?purpose=inline)

[medium.com](https://medium.com/data-science/a-visual-understanding-of-the-softmax-function-b4d92fdaccfa?utm_source=chatgpt.com)

### **Difference Between Binary and Multiclass Classification**

| Binary Classification                  | Multiclass Classification                                 |
| -------------------------------------- | --------------------------------------------------------- |
| Contains two classes.                  | Contains more than two classes.                           |
| Predicts one of two labels.            | Predicts one among multiple labels.                       |
| Comparatively simpler.                 | Generally more complex.                                   |
| Example: Spam/Not Spam.                | Example: Cat/Dog/Horse.                                   |
| Uses binary classification algorithms. | Can use OvA and OvO strategies with suitable classifiers. |

### **Advantages of Classification**

- Helps automate decision-making.
- Identifies patterns in labelled data.
- Useful in prediction and categorisation.
- Supports applications in healthcare, finance and security.

### **Relevant PYQs**

**May/June 2025 – Q3(a) [5 Marks]**

*Differentiate between Binary and Multiclass Classification.*

**Nov/Dec 2023 – Q4(a) [5 Marks]**

*Explain Multiclass Classification and its variants.*

The variants of multiclass classification—One-vs-One and One-vs-All—are covered in the next topic.

**Exam tip:** For a 5-mark answer, write both definitions, two examples each and a comparison table.

**Topic 6 completed.** Say **next** to study Topic 7: Balanced and Imbalanced Multiclass Classification Problems.