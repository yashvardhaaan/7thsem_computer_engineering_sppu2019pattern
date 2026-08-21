# Content-Based Filtering

### Exam Question — [5 Marks]

**Explain Content-Based Filtering with an example.**

## Definition

**Content-Based Filtering** is a recommendation technique that recommends **items similar to the items a user has previously liked or interacted with**, based on the **features or characteristics of those items**.

It creates a **user preference profile** from the user's past choices and compares it with the features of other items.

---

## Basic Working

```text id="9j6m2r"
       User's Past Choices
                ↓
       Extract Item Features
                ↓
      Build User Preference
             Profile
                ↓
       Compare with New Items
                ↓
        Calculate Similarity
                ↓
        Recommend Similar Items
```

---

# Example: Movie Recommendation

Suppose a user has watched and liked:

```text id="m8f3q2"
Movie 1 → Action + Sci-Fi
Movie 2 → Action + Adventure
```

From this history, the system learns that the user prefers:

```text id="4k7v2x"
Action
Sci-Fi
Adventure
```

Now consider the following movies:

| Movie   | Features           |
| ------- | ------------------ |
| Movie A | Action + Sci-Fi    |
| Movie B | Romance + Drama    |
| Movie C | Action + Adventure |
| Movie D | Comedy + Romance   |

The system compares the features of these movies with the user's preference profile.

```text id="q5n8z1"
User Preference
Action + Sci-Fi + Adventure
          ↓
     Compare Features
          ↓
 ┌────────┼─────────┐
 ↓        ↓         ↓
Movie A  Movie C   Movie B
 Similar  Similar   Less Similar
 ↓        ↓
Recommend Recommend
```

Therefore, **Movie A and Movie C** are recommended because their content is similar to the user's previous preferences.

---

# Similarity Calculation

A common technique used to compare item feature vectors is **Cosine Similarity**.

[
\boxed{
Cosine\ Similarity(A,B)=
\frac{A\cdot B}{|A||B|}
}
]

A higher similarity value means that two items have more similar features.

### Example

Represent movie features as:

```text id="9c2v7m"
Features: [Action, Sci-Fi, Comedy]

Movie A = [1, 1, 0]
Movie B = [1, 1, 1]
```

Since both movies contain **Action and Sci-Fi**, their similarity is high. Therefore, Movie B can be recommended to a user who liked Movie A.

---

# Another Example — Shopping

Suppose a user frequently purchases:

```text id="7x1p5a"
Laptop
Wireless Mouse
Keyboard
```

The system identifies interests such as:

```text id="f8k3w2"
Electronics
Computer Accessories
```

If a new product is:

```text id="0m4j9s"
Wireless Headphones
```

and its features are similar to the user's interests, the system may recommend it.

---

# Advantages

1. Provides **personalized recommendations**.
2. Does not require information about other users.
3. Can recommend new items if their features are known.
4. Recommendations are based on the user's own interests.
5. Works well when detailed item information is available.

# Limitations

1. Recommendations are limited to the available item features.
2. May repeatedly recommend items similar to what the user already likes.
3. It may have difficulty recommending completely different items.
4. Requires good-quality item feature information.

---

## Content-Based Filtering vs Collaborative Filtering

| Content-Based Filtering     | Collaborative Filtering                    |
| --------------------------- | ------------------------------------------ |
| Uses item features          | Uses user-item interactions                |
| Based on user's own history | Uses behavior of multiple users            |
| Recommends similar items    | Can recommend items liked by similar users |
| Example: Similar movies     | Example: "Users like you also liked..."    |

---

## ⭐ Exam-Friendly Answer

> **Content-Based Filtering is a recommendation technique that recommends items similar to those previously liked by a user. It extracts features from the user's previously selected items, builds a user preference profile, and compares this profile with the features of other items using a similarity measure such as cosine similarity. For example, if a user likes Action and Sci-Fi movies, the system will recommend other movies having similar Action and Sci-Fi characteristics. The main advantage is personalized recommendation without requiring data from other users.**

### Conclusion

**Content-Based Filtering → User's Past Preferences → Item Features → Similarity Calculation → Personalized Recommendation.**
