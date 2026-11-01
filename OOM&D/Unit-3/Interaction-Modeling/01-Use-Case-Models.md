# Unit – Use Case Modeling



SPPU Exam-Oriented Notes

Important PYQ Topic



These notes are structured for SPPU theory examinations. Each answer includes definitions, explanations, examples, diagrams and key points. You can write them directly in your answer sheet.

# Q1. What is an Actor, Use Case and Use Case Diagram? Explain the relationships in a Use Case Diagram with examples.

Answer:

### 1. Actor

An actor is an external entity that interacts with the system to perform a particular task or achieve a specific goal.

- An actor can be a person, organization or external system.
- It interacts with the system but is not a part of the system.
- An actor can be a primary or secondary actor.

Examples:

- Customer
- Bank Employee
- Administrator
- Payment Gateway

Notation:

Actor notation – Stick figure

### 2. Use Case

A use case represents a specific functionality or service provided by a system to an actor to achieve a particular goal.

Examples:

- Withdraw Cash
- Check Balance
- Deposit Money
- Login
- Book Ticket

Notation:

Use case notation – Oval

### 3. Use Case Diagram

A use case diagram is a UML (Unified Modeling Language) behavioral diagram that represents the interaction between external actors and the functionalities of a system.

It describes what a system does rather than how the system performs its internal operations.

Purpose:

1. To identify system functionalities.
2. To identify external actors.
3. To represent interactions between actors and the system.
4. To define the scope and boundaries of a system.
5. To understand functional requirements.

### 4. Relationships in Use Case Diagram

There are four important relationships:

A. Association Relationship

- It represents communication between an actor and a use case.
- It is represented by a solid line.
- It shows that an actor participates in a particular functionality.

Example: A customer interacts with the Withdraw Cash use case.

Association relationship

B. Include Relationship

- It represents compulsory or common functionality reused by another use case.
- The included use case must execute whenever the base use case executes.
- It is represented by a dashed arrow with the stereotype `<<include>>`.
- The arrow points towards the included use case.

Example: Withdraw Cash includes Verify PIN.

Include relationship

C. Extend Relationship

- It represents optional or conditional functionality.
- The extending use case executes only when a particular condition is satisfied.
- It is represented by a dashed arrow with the stereotype `<<extend>>`.
- The arrow points towards the base use case.

Example: Print Receipt extends Withdraw Cash because printing a receipt is optional.

Extend relationship

D. Generalization Relationship

- It represents inheritance between actors or use cases.
- A specialized actor or use case inherits the behavior of a general actor or use case.
- It is represented by a solid line with a hollow triangular arrow pointing towards the parent.

Example: Credit Card Payment and Debit Card Payment are specialized forms of Payment.

Generalization relationship (illustrative)

### Conclusion

Use case diagrams help developers and users understand system requirements and interactions. The four main relationships are Association, Include, Extend and Generalization.

# Q2. Draw a Use Case Diagram for an ATM System and explain at least two use cases using scenarios.

Answer:

### 1. Introduction

An ATM (Automated Teller Machine) system allows bank customers to perform banking operations without directly interacting with bank employees.

It provides facilities such as cash withdrawal, balance enquiry, cash deposit and PIN verification.

### 2. Actors

1. Customer: Performs banking transactions.
2. Bank Server: Verifies customer details and processes transactions.
3. Bank Administrator: Maintains the ATM system.

### 3. Use Cases

- Authenticate User
- Withdraw Cash
- Check Balance
- Deposit Cash
- Change PIN
- Print Receipt
- Maintain ATM

### 4. Use Case Diagram – ATM System

