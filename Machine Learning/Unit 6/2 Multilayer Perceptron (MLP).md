# **Unit VI – Topic 2: Multilayer Perceptron (MLP)**

High-priority exam topic

## **1. What is a Multilayer Perceptron?**

A **Multilayer Perceptron (MLP)** is a feed-forward artificial neural network consisting of an input layer, one or more hidden layers, and an output layer.

Unlike a single-layer neural network, an MLP can learn complex and non-linear relationships using multiple layers of interconnected neurons.

It generally uses backpropagation learning to adjust its weights during training.

## **2. Architecture of MLP**

[When One Layer Isn’t Enough: Building Multi-Layer Perceptrons from Scratch | Deep Learning 3 | by Bit_Picker | Everyday AI | Jan, 2026 | Medium](https://images.openai.com/static-rsc-4/ph6r-Oj_Euqo97wMecK6vAa5zwJbAXbBWST0upvFlpu2g1vhIfCsXab0U1mzmlNenK61zHD72PbAwB_TAreeQYhhBr2dFKAFUL4myRSwIlGYs4mSypABvjAsVJmpE21FTnn1mibLvhu3cBHtPQxTlKKeCYauUdzlHlxLHrWIB-g?purpose=inline)

[medium.com](https://medium.com/everyday-ai/when-one-layer-isnt-enough-building-multi-layer-perceptrons-from-scratch-deep-learning-3-35a8487e8954?utm_source=chatgpt.com)

MLP consists of three main types of layers:

1\. **Input Layer**

- Receives input features.
- Passes input values to the next layer.
- Does not normally perform computation.

2\. **Hidden Layer**

- Performs weighted calculations.
- Applies activation functions.
- Learns complex patterns from the input data.
- An MLP can contain one or multiple hidden layers.

3\. **Output Layer**

- Produces the final prediction.
- Its activation function depends on the task, such as classification or regression.

## **3. Working of MLP**

MLP works through forward propagation and learning through weight adjustment.

**Step 1: Input**

Input data is supplied to the input layer.

**Step 2: Weighted Sum**

Each neuron calculates the weighted sum of its inputs:

\\[ z=\sum\_{i=1}^{n}w_ix_i+b \\]

**Step 3: Activation Function**

The weighted sum is passed through an activation function:

\\[ a=f(z) \\]

**Step 4: Forward Propagation**

The output of one layer becomes the input of the next layer until the output layer produces a prediction.

**Step 5: Error Calculation**

The predicted output is compared with the actual target value using a loss function.

**Step 6: Weight Update**

The network uses backpropagation and an optimization algorithm such as gradient descent to reduce the error.

## **4. Mathematical Representation of MLP**

For a hidden layer:

\\[ z_j=\sum\_{i=1}^{n}w\_{ij}x_i+b_j \\]

\\[ h_j=f(z_j) \\]

For the output layer:

\\[ z_k=\sum\_{j=1}^{m}v\_{jk}h_j+c_k \\]

\\[ y_k=g(z_k) \\]

Where:

- \\(x_i\\) = Input values.
- \\(w\_{ij}\\) = Input-to-hidden weights.
- \\(h_j\\) = Hidden neuron output.
- \\(v\_{jk}\\) = Hidden-to-output weights.
- \\(f,g\\) = Activation functions.
- \\(b_j,c_k\\) = Bias values.

## **5. Example of MLP**

Consider an MLP designed to predict whether a student will pass or fail.

**Input features:**

- Study hours.
- Attendance.
- Internal marks.

**Hidden layer:** Learns relationships between these features.

**Output layer:**

- 1 = Pass.
- 0 = Fail.

The network learns from previously labelled student data and uses the learned weights to predict the result for new students.

## **6. Advantages of MLP**

1. Learns complex non-linear relationships.
2. Can solve problems that single-layer perceptrons cannot solve, such as XOR.
3. Supports classification and regression.
4. Can learn multiple levels of patterns.
5. Works with different types of input data.

## **7. Limitations of MLP**

1. Requires more computational resources than a single-layer network.
2. Training can be time-consuming.
3. Requires suitable selection of hidden layers and neurons.
4. Can suffer from overfitting.
5. Requires careful tuning of learning rate and other parameters.

## **8. Single Layer vs Multilayer Perceptron**

| Single Layer Network                       | Multilayer Perceptron                    |
| ------------------------------------------ | ---------------------------------------- |
| No hidden layer                            | One or more hidden layers                |
| Simple architecture                        | More complex architecture                |
| Learns linear decision boundaries          | Can learn non-linear decision boundaries |
| Limited learning capability                | More powerful learning capability        |
| Less computational cost                    | Higher computational cost                |
| Cannot solve XOR using a single perceptron | Can solve XOR                            |

## **9. PYQs from your uploaded SPPU papers**

Direct PYQ repeated

**May/June 2023 – Q8(b) [6 marks]**

> Describe multi-layer neural n/w. Explain why back propagation algorithm is required.

**May/June 2024 – Q7(a) [6 marks]**

> What is Multilayer perceptron? Describe with diagram.

**Nov/Dec 2024 – Q7(c) [6 marks]**

> What is multilayer perceptron? Describe with diagram.

**Exam tip:** The direct MLP question appeared in both May/June 2024 and Nov/Dec 2024. Practise the architecture diagram and explain input, hidden and output layers clearly.

**Next topic: Back Propagation Learning** — forward pass, error calculation, backward pass, weight update rules and a numerical example.

Type **next** to continue.