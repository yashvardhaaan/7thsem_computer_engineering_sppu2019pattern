# Unit IV – Application Analysis



SPPU Exam-Oriented Notes

Application Analysis & Design



Application analysis is an important part of object-oriented analysis and design. It focuses on understanding an application's requirements, identifying its classes, modeling interactions and defining the operations required to implement the application.

This section connects the concepts of Unit III (interaction modelling) with the application-level analysis and design of Unit IV.

The four topics to prepare are:

1. Application Interaction Model.
2. Application Class Model.
3. Application State Model.
4. Adding Operations.

# Q1. Explain Application Interaction Model.

Answer:

### 1. Definition

An application interaction model describes how an application interacts with its users, external systems and internal components to perform various operations.

It identifies the communication between different entities and explains how information flows through the application.

It helps understand the functional requirements and interactions of an application.

### 2. Objectives

1. To identify users and external systems interacting with the application.
2. To understand the communication between application components.
3. To identify input and output information.
4. To understand the sequence of interactions.
5. To identify the responsibilities of different components.
6. To define the application's functional requirements.

### 3. Components of Application Interaction Model

A. External Actors

External actors are entities that interact with the application.

Examples:

- Customer
- Administrator
- Bank Employee
- Payment Gateway

B. Application Components

These are internal modules or components responsible for application functionality.

Examples:

- Login Module
- Payment Module
- Order Management Module
- Notification Module

C. External Systems

These are independent systems with which the application communicates.

Examples:

- Payment Gateway
- Email Service
- Banking System
- Authentication Service

D. Messages and Interactions

Messages represent the information exchanged between different entities.

Examples:

- Login Request
- Payment Request
- Order Confirmation
- Authentication Response

### 4. Example: Online Shopping Application

Consider an online shopping application.

The customer interacts with the application to search products, add products to the cart and place orders.

The application communicates with external services such as payment gateways and notification services.

Working:

1. Customer logs into the application.
2. Application verifies login credentials.
3. Customer searches for products.
4. Application retrieves product details.
5. Customer adds products to the cart.
6. Customer places an order.
7. Application sends payment details to the payment gateway.
8. Payment gateway processes the payment.
9. Application confirms the order.
10. Notification service sends order confirmation.

### 5. Application Interaction Diagram

Application interaction model (illustrative)

### 6. Advantages

1. Helps identify application requirements.
2. Improves communication between components.
3. Identifies external dependencies.
4. Helps in system integration.
5. Makes application design easier.

### Conclusion

An application interaction model describes how users, external systems and internal application components communicate to perform different functions.

# Q2. Explain Application Class Model with an Example.

Answer:

### 1. Definition

An application class model represents the static structure of an application by identifying its important classes, attributes, operations and relationships.

It describes the application domain and how different classes are associated with one another.

It is generally represented using a UML class diagram.

### 2. Objectives

1. To identify important classes in an application.
2. To identify the attributes of each class.
3. To define operations or methods.
4. To identify relationships between classes.
5. To represent the static structure of the application.
6. To provide a foundation for application development.

### 3. Steps to Develop an Application Class Model

Step 1: Identify Classes

Identify the important entities of the application.

Example: In an online shopping application:

- Customer
- Product
- ShoppingCart
- Order
- Payment

Step 2: Identify Attributes

Identify the properties of each class.

Example:

Customer:

- customerId
- name
- email
- address

Product:

- productId
- productName
- price
- quantity

Step 3: Identify Operations

Identify the functions performed by each class.

Example:

Customer:

- login()
- register()
- updateProfile()

ShoppingCart:

- addProduct()
- removeProduct()
- calculateTotal()

Step 4: Identify Relationships

Identify associations, aggregation, composition and inheritance between classes.

Step 5: Draw the Class Diagram

Represent all identified classes and their relationships using UML notation.

### 4. Example: Online Shopping Application

### Application class model

Simplified class model for online shopping

### 5. Advantages

1. Provides a clear structure of the application.
2. Helps in identifying reusable classes.
3. Improves code organization.
4. Reduces design complexity.
5. Helps developers understand relationships between entities.

### Conclusion

An application class model describes the static structure of an application by identifying classes, attributes, operations and relationships. It serves as a foundation for object-oriented application design.

# Q3. Explain Application State Model with an Example.

Answer:

### 1. Definition

An application state model describes the different states of application objects and the events that cause transitions between those states.

It represents the dynamic behavior of an application and explains how its objects respond to different events during execution.

It is generally represented using a UML state machine diagram.

### 2. Objectives

1. To represent the lifecycle of application objects.
2. To identify different states of an application.
3. To identify events that trigger state changes.
4. To represent conditional transitions.
5. To handle exceptional situations.
6. To understand the dynamic behavior of an application.

### 3. Components of Application State Model

A. State

Represents a particular condition of an application object.

Example: An order can be in the following states:

- New
- Confirmed
- Shipped
- Delivered
- Cancelled

B. Event

An event is an occurrence that causes a change in the state of an object.

Examples:

- Order placed
- Payment received
- Product shipped
- Order cancelled

C. Transition

A transition represents movement from one state to another when an event occurs.

Example: When payment is received, an order changes from New to Confirmed.

D. Guard Condition

A guard condition is a Boolean condition that must be satisfied before a transition can occur.

Example: `[Payment successful]`.

### 4. Example: Online Shopping Application

Consider an online shopping application in which an order passes through different states.

Working:

1. Initially, the order is in the New state.
2. Customer places an order.
3. System processes the payment.
4. If payment is successful, the order moves to Confirmed.
5. The product is packed and shipped.
6. After delivery, the order moves to Delivered.
7. If the customer cancels before shipment and cancellation is permitted, the order moves to Cancelled.

