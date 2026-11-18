# **Unit VI – Topic 8: Convolutional Neural Network (CNN)**

Very important – repeated in 2022–2025 papers

## **1. What is CNN?**

A **Convolutional Neural Network (CNN)** is a type of deep learning neural network mainly used to process images and other grid-like data.

It automatically extracts important features such as edges, shapes, textures and objects using convolution and pooling operations.

CNN is widely used in computer vision and image recognition.

**Main concept:** CNN learns image features automatically instead of requiring humans to manually extract them.

## **2. CNN Architecture**

[What is Convolutional Neural Network — CNN (Deep Learning) | by Kh. Nafizul Haque | Medium](https://images.openai.com/static-rsc-4/koAywMNOQup4Tsm93-BTjbutKduZ_CQzRHVJYuLbr9I1wYbeER-EPY5j3BE9w68zn532bt-MiDpqv_8XIWq2OTBlkdEN0NNaz-NgMpKGRbLPqQP7Jwt6x34v00FDUVBy6l8tM73VNwVznLWWsJcCgJ4W2uakDPC8IpbY_4xsC-M?purpose=inline)

[nafizshahriar.medium.com](https://nafizshahriar.medium.com/what-is-convolutional-neural-network-cnn-deep-learning-b3921bdd82d5?utm_source=chatgpt.com)

The main layers of CNN are:

1. Input layer
2. Convolution layer
3. Activation layer (ReLU)
4. Pooling layer
5. Flatten layer
6. Fully connected layer
7. Output layer

## **3. Important Layers of CNN**

### **A. Input Layer**

- Receives image data.
- Images are represented as numerical pixel values.
- An RGB image has three colour channels: Red, Green and Blue.

Example: An image of size \\(64\times64\times3\\).

### **B. Convolution Layer**

[Convolutional Neural Network (CNN) Architecture Explained in Plain English Using Simple Diagrams](https://images.openai.com/static-rsc-4/20yadWcT2FatS1T7Lrlw_NREBrwmaUo0Y8za6L8FJX4EiyHesu90fYHXntDcb7u8K3y18iF1SR4jMjotqsK7v304BcxFkMlvnA4d6Yn40VFx9hApKK52k8A6MH5plxEgZ3WE5O7Nyq4PV2LY0QMY_nguEpX7JYq8hGfkVmZfRMc?purpose=inline)

[readmedium.com](https://readmedium.com/convolutional-neural-network-cnn-architecture-explained-in-plain-english-using-simple-diagrams-e5de17eacc8f?utm_source=chatgpt.com)

The convolution layer extracts features from the input image using filters (kernels).

A filter moves across the image and performs element-wise multiplication followed by addition.

**Example:** A 3 × 3 filter can help detect edges or patterns in an image.

Mathematically:

\\[ Output(i,j)=\sum_m\sum_n I(i+m,j+n)K(m,n) \\]

Where:

- \\(I\\) = input image
- \\(K\\) = filter or kernel
- Output = feature map

**Functions:**

- Extracts image features.
- Detects edges, corners and textures.
- Creates feature maps.

### **C. Activation Layer (ReLU)**

ReLU introduces non-linearity after convolution.

\\[ f(x)=\max(0,x) \\]

Negative values become zero, while positive values remain unchanged.

### **D. Pooling Layer**

[Convolutional Neural Network Models - Speaker Deck](https://images.openai.com/static-rsc-4/g0ThscFx4QvFUh7RmzC-YsinRPqa6pecSjSJFYaGNiyFTYB8X_EyTAXxMHqq-Pf7XRyYooAayGxZb49bbGU8z2vKuvcIQAFnUHQgwijv2Fqxh1RL1EvH3LXT8Sc1S2IuZ36A0H95jW2fENP3_W2lCw1bngBhD2tZjqOU_65XTxE?purpose=inline)

[speakerdeck.com](https://speakerdeck.com/mloey/convolutional-neural-network-models?utm_source=chatgpt.com)

Pooling reduces the spatial dimensions of feature maps while retaining important information.

**Types of pooling:**

1. **Max Pooling:** Selects the maximum value from a region.
2. **Average Pooling:** Calculates the average value of a region.

Example:

Input matrix:

\\[ \begin{bmatrix} 1&3&2&4\\\ 5&6&1&2\\\ 7&2&8&3\\\ 1&4&2&9 \end{bmatrix} \\]

Using 2 × 2 max pooling with stride 2:

\\[ \begin{bmatrix} 6&4\\\ 7&9 \end{bmatrix} \\]

**Advantages:**

- Reduces feature-map dimensions.
- Reduces computation.
- Helps retain important features.
- Provides some tolerance to small shifts in image position.

### **E. Flatten Layer**

- Converts multidimensional feature maps into a one-dimensional vector.
- Passes the vector to the fully connected layer.

### **F. Fully Connected Layer**

- Every neuron connects to neurons in the next layer.
- Combines extracted features.
- Performs classification or prediction.

### **G. Output Layer**

Produces the final prediction.

For multiclass classification, Softmax is commonly used.

Example:

- Cat: 0.85
- Dog: 0.10
- Horse: 0.05

The network predicts **Cat** because it has the highest probability.

## **4. Working of CNN – Step by Step**

**Input Image**

Image pixels

**Convolution + ReLU**

Feature extraction and non-linearity

**Pooling**

Dimension reduction

**Flatten + Fully Connected**

Feature combination and classification

**Output**

Predicted class: Cat / Dog / Other

1. CNN receives an image.
2. Convolution filters extract important features.
3. ReLU introduces non-linearity.
4. Pooling reduces feature-map dimensions.
5. Flatten converts feature maps into a vector.
6. Fully connected layers perform classification.
7. Output layer predicts the final class.

## **5. Types of Padding in CNN**

May/June 2025 – 6 marks

Padding means adding extra pixels, usually zeros, around the border of an input image before applying convolution.

### **A. Valid Padding**

- No padding is added.
- Output dimensions become smaller after convolution.

### **B. Same Padding**

- Adds padding so that output dimensions remain the same as input dimensions when stride is 1.
- Helps preserve spatial dimensions.

### **C. Full Padding**

- Adds enough padding to allow the filter to overlap the input at every possible position.
- Produces a larger output than valid padding.

**Output-size formula:**

\\[ O=\left\lfloor\frac{N+2P-F}{S}\right\rfloor+1 \\]

Where:

- \\(N\\) = input size
- \\(P\\) = padding
- \\(F\\) = filter size
- \\(S\\) = stride
- \\(O\\) = output size

For a 5 × 5 input, 3 × 3 filter and stride 1:

| Padding       | Output size |
| ------------- | ----------- |
| Valid (P = 0) | 3 × 3       |
| Same (P = 1)  | 5 × 5       |
| Full (P = 2)  | 7 × 7       |

## **6. Advantages of CNN**

1. Automatically extracts features from images.
2. Excellent for image recognition tasks.
3. Shares filter weights, reducing the number of parameters compared with fully connected image processing.
4. Learns hierarchical features.
5. Can achieve high accuracy with sufficient training data.

## **7. Disadvantages of CNN**

1. Requires large amounts of training data in many applications.
2. Training can be computationally expensive.
3. Often requires GPU acceleration for large models.
4. Model decisions can be difficult to interpret.
5. Can be sensitive to changes in image distribution and image quality.

## **8. Applications of CNN**

- Face recognition.
- Object detection.
- Medical image analysis.
- Self-driving vehicles.
- Handwriting recognition.
- Security surveillance.
- Image classification.

## **9. CNN vs RNN**

| CNN                                   | RNN                                               |
| ------------------------------------- | ------------------------------------------------- |
| Mainly processes spatial data         | Mainly processes sequential data                  |
| Uses convolution filters              | Uses recurrent connections                        |
| Extracts spatial features             | Maintains sequential information                  |
| Commonly used for image recognition   | Commonly used for speech and text                 |
| Can process image regions in parallel | Standard RNN processes sequence steps recurrently |

## **10. Important SPPU PYQs**

| Exam          | Question                                                                                    | Marks |
| ------------- | ------------------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2022  | Q8(c): “Write short note on with refernce with CNN: i) Convolution layer ii) Hidden layer.” | 6     |
| May/June 2023 | Q7(c): “Write a short note on Recurrent neural n/w & convolutional neural n/w.”             | 6     |
| May/June 2024 | Q7(c): “Explain Convolution Neural Network. (CNN) with suitable example.”                   | 6     |
| Nov/Dec 2024  | Q8(c): “Explain the Convolution Neural Network (CNN) with suitable example.”                | 6     |
| May/June 2025 | Q7(c): “Draw & Explain CNN architecture.”                                                   | 6     |
| May/June 2025 | Q8(b): “What are different types of padding used in CNN?”                                   | 6     |
| May/June 2025 | Q8(c): “Write short note on layers used in CNN. i) Convolutional layer ii) Pooling layer.”  | 6     |



Exam priority

&#x20;CNN appeared repeatedly in the last few papers. Prioritise the architecture diagram, convolution layer, pooling layer, padding types and working with an image-classification example.



# **Unit VI – Complete Revision Checklist**

All 8 topics completed

**Your revision progress**

# **0/8**

ANN introduction and Single Layer Neural Network

Multilayer Perceptron (MLP)

Back Propagation Learning

Functional Link ANN (FLANN)

Radial Basis Function Network (RBF)

Activation Functions

Recurrent Neural Network (RNN)

Convolutional Neural Network (CNN)

**Unit VI is complete.** Next, I can prepare a consolidated Unit VI question bank with model answers and the most repeated 5–8 mark questions.