[Use Case Diagram in UML - Creately Blog](https://images.openai.com/static-rsc-4/RHd9LdbgxQJnyZqh9tpfPLPzAwinaeAwj5b-e5w-dtGiXNZg-YK9OgrhhBfb4AtorruR8iluN7A7pKv_UvTy2f0bHOpgowtj-lA-OP6nYjKZoW-4onGQTPas4Fhu9IjaPrKkxEp1-WYD1vVOrOqt8_hY6Ebx42W_0rPqmWFKphA?purpose=inline)

[creately.com](https://creately.com/blog/diagrams/uml-diagram-types-examples/attachment/use-case-diagram-in-uml/?utm_source=chatgpt.com)

Exam drawing guide: Draw the following structure in your answer sheet. Use an actor outside the rectangle and use cases inside it.

```
             ATM SYSTEM
    +------------------------------+
    |                              |
    |   (Authenticate User)         |
    |           ^                  |
    |           | <<include>>      |
    |   (Withdraw Cash)            |
    |   (Check Balance)            |
    |   (Deposit Cash)             |
    |   (Change PIN)               |
    |   (Print Receipt)            |
    |                              |
    |   (Maintain ATM)              |
    +------------------------------+

Customer ---- Withdraw Cash
Customer ---- Check Balance
Customer ---- Deposit Cash
Customer ---- Change PIN
Administrator ---- Maintain ATM
Bank Server ---- Authenticate User
```

The diagram should show the relationships clearly:

- Customer is associated with banking transactions.
- Each transaction includes authentication.
- Print Receipt can optionally extend a transaction.
- Bank Server participates in authentication and transaction processing.

### 5. Use Case Scenarios

A use case scenario describes the sequence of steps performed by an actor to achieve a particular goal.

Use Case 1: Withdraw Cash

| Field         | Description                                      |
| ------------- | ------------------------------------------------ |
| Use case name | Withdraw Cash                                    |
| Primary actor | Customer                                         |
| Precondition  | ATM is working and customer has a valid ATM card |
| Trigger       | Customer selects Withdraw Cash                   |
| Postcondition | Cash is dispensed and account balance is updated |

Main flow:

1. Customer inserts ATM card.
2. ATM asks for the PIN.
3. Customer enters the PIN.
4. ATM verifies the PIN with the bank server.
5. Customer selects Withdraw Cash.
6. Customer enters the withdrawal amount.
7. ATM checks account balance and withdrawal limits.
8. Bank server approves the transaction.
9. ATM dispenses cash.
10. ATM updates the transaction details.
11. Customer receives cash and optionally prints a receipt.

Alternative flow:

- If the PIN is incorrect, the ATM displays an error message.
- If insufficient balance is available, the ATM displays an insufficient balance message.
- If cash is unavailable, the ATM informs the customer.

Use Case 2: Check Account Balance

| Field         | Description                    |
| ------------- | ------------------------------ |
| Use case name | Check Balance                  |
| Primary actor | Customer                       |
| Precondition  | Customer has a valid ATM card  |
| Trigger       | Customer selects Check Balance |
| Postcondition | Account balance is displayed   |

Main flow:

1. Customer inserts the ATM card.
2. ATM asks for the PIN.
3. Customer enters the PIN.
4. ATM verifies the PIN through the bank server.
5. Customer selects Check Balance.
6. ATM sends a balance enquiry request to the bank server.
7. Bank server retrieves the account balance.
8. ATM displays the available balance.
9. Customer optionally prints the receipt.
10. Customer removes the card.

Alternative flow:

- If the PIN is incorrect, an error message is displayed.
- If the bank server is unavailable, the ATM displays a service unavailable message.

### Conclusion

The ATM use case diagram represents the interaction between customers, bank servers and ATM functionalities. It helps in identifying and understanding the functional requirements of the ATM system.

# Q3. Design a Use Case Diagram for an Online Reservation System.

Answer:

### 1. Introduction

An Online Reservation System is a software application that allows users to search, select, book and cancel reservations through the internet.

It can be used for railway tickets, movie tickets, hotels, buses and flights.

### 2. Actors

1. Customer: Searches and books reservations.
2. Administrator: Manages the reservation system.
3. Payment Gateway: Processes online payments.
4. Notification Service: Sends booking confirmation and cancellation messages.

### 3. Use Cases

- Register
- Login
- Search Availability
- View Details
- Select Reservation
- Book Reservation
- Make Payment
- Cancel Reservation
- View Booking History
- Manage Reservations

### 4. Use Case Diagram – Online Reservation System

[Online Railway Ticket Reservation System - GeeksforGeeks](https://images.openai.com/static-rsc-4/rA1fAO9vHBlmGOSmA4wwD_E-_prAt5t_g97GyIWYxP2QTTBeH1Q4nfV33UGyqgKjoZabYa3pdbSbB3lHM1o3L9cQS7RZQieTz3ZlLA--6rxXaf2nEhIdrc0v0ytlySQRF0UovB0r0QtV_lqohY3paO3_8N5RWs-MJqwGFfTibW8?purpose=inline)

[geeksforgeeks.org](https://www.geeksforgeeks.org/software-engineering/online-railway-ticket-reservation-system/?utm_source=chatgpt.com)

Exam drawing guide:

```
           ONLINE RESERVATION SYSTEM
    +------------------------------------+
    |                                    |
    |  (Register)                        |
    |  (Login)                           |
    |  (Search Availability)             |
    |  (View Details)                    |
    |  (Book Reservation)                |
    |  (Make Payment)                    |
    |  (Cancel Reservation)              |
    |  (View Booking History)            |
    |  (Send Confirmation)               |
    |  (Manage Reservations)             |
    |                                    |
    +------------------------------------+

Customer -------- Search Availability
Customer -------- Book Reservation
Customer -------- Cancel Reservation
Customer -------- View Booking History

Book Reservation --<<include>>--> Make Payment
Book Reservation --<<include>>--> Send Confirmation

Payment Gateway -------- Make Payment
Administrator ---------- Manage Reservations
Notification Service --- Send Confirmation
```

### 5. Explanation of the Use Cases

1\. Register

- New users enter their personal details.
- System validates the details.
- A new user account is created.

2\. Search Availability

- Customer enters the required date and destination or reservation details.
- System searches available options.
- Available reservations are displayed.

3\. Book Reservation

- Customer selects an available reservation.
- Enters the required passenger or booking details.
- System processes the booking.
- Payment is completed.
- Booking confirmation is generated.

4\. Make Payment

- Customer selects the payment method.
- Payment gateway processes the payment.
- System receives payment status.
- Booking is confirmed after successful payment.

5\. Cancel Reservation

- Customer selects an existing booking.
- System checks cancellation eligibility.
- Booking is cancelled.
- Refund is initiated if applicable.

6\. Manage Reservations

- Administrator can add, update or remove reservation details.
- Administrator manages availability and booking records.

### Conclusion

An online reservation use case diagram shows the interaction between customers, administrators and external services. It helps identify all the major functionalities required for an online booking application.

# Q4. Write a Use Case Description for Buying a Beverage.

Answer:

### 1. Introduction

A use case description explains the steps involved in performing a particular operation in a system.

Buying a beverage is an example of a use case in which a customer purchases a drink from a vending machine.

### 2. Use Case Description

| Field          | Description                                       |
| -------------- | ------------------------------------------------- |
| Use case name  | Buy a Beverage                                    |
| Primary actor  | Customer                                          |
| Goal           | Purchase a beverage                               |
| Preconditions  | Vending machine is working and contains beverages |
| Trigger        | Customer wants to purchase a beverage             |
| Postconditions | Beverage is dispensed and payment is completed    |

### 3. Main Success Scenario

1. Customer approaches the vending machine.
2. Machine displays the available beverages.
3. Customer selects a beverage.
4. Machine displays the price.
5. Customer inserts cash or selects a digital payment option.
6. Machine verifies the payment.
7. Machine checks beverage availability.
8. Machine dispenses the selected beverage.
9. Machine returns any applicable change.
10. Transaction is completed.

### 4. Alternative Scenarios

Scenario 1: Insufficient Payment

1. Customer inserts insufficient money.
2. Machine displays the remaining amount required.
3. Customer inserts additional money.
4. Transaction continues.

Scenario 2: Beverage Unavailable

1. Customer selects a beverage.
2. Machine checks its availability.
3. Machine displays an out-of-stock message.
4. Customer selects another beverage or cancels the transaction.
5. Machine refunds the money if the transaction is cancelled.

Scenario 3: Payment Failure

1. Customer makes a digital payment.
2. Payment gateway rejects the transaction.
3. Machine displays a payment failure message.
4. Customer retries payment or cancels the transaction.

### 5. Use Case Diagram (Optional)

### Conclusion

The Buy a Beverage use case describes the interaction between a customer and a vending machine, including normal and exceptional transaction flows.

# Q5. Identify Use Cases and Actors for a Given System.

Answer:

### 1. Introduction

Identifying actors and use cases is an important step in developing a use case model. It helps determine who interacts with the system and what functionalities the system should provide.

### 2. Identification of Actors

An actor is identified by asking the following questions:

1. Who uses the system?
2. Who provides information to the system?
3. Who receives information from the system?
4. Which external systems interact with the system?
5. Who maintains or manages the system?

Examples of actors:

- Customer
- Administrator
- Employee
- Manager
- Payment Gateway
- External Database System

### 3. Identification of Use Cases

Use cases are identified by finding the services or functions that the system provides to its actors.

The following questions help identify use cases:

1. What tasks does the actor perform?
2. What information does the actor need from the system?
3. What information does the actor provide?
4. What happens when an error occurs?
5. What operations can the actor perform?

### 4. Example: Library Management System

Actors:

1. Student – searches and borrows books.
2. Librarian – manages books and issues books.
3. Administrator – manages users and system settings.

Use Cases:

- Login
- Search Book
- Issue Book
- Return Book
- Renew Book
- Pay Fine
- Add Book
- Remove Book
- Manage Users

Use Case Identification Table

| Actor           | Use cases                                               |
| --------------- | ------------------------------------------------------- |
| Student         | Login, Search Book, Issue Book, Return Book, Renew Book |
| Librarian       | Issue Book, Return Book, Add Book, Remove Book          |
| Administrator   | Manage Users, Manage System                             |
| Payment Service | Process Fine Payment                                    |

### 5. Steps to Prepare a Use Case Model

1. Define the system boundary.
2. Identify all external actors.
3. Identify the use cases.
4. Establish relationships between actors and use cases.
5. Draw the use case diagram.
6. Write detailed descriptions for important use cases.
7. Validate the diagram with system requirements.

### Conclusion

Identifying actors and use cases helps developers understand system requirements, define system boundaries and design a clear use case model.

# Important revision – Prepare these differences

These differences are useful for short-answer and comparison questions.

### 1. Include vs Extend

| Include                                     | Extend                                            |
| ------------------------------------------- | ------------------------------------------------- |
| Represents compulsory functionality.        | Represents optional or conditional functionality. |
| Used for reusing common behavior.           | Used for adding additional behavior.              |
| Always executes with the base use case.     | Executes only when a condition is satisfied.      |
| Arrow points towards included use case.     | Arrow points towards base use case.               |
| Example: Withdraw Cash includes Verify PIN. | Example: Print Receipt extends Withdraw Cash.     |

### 2. Actor vs Use Case

| Actor                                        | Use Case                              |
| -------------------------------------------- | ------------------------------------- |
| External entity interacting with the system. | Functionality provided by the system. |
| Represented by a stick figure.               | Represented by an oval.               |
| Exists outside system boundary.              | Exists inside system boundary.        |
| Example: Customer.                           | Example: Book Ticket.                 |

### 3. Use Case vs Use Case Scenario

| Use Case                          | Use Case Scenario                                |
| --------------------------------- | ------------------------------------------------ |
| Describes a system functionality. | Describes a particular sequence of interactions. |
| Can contain multiple scenarios.   | Represents one specific flow.                    |
| Example: Withdraw Cash.           | Example: Successful withdrawal of ₹5,000.        |

# SPPU Exam Preparation Priority

| Topic                                          | Priority  | Preparation                   |
| ---------------------------------------------- | --------- | ----------------------------- |
| Actor, Use Case, Use Case Diagram              | Very High | Full theory                   |
| Relationships: Include, Extend, Generalization | Very High | Definitions + diagrams        |
| ATM Use Case Diagram                           | Very High | Diagram + 2 scenarios         |
| Online Reservation System                      | High      | Diagram + explanation         |
| Buying a Beverage                              | High      | Complete use case description |
| Identify Actors and Use Cases                  | High      | Theory + example              |

Exam writing tips:

1. Start with a proper definition.
2. Underline important keywords such as Actor, Use Case, System Boundary, Include and Extend.
3. Draw diagrams using a pencil and ruler.
4. Label every actor, use case and relationship.
5. For scenario questions, write Preconditions, Postconditions, Main Flow and Alternative Flow.
6. Write a short conclusion wherever appropriate.

My recommendation: Prepare Q1 and Q2 particularly well. They cover the fundamental concepts and diagram-based application of use case modeling. Also practise drawing the ATM and Reservation diagrams independently without looking at the notes.