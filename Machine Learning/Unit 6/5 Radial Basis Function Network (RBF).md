# **Unit VI – Topic 5: Radial Basis Function Network (RBF)**

Frequently repeated – 6 to 8 marks

## **1. What is an RBF Network?**

A **Radial Basis Function Network (RBFN)** is a type of feed-forward artificial neural network that uses radial basis functions as activation functions in its hidden layer.

It is commonly used for:

- Classification
- Function approximation
- Prediction
- Pattern recognition

The RBF network measures the distance between an input vector and predefined centre points. Its output depends on how close the input is to these centres.

**Key concept:** An input closer to a centre produces a stronger response from the corresponding radial basis neuron.

## **2. Architecture of RBF Network**

[Solving Fractional Order Differential Equations by Using Fractional Radial Basis Function Neural Network](https://images.openai.com/static-rsc-4/o-ZRp2iBcWfY6QaiPA3q_cPWIafIxq_NtQ5kNGtWuMNugc87BlQu9KF5maPmryzqmSqpgRefR6Cywj9-RjHNGVjyCSpv7apI6e6NgHifCc_CREjQyWDnPmIiI9NBV4LLGqQmHcsXRZfa9PbyK1yIw-2dcnnNVhCfKdIFhgmPGgg?purpose=inline)

[mdpi.com](https://www.mdpi.com/2073-8994/15/6/1275?utm_source=chatgpt.com)

RBF networks generally contain three layers:

### **A. Input Layer**

- Receives input features.
- Passes the input to the hidden layer.
- Does not perform complex calculations.

### **B. Hidden Layer**

- Contains radial basis neurons.
- Each neuron has a centre.
- Calculates the distance between input and centre.
- Applies a radial basis activation function, commonly Gaussian.

### **C. Output Layer**

- Combines hidden-layer outputs using weights.
- Produces the final prediction or classification.

## **3. Building Blocks of RBF Networks**

Important for 6 marks

**1. Input vector**

The input vector contains the features supplied to the network.

\\[ X=[x_1,x_2,\ldots,x_n] \\]

**2. Centres**

Each hidden neuron has a centre vector \\(C_j\\). It represents a reference point in the input space.

**3. Distance calculation**

The network calculates the distance between the input and each centre, usually using Euclidean distance.

\\[ d_j=\\|X-C_j\\| \\]

**4. Radial Basis Activation Function**

The Gaussian function is commonly used:

\\[ \phi_j(X)=e^{-\frac{\\|X-C_j\\|^2}{2\sigma_j^2}} \\]

Where:

- \\(X\\) = input vector
- \\(C_j\\) = centre of neuron
- \\(\sigma_j\\) = spread or width
- \\(\phi_j(X)\\) = activation value

**5. Output weights**

Each hidden neuron output is multiplied by an output weight.

**6. Output calculation**

\\[ Y=\sum\_{j=1}^{m}w_j\phi_j(X)+b \\]

Where:

- \\(w_j\\) = output weight
- \\(m\\) = number of hidden neurons
- \\(b\\) = bias

## **4. Working of RBF Network**

[Lecture 6 radial basis-function_network | PDF](https://images.openai.com/static-rsc-4/Hnauh9SS6Ud2FKVsidGoZ5m4GoQDivxvx8aKhDyoJ70TgwS8lB4fzSn6_gwBeSpK-VqOEShvRsRzkIzw_8yZOdAOBaWGuNwdSxO_2vZNnGTtTWCeM3XXXw6OIx4dEgjsz9lq7eFYI2W_OcoA7ET6_kVRRDkm1JEQYq1gDLRwODI?purpose=inline)

[slideshare.net](https://www.slideshare.net/slideshow/lecture-6-radial-basisfunctionnetwork/251026752?utm_source=chatgpt.com)

1. Input data is supplied to the input layer.
2. The hidden layer calculates the distance between the input and each centre.
3. The Gaussian radial basis function converts the distance into an activation value.
4. The hidden neuron outputs are multiplied by their respective weights.
5. The output layer combines these values.
6. The final result is generated.

## **5. Example of RBF Network**

Suppose an RBF network has:

\\[ X=2,\quad C=2,\quad \sigma=1 \\]

Using the Gaussian function:

\\[ \phi(X)=e^{-\frac{(X-C)^2}{2\sigma^2}} \\]

Substitute the values:

\\[ \phi(X)=e^{-\frac{(2-2)^2}{2(1)^2}} \\]

\\[ \phi(X)=e^0=1 \\]

Therefore, the activation value is **1**, because the input is exactly at the centre.

Now suppose \\(X=3\\):

\\[ \phi(X)=e^{-\frac{(3-2)^2}{2}} \\]

\\[ \phi(X)\approx0.6065 \\]

The activation decreases as the input moves away from the centre.

## **6. Advantages of RBF Network**

1. Simple network architecture.
2. Faster training in many applications compared with some multilayer networks.
3. Good function approximation capability.
4. Can model nonlinear relationships.
5. Localized response to input patterns.
6. Useful for classification and prediction.

## **7. Disadvantages**

1. Selecting suitable centres can be difficult.
2. Performance depends on the spread parameter.
3. A large number of hidden neurons may be required.
4. Memory and computation requirements can increase with large datasets.
5. Performance may decrease when the centres are poorly selected.

## **8. Applications**

- Handwriting recognition.
- Image classification.
- Time-series prediction.
- Medical diagnosis.
- Signal processing.
- Nonlinear system modelling.

## **9. RBF vs MLP**

| RBF Network                                   | MLP                                              |
| --------------------------------------------- | ------------------------------------------------ |
| Uses radial basis functions in hidden layer   | Commonly uses sigmoid, ReLU or other activations |
| Hidden neurons respond locally around centres | Neurons can have broader responses               |
| Uses distance from centres                    | Uses weighted sums of inputs                     |
| Often trained in separate stages              | Commonly trained using backpropagation           |
| Suitable for function approximation           | Suitable for a wide range of learning tasks      |

## **10. Important SPPU PYQs**

| Exam          | Question                                                   | Marks |
| ------------- | ---------------------------------------------------------- | ----- |
| Nov/Dec 2023  | Q7(b): “Explain Radial Basis Function networks in detail.” | 8     |
| May/June 2024 | Q8(a): “Explain building blocks of RBF networks.”          | 6     |
| Nov/Dec 2024  | Q8(a): “Explain building blocks of RBF networks.”          | 6     |



Exam priority

&#x20;The building blocks question appeared in both 2024 papers. Practise the architecture diagram, Gaussian function, distance calculation and output equation.



**Next topic: Activation Functions** — sigmoid, bipolar sigmoid, tanh, ReLU, step function and their comparisons with graphs and formulas. Say **next** to continue.