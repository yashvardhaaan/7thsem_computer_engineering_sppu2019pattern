# 5. Matrix Chain Multiplication Using Dynamic Programming



Very Important – Repeated PYQ

10 Marks



Matrix Chain Multiplication (MCM) is one of the most important numerical problems in the SPPU Dynamic Programming unit.

Previous year questions:

1. Nov 2022 Q1(a): Solve a six-matrix chain multiplication problem using DP. (10 marks)
2. May 2024 Q2(b): Find the optimal multiplication sequence for four matrices and calculate total multiplications. (10 marks)
3. Nov 2024 Q2(a): Solve a five-matrix chain multiplication problem using DP. (10 marks)

All three questions test the same algorithm. The number of matrices and their dimensions change.

## 1. Definition (1 Mark)

Matrix Chain Multiplication is a Dynamic Programming problem in which we are given a sequence of matrices, and the objective is to find the most efficient order of multiplication that minimizes the total number of scalar multiplications.

Important points:

- Matrix order cannot be changed.
- Only the placement of parentheses can be changed.
- Matrix multiplication is associative.
- Different multiplication orders may require different numbers of scalar multiplications.

For example:

\\[ (A_1A_2)A_3 \neq A_1(A_2A_3) \\]

The resulting matrix is the same, but the number of scalar multiplications may differ.

## 2. Matrix Multiplication Rule

Suppose:

- Matrix A has dimensions \\(p\times q\\).
- Matrix B has dimensions \\(q\times r\\).

Then the resulting matrix has dimensions:

\\[ A\times B=(p\times r) \\]

Number of scalar multiplications:

\\[ \boxed{p\times q\times r} \\]

Example:

If A is \\(10\times20\\) and B is \\(20\times30\\):

\\[ 10\times20\times30=6000 \\]

Therefore, 6000 scalar multiplications are required.

## 3. Mathematical Formulation (2 Marks)

Let:

\\[ A_1,A_2,\ldots,A_n \\]

be a sequence of matrices.

Let the dimensions be represented by:

\\[ A_i=p\_{i-1}\times p_i \\]

Define:

\\[ M[i,j] \\]

as the minimum number of scalar multiplications required to multiply matrices \\(A_i\\) through \\(A_j\\).

Base condition:

\\[ \boxed{M[i,i]=0} \\]

Because a single matrix requires no multiplication.

Recurrence relation:

\\[ \boxed{ M[i,j]= \min\_{i\leq k\<j} \left\\{ M[i,k]+M[k+1,j] +p\_{i-1}p_kp_j \right\\} } \\]

Where:

- \\(i,j\\) = Starting and ending matrix positions.
- \\(k\\) = Possible splitting position.
- \\(M[i,k]\\) = Cost of left subchain.
- \\(M[k+1,j]\\) = Cost of right subchain.
- \\(p\_{i-1}p_kp_j\\) = Cost of multiplying the two resulting matrices.

## 4. Algorithm / Pseudocode (2 Marks)

Algorithm: MatrixChainOrder(p, n)

```
MatrixChainOrder(p, n)
{
    for i = 1 to n do
        M[i,i] = 0;

    for length = 2 to n do
    {
        for i = 1 to n-length+1 do
        {
            j = i + length - 1;
            M[i,j] = infinity;

            for k = i to j-1 do
            {
                cost = M[i,k]
                     + M[k+1,j]
                     + p[i-1]*p[k]*p[j];

                if cost < M[i,j] then
                {
                    M[i,j] = cost;
                    S[i,j] = k;
                }
            }
        }
    }

    return M[1,n], S;
}
```

Explanation:

1. Initialize the diagonal of the DP table to zero.
2. Consider chains of increasing length.
3. Divide each chain at every possible position.
4. Calculate the multiplication cost for each division.
5. Select the minimum cost.
6. Store the optimal splitting position.
7. Obtain the final multiplication sequence using the split table.

## 5. Solved Numerical Example (3 Marks)

Consider four matrices with the following dimensions.

Illustrative example

| Matrix | Dimensions |
| ------ | ---------- |
| A1     | 10 × 30    |
| A2     | 30 × 5     |
| A3     | 5 × 60     |
| A4     | 60 × 2     |

Dimension array:

\\[ P=[10,30,5,60,2] \\]

We need to find:

1. Optimal multiplication sequence.
2. Minimum number of scalar multiplications.

Step 1: Initialize DP table.

For individual matrices:

\\[ M[i,i]=0 \\]

| Matrix       | A1 | A2 | A3 | A4 |
| ------------ | -- | -- | -- | -- |
| Initial cost | 0  | 0  | 0  | 0  |

