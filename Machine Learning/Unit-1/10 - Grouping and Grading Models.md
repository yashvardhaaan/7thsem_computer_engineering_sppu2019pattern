# 10. Grouping and Grading Models

### PYQ — 2024 [5 Marks]

**Describe grouping and grading models.**

## Introduction

**Grouping and Grading** are two important approaches used in Machine Learning for analyzing and classifying data.

* **Grouping** means dividing data into **similar groups or clusters**.
* **Grading** means assigning a **score, class, or category** to data based on its characteristics.

```text
                    DATA
                      │
             ┌────────┴────────┐
             ↓                 ↓
         GROUPING           GRADING
             ↓                 ↓
      Similar Groups       Score / Class
        /    |    \          /     \
       ↓     ↓     ↓        ↓       ↓
    Group A B   Group C   Grade A   Grade B
```

---

# 1. Grouping Models

## Definition

A **Grouping Model** is a Machine Learning model that divides data into groups based on **similarity or common characteristics**.

Grouping is generally associated with **unsupervised learning**, because the groups are not predefined.

### Basic Working

```text id="4qj6r5"
       Unlabelled Data
             ↓
      Grouping Algorithm
             ↓
     ┌───────┼───────┐
     ↓       ↓       ↓
  Group 1 Group 2 Group 3
```

Data points within the same group are more similar to each other than to points in other groups.

---

## Example: Customer Segmentation

An online shopping company can group customers based on:

* Purchasing frequency
* Amount spent
* Products purchased
* Visit frequency

```text id="3gk5t8"
             Customers
                 ↓
          Grouping Model
                 ↓
       ┌─────────┼─────────┐
       ↓         ↓         ↓
   Low-value  Regular   Premium
   Customers  Customers Customers
```

### Common Grouping Models

### K-Means Clustering

K-Means divides data into a predefined number of clusters called **K**.

```text id="z0j5u7"
    ● ● ●             ▲ ▲ ▲
   ● ● ●              ▲ ▲ ▲
    ● ●               ▲ ▲

     Group 1           Group 2
```

**Applications:**

* Customer segmentation
* Market research
* Image segmentation
* Pattern discovery

Other grouping techniques include **Hierarchical Clustering** and **DBSCAN**.

---

# 2. Grading Models

## Definition

A **Grading Model** assigns a **score, grade, class, or rating** to an input based on its features and learned patterns.

Unlike grouping, grading usually involves determining **how well or to what category an individual data item belongs**.

### Basic Working

```text id="9cljba"
          Input Data
              ↓
        Grading Model
              ↓
       ┌──────┼──────┐
       ↓      ↓      ↓
    Grade A Grade B Grade C
```

---

## Example: Student Grading

A grading model can use:

* Marks
* Attendance
* Internal assessment
* Assignments

to predict or assign a grade.

```text id="s5g6r2"
Marks + Attendance + Assignments
                ↓
          Grading Model
                ↓
        ┌───────┼───────┐
        ↓       ↓       ↓
      Grade A Grade B Grade C
```

For example:

```text
90–100 → A
75–89  → B
60–74  → C
Below 60 → D
```

In a real ML system, the boundaries may be **learned from historical data** rather than manually fixed.

---

# Difference Between Grouping and Grading

| Basis                | Grouping Model                   | Grading Model                     |
| -------------------- | -------------------------------- | --------------------------------- |
| **Purpose**          | Divides data into similar groups | Assigns score/class/rating        |
| **Typical Learning** | Unsupervised                     | Usually supervised                |
| **Output**           | Groups or clusters               | Grade, score, or class            |
| **Labels**           | Usually not available            | Usually available during training |
| **Main Concept**     | Similarity                       | Prediction / evaluation           |
| **Example**          | Customer segmentation            | Student grade prediction          |
| **Common Models**    | K-Means, Hierarchical Clustering | Classification, Regression        |

---

## Simple Example

Suppose a college has student data.

### Grouping

The system discovers groups based on performance:

```text
Students
   ↓
Grouping
   ↓
High Performers
Average Performers
Low Performers
```

### Grading

The system predicts a specific grade for each student:

```text
Student Data
     ↓
Grading Model
     ↓
Student → Grade A
Student → Grade B
Student → Grade C
```

---

## Key Difference to Remember

> **Grouping answers: "Which group does this data belong to?"**

> **Grading answers: "What score, grade, or class should this data receive?"**

### Conclusion

**Grouping models** identify natural groups of similar data, while **grading models** assign a score, grade, or category to individual data items. Grouping is commonly performed using **clustering algorithms such as K-Means**, whereas grading can be performed using **classification or regression models** depending on whether the output is categorical or numerical.
