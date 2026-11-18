# **Unit VI – Introduction to Neural Networks**

**Syllabus:** Artificial Neural Networks (ANN), Single Layer Neural Network, Multilayer Perceptron, Back Propagation Learning, Functional Link Artificial Neural Network, Radial Basis Function Network, Activation Functions, Recurrent Neural Networks and Convolutional Neural Networks.

We will follow the same approach as Unit V:

- One topic at a time.
- Exam-oriented theory, diagrams, formulas and examples.
- Exact PYQs from your uploaded SPPU papers, including year, question number and marks.
- At the end of each topic, you can type **next**.

## **Topic 1: Artificial Neural Networks – Introduction and Single Layer Neural Network**

## **1. Artificial Neural Network (ANN)**

An **Artificial Neural Network (ANN)** is a computational model inspired by the working of the human brain. It consists of interconnected processing units called **neurons**, which learn patterns from data and produce outputs.

ANN is used for classification, prediction, pattern recognition and many other machine-learning tasks.

### **Biological neuron vs artificial neuron**

[Artificial Neural Networks: A Complete Beginner's Guide - Wasil Zafar](https://images.openai.com/static-rsc-4/cxXwkCCjWWX_ujO2lutwJPdZIlewWRmTYXh4m6vFyZTXPLHvTLVQLWivl5GOGCeDjXMWbtLaLxV2rlwIckOlAtJiBDYLAjPt76g6i62ZJjEu4FVUYe1RtctbV9yySI6U0Qr7P1X6z2iDqqsz1gAaLXNWUnM4z34kUvi1v4m6tX4?purpose=inline)

[wasilzafar.com](https://www.wasilzafar.com/pages/series/ai-data-science/artificial-neural-networks-guide.html?utm_source=chatgpt.com)

A biological neuron receives signals through dendrites, processes them in the cell body and sends signals through its axon.

An artificial neuron receives inputs, multiplies them by weights, adds a bias, applies an activation function and produces an output.

## **2. Architecture of ANN**

[Human Walking Gait Classification Utilizing an Artificial Neural Network for the Ergonomics Study of Lower Limb Prosthetics](https://images.openai.com/static-rsc-4/8ikclYrnPRQRF4WIED3nXWWJiB3HnYOpRmnJxJsi_2JETxLUUQmPKDS0YOYVkf7SCsgw4zRzgrGDxYJoxmHDR5M_VnrubHp68Hxoyk1VbTHjFzD3RmVsWCQXY_xmNC9lN914MWS4Sxk9tBLDJMCwh9dPbVWnATKrxzYEwPCxjAg?purpose=inline)

[mdpi.com](https://www.mdpi.com/2673-1592/5/3/46?utm_source=chatgpt.com)

The main components are:

1. **Input layer:** Receives input data such as age, salary, marks or images.
2. **Hidden layer:** Processes input data using weights, biases and activation functions.
3. **Output layer:** Produces the final prediction or classification.

Other important components:

- **Weights:** Represent the strength of connections between neurons.
- **Bias:** An additional adjustable parameter that shifts the neuron's output.
- **Activation function:** Determines the output of a neuron.
- **Learning rate:** Controls how much weights are updated during training.

## **3. Working of an Artificial Neuron**

An artificial neuron performs the following operations:

1. Receives input values.
2. Multiplies each input by its corresponding weight.
3. Adds all weighted inputs and bias.
4. Passes the result through an activation function.
5. Produces the final output.

### **Mathematical representation**

\\[ net=\sum\_{i=1}^{n}w_ix_i+b \\]

\\[ y=f(net) \\]

Where:

- \\(x_i\\) = Input values.
- \\(w_i\\) = Weights.
- \\(b\\) = Bias.
- \\(f\\) = Activation function.
- \\(y\\) = Output.

## **4. Single Layer Neural Network**

A **Single Layer Neural Network** is an artificial neural network in which input neurons are directly connected to output neurons without any hidden layer.

It is one of the simplest forms of neural networks.

[How a Single Perceptron Works: A Simple Math-Driven Example | by nivash | Medium](https://images.openai.com/static-rsc-4/jBM0ArG1rFowBovYhFMEol7RXrGeZC8A-2wwD1pZbaGYAl7iWSOR6f_ygKWDqTO7sWBQDhkITvpjdV0De7qNja92a6_CF34JG-SQ1-KkNStSH4rXiNEIlBg1C9zVjQL-vSvJBl3zpiagQyDehw-girojQAbtGXWjdhjfpsXUZhw?purpose=inline)

[medium.com](https://medium.com/%40iamnivash.b/how-a-single-perceptron-works-a-simple-math-driven-example-614fb59527d5?utm_source=chatgpt.com)

### **Architecture**

- Input layer receives the data.
- Weights connect the input neurons to output neurons.
- Output neurons calculate the weighted sum.
- An activation function generates the final output.

**Important:** The input layer is not counted as a computational layer. A single-layer network has one layer of trainable weights connecting inputs to outputs.

### **Working of Single Layer Neural Network**

1. Provide input values to the network.
2. Multiply inputs by their corresponding weights.
3. Calculate the weighted sum.
4. Add the bias.
5. Apply the activation function.
6. Generate the output.

### **Formula**

\\[ net=\sum\_{i=1}^{n}w_ix_i+b \\]

\\[ y=f\left(\sum\_{i=1}^{n}w_ix_i+b\right) \\]

### **Example**

Suppose a neuron receives two inputs:

- \\(x_1=1\\)
- \\(x_2=0\\)
- \\(w_1=0.5\\)
- \\(w_2=0.3\\)
- \\(b=0.2\\)

Using the sigmoid activation function:

\\[ net=(1\times0.5)+(0\times0.3)+0.2 \\]

\\[ net=0.7 \\]

\\[ y=\frac{1}{1+e^{-0.7}} \\]

\\[ \boxed{y\approx0.668} \\]

Thus, the neuron produces an output of approximately 0.668.

## **5. Perceptron**

A **Perceptron** is the basic building block of a neural network. It is a single artificial neuron used mainly for binary classification.

The perceptron uses a threshold activation function to classify inputs into two categories.

\\[ y= \begin{cases} 1 & \text{if } net\geq 0\\\ 0 & \text{if } net<0 \end{cases} \\]

### **Perceptron Learning Rule**

The weights are updated using:

\\[ w_i(new)=w_i(old)+\eta(t-y)x_i \\]

Bias update:

\\[ b(new)=b(old)+\eta(t-y) \\]

Where:

- \\(\eta\\) = Learning rate.
- \\(t\\) = Target output.
- \\(y\\) = Predicted output.
- \\(x_i\\) = Input value.

The learning process continues until the network classifies the training examples correctly or a stopping condition is reached.

## **6. Advantages**

1. Simple architecture and easy implementation.
2. Requires less computational power than deeper networks.
3. Useful for basic classification problems.
4. Easy to understand and train.

## **7. Limitations**

1. Cannot solve non-linearly separable problems such as XOR using a single perceptron.
2. Cannot learn complex patterns effectively.
3. Has limited representation capability.
4. Cannot learn hierarchical features like multilayer networks.

## **8. Applications**

- Basic pattern recognition.
- Binary classification.
- Simple decision-making systems.
- Basic prediction problems.
- AND and OR logic gate implementation.

## **9. PYQs from your uploaded SPPU papers**

Direct and related PYQs

| Exam          | Question                                                                           | Marks |
| ------------- | ---------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2023  | Q7(a): Write a note on Single Layer Neural Network.                                | 4     |
| Nov/Dec 2022  | Q7(a): Explain ANN with its Architecture.                                          | 5     |
| Nov/Dec 2022  | Q8(a): Explain in brief types of ANN based on layers.                              | 5     |
| May/June 2023 | Q8(a): Explain artificial neural network based on perceptron concept with diagram. | 6     |

**Important exam preparation:** The direct 4-mark Single Layer Neural Network question appeared in Nov/Dec 2023. Prepare its architecture, working, formula, perceptron and limitations.

**Next topic: Multilayer Perceptron (MLP)** — architecture, hidden layers, working, forward propagation and why multilayer networks are more powerful than single-layer networks.

Type **next** to continue.