# **Unit VI – Topic 3: Back Propagation Learning**

Important exam topic

Back Propagation is a **supervised learning algorithm** used to train multilayer neural networks. It reduces the difference between the network's predicted output and the actual target output by adjusting weights and biases.

## **1. What is Back Propagation?**

Back Propagation (Backward Propagation of Error) is a learning algorithm in which:

1. Input is passed through the network to calculate the predicted output.
2. The predicted output is compared with the actual output.
3. The error is propagated backward from the output layer to the hidden layers.
4. Weights and biases are updated to reduce the error.

It mainly uses the **gradient descent** method to minimize the error.

## **2. Architecture and working**

[Backpropagation: How Neural Networks Learned to Learn | by Ignacio Quintero | Medium](https://images.openai.com/static-rsc-4/bOyqVl_Cx_UMKKkteZwcTNbjBqSD4lcNJ7CjvxYWIEfSGcPvyYDR2_KN0xiayhpK1PbZovrmEXqTEqE5YBrpcrqdOs7YQ1sFCKdSSBkyEyEzXCXeCXjjNJtAGoElBcknnPeBIy-tiU9odJJ5UKgDDY16yOFuoFbYqMZhMlIn2sw?purpose=inline)

[medium.com](https://medium.com/%40igquinteroch/backpropagation-how-neural-networks-learned-to-learn-8f0d6654e914?utm_source=chatgpt.com)

- **Input layer:** Receives input data.
- **Hidden layer:** Processes input using weights, biases and activation functions.
- **Output layer:** Produces predicted output.
- **Forward propagation:** Calculates the network output.
- **Backward propagation:** Calculates error gradients and updates weights.

## **3. Steps of Back Propagation Algorithm**

**Step 1 – Initialize weights**

Initialize weights and biases with small random values.

**Step 2 – Provide input**

Feed training input \\(x\\) to the input layer.

**Step 3 – Forward propagation**

Calculate weighted sum:

\\[ net_j=\sum_i w\_{ij}x_i+b_j \\]

Apply activation function:

\\[ O_j=f(net_j) \\]

Continue until the output layer produces the predicted output.

**Step 4 – Calculate error**

Compare predicted output \\(O\\) with target output \\(T\\).

\\[ E=\frac{1}{2}(T-O)^2 \\]

For multiple output neurons:

\\[ E=\frac{1}{2}\sum_k(T_k-O_k)^2 \\]

**Step 5 – Calculate output-layer error**

For a differentiable activation function:

\\[ \delta_k=(T_k-O_k)f'(net_k) \\]

For sigmoid activation:

\\[ f'(net_k)=O_k(1-O_k) \\]

Therefore,

\\[ \delta_k=(T_k-O_k)O_k(1-O_k) \\]

**Step 6 – Calculate hidden-layer error**

\\[ \delta_j=f'(net_j)\sum_k\delta_k w\_{jk} \\]

This distributes the output error backward to the hidden neurons.

**Step 7 – Update weights**

\\[ w\_{ij(new)}=w\_{ij(old)}+\eta\delta_jx_i \\]

Where:

- \\(\eta\\) = learning rate
- \\(\delta_j\\) = error signal
- \\(x_i\\) = input to the connection

**Step 8 – Repeat**

Repeat the process for training examples and epochs until the error becomes sufficiently small or a stopping condition is reached.

## **4. Example of Back Propagation**

Suppose a neural network predicts whether a student will pass an examination.

- Actual output \\(T=1\\)
- Predicted output \\(O=0.7\\)

Error:

\\[ E=\frac{1}{2}(1-0.7)^2 \\]

\\[ E=\frac{1}{2}(0.09)=0.045 \\]

The network calculates the error gradient and adjusts its weights. After repeated training iterations, the predicted output should move closer to 1, reducing the error.

## **5. Characteristics of Back Propagation Algorithm**

1. It is a supervised learning algorithm.
2. It is mainly used in multilayer feed-forward neural networks.
3. It requires input data with corresponding target outputs.
4. It uses gradient descent to minimize the error.
5. Error is propagated from the output layer towards hidden layers.
6. Weights and biases are updated iteratively.
7. Differentiable activation functions are generally used.
8. Training may require many iterations to achieve convergence.

## **6. Advantages**

- Learns complex nonlinear relationships.
- Automatically adjusts network weights.
- Useful for classification and prediction.
- Can train networks with multiple hidden layers.
- Reduces prediction error through iterative learning.

## **7. Limitations**

- Training can be computationally expensive.
- May converge to a local minimum.
- Performance depends on learning rate and initial weights.
- Can suffer from vanishing gradients in deep networks.
- Requires labelled training data in supervised learning.

## **8. Applications**

- Handwritten digit recognition.
- Face and image recognition.
- Speech recognition.
- Medical diagnosis.
- Stock and sales prediction.
- Pattern classification.

## **9. Important PYQs from your SPPU papers**

| Exam          | Question                                                                                      | Marks |
| ------------- | --------------------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2023  | Q8(a): “Explain the concept of Back Propagation in ANN with example.”                         | 8     |
| May/June 2023 | Q7(b): “Describe characteristics of back propagation algorithm.”                              | 6     |
| May/June 2023 | Q8(b): “Describe multi-layer neural n/w. Explain why back propagation algorithm is required.” | 6     |
| Nov/Dec 2022  | Q7(c): “Write short note on Back propagation network.”                                        | 6     |
| May/June 2025 | Q8(a): “Compare Back propagation Network with feed forward Network.”                          | 5     |



Exam tip

&#x20;For an 8-mark answer, prepare the architecture diagram, eight algorithm steps, error equations, weight-update formula, and one numerical example.



**Next topic: Functional Link Artificial Neural Network (FLANN)** — definition, architecture, working, merits and comparison with other ANNs. Say **next** to continue.