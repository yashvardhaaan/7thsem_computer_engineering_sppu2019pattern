# Topic 2 – Sequence Models



SPPU Exam-Oriented Notes

High PYQ Priority



Sequence models are part of UML (Unified Modeling Language) behavioral modeling. They describe how objects interact with one another through messages in a particular order over time.

The following answers are structured according to SPPU university exam writing style.

# Q1. What is a Sequence Model? Explain with an example.

Answer:

### 1. Definition

A sequence model is a UML interaction model that represents the sequence of interactions or messages exchanged between actors and objects to perform a particular operation in a system.

It describes the dynamic behavior of a system by showing how objects communicate with each other in a time-ordered manner.

A sequence model is generally represented using a Sequence Diagram.

### 2. Purpose of Sequence Model

1. To represent interactions between objects.
2. To show the order of messages exchanged.
3. To understand the dynamic behavior of a system.
4. To identify the responsibilities of different objects.
5. To describe the flow of a particular use case.
6. To help developers understand system functionality.

### 3. Example: ATM Cash Withdrawal

Consider a customer withdrawing money from an ATM.

The following objects participate in the interaction:

- Customer
- ATM
- Bank Server
- Account

Working:

1. Customer inserts the ATM card.
2. ATM asks for the PIN.
3. Customer enters the PIN.
4. ATM sends the PIN to the bank server for verification.
5. Bank server validates the PIN.
6. Customer enters the withdrawal amount.
7. ATM requests the bank server to process the transaction.
8. Bank server checks the account balance.
9. Bank server approves the transaction.
10. ATM dispenses cash to the customer.

### Sequence Diagram

