# Matrix Factorization

### PYQ — 2023 [5 Marks]

**What is Matrix Factorization?**

## Definition

**Matrix Factorization** is a mathematical technique used to **decompose a large matrix into two or more smaller matrices**.

For a matrix (R), it can be represented approximately as:

[
\boxed{R \approx P \times Q^T}
]

where:

* (R) = original matrix
* (P) = first factor matrix
* (Q) = second factor matrix
* (Q^T) = transpose of (Q)

---

## Basic Concept

```text id="w6g2k1"
        Original Matrix
              R
              ↓
      Matrix Factorization
              ↓
       ┌──────┴──────┐
       ↓             ↓
   Matrix P       Matrix Q
       └──────┬──────┘
              ↓
       Approximate R
```

---

## Example in Recommendation System

Consider a **user–movie rating matrix**:

|        | Movie A | Movie B | Movie C |
| ------ | ------: | ------: | ------: |
| User 1 |       5 |       4 |       ? |
| User 2 |       4 |       ? |       2 |
| User 3 |       1 |       2 |       5 |

Here, `?` represents an unknown rating.

The matrix is:

[
R=
\begin{bmatrix}
5&4&?\
4&?&2\
1&2&5
\end{bmatrix}
]

Matrix factorization decomposes this matrix into smaller matrices representing **hidden/latent factors** of users and items.

```text id="z2c7f4"
User-Item Matrix
       ↓
Matrix Factorization
       ↓
┌────────────────┐
│ User Factors   │
└───────┬────────┘
        ×
┌────────────────┐
│ Item Factors   │
└───────┬────────┘
        ↓
Predicted Ratings
```

For example, the hidden factors could represent preferences such as:

```text
User factors → Action preference, Comedy preference
Item factors → Action content, Comedy content
```

The model uses these latent factors to **estimate missing ratings**.

---

## Applications

Matrix factorization is commonly used in:

1. **Recommendation systems**
2. Collaborative filtering
3. Predicting missing values
4. Dimensionality reduction
5. Image compression
6. Text analysis

---

## Advantages

* Reduces a large matrix into smaller matrices.
* Helps identify hidden/latent relationships.
* Useful for predicting missing values.
* Reduces computational complexity in some applications.
* Widely used in recommendation systems.

## Conclusion

**Matrix Factorization decomposes a large matrix into smaller factor matrices while preserving its important underlying structure. In recommendation systems, it can be used to discover latent user and item characteristics and predict missing ratings.**

### ⭐ Remember

[
\boxed{\text{Matrix Factorization: }R\approx P Q^T}
]

**Large Matrix → Smaller Factor Matrices → Hidden Relationships → Predictions**