Step 2: Calculate cost for chains of length 2.

Formula:

\\[ Cost=p\_{i-1}\times p_k\times p_j \\]

For A1 × A2:

\\[ 10\times30\times5=1500 \\]

For A2 × A3:

\\[ 30\times5\times60=9000 \\]

For A3 × A4:

\\[ 5\times60\times2=600 \\]

Therefore:

| Chain | Multiplication cost |
| ----- | ------------------- |
| A1A2  | 1500                |
| A2A3  | 9000                |
| A3A4  | 600                 |

Step 3: Calculate cost for chains of length 3.

For A1, A2, A3, there are two possible arrangements.

Option 1:

\\[ (A1)(A2A3) \\]

\\[ =0+9000+(10\times30\times60) \\]

\\[ =27000 \\]

Option 2:

\\[ (A1A2)(A3) \\]

\\[ =1500+0+(10\times5\times60) \\]

\\[ =4500 \\]

Minimum cost:

\\[ M[1,3]=4500 \\]

Similarly, for A2, A3, A4:

Option 1:

\\[ 0+600+(30\times5\times2)=900 \\]

Option 2:

\\[ 9000+0+(30\times60\times2)=12600 \\]

Minimum cost:

\\[ M[2,4]=900 \\]

Step 4: Calculate cost for all four matrices.

There are three possible splitting positions.

| Splitting position | Calculation           | Cost |
| ------------------ | --------------------- | ---- |
| k = 1              | 0 + 900 + (10×30×2)   | 1500 |
| k = 2              | 1500 + 600 + (10×5×2) | 2200 |
| k = 3              | 4500 + 0 + (10×60×2)  | 5700 |

Therefore:

\\[ M[1,4]=\min(1500,2200,5700) \\]

\\[ \boxed{M[1,4]=1500} \\]

Step 5: Construct the DP table.

Minimum scalar multiplication costs

| i / j | A1 | A2   | A3   | A4   |
| ----- | -- | ---- | ---- | ---- |
| A1    | 0  | 1500 | 4500 | 1500 |
| A2    | —  | 0    | 9000 | 900  |
| A3    | —  | —    | 0    | 600  |
| A4    | —  | —    | —    | 0    |

## 6. Optimal Multiplication Sequence (1 Mark)

The minimum cost occurs when the first split is at k = 1.

The remaining subchain A2, A3, A4 is optimally divided at k = 2.

Therefore, the optimal parenthesization is:

\\[ \boxed{A_1(A_2(A_3A_4))} \\]

Final multiplication:

1. Multiply A3 × A4.
2. Multiply A2 × (A3A4).
3. Multiply A1 × the resulting matrix.

## Final Answer

Optimal sequence\
A1(A2(A3A4))

Minimum multiplications

# 1,500

\\[ \boxed{\text{Minimum Cost}=1500} \\]

## 7. Time and Space Complexity (1 Mark)

Let n be the number of matrices.

| Operation                | Complexity          |
| ------------------------ | ------------------- |
| Initializing DP table    | O(n)                |
| Calculating subproblems  | O(n²)               |
| Checking possible splits | O(n) per subproblem |

Overall time complexity:

\\[ \boxed{T(n)=O(n^3)} \\]

Space complexity:

\\[ \boxed{S(n)=O(n^2)} \\]

## Important SPPU PYQ Revision

All three PYQs use the same recurrence relation and algorithm.

| PYQ            | Number of matrices | Marks |
| -------------- | ------------------ | ----- |
| Nov 2022 Q1(a) | 6                  | 10    |
| May 2024 Q2(b) | 4                  | 10    |
| Nov 2024 Q2(a) | 5                  | 10    |

What changes? Only the dimensions of matrices and the size of the DP table.

### Common mistakes to avoid

1. Do not change the order of matrices.
2. Do not confuse matrix dimensions with multiplication costs.
3. Always initialize diagonal elements to zero.
4. Check every possible splitting position.
5. Write the final optimal parenthesization, not just the minimum cost.

Exam formula to memorize

\\[ \boxed{ M[i,j]=\min\_{i\leq k\<j} \\{M[i,k]+M[k+1,j]+p\_{i-1}p_kp_j\\} } \\]

Complexity: \\(O(n^3)\\) time and \\(O(n^2)\\) space.

## Practice check

Question: If A is 10 × 20 and B is 20 × 30, how many scalar multiplications are required?

300

6000

600

2000

Check answer

Next step: Upload the actual Nov 2022, May 2024 and Nov 2024 MCM questions. I'll solve each with its exact dimensions and complete DP table, including the optimal parenthesization.