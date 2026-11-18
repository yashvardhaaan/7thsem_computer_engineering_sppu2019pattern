# **Unit VI – Topic 7: Recurrent Neural Networks (RNN)**

Frequently asked – 5 to 6 marks

## **1. What is a Recurrent Neural Network?**

A **Recurrent Neural Network (RNN)** is a type of artificial neural network designed to process sequential data. It has recurrent connections that allow information from previous steps to influence the current step.

Unlike a feed-forward neural network, an RNN maintains a form of memory through its hidden state.

**Main idea:** The output at the current time step depends on both the current input and information carried forward from previous time steps.

Examples of sequential data:

- Text and sentences
- Speech and audio
- Time-series data
- Stock prices
- Weather measurements

## **2. Architecture of RNN**

[\[cs231n\] Recurrent Neural Networks - RNN, LSTM - yg’s blog](https://images.openai.com/static-rsc-4/qhEbLEoBh6ruo34k2dv2DQMb--iSgV0lorA8aEnjbviWNeb8-_5lH2Bfz9VV8J7uIwgutVPZV-D3JBz_KxBT_L91tY5UqddXqvkCEulrOBWJzuiu_YpEBNYy1YNlX-f3rklZ9X8iMOYszTlviT_VlwYy0qtNmnjHGpB7rqR-9iQ?purpose=inline)

[yganalyst.github.io](https://yganalyst.github.io/dl/cs231n_9/?utm_source=chatgpt.com)

The main components are:

1. **Input layer:** Receives sequential input data.
2. **Hidden layer:** Processes the current input and previous hidden state.
3. **Recurrent connection:** Transfers information from one time step to the next.
4. **Output layer:** Produces the output at each time step or at the end of a sequence.

## **3. Mathematical Working of RNN**

At each time step \\(t\\), the hidden state is calculated using:

\\[ h_t=f(W\_{xh}x_t+W\_{hh}h\_{t-1}+b_h) \\]

Output is calculated as:

\\[ y_t=g(W\_{hy}h_t+b_y) \\]

Where:

- \\(x_t\\) = current input
- \\(h_t\\) = current hidden state
- \\(h\_{t-1}\\) = previous hidden state
- \\(W\_{xh}\\) = input-to-hidden weights
- \\(W\_{hh}\\) = recurrent weights
- \\(W\_{hy}\\) = hidden-to-output weights
- \\(b_h,b_y\\) = biases
- \\(f,g\\) = activation functions

**Important:** The same recurrent weights are shared across time steps.

## **4. Working of RNN**

1. The network receives the first input.
2. The hidden layer processes the input and generates a hidden state.
3. This hidden state is passed to the next time step.
4. The next input is combined with the previous hidden state.
5. The process repeats for every element in the sequence.
6. The network generates output at each time step or at the end of the sequence.

## **5. Example of RNN**

Consider a sentence:

**"I love machine learning."**

An RNN processes the words sequentially:

**I**

Time 1

**love**

Time 2

**machine**

Time 3

**RNN hidden states**

Each step retains information from earlier words.

**Context-aware prediction**

Uses sequence information

The RNN processes each word while carrying information from previous words. This helps it understand context and predict the next word or classify the sentence.

## **6. Types of RNN Architectures**

[Recurrent Neural Networks deeplearning ai Why sequence models](https://images.openai.com/static-rsc-4/STrxY0Q1nAQh8XWPpZAtTvjMAyQgG0gZNg1eUbxUjgGZNROEGJtNIbweBXNF_wuSyduc-P3qG2sginl0pHCcFNsKKyWVluU7qGT0AunuNDM5i3lW-h_yQp0C6d3EiHj0JAqATKA-WOnJY1zECQCe-9voUeTKoBpf48ECy2Bz-X8?purpose=inline)

[slidetodoc.com](https://slidetodoc.com/recurrent-neural-networks-deeplearning-ai-why-sequence-models/?utm_source=chatgpt.com)

1. **One-to-One:** One input produces one output. Example: basic image classification.
2. **One-to-Many:** One input produces a sequence of outputs. Example: image caption generation.
3. **Many-to-One:** A sequence of inputs produces one output. Example: sentiment analysis.
4. **Many-to-Many:** A sequence of inputs produces a sequence of outputs. Example: machine translation.

## **7. Advantages of RNN**

- Can process sequential data.
- Maintains information from previous inputs.
- Shares weights across time steps.
- Useful for time-series prediction.
- Handles variable-length sequences.

## **8. Limitations of RNN**

- Suffers from vanishing gradient problems.
- Can suffer from exploding gradients.
- Difficult to learn long-term dependencies.
- Sequential processing can make training slower.
- Training long sequences can be computationally expensive.

**Common improvement:** LSTM (Long Short-Term Memory) and GRU (Gated Recurrent Unit) architectures help address the long-term dependency problem.

## **9. Applications of RNN**

1. Natural Language Processing (NLP).
2. Speech recognition.
3. Machine translation.
4. Text generation.
5. Sentiment analysis.
6. Stock market and weather forecasting.
7. Handwriting recognition.

## **10. RNN vs Feed-Forward Neural Network**

| RNN                         | Feed-forward NN                          |
| --------------------------- | ---------------------------------------- |
| Has recurrent connections   | No recurrent connections                 |
| Maintains hidden state      | Does not maintain recurrent hidden state |
| Processes sequential data   | Commonly processes independent inputs    |
| Uses previous information   | No built-in memory of previous inputs    |
| Used in NLP and time series | Used in classification and regression    |

## **11. Important SPPU PYQs**

| Exam          | Question                                                                       | Marks |
| ------------- | ------------------------------------------------------------------------------ | ----- |
| Nov/Dec 2022  | Q8(b): “What is Recurrent Neural Network? Explain with suitable example.”      | 6     |
| Nov/Dec 2023  | Q7(c): “Explain Recurrent Neural Networks and its applications in brief.”      | 5     |
| May/June 2024 | Q8(c): “Explain Recurrent Neural Networks with as example.”                    | 6     |
| Nov/Dec 2024  | Q7(a): “Explain Recurrent Neural Networks with an example.”                    | 6     |
| May/June 2025 | Q7(b): “Explain Recurrent Neural Network with Example. Compare it simple CNN.” | 6     |



Exam tip

&#x20;RNN appeared repeatedly in the 2022–2025 papers. Prioritise the architecture diagram, hidden-state equation, working, applications and limitations.



**Next and final topic of Unit VI: Convolutional Neural Networks (CNN)** — architecture, convolution layer, pooling layer, hidden layers, padding and applications. Say **next** to continue.