### 5. Application State Diagram

Simplified application state model for an online order

### 6. Advantages

1. Helps understand application behavior.
2. Makes state-dependent operations clear.
3. Helps identify invalid state transitions.
4. Improves error handling.
5. Supports application testing.

### Conclusion

An application state model represents the lifecycle of application objects and explains how their states change in response to events and conditions.

# Q4. Explain Adding Operations in Application Analysis and Design.

Answer:

### 1. Definition

Adding operations is the process of identifying and assigning appropriate operations or methods to classes during application analysis and design.

An operation represents a service or function that an object of a class can perform.

Operations define the behavior and responsibilities of classes in an object-oriented application.

### 2. Need for Adding Operations

1. To define the functionality of each class.
2. To assign responsibilities to appropriate objects.
3. To implement application requirements.
4. To support communication between objects.
5. To connect the class model with interaction and state models.
6. To improve modularity and reusability.

### 3. Steps for Adding Operations

Step 1: Identify Application Requirements

Understand the functions that the application must perform.

Example: An online shopping application must allow customers to place orders and make payments.

Step 2: Identify Classes

Identify the classes responsible for the required functionality.

Example:

- Customer
- Product
- ShoppingCart
- Order
- Payment

Step 3: Identify Responsibilities

Determine what task each class should perform.

Example:

- Customer manages customer details.
- ShoppingCart manages selected products.
- Order manages order information.
- Payment processes transactions.

Step 4: Assign Operations to Classes

Assign appropriate methods to each class.

Example:

| Class        | Operations                                      |
| ------------ | ----------------------------------------------- |
| Customer     | login(), register(), updateProfile()            |
| Product      | getDetails(), checkAvailability()               |
| ShoppingCart | addProduct(), removeProduct(), calculateTotal() |
| Order        | placeOrder(), cancelOrder(), trackOrder()       |
| Payment      | processPayment(), refundPayment()               |

Step 5: Identify Parameters and Return Values

Determine the input parameters and return values of each operation.

Example:

`calculateTotal()`

- Input: Selected products and quantities.
- Output: Total shopping amount.

`processPayment(amount)`

- Input: Payment amount.
- Output: Payment status.

Step 6: Validate Operations

Check whether all application requirements are supported by the assigned operations and whether each operation belongs to the correct class.

### 4. Example: Adding Operations to a Shopping Cart Class

Consider a ShoppingCart class.

Class name: ShoppingCart

Attributes:

- cartId
- totalAmount
- itemCount

Operations:

- addProduct()
- removeProduct()
- calculateTotal()
- clearCart()
- checkout()

ShoppingCart class with attributes and operations

### 5. Relationship Between Operations and Other Models

- Class Model: Operations are assigned to classes.
- Interaction Model: Operations are invoked when objects exchange messages.
- State Model: Operations can be triggered during state transitions or executed as entry, exit or transition actions.

### 6. Advantages of Adding Operations

1. Defines clear class responsibilities.
2. Improves modularity.
3. Supports code reusability.
4. Simplifies implementation.
5. Makes application functionality easier to understand.

### Conclusion

Adding operations is an important activity in object-oriented application design. It defines the behavior of classes by assigning appropriate methods according to application requirements and object responsibilities.

# Important Differences for SPPU Exams

## 1. Application Class Model vs Application State Model

| Application Class Model              | Application State Model                        |
| ------------------------------------ | ---------------------------------------------- |
| Represents static structure.         | Represents dynamic behavior.                   |
| Describes classes and relationships. | Describes states and transitions.              |
| Contains attributes and operations.  | Contains events and guard conditions.          |
| Focuses on application structure.    | Focuses on object lifecycle.                   |
| Uses UML class diagrams.             | Uses UML state machine diagrams.               |
| Example: Order class.                | Example: New, Confirmed, Shipped order states. |

## 2. Application Interaction Model vs Application Class Model

| Interaction Model                          | Class Model                                   |
| ------------------------------------------ | --------------------------------------------- |
| Represents communication between entities. | Represents static application structure.      |
| Focuses on messages and interactions.      | Focuses on classes and relationships.         |
| Identifies actors and external systems.    | Identifies classes and attributes.            |
| Shows how entities communicate.            | Shows how entities are organized.             |
| Example: Customer makes payment.           | Example: Customer, Order and Payment classes. |

## 3. Operation vs Attribute

| Operation                           | Attribute                                   |
| ----------------------------------- | ------------------------------------------- |
| Represents the behavior of a class. | Represents the data or property of a class. |
| Defines what an object can do.      | Defines what an object contains.            |
| Written with parentheses in UML.    | Written as a variable/property.             |
| Example: calculateTotal().          | Example: totalAmount.                       |

# SPPU Exam Preparation Priority

| Topic                              | Priority  | Preparation                 |
| ---------------------------------- | --------- | --------------------------- |
| Application Interaction Model      | High      | Definition + example        |
| Application Class Model            | Very High | Steps + class diagram       |
| Application State Model            | High      | State diagram + explanation |
| Adding Operations                  | Very High | Steps + class example       |
| Class and State Model Relationship | High      | Comparison + example        |

## Final study checklist

Application Analysis – Progress

0/9

Application interaction model and components

Application class model definition

Steps to construct application class model

Application state model and components

Online shopping state diagram

Meaning and purpose of adding operations

Steps for assigning operations to classes

ShoppingCart class diagram with operations

Relationship between interaction, class and state models

Exam tip: The November 2022 paper specifically included application class-model construction. Give extra attention to identifying classes, attributes, operations and relationships, and practise drawing a complete class diagram.

Recommended preparation order: Application Class Model → Adding Operations → Application Interaction Model → Application State Model.

This completes the four topics in your Application Analysis section.