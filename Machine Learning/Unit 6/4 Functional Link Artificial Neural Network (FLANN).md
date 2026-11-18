# **Unit VI – Topic 4: Functional Link Artificial Neural Network (FLANN)**

Important – 5 marks PYQ

## **1. What is FLANN?**

**Functional Link Artificial Neural Network (FLANN)** is a type of artificial neural network that uses functional expansion of input variables to learn complex nonlinear relationships.

Unlike a traditional multilayer neural network, FLANN generally does not require hidden layers. It expands the input data using mathematical functions and connects the expanded inputs directly to the output layer.

**Main concept:** Instead of adding hidden layers, FLANN increases the dimensionality of input data using functional transformations.

## **2. Architecture of FLANN**

[PPT - Functional Link Network PowerPoint Presentation, free download - ID:3376625](https://images.openai.com/static-rsc-4/litlZ6Qa6sfVSK0_-A1GlsFa-JOUEYRvYqz2VOorgp1SCcufP5jNDIxbMTyBDlsszJ4n1nI1wlBuLBTPqB62KcpZoW5aDgD9A_FQO7bIzezjQkRjB3FxTvoWKU0yzzZNXbiM8UGLtdV5XtOkjV2Wuth3sG_aJKQJOICO8XSj0qE?purpose=inline)

[slideserve.com](https://www.slideserve.com/topper/functional-link-network-powerpoint-ppt-presentation?utm_source=chatgpt.com)

The architecture consists of:

1. **Input layer:** Receives original input variables.
2. **Functional expansion block:** Transforms inputs into additional features using mathematical functions.
3. **Weight layer:** Assigns weights to expanded input features.
4. **Summation unit:** Calculates the weighted sum.
5. **Output layer:** Produces the final result.

## **3. Working of FLANN**

Consider an input variable \\(x\\).

**Step 1 – Input:** Receive the original input.

\\[ X=[x_1,x_2] \\]

**Step 2 – Functional expansion:** Generate additional features using functions such as polynomial, trigonometric or other nonlinear transformations.

For example:

\\[ \phi(x)=[x_1,x_2,x_1^2,x_2^2,x_1x_2] \\]

**Step 3 – Weight assignment:** Assign weights to the expanded features.

**Step 4 – Calculate output:**

\\[ Y=f\left(\sum\_{i=1}^{n}w_i\phi_i(X)+b\right) \\]

Where:

- \\(w_i\\) = weights
- \\(\phi_i(X)\\) = expanded input features
- \\(b\\) = bias
- \\(f\\) = activation function

**Step 5 – Learning:** Adjust weights during training to minimize the output error.

## **4. Example**

Suppose FLANN receives two inputs:

\\[ x_1=2,\quad x_2=3 \\]

After functional expansion:

\\[ \phi(X)=[2,3,4,9,6] \\]

Here:

- \\(x_1=2\\)
- \\(x_2=3\\)
- \\(x_1^2=4\\)
- \\(x_2^2=9\\)
- \\(x_1x_2=6\\)

The network uses these expanded features to calculate its output through weighted summation and an activation function.

Thus, FLANN can learn nonlinear relationships without requiring multiple hidden layers.

## **5. Merits of FLANN over other ANNs**

1. **Simple architecture:** Generally does not require hidden layers.
2. **Less computational complexity:** Avoids computations associated with multiple hidden layers.
3. **Faster learning:** Can offer faster training for suitable problems.
4. **Nonlinear learning:** Functional expansion helps learn nonlinear input-output relationships.
5. **Reduced network complexity:** Uses a relatively simple network structure.
6. **Easy implementation:** Its architecture and learning process can be relatively straightforward.

## **6. Limitations**

- Performance depends on the selected functional expansion.
- Too many expanded features can increase computation.
- Selecting suitable functions can be difficult.
- May not perform as well as deep networks on highly complex tasks.

## **7. Applications**

- Signal processing.
- System identification.
- Nonlinear system modelling.
- Pattern recognition.
- Adaptive filtering.
- Prediction and classification.

## **8. FLANN vs Traditional MLP**

| FLANN                                          | MLP                                              |
| ---------------------------------------------- | ------------------------------------------------ |
| Generally has no hidden layer                  | Has one or more hidden layers                    |
| Uses functional expansion of inputs            | Uses hidden neurons to learn features            |
| Relatively simple architecture                 | More complex architecture                        |
| Can have faster training for suitable problems | Training can be computationally intensive        |
| Performance depends on expansion functions     | Performance depends on architecture and training |

## **9. Important SPPU PYQ**

| Exam         | Question                                                                                                | Marks |
| ------------ | ------------------------------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2023 | Q8(b): “What is Functional Link Artificial Neural Network (FLANN)? Explain its merits over other ANNs.” | 5     |



Exam tip

&#x20;For this 5-mark question, prepare the definition, architecture diagram, functional expansion formula, working and at least five merits.



**Next topic: Radial Basis Function Network (RBF)** — architecture, building blocks, working, Gaussian function and applications. Say **next** to continue.