[UML 순차 다이어그램 제대로 이해하기 + 무료 템플릿 알아보기](https://images.openai.com/static-rsc-4/VPnsEQ32XvJcCtLKUGRTwQpjWU2hTvopfAxFY0T1y8sORitxM952PMkhQ-pfre43ImMMV6H9irnMo-7vCZQ6PeGwXhq55gzRPE6-xn8t1StwtYepHPIXkZuUvwsSQge6Cbu0ecznLQGlQnryVgJt-zGdPJPz5tptU7kkWBw3zOQ?purpose=inline)

[edrawsoft.com](https://www.edrawsoft.com/kr/diagram-tutorial/what-is-a-sequence-diagram.html?srsltid=AfmBOopbKrU4BgBxW3wHbgZZQa8ME51TnCnl95Ebe7aLbEmE6sBDKAGh\&utm_source=chatgpt.com)

### 4. Advantages of Sequence Model

- Easy to understand object interactions.
- Shows the chronological order of messages.
- Helps identify missing interactions.
- Useful during system analysis and design.
- Helps in testing and debugging.

Conclusion: A sequence model represents the interaction between objects in chronological order and helps understand how a system performs a particular operation.

# Q2. Explain the Components of a Sequence Diagram.

Answer:

A sequence diagram is a UML interaction diagram that represents the communication between objects in a system through messages arranged in chronological order.

The following are the main components of a sequence diagram.

### 1. Actor

An actor is an external entity that interacts with the system.

- It can be a person or an external system.
- It initiates or participates in interactions.

Example: Customer, Administrator.

Actor notation

### 2. Object

An object represents an instance of a class that participates in an interaction.

- It is represented by a rectangle.
- The object name is generally underlined.
- It sends and receives messages.

Example: ATM, BankServer, Account.

Object notation

### 3. Lifeline

A lifeline represents the existence of an object during an interaction.

- It is represented by a vertical dashed line below the object.
- It shows the passage of time during the interaction.
- Messages are exchanged along lifelines.

Lifeline notation

### 4. Activation Bar

An activation bar represents the period during which an object is executing an operation or performing an activity.

- It is represented by a thin rectangle on the lifeline.
- It indicates the time an object is active.

Activation bar notation

### 5. Messages

A message represents communication between two objects.

Messages are represented by horizontal arrows connecting lifelines.

There are different types of messages:

A. Synchronous Message

- The sender waits until the receiver completes the operation.
- Represented by a solid line with a filled arrowhead.

Example: ATM requests PIN verification from the bank server.

B. Asynchronous Message

- The sender does not wait for the receiver to complete the operation.
- Represented by a solid line with an open arrowhead.

Example: Sending a notification request.

C. Return Message

- It represents the response returned by the receiver.
- Represented by a dashed line with an open arrowhead.

Example: Bank server returns PIN verification status.

### Message notation

### 6. Combined Fragment

A combined fragment represents conditional or repeated behavior in a sequence diagram.

Common types:

| Fragment | Meaning           | Example                    |
| -------- | ----------------- | -------------------------- |
| alt      | Alternative paths | Valid PIN / Invalid PIN    |
| opt      | Optional behavior | Print receipt              |
| loop     | Repeated behavior | Enter PIN again            |
| par      | Parallel behavior | Two independent operations |

### 7. Message Ordering

- Messages are arranged from top to bottom.
- The first message appears at the top.
- Later messages appear below earlier messages.
- This ordering represents the flow of time.

Conclusion: These components help represent object interactions, message exchange and the chronological flow of operations in a system.

# Q3. Draw a Sequence Diagram for an Online Shopping System.

Answer:

### 1. Introduction

An online shopping system allows customers to browse products, add products to a shopping cart, place orders and make online payments.

A sequence diagram represents the sequence of interactions between the customer and various system objects.

### 2. Objects Involved

1. Customer
2. Shopping Website
3. Product Catalog
4. Shopping Cart
5. Order Service
6. Payment Gateway

### 3. Sequence of Operations

1. Customer logs into the shopping website.
2. Website verifies the login credentials.
3. Customer searches for a product.
4. Website requests product details from the product catalog.
5. Product catalog returns available products.
6. Customer selects a product.
7. Website adds the product to the shopping cart.
8. Customer proceeds to checkout.
9. Order service creates an order.
10. Payment gateway processes the payment.
11. Payment gateway returns payment status.
12. Order service confirms the order.
13. Website displays the order confirmation to the customer.

### 4. Sequence Diagram

[How to Create Software Architecture Diagrams with Code - The Software Architects’ Toolbox — Top Developer Academy](https://images.openai.com/static-rsc-4/fuIcF15pWX3uIa8jLe8GcmklKL5EBSd9tvo-SVc0cJ2eiD7FBbaP4W2IGYQSh1HKUV_JIUxZsTgdVVBgMmZjGmra7HAvJ3Z1_ngNqSfzTvVX-LIiQXznX3NOR6zzQkI4OcG1XqtvajfxtZ1zj15OpQQruMw-dqo7PyJycIU9XgY?purpose=inline)

[topdeveloperacademy.com](https://topdeveloperacademy.com/articles/top-tools-software-architecture-diagrams-software-architects-toolbox?utm_source=chatgpt.com)

Important for SPPU: Draw the sequence diagram with vertical lifelines and horizontal messages. Show the order of messages from top to bottom.

### 5. Explanation

- Customer initiates the shopping process.
- Website communicates with the product catalog to retrieve products.
- Shopping cart stores the selected products.
- Order service manages order creation.
- Payment gateway processes the payment.
- Finally, the system confirms the order.

### Conclusion

The online shopping sequence diagram shows how different objects communicate with each other to complete an online purchase.

# Q4. Draw a Sequence Diagram for an ATM Machine.

Answer:

### 1. Introduction

An ATM (Automated Teller Machine) provides banking services such as cash withdrawal, balance enquiry and cash deposit.

A sequence diagram represents the interactions between the customer, ATM and bank server during a transaction.

### 2. Objects Involved

1. Customer
2. ATM Machine
3. Bank Server
4. Account

### 3. Sequence of Operations

1. Customer inserts the ATM card.
2. ATM requests the PIN.
3. Customer enters the PIN.
4. ATM sends the PIN to the bank server.
5. Bank server verifies the PIN.
6. Bank server returns the verification result.
7. ATM displays transaction options.
8. Customer selects cash withdrawal.
9. Customer enters the withdrawal amount.
10. ATM sends the withdrawal request to the bank server.
11. Bank server checks the available balance.
12. Bank server approves the transaction.
13. ATM dispenses cash.
14. ATM displays transaction completion.
15. Customer collects the cash and card.

### 4. Sequence Diagram

[ATM System UML Diagrams](https://images.openai.com/static-rsc-4/dn_zoqgzVBmvK12AICHTnVFxjWm0UkY6LmUK9HVMK1s5clt6qeT5LgfTLtYm8cXIYSlOP80yOdQ1Dp1NJI960vlTw_Qf6GNN5E79amyardLD0zWudM_HDIxSjqvH3P3W6BWNhhjqP6Ih-95CJxvuo90yYfwAlrFY1P2uYwqMMsw?purpose=inline)

[umlatthemr.blogspot.com](https://umlatthemr.blogspot.com/2017/04/atm-system-tasks-we-have-to-do-are-1.html?utm_source=chatgpt.com)

### 5. Explanation

- Customer interacts with the ATM machine.
- ATM communicates with the bank server for authentication.
- Bank server verifies the PIN and account balance.
- If sufficient balance is available, the bank server approves the transaction.
- ATM dispenses the cash and completes the transaction.

### 6. Alternative Scenario

If the PIN is incorrect:

1. ATM sends the entered PIN to the bank server.
2. Bank server identifies an invalid PIN.
3. Bank server returns an error response.
4. ATM displays an invalid PIN message.
5. Customer can retry according to the bank's attempt limit.

Conclusion: The ATM sequence diagram describes the chronological exchange of messages between the customer, ATM and bank server during cash withdrawal.

# Q5. Model the Sequence for Renting a Car.

Answer:

### 1. Introduction

A car rental system allows customers to search for available cars, select a vehicle, make reservations and complete payments.

A sequence diagram represents the interaction between the customer and the objects involved in renting a car.

### 2. Objects Involved

1. Customer
2. Rental Website
3. Car Inventory
4. Booking System
5. Payment Gateway

### 3. Sequence of Operations

1. Customer opens the rental website.
2. Customer enters the pickup location and rental dates.
3. Website sends an availability request to the car inventory.
4. Car inventory checks available cars.
5. Available cars are displayed to the customer.
6. Customer selects a car.
7. Website requests customer details.
8. Customer enters the required details.
9. Booking system creates a reservation request.
10. Payment gateway processes the payment.
11. Payment gateway returns the payment status.
12. Booking system confirms the reservation.
13. Website displays the booking confirmation.

### 4. Sequence Diagram

[AI Diagram Generator | Visual Paradigm](https://images.openai.com/static-rsc-4/C6mLdOxnrBY6Zt6Ktd4X6hYITN5uAoJn8hs1qP2AvDCyJHbdJFh5EFwJ7UxhbiPgp5Zr3wCy1sYWs08bvOUKdwIUyoSEfWkdNH-IMhbxJFS5hIlTHTdTM-joD2hxn7r6zidlxyfJaFwFj75i1Nb8bHYdtphg8xk33rJyk0z8Z3k?purpose=inline)

[visual-paradigm.com](https://www.visual-paradigm.com/features/ai-diagram-generation/?utm_source=chatgpt.com)

### 5. Explanation

- Customer searches for available cars.
- Rental website communicates with the inventory system.
- Customer selects an available vehicle.
- Booking system processes the reservation.
- Payment gateway verifies the payment.
- After successful payment, the booking is confirmed.

### Conclusion

The car rental sequence diagram represents the order of interactions between the customer, rental website, inventory, booking system and payment gateway.

# Q6. Differentiate between Sequence Diagram and Activity Diagram.

Answer:

Both sequence diagrams and activity diagrams are UML behavioral diagrams. However, they represent different aspects of system behavior.

| Sequence Diagram                               | Activity Diagram                                |
| ---------------------------------------------- | ----------------------------------------------- |
| Represents interaction between objects.        | Represents workflow of activities.              |
| Focuses on messages exchanged.                 | Focuses on activities and actions performed.    |
| Shows chronological ordering of messages.      | Shows the flow of control.                      |
| Uses lifelines and message arrows.             | Uses activity nodes, arrows and decision nodes. |
| Represents object communication.               | Represents business processes or algorithms.    |
| Time ordering is represented vertically.       | Workflow is represented through control flow.   |
| Useful for modeling a use case's interactions. | Useful for modeling a process or workflow.      |
| Example: ATM cash withdrawal interaction.      | Example: ATM transaction workflow.              |

### Sequence Diagram Example

[Sequence Diagram Tutorial - Complete Guide with Examples | Creately](https://images.openai.com/static-rsc-4/C2lhdmHw8jpkBn5BOdcys6WC2qZkgFRDmgWYvji9NpoREF3qvhGJRpMrE0_Uzu_TGZAQ93so79lRrZuFfl8vPwl9ZYuId0n3lIWqJfr-Qtusvjd-iPLNunZoYXB9o_Slb8Ic2f-FNhN9W0Gj3latJ8SYSLtyN0HJ4nTe6RWb1Gk?purpose=inline)

[creately.com](https://creately.com/blog/diagrams/sequence-diagram-tutorial/?utm_source=chatgpt.com)

### Activity Diagram Example

[Activity Diagrams 101: Definition, Benefits, Symbols, and Tutorial](https://images.openai.com/static-rsc-4/U93LlB5ttSG8cjspamV6_hmx0KZm61FCstHJNnbupEb8kUGNRuEtKT_2p5c41POM8RHdzxZAQOAYCal6sEb0KIU7UdgoboEzlFWsEq-EdG9pwtPyWtsYjkVOu85scSD8J6FS4wHPH5G_mvEn2OUgIiSlHYFh9rKjoe8sqfBF3KU?purpose=inline)

[edrawmax.com](https://www.edrawmax.com/article/activity-diagram-uml.html?utm_source=chatgpt.com)

Conclusion: Sequence diagrams focus on communication between objects, whereas activity diagrams focus on the workflow and sequence of activities in a system.

# Quick Revision – Important Concepts

### Sequence Diagram Notations

| Component            | Representation                                 |
| -------------------- | ---------------------------------------------- |
| Actor                | Stick figure                                   |
| Object               | Rectangle with object name                     |
| Lifeline             | Vertical dashed line                           |
| Activation bar       | Thin vertical rectangle                        |
| Synchronous message  | Solid line, filled arrowhead                   |
| Asynchronous message | Solid line, open arrowhead                     |
| Return message       | Dashed line, open arrowhead                    |
| Combined fragment    | Rectangle with operator such as alt, opt, loop |

### Important points to remember

1. A sequence diagram is an interaction diagram in UML.
2. It represents the dynamic behavior of a system.
3. Time flows from top to bottom.
4. Objects are arranged horizontally.
5. Lifelines represent the existence of objects.
6. Messages represent communication between objects.
7. Return messages are generally represented using dashed arrows.
8. `alt`, `opt` and `loop` are common combined fragments.

# SPPU PYQ Preparation Priority

| Question                                 | Priority  | What to prepare             |
| ---------------------------------------- | --------- | --------------------------- |
| Definition and purpose of sequence model | High      | Theory + example            |
| Components of sequence diagram           | Very High | All 6 components + notation |
| Online shopping sequence diagram         | High      | Diagram + explanation       |
| ATM sequence diagram                     | Very High | Diagram + message ordering  |
| Car rental sequence diagram              | High      | Diagram + explanation       |
| Sequence vs Activity diagram             | Very High | Difference table            |

## What to practise before the exam

- Learn the definition of sequence model.
- Draw all basic UML notations.
- Practise ATM cash withdrawal sequence diagram.
- Practise online shopping sequence diagram.
- Practise car rental sequence diagram.
- Memorize Sequence Diagram vs Activity Diagram.

Exam tip: For a 6–8 mark sequence diagram question, aim to write a short introduction, list participating objects, draw a properly labelled diagram and explain the message flow. For a theory question on components, explain each notation with a small diagram.