# **Unit VI – Topic 6: Activation Functions**

Very important – repeated PYQs

## **1. What is an Activation Function?**

An **activation function** is a mathematical function applied to the weighted sum of inputs of an artificial neuron to determine its output.

It decides whether a neuron should be activated and introduces **non-linearity** into a neural network.

Without activation functions, even a multilayer neural network would behave like a linear model, limiting its ability to learn complex patterns.

### **Mathematical representation**

First, calculate the weighted sum:

\\[ net=\sum\_{i=1}^{n}w_ix_i+b \\]

Then apply the activation function:

\\[ y=f(net) \\]

Where:

- \\(x_i\\) = input
- \\(w_i\\) = weight
- \\(b\\) = bias
- \\(f\\) = activation function
- \\(y\\) = neuron output

## **2. Types of Activation Functions**

### **1. Binary Step Function**

[Fundamentals of Deep Learning — Activation Functions and When to Use Them? | by Sindhu Seelam | Medium](https://images.openai.com/static-rsc-4/f8j07jfv9I00kvyM6Ci-jiZy2SfdqfPX-Y0sIAQ7iB94yieYVmz7ISoreNq7AllCvTfZjZsslwddDI0_wgxCgQTxXB_50Vxz1Fy221OhBNRUw7SDm-3oLWsBTQZpLBOgPg24TM1_Da2VGi0C-Vf6TKfc9c_Scj5FsshGRiS2_-k?purpose=inline)

[medium.com](https://medium.com/%40sindhuseelam/fundamentals-of-deep-learning-activation-functions-and-when-to-use-them-e7d8e2cb231b?utm_source=chatgpt.com)

It produces either 0 or 1 depending on whether the input crosses a threshold.

\\[ f(x)= \begin{cases} 1 & x\geq 0\\\ 0 & x<0 \end{cases} \\]

**Example:**

- Input = 5 → Output = 1
- Input = -2 → Output = 0

**Advantages:**

- Simple to understand.
- Useful for basic perceptron models.

**Disadvantages:**

- Not differentiable at the threshold.
- Not suitable for gradient-based backpropagation.

### **2. Linear Activation Function**

[activation functions, part 3 : linear and softplus for regression output layer in dl | by Sirine Amrane | Medium](https://images.openai.com/static-rsc-4/B6hZHXYodW9nw1tsLPinuJy7TZs5F8gOdoxpZil7FFLBoxq4y1bmb8-yjicHiCEZpO-mHhHi1cIfNPGYK4z4GqJXd_Ljrc7ZVh9EeGyZhG06HNsrx2ItOLTENQ4eSBpXosRhlLWGWe06zoeA2DZ5xX4w190Zw9ppPRVAXNPx5QU?purpose=inline)

[sirineamrane.medium.com](https://sirineamrane.medium.com/activation-functions-part-3-linear-and-softplus-for-regression-output-layer-in-ml-4f47366b41a6?utm_source=chatgpt.com)

Output is directly proportional to the input.

\\[ f(x)=x \\]

**Example:**

If \\(x=5\\), then \\(f(x)=5\\).

**Advantages:**

- Simple computation.
- Useful for regression output layers.

**Disadvantages:**

- Cannot introduce non-linearity.
- Multiple linear layers still behave like one linear transformation.

### **3. Binary Sigmoid Function**

[Medium](https://images.openai.com/static-rsc-4/YFJBdDquttwOcH0SuzbxcEyUFJhB46g2fNiHfZWeLbZhu3fJQ0BdTh2CifyxXb80ta-MC8_jrUGjroCtNLk7b2cKDCX95JZqWmQ9yzc2wGGa5DzJz0XWn_hKCMvVMnwJFqNr7Yw9wHlavlbxrfdN0YBIs8F68C0uX-O6656xRsE?purpose=inline)

[medium.com](https://medium.com/%40surisettikrishna17/activation-functions-in-neural-networks-explained-sigmoid-tanh-relu-leaky-relu-and-softmax-7518167f1dc6?utm_source=chatgpt.com)

It converts any real-valued input into a value between 0 and 1.

\\[ f(x)=\frac{1}{1+e^{-x}} \\]

**Example:**

For \\(x=0\\):

\\[ f(0)=\frac{1}{1+e^0}=0.5 \\]

**Advantages:**

- Smooth and differentiable.
- Output can be interpreted as a probability in suitable models.
- Useful for binary classification output layers.

**Disadvantages:**

- Suffers from vanishing gradients for very large positive or negative inputs.
- Not zero-centred.

### **4. Bipolar Sigmoid Function**

[BiPolar Sigmoid | Datumorphism | L Ma](https://images.openai.com/static-rsc-4/RnfZ4x16VabuILOCnt1gS1ItnorP-61dTShsI32SAB7IQ8vydNyWhe4QeSHZWI5wbuVOP8Sd9ZaTj_0YswCz1hTWC_jn6pP02iiQvfjyJh56ylN0bUtHzttgzLX5PB4ATI7j9FX-nnMzOj7TjmY9aiVKAp8q4drmWZIvwY9OoGU?purpose=inline)

[datumorphism.leima.is](https://datumorphism.leima.is/cards/machine-learning/neural-networks/activation-bi-polar-sigmoid/?utm_source=chatgpt.com)

It produces outputs between -1 and +1.

\\[ f(x)=\frac{2}{1+e^{-x}}-1 \\]

**Example:**

For \\(x=0\\):

\\[ f(0)=\frac{2}{1+1}-1=0 \\]

**Advantages:**

- Output is zero-centred.
- Smooth and differentiable.
- Useful in neural network learning.

**Disadvantages:**

- Can suffer from vanishing gradients.
- More computationally expensive than simple step or linear functions.

### **5. Hyperbolic Tangent (Tanh)**

[Vanishing Gradients: Why RNNs Fail on Long Sequences - Interactive | Michael Brenndoerfer | Michael Brenndoerfer](https://images.openai.com/static-rsc-4/ih_FWV5h4UcEpb10Gz0Jw7UjPrYiMcr8ZdFUQoKbHraJMsDn2bcBMwVAvZ4eO9BYaZkUiTrPTrCkQC3wqpgyuGzn6y23LNEVWtE7oF9nouOGpz74wruGubvu7JNs3ViwGlwrKU5rNjvwyoFzVcxZuoVIQZpAn1xrjkHdYuBzG1c?purpose=inline)

[mbrenndoerfer.com](https://mbrenndoerfer.com/writing/vanishing-gradients-rnn-long-range-dependencies?utm_source=chatgpt.com)

Tanh maps input values into the range -1 to +1.

\\[ f(x)=\tanh(x) \\]

It can also be written as:

\\[ f(x)=\frac{e^x-e^{-x}}{e^x+e^{-x}} \\]

**Example:**

\\[ \tanh(0)=0 \\]

**Advantages:**

- Zero-centred output.
- Nonlinear and differentiable.
- Often useful in recurrent neural networks.

**Disadvantages:**

\- Suffers from vanishing gradients at extreme values.

### **6. ReLU (Rectified Linear Unit)**

[The ReLU Activation Function: Powering Modern Neural Networks | CodeSignal Learn](https://images.openai.com/static-rsc-4/SsWK5_KdhRGV8XC8nISLjiljWg9WzEf8aFK0gnu8FkP07DHcwOer8w6DJ6JCpK1ukUnvMiEQTxgXcCq_1iqlms9eh0h7kOL9vTQZrsIPDajoRCBF_l6xL5jbD1BXnluHmBc7RjIIEtfn7nn0wjbjUi9y4a1pFHK6cTou6WYfM1Q?purpose=inline)

[codesignal.com](https://codesignal.com/learn/courses/the-mlp-architecture-activations-initialization/lessons/the-relu-activation-function-powering-modern-neural-networks-1?utm_source=chatgpt.com)

ReLU outputs zero for negative values and the input itself for positive values.

\\[ f(x)=\max(0,x) \\]

**Example:**

- Input = -5 → Output = 0
- Input = 4 → Output = 4

**Advantages:**

- Computationally efficient.
- Helps reduce the vanishing gradient problem for positive inputs.
- Commonly used in hidden layers of deep neural networks.

**Disadvantages:**

- Can suffer from the dying ReLU problem.
- Not differentiable at exactly zero.

### **7. Softmax Function**

Softmax converts a vector of values into probabilities whose sum equals 1.

\\[ f(z_i)=\frac{e^{z_i}}{\sum\_{j=1}^{K}e^{z_j}} \\]

**Example:** If a classification model predicts three class scores, Softmax converts them into probabilities for the three classes.

**Advantages:**

- Useful for multiclass classification.
- Produces a probability distribution.
- Makes class selection straightforward.

**Disadvantages:**

- Sensitive to large score differences.
- Usually used at the output layer, not as a general hidden-layer activation.

## **3. Comparison of Activation Functions**

| Function        | Output range                   | Common use                        |
| --------------- | ------------------------------ | --------------------------------- |
| Binary Step     | 0 to 1                         | Basic perceptron                  |
| Linear          | \\(-\infty\\) to \\(+\infty\\) | Regression output                 |
| Binary Sigmoid  | 0 to 1                         | Binary classification             |
| Bipolar Sigmoid | -1 to +1                       | Neural network learning           |
| Tanh            | -1 to +1                       | RNNs, hidden layers               |
| ReLU            | 0 to \\(+\infty\\)             | Deep neural network hidden layers |
| Softmax         | 0 to 1 (sum = 1)               | Multiclass classification         |

## **4. Importance of Activation Functions**

1. Introduce non-linearity into neural networks.
2. Help networks learn complex patterns.
3. Control the output of neurons.
4. Help in classification and prediction.
5. Enable neural networks to model complicated relationships.
6. Differentiable activation functions support gradient-based learning.

## **5. How to Choose an Activation Function?**

| Situation                              | Recommended function |
| -------------------------------------- | -------------------- |
| Hidden layer in a typical deep network | ReLU                 |
| Binary classification output           | Sigmoid              |
| Multiclass classification output       | Softmax              |
| Regression output                      | Linear               |
| RNN hidden state                       | Tanh (commonly used) |

## **6. Important SPPU PYQs**

| Exam          | Question                                                                               | Marks |
| ------------- | -------------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2023  | Q8(c): “What is Activation Function? Explain with a suitable example.”                 | 4     |
| May/June 2023 | Q8(c): “Discuss any two activation functions with example.”                            | 5     |
| May/June 2024 | Q7(b): “What are different activation function used is NN?”                            | 6     |
| Nov/Dec 2024  | Q7(b): “What are different activation function used in NN?”                            | 6     |
| May/June 2025 | Q7(a): “Write short note on importance of Activation function used in Neural Network.” | 5     |



Exam preparation tip

&#x20;Memorise the formulas and output ranges of Sigmoid, Bipolar Sigmoid, Tanh and ReLU. Practise drawing their graphs. These are especially useful for 5–6 mark answers.



**Next topic: Recurrent Neural Networks (RNN)** — architecture, working, feedback connections, sequence processing and applications. Say **next** to continue.