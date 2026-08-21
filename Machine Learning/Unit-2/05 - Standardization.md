# Z-Score Normalization

### PYQ — 2023 [5 Marks]

**Calculate Z-score normalization for given AGE data.**

> **Note:** The actual AGE values are not included in the question here, so below is the exact **exam method** with a suitable example. In the exam, substitute the given AGE values.

## Formula

Z-score normalization is calculated using:

[
\boxed{Z=\frac{X-\mu}{\sigma}}
]

Where:

* (X) = individual age
* (\mu) = mean of all ages
* (\sigma) = standard deviation
* (Z) = normalized value

genui{"learning_viz":{"type_id":"STANDARD_SCORE_Z"}}

---

## Example

Suppose the given AGE data is:

[
20,;25,;30,;35,;40
]

### Step 1: Calculate Mean

[
\mu=\frac{20+25+30+35+40}{5}
]

[
\boxed{\mu=30}
]

---

### Step 2: Calculate Standard Deviation

|   Age (X) | (X-\mu) | ((X-\mu)^2) |
| --------: | ------: | ----------: |
|        20 |     -10 |         100 |
|        25 |      -5 |          25 |
|        30 |       0 |           0 |
|        35 |       5 |          25 |
|        40 |      10 |         100 |
| **Total** |         |     **250** |

Using population standard deviation:

[
\sigma=\sqrt{\frac{250}{5}}
]

[
\sigma=\sqrt{50}
]

[
\boxed{\sigma\approx7.07}
]

---

### Step 3: Calculate Z-Score

For age **20**:

[
Z=\frac{20-30}{7.07}\approx-1.41
]

For age **25**:

[
Z=\frac{25-30}{7.07}\approx-0.71
]

For age **30**:

[
Z=\frac{30-30}{7.07}=0
]

For age **35**:

[
Z=\frac{35-30}{7.07}\approx0.71
]

For age **40**:

[
Z=\frac{40-30}{7.07}\approx1.41
]

---

## Final Answer

| Age | Z-Score |
| --: | ------: |
|  20 |   -1.41 |
|  25 |   -0.71 |
|  30 |    0.00 |
|  35 |   +0.71 |
|  40 |   +1.41 |

Therefore,

[
\boxed{Z=[-1.41,;-0.71,;0,;+0.71,;+1.41]}
]

### Exam Conclusion

**Z-score normalization converts each value into a standardized value representing how far it is from the mean in terms of standard deviations. The resulting data has a mean approximately equal to 0 and standard deviation approximately equal to 1.**

> **For your actual PYQ, if you give me the AGE values printed in the question, I can calculate the exact final values in the same exam format.**
