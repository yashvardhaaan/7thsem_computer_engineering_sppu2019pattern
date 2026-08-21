# 18. Vectorization

### PYQ

**No direct PYQ**

## Definition

**Vectorization** is the process of representing data or mathematical operations using **vectors, matrices, or arrays** and performing operations on them as a whole instead of processing individual values one at a time.

In Machine Learning, vectorization is used to make **data processing and mathematical computations faster and more efficient**.

---

## Basic Idea

### Without Vectorization

Each value is processed separately:

```text id="7m8n3v"
x₁ → Operation → y₁
x₂ → Operation → y₂
x₃ → Operation → y₃
x₄ → Operation → y₄
```

### With Vectorization

The complete set of values is processed together:

```text id="o2q3sl"
        [x₁ x₂ x₃ x₄]
                ↓
       Vectorized Operation
                ↓
        [y₁ y₂ y₃ y₄]
```

---

# Example

Suppose we have:

[
X=[10,20,30,40]
]

and want to multiply every value by 2.

### Without Vectorization

```text id="i6c7h5"
10 × 2 = 20
20 × 2 = 40
30 × 2 = 60
40 × 2 = 80
```

### With Vectorization

[
X\times2
]

[
[10,20,30,40]\times2
]

[
\boxed{[20,40,60,80]}
]

The operation is applied to the entire vector.

---

# Vectorization in Machine Learning

Machine Learning algorithms involve many mathematical operations on large datasets.

For example, a linear model can be represented as:

[
y=w^Tx+b
]

where:

* (X) = input feature vector
* (w) = weight vector
* (b) = bias
* (y) = output

### Diagram

```text id="c4w2q6"
Features              Weights
   ↓                     ↓
[x₁ x₂ x₃]     ×     [w₁ w₂ w₃]
       \               /
        \             /
         Dot Product
              ↓
          wᵀX + b
              ↓
           Output
```

Instead of calculating every feature-weight multiplication separately using loops, vector/matrix operations can perform the computation efficiently.

---

# Vectorization with Multiple Samples

Suppose we have several training examples:

[
X=
\begin{bmatrix}
x_{11}&x_{12}&x_{13}\
x_{21}&x_{22}&x_{23}\
x_{31}&x_{32}&x_{33}
\end{bmatrix}
]

and weights:

[
w=
\begin{bmatrix}
w_1\
w_2\
w_3
\end{bmatrix}
]

The predictions can be calculated using:

[
\boxed{Y=Xw+b}
]

```text id="7h2m8k"
       Feature Matrix X
              ×
        Weight Vector w
              ↓
        Matrix Operation
              ↓
        Predictions Y
```

This is the basic idea behind vectorized computation in many ML algorithms.

---

# Advantages of Vectorization

### 1. Faster Computation

Vectorized operations can process many values simultaneously.

### 2. Efficient for Large Datasets

ML datasets may contain thousands or millions of observations. Vectorization makes operations more efficient.

### 3. Less Code

Vectorized operations can replace lengthy loops.

### 4. Better Hardware Utilization

Vector and matrix operations can take advantage of optimized **CPU/GPU** operations.

### 5. Important for ML Algorithms

Many ML operations such as:

* Matrix multiplication
* Gradient computation
* Linear regression
* Neural network calculations

use vectorized operations.

---

# Vectorization vs Loop

| Loop-Based Approach                                  | Vectorized Approach               |
| ---------------------------------------------------- | --------------------------------- |
| Processes values one by one                          | Processes arrays/vectors together |
| Usually slower for large numerical workloads         | Usually faster                    |
| Requires explicit loops                              | Uses vector/matrix operations     |
| More code                                            | More concise                      |
| Less efficient for large-scale numerical computation | Highly efficient                  |

---

# Real-World ML Example

In a neural network, thousands of inputs may need to be multiplied by weights.

Instead of:

```text id="d7r5y4"
Input 1 × Weight 1
Input 2 × Weight 2
Input 3 × Weight 3
...
Input n × Weight n
```

vectorization performs:

[
\boxed{W^TX+b}
]

```text id="7l2q8g"
Inputs
   ↓
Vector / Matrix
   ↓
Matrix Multiplication
   ↓
Weights + Bias
   ↓
Activation
   ↓
Output
```

---

## Exam-Friendly Answer

> **Vectorization is the process of performing mathematical operations on complete vectors, matrices, or arrays rather than processing individual values one at a time. In Machine Learning, vectorization is widely used for matrix multiplication, gradient calculations, regression, and neural network operations. It reduces computation time, makes programs concise, and efficiently utilizes CPU/GPU resources. For example, instead of multiplying each element of `[10,20,30,40]` by 2 separately, vectorization performs `[10,20,30,40] × 2 = [20,40,60,80]` as a single vector operation.**

## Conclusion

**Vectorization improves the speed and efficiency of Machine Learning computations by performing operations on entire vectors or matrices simultaneously. It is especially important when working with large datasets and computationally intensive ML algorithms.**
