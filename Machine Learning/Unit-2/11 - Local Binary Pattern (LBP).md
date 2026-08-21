# 11. Local Binary Pattern (LBP) Feature Extraction

### PYQs

* **2022:** Explain Local Binary Pattern (LBP) feature extraction technique with suitable example. **[5]**
* **2023:** Calculate LBP code generated value for the central point in the neighborhood of 8 pixels. **[5]**
* **2025:** Calculate the LBP Code for centre pixel. **[5]**

---

# Definition

**Local Binary Pattern (LBP)** is a simple and effective **texture feature extraction technique** used mainly in image processing and computer vision.

LBP describes the **local texture of an image** by comparing the intensity of a **central pixel** with the intensity of its neighboring pixels.

For an **8-neighbor LBP**, each neighboring pixel is compared with the centre pixel:

* If neighbor ≥ centre → **1**
* If neighbor < centre → **0**

The resulting 8-bit binary number is converted into a **decimal LBP code**.

---

# LBP Neighborhood

For a centre pixel (P_c), the standard 3 × 3 neighborhood is:

```text
┌─────┬─────┬─────┐
│ P0  │ P1  │ P2  │
├─────┼─────┼─────┤
│ P3  │ Pc  │ P4  │
├─────┼─────┼─────┤
│ P5  │ P6  │ P7  │
└─────┴─────┴─────┘
```

Here:

* (P_c) = centre pixel
* (P_0) to (P_7) = eight neighboring pixels

---

# LBP Formula

For (P) neighboring pixels:

[
LBP_{P,R}=\sum_{p=0}^{P-1}s(g_p-g_c)2^p
]

where:

[
s(x)=
\begin{cases}
1, & x\geq0\
0, & x<0
\end{cases}
]

For the standard case:

[
P=8
]

So the LBP code is an **8-bit binary value**, ranging from:

[
\boxed{0\text{ to }255}
]

---

# Steps of LBP Feature Extraction

### Step 1: Select Centre Pixel

Take a (3\times3) neighborhood and identify the centre pixel.

### Step 2: Compare Neighbors

Compare each of the eight neighboring pixels with the centre.

```text
Neighbor ≥ Centre → 1
Neighbor < Centre → 0
```

### Step 3: Generate Binary Pattern

The eight comparisons generate an 8-bit binary number.

### Step 4: Convert Binary to Decimal

Convert the binary pattern into its decimal value.

### Step 5: Use as Texture Feature

The resulting LBP values can be used to describe the texture of the image.

---

# Example — LBP Calculation

Suppose the image neighborhood is:

```text
┌─────┬─────┬─────┐
│  80 │  90 │ 100 │
├─────┼─────┼─────┤
│  70 │  85 │ 110 │
├─────┼─────┼─────┤
│  60 │  75 │ 120 │
└─────┴─────┴─────┘
```

Centre pixel:

[
P_c=85
]

Compare each neighbor with `85`.

Assume clockwise order starting from the **top-left**:

```text
P0 = 80  → 0
P1 = 90  → 1
P2 = 100 → 1
P3 = 70  → 0
P4 = 110 → 1
P5 = 60  → 0
P6 = 75  → 0
P7 = 120 → 1
```

Therefore:

```text
Binary pattern = 01101001
```

---

# Decimal LBP Code

Convert:

[
01101001_2
]

to decimal:

[
=0(128)+1(64)+1(32)+0(16)+1(8)+0(4)+0(2)+1(1)
]

[
=64+32+8+1
]

[
\boxed{LBP=105}
]

Therefore, the **LBP code generated for the centre pixel is 105**.

---

# Numerical PYQ Method

### PYQ — 2023 / 2025 [5 Marks]

When the question gives an 8-pixel neighborhood, follow these exact steps:

```text
        8 Neighbors
             ↓
     Compare with Centre
             ↓
   ┌───────────────────┐
   │ ≥ Centre → 1      │
   │ < Centre → 0      │
   └─────────┬─────────┘
             ↓
       8-bit Binary Code
             ↓
      Convert to Decimal
             ↓
          LBP Code
```

### Example Format for Exam

Suppose the comparison gives:

```text
Neighbor:  P0 P1 P2 P3 P4 P5 P6 P7
Binary:    0  1  1  0  1  0  0  1
```

Therefore:

[
LBP=(01101001)_2
]

[
=64+32+8+1
]

[
\boxed{LBP=105}
]

---

# Important: Order of Neighbors

The **order in which the 8 neighbors are assigned powers of 2 matters**.

If the question provides a specific ordering, **follow that ordering exactly**.

For the common convention:

```text
P0 → 2⁰
P1 → 2¹
P2 → 2²
P3 → 2³
P4 → 2⁴
P5 → 2⁵
P6 → 2⁶
P7 → 2⁷
```

Then:

[
LBP=\sum_{p=0}^{7}s(g_p-g_c)2^p
]

---

# Applications of LBP

LBP is mainly used for **texture analysis and image recognition**.

### Applications include:

1. **Face recognition**
2. **Texture classification**
3. **Object recognition**
4. **Image classification**
5. **Face detection**
6. **Medical image analysis**
7. **Pattern recognition**

---

# Advantages of LBP

* Simple and easy to implement.
* Computationally efficient.
* Works well for texture description.
* Relatively robust to monotonic changes in illumination.
* Produces a compact local texture representation.

# Limitations

* Sensitive to noise.
* Basic LBP captures only local texture information.
* May not adequately represent large-scale image structures.
* Rotation can change the basic LBP pattern unless rotation-invariant variants are used.

---

# ⭐ Exam Shortcut

For any LBP numerical question, remember:

### **1. Take centre pixel**

```text
Pc
```

### **2. Compare all 8 neighbors**

```text
Neighbor ≥ Pc → 1
Neighbor < Pc → 0
```

### **3. Write 8-bit binary code**

```text
01011001
```

### **4. Convert to decimal**

[
01011001_2
=64?
]

Be careful with the bit positions. If the **leftmost bit is (2^7)**:

[
0(128)+1(64)+0(32)+1(16)+1(8)+0(4)+0(2)+1(1)
]

[
\boxed{89}
]

### Final Formula

[
\boxed{LBP=\sum_{p=0}^{7}s(g_p-g_c)2^p}
]

> **Most important for the 2023 and 2025 numerical PYQs: compare → binary pattern → decimal conversion.**
