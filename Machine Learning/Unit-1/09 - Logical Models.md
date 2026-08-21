# 9. Logical Models

### PYQ

**No PYQ**

> **Exam Note:** There is no direct PYQ for this topic, but understand the basic concept because it can be useful for theory questions related to Machine Learning models.

## Definition

A **Logical Model** is a Machine Learning model that represents knowledge and makes predictions or decisions using **logical rules, conditions, and relationships**.

Instead of mainly using geometric distance or probability, logical models use **IF–THEN rules or decision structures** to reach a conclusion.

### Basic Structure

```text
             Input Data
                 ↓
        ┌─────────────────┐
        │ Logical Rules   │
        │   IF condition  │
        │   THEN result   │
        └────────┬────────┘
                 ↓
          Decision / Output
```

---

## Example

Consider deciding whether a student will pass:

```text
              Attendance > 75%?
                 /        \
               Yes         No
               ↓            ↓
          Marks > 40?      Fail
            /    \
          Yes     No
          ↓        ↓
        Pass      Fail
```

The model makes the decision by following a sequence of logical conditions.

---

# Decision Tree as a Logical Model

A **Decision Tree** is a common example of a logical model because it represents decisions through a series of conditions.

For example:

```text
             Income > ₹50K?
              /          \
            Yes           No
            ↓              ↓
       Credit Score?      Reject
        /       \
      Good      Poor
       ↓          ↓
    Approve     Reject
```

Each decision follows a logical rule:

```text
IF Income > ₹50K
AND Credit Score = Good
THEN Approve Loan
```

---

## Characteristics of Logical Models

1. **Rule-Based:** Uses logical conditions and rules.
2. **Easy to Interpret:** Decisions can be understood by humans.
3. **Decision Structure:** Often represented using trees or rule sets.
4. **Conditional Decisions:** Uses conditions such as `IF`, `ELSE`, `AND`, and `OR`.
5. **Useful for Classification:** Particularly suitable for decision-making and classification problems.

---

## Advantages

* Easy to understand and explain.
* Decisions can be traced from input to output.
* Useful when rules are clear.
* Does not require complex mathematical calculations in many cases.

## Limitations

* Complex rule structures can become difficult to manage.
* Decision trees can overfit training data.
* Performance may be lower for some highly complex problems compared with advanced models such as neural networks.

---

## Geometric vs Probabilistic vs Logical Models

```text
                 ML MODELS
                    │
       ┌────────────┼────────────┐
       ↓            ↓            ↓
  Geometric    Probabilistic   Logical
       │            │            │
 Distance &     Probability    Rules &
 Boundaries     & Uncertainty   Conditions
       │            │            │
   SVM, KNN     Naive Bayes    Decision Tree
```

### Key Point

> **Logical models use rules and logical conditions to transform input data into decisions or predictions. Decision Trees are a common example of a logical model.**
