2. Comparison of Machine Learning with Traditional Programming
PYQ — 2023 [5 Marks]

Compare Machine Learning with traditional programming. Discuss types of Machine Learning with suitable examples.

Traditional Programming

In traditional programming, the programmer explicitly defines the rules and logic required to solve a problem. The computer applies these predefined rules to the given input and produces the output.

        INPUT
          │
          ↓
   ┌──────────────┐
   │ Programmer   │
   │ defines rules│
   └──────┬───────┘
          ↓
       PROGRAM
          │
          ↓
        OUTPUT

Example:
To calculate the salary of an employee:

Salary = Basic Salary + Allowances - Deductions

The programmer explicitly writes these rules.

Machine Learning

In Machine Learning, the programmer does not need to explicitly define every rule. Instead, the algorithm learns patterns and relationships from existing data and creates a model.

       TRAINING DATA
             │
             ↓
      ┌──────────────┐
      │ ML Algorithm │
      └──────┬───────┘
             ↓
        ML MODEL
             │
             ↓
        NEW INPUT
             │
             ↓
        PREDICTION

Example:
For house-price prediction, the model learns from previous houses:

Area + Location + Bedrooms + Age
              ↓
        ML Model
              ↓
       Predicted Price
Comparison: Traditional Programming vs Machine Learning
Basis	Traditional Programming	Machine Learning
Approach	Rules are explicitly programmed	Rules/patterns are learned from data
Input	Data + Program	Data + Expected output for training
Output	Result	Learned model/prediction
Role of Programmer	Defines logic and rules	Provides data, selects algorithm and trains model
Data Requirement	Usually less dependent on large datasets	Requires sufficient training data
Adaptability	Changes require modification of program	Model can be retrained with new data
Suitable for	Well-defined rule-based problems	Complex problems where rules are difficult to define
Example	Calculator, payroll system	Face recognition, spam detection
Simple Diagram
TRADITIONAL PROGRAMMING


       DATA + RULES
            │
            ↓
        PROGRAM
            │
            ↓
          OUTPUT




MACHINE LEARNING


    DATA + EXAMPLES
            │
            ↓
       ML ALGORITHM
            │
            ↓
       LEARNED MODEL
            │
            ↓
       NEW DATA
            │
            ↓
        PREDICTION
Types of Machine Learning

Machine Learning is mainly classified into the following types:

1. Supervised Learning

The model is trained using labelled data, where the correct output is already known.

Labelled Data → ML Algorithm → Trained Model → Prediction
Examples:
Classification: Spam or Not Spam
Regression: Predicting house prices
2. Unsupervised Learning

The model works with unlabelled data and identifies hidden patterns or groups.

Unlabelled Data → ML Algorithm → Patterns / Groups
Example:

Customer segmentation — grouping customers based on purchasing behavior.

3. Reinforcement Learning

In Reinforcement Learning, an agent learns by interacting with an environment. It receives rewards for correct actions and penalties for incorrect actions.

        Environment
             ↑
             │
        Action │ Reward
             │
           Agent
             │
             ↓
       Learns better action
Examples:
Game-playing AI
Robot navigation
Autonomous systems
Conclusion

Traditional programming depends on explicitly written rules, whereas Machine Learning enables systems to learn rules and patterns from data. Machine Learning is mainly classified into Supervised, Unsupervised, and Reinforcement Learning.