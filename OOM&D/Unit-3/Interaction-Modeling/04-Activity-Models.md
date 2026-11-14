# Topic 3 – Activity Models



SPPU Exam-Oriented Notes

High PYQ Priority



Activity models are used in UML to represent the workflow of a system. They show the sequence of activities, decisions, conditions and parallel operations involved in completing a particular process.

The following answers are structured for SPPU university examinations, with definitions, notations, diagrams, explanations and examples.

# Q1. What is an Activity Diagram? Explain its purpose and components.

Answer:

### 1. Definition

An Activity Diagram is a UML behavioral diagram that represents the flow of activities and actions within a system.

It describes the step-by-step workflow of a process, including sequential activities, conditional decisions and concurrent activities.

It is mainly used to model the dynamic behavior and business processes of a system.

### 2. Purpose of Activity Diagram

1. To represent the workflow of a system.
2. To understand the sequence of activities.
3. To represent decision-making and alternative paths.
4. To show parallel or concurrent activities.
5. To identify the responsibilities of different users.
6. To simplify complex business processes.

### 3. Components of Activity Diagram

A. Initial Node (Start Node)

- Represents the starting point of an activity.
- It is represented by a filled black circle.
- Every activity diagram generally has one initial node.

Initial node

B. Activity / Action

- Represents a task or operation performed in the system.
- It is represented by a rectangle with rounded corners.

Example: Enter PIN, Verify Password, Make Payment.

Activity notation

C. Control Flow

- Represents the flow of control from one activity to another.
- It is represented by a directed arrow.
- It indicates the order in which activities are executed.

Control flow

D. Decision Node

- Used to represent conditional branching.
- It is represented by a diamond shape.
- It has one incoming flow and multiple outgoing flows.
- Conditions are written on outgoing arrows.

Example: Is the PIN valid?

Decision node

E. Merge Node

- Used to combine multiple alternative paths into a single path.
- It is represented by a diamond shape.
- It generally has multiple incoming flows and one outgoing flow.

Example: After successful or cancelled payment, continue to the next common step.

Merge node

F. Fork Node

- Used to divide one flow into two or more concurrent flows.
- It is represented by a thick horizontal or vertical bar.
- Activities after a fork can execute simultaneously.

Example: Processing an order and sending a notification simultaneously.

Fork node

G. Join Node

- Used to combine multiple concurrent flows into a single flow.
- It is represented by a thick horizontal or vertical bar.
- It waits for all incoming concurrent flows to complete before continuing.

Join node

H. Final Node

- Represents the termination of an activity.
- It is represented by a filled circle surrounded by an outer circle.

Activity final node

I. Swimlanes

- Swimlanes divide an activity diagram into different sections.
- Each section represents the responsibility of a particular actor, department or system component.
- They help identify who performs each activity.

Example: Customer, Bank System and ATM.

Swimlane representation (illustrative)

### Conclusion

An activity diagram provides a graphical representation of the workflow of a system using activities, control flows, decisions, concurrency and swimlanes.

# Q2. Explain Activities, Branches and Concurrent Activities.

Answer:

### 1. Activities

An activity represents a task or operation performed during the execution of a process.

- It is represented by a rounded rectangle.
- Activities are connected using control flow arrows.
- An activity can contain one or more actions.

Example: In an ATM system, Enter PIN, Verify PIN and Withdraw Cash are activities.

### 2. Branches

A branch represents the selection of one path from multiple possible paths based on a condition.

- It is represented by a diamond-shaped decision node.
- It generally has one incoming flow and two or more outgoing flows.
- Each outgoing flow has a guard condition.

Example: During ATM authentication:

- If PIN is valid → Continue transaction.
- If PIN is invalid → Display error message.

Conditional branching

### 3. Concurrent Activities

Concurrent activities are two or more activities that can execute simultaneously without waiting for each other.

- They are represented using fork and join nodes.
- A fork divides a single flow into multiple parallel flows.
- A join combines parallel flows after their completion.

Example: In an online shopping system, after placing an order:

1. Generate invoice.
2. Send order confirmation notification.

Both activities can execute simultaneously.

Fork and join for concurrent activities

### Difference between Branching and Concurrency

| Branching                                    | Concurrency                                      |
| -------------------------------------------- | ------------------------------------------------ |
| Selects one path from multiple alternatives. | Executes multiple activities simultaneously.     |
| Uses decision and merge nodes.               | Uses fork and join nodes.                        |
| Depends on a condition.                      | Allows parallel execution.                       |
| Example: Valid PIN or Invalid PIN.           | Example: Generate invoice and send notification. |

### Conclusion

Activities represent tasks, branches represent conditional execution and concurrent activities represent parallel execution of multiple tasks.

# Q3. Draw an Activity Diagram for an ATM System.

Answer:

### 1. Introduction

An ATM system allows customers to perform banking operations such as cash withdrawal, balance enquiry and cash deposit.

An activity diagram represents the workflow of ATM transactions from card insertion to completion of the transaction.

### 2. Activities Involved

1. Start
2. Insert ATM Card
3. Enter PIN
4. Validate PIN
5. Select Transaction
6. Enter Amount
7. Check Account Balance
8. Dispense Cash
9. Update Account
10. Print Receipt
11. Eject Card
12. End

### 3. Activity Diagram – ATM System

[5.7 ATM Activity Diagram](https://images.openai.com/static-rsc-4/eMr0fVICnJ_XrZq0l4BQoO9BcXfyGvlzgDRafhCU0AVCfJWwHc0nhrQDw9awEicG9udFvVifvcckjoxR0_y6ry07m6sdxq4U-OBwpa4Zh8xYz-DBHIM3zBbfPs7P85AYXQRtOi6ffb3HVx2LXm46oOkRv4AuGchp9VWkc-iNeWU?purpose=inline)

[samword.github.io](https://samword.github.io/all_posts.html?utm_source=chatgpt.com)

### 4. Explanation of Diagram

1. The process starts when the customer inserts an ATM card.
2. ATM requests the customer to enter a PIN.
3. The bank server validates the entered PIN.
4. If the PIN is invalid, an error message is displayed and the customer may retry.
5. If the PIN is valid, the ATM displays transaction options.
6. Customer selects the withdrawal option.
7. Customer enters the withdrawal amount.
8. The system checks the available account balance.
9. If sufficient balance is available, the ATM dispenses cash.
10. The account balance is updated.
11. The customer can choose to print a receipt.
12. Finally, the ATM ejects the card and the process ends.

### 5. Alternative Conditions

- Invalid PIN: Display an error message.
- Insufficient balance: Display insufficient balance.
- ATM out of cash: Display cash unavailable.
- Customer cancels: Terminate the transaction safely.

### Conclusion

The ATM activity diagram represents the complete transaction workflow, including decision-making and alternative paths.

# Q4. Draw an Activity Diagram for Logging into an Email System.

Answer:

### 1. Introduction

An email system allows users to access their email accounts by entering valid login credentials.

An activity diagram represents the steps involved in authentication and login processing.

### 2. Activities Involved

1. Start
2. Open Email Website
3. Enter Email ID
4. Enter Password
5. Validate Credentials
6. Check Authentication
7. Display Inbox
8. Display Error Message
9. Retry Login
10. End

### 3. Activity Diagram – Email Login

[Activity Diagram Examples: Simple UML Guide](https://images.openai.com/static-rsc-4/Mb8MfsN757IezXV9H3ZomcrBwVlfMYXGPyLYooLVITaVXdm7PMw2WBhNA-j7umHjBLDoEpTRLH5duE5imnpyZb3q32cs1yWWHoIyoeVRht8V4sYWWThGz-fV1wgnKtdcVjSyeFQM4Yg872emwek8lr0J0cpKtAPUooaN6RXVC0M?purpose=inline)

[venngage.com](https://venngage.com/blog/activity-diagram/?utm_source=chatgpt.com)

### 4. Explanation

1. The process starts when the user opens the email website.
2. The system displays the login page.
3. User enters their email ID.
4. User enters their password.
5. System sends the credentials for authentication.
6. The system checks whether the credentials are valid.
7. If credentials are correct, the user is redirected to the inbox.
8. If credentials are incorrect, an error message is displayed.
9. User can retry entering the credentials.
10. The process ends after successful login or when the user exits.

### 5. Alternative Conditions

- Invalid email ID: Display an error message.
- Incorrect password: Ask the user to enter the password again.
- Account locked: Display an account locked message.
- Network failure: Display a connection error.

### Conclusion

The email login activity diagram represents the authentication workflow and shows how the system handles successful and unsuccessful login attempts.

# Q5. Draw an Activity Diagram for Selling a Two-Wheeler.

Answer:

### 1. Introduction

A two-wheeler selling system represents the process of selling a motorcycle or scooter to a customer through a showroom.

An activity diagram shows the complete workflow from customer enquiry to vehicle delivery.

### 2. Activities Involved

1. Customer visits showroom.
2. Select two-wheeler.
3. Check vehicle availability.
4. Display vehicle details.
5. Customer confirms purchase.
6. Prepare quotation.
7. Make payment.
8. Verify payment.
9. Complete registration documentation.
10. Deliver vehicle.
11. End.

### 3. Activity Diagram

[Contoh Activity Diagram Penjualan - 21+ Koleksi Gambar](https://images.openai.com/static-rsc-4/AAB7dlyZkS-qGfOXr107XCNoVcsNeQ5zPVyCCWNtiufpJgfqPCppo9nzeS-Np_5dpJADLSTsd6bsqQASwVZuzY3Gpk7MxJJKa7cfyK1Gss5nT9CHFDa5ZWnoD-y7LrhYj_IcQT_yxkBijdYL5QvuQtt3hTNa9oJ3Q07VBFOms5U?purpose=inline)

[kibrispdr.org](https://www.kibrispdr.org/contoh-activity-diagram-penjualan.html?utm_source=chatgpt.com)

### 4. Explanation

1. Customer visits the showroom.
2. Customer enquires about available two-wheelers.
3. Salesperson displays the available vehicles.
4. Customer selects a vehicle.
5. Showroom checks vehicle availability.
6. If the vehicle is unavailable, an alternative vehicle is suggested.
7. If available, a quotation is prepared.
8. Customer confirms the purchase.
9. Customer makes the payment.
10. Showroom verifies the payment.
11. Registration and documentation are completed.
12. Vehicle is delivered to the customer.

### 5. Alternative Conditions

- Vehicle unavailable: Suggest another model.
- Payment unsuccessful: Ask the customer to retry.
- Customer rejects quotation: End the purchase process.

### Conclusion

The activity diagram represents the complete two-wheeler sales workflow, including vehicle selection, payment, documentation and delivery.

# Q6. Draw an Activity Diagram for a Hospital Management System.

Answer:

### 1. Introduction

A Hospital Management System manages hospital operations such as patient registration, appointment booking, doctor consultation, diagnosis, treatment and billing.

An activity diagram represents the workflow of patient treatment in a hospital.

### 2. Activities Involved

1. Patient visits hospital.
2. Register patient.
3. Book appointment.
4. Check doctor availability.
5. Consult doctor.
6. Perform medical tests.
7. Analyze test reports.
8. Prescribe treatment.
9. Generate bill.
10. Make payment.
11. Discharge patient.

### 3. Activity Diagram

[Hospital Management System Activity Diagram Guide](https://images.openai.com/static-rsc-4/YLDt-Ox383wrBuFjw0EjQs-WT2WY204BxQZr_p_c20p4m4ep4iF_GXN2CZl3C_vVp1btK2jiVbHDbNmdUAdwihgxW9x1c3MFszg3gQe0zLv3IOPpIg2ewEAxjoS6tY9f5SMy9elea8UQU5hdrHGAEt9EhGOi8-L9tNVLXwbRopM?purpose=inline)

[edrawmax.wondershare.com](https://edrawmax.wondershare.com/templates/activity-diagram-for-hospital-management-system.html?utm_source=chatgpt.com)

### 4. Explanation

1. Patient visits the hospital.
2. Receptionist registers the patient.
3. Appointment is booked with the doctor.
4. Doctor examines the patient.
5. Doctor decides whether medical tests are required.
6. If tests are required, laboratory tests are performed and reports are generated.
7. Doctor analyzes the reports and prescribes treatment.
8. Billing department generates the bill.
9. Patient makes the payment.
10. Patient is discharged or proceeds with further treatment.

### Conclusion

The hospital activity diagram represents the complete patient management workflow and helps understand the responsibilities of different hospital departments.

# Q7. Explain the Process of Preparing an Activity Diagram from a Use Case Diagram.

Answer:

### 1. Introduction

A use case diagram represents the functionalities of a system and the interaction between actors and use cases.

An activity diagram represents the detailed workflow of a particular use case.

An activity diagram can be prepared from a use case description by identifying the activities, conditions and sequence of operations.

### 2. Steps to Prepare an Activity Diagram

Step 1: Identify the Use Case

Select the use case for which the activity diagram needs to be prepared.

Example: ATM Cash Withdrawal.

Step 2: Identify Activities

Identify all the actions involved in performing the use case.

Example:

- Insert Card
- Enter PIN
- Verify PIN
- Enter Amount
- Dispense Cash

Step 3: Identify Initial and Final Nodes

- Identify where the process starts.
- Identify where the process terminates.

Step 4: Identify Control Flow

Connect activities using directed arrows to represent their execution order.

Step 5: Identify Decision Points

Identify conditions where the process may follow different paths.

Example:

- PIN valid?
- Balance sufficient?

Step 6: Identify Merge Points

Combine alternative paths after conditional execution.

Step 7: Identify Concurrent Activities

Identify activities that can execute simultaneously and represent them using fork and join nodes.

Step 8: Identify Swimlanes

Divide the diagram into lanes to show responsibilities of different actors or system components, if required.

Step 9: Validate the Diagram

Check whether all activities and alternative flows from the use case description are represented correctly.

### 3. Example

Use Case: ATM Cash Withdrawal.

| Use Case Description  | Activity Diagram Element |
| --------------------- | ------------------------ |
| Customer inserts card | Activity                 |
| Customer enters PIN   | Activity                 |
| Verify PIN            | Activity                 |
| PIN valid or invalid  | Decision node            |
| Retry PIN             | Loop / control flow      |
| Enter amount          | Activity                 |
| Dispense cash         | Activity                 |
| Transaction completed | Final node               |

### Conclusion

Preparing an activity diagram from a use case diagram helps convert high-level functional requirements into a detailed workflow showing actions, decisions and concurrent operations.

# Important Differences for SPPU Exams

## 1. Decision Node vs Merge Node

| Decision Node                                      | Merge Node                                         |
| -------------------------------------------------- | -------------------------------------------------- |
| Divides one flow into multiple alternative paths.  | Combines multiple alternative paths into one flow. |
| Has one incoming flow and multiple outgoing flows. | Has multiple incoming flows and one outgoing flow. |
| Uses conditions on outgoing edges.                 | Does not evaluate conditions.                      |
| Represented by a diamond.                          | Represented by a diamond.                          |
| Example: PIN valid?                                | Combining successful and alternative paths.        |

## 2. Fork Node vs Join Node

| Fork Node                                        | Join Node                           |
| ------------------------------------------------ | ----------------------------------- |
| Divides one flow into multiple concurrent flows. | Combines multiple concurrent flows. |
| Has one incoming flow.                           | Has multiple incoming flows.        |
| Has multiple outgoing flows.                     | Has one outgoing flow.              |
| Allows parallel execution.                       | Synchronizes parallel execution.    |
| Example: Generate invoice and send notification. | Continue after both tasks complete. |

## 3. Activity Diagram vs Sequence Diagram

| Activity Diagram                                  | Sequence Diagram                             |
| ------------------------------------------------- | -------------------------------------------- |
| Represents workflow of activities.                | Represents interactions between objects.     |
| Focuses on control flow.                          | Focuses on message flow.                     |
| Uses activity nodes and decision nodes.           | Uses lifelines and message arrows.           |
| Shows conditional and parallel activities.        | Shows chronological message exchange.        |
| Does not primarily focus on object communication. | Primarily focuses on object communication.   |
| Example: ATM transaction workflow.                | Example: ATM communication with bank server. |

# SPPU Exam – Final Preparation Checklist

| Topic                                    | Priority  | What to prepare        |
| ---------------------------------------- | --------- | ---------------------- |
| Definition and purpose                   | High      | Theory                 |
| Components and notations                 | Very High | Definitions + symbols  |
| Activities, branches and concurrency     | Very High | Explanation + diagrams |
| ATM activity diagram                     | Very High | Complete diagram       |
| Email login activity diagram             | Very High | Complete diagram       |
| Two-wheeler selling                      | High      | Workflow + diagram     |
| Hospital management                      | High      | Workflow + swimlanes   |
| Preparing activity diagram from use case | High      | Steps + example        |
| Decision vs Merge                        | High      | Difference table       |
| Fork vs Join                             | High      | Difference table       |

## Important diagrams to practise

[Activity diagram uml diagrams example swimlane – Artofit](https://images.openai.com/static-rsc-4/mZOoIvCZXiqh-x7ojqU14NiTamQPMzBKLK8LfNTWpSjbNQ8DpijVmuU9Yw0P8Uu1mO4l7NJz4aiRficwUuO1-GrlUpI8R1H2VrEycU-LxT7eKLB56_HjuALOJ6rr_VopvFGXmbOCaWyWdLo24fCZ3Tn9LUEvXMZu8lUpubZ1gJU?purpose=inline)

1\. ATM System

Must practise

Initial node, PIN validation, decisions and transaction completion.

[Activity Diagram Tutorial: Definition, Symbols, Examples, and How to Draw One | Creately](https://images.openai.com/static-rsc-4/zKLgexKg4gcYHUqZAuLJIhwdpA_1UWRFt2I8HRVON1kwMVvy7Og7Xy32IvSuyhvzjxB9ZuVFEKrEmODH5VTkhVwz4nscXQnzrssdGmaWsC5_rVTnfCYq_eirv_WVt1Abr3URIGMMunjkAgLhGV5j2wCAMq2tb9WM1fn-qSa032I?purpose=inline)

2\. Email Login

Must practise

Authentication, valid/invalid credentials and retry flow.

[UML - Activity Diagrams | Scaler Topics](https://images.openai.com/static-rsc-4/jeFr7yCM9cyqzLK3jC31_LaVjJ8FiP_W8lsKqtTVZnLyO9YAzBH_WOGTyUlW1T0qhDC2wzuojfYPBq0EdUmbpNmwFP3WEd2biBjdqOhUbPVbdj8P94hCbO8V6se8yFJgt71t9vxccfbbJeiMwPQAM2QSMKEYiDgNzEYWcNwAr6I?purpose=inline)

3\. Hospital Management

Practise next

Multiple activities and swimlanes.

[Diagrama de atividade e de sequência | UML: modelagem de diagramas | Solucionado](https://images.openai.com/static-rsc-4/_XnZp06bZsDwabQUcK_5q2ymDdI3Wp5QULrUhkj2FFIO8P8Q0grZ-ZvShCo7DLlU43epmNmN1ZTh_fhcJH-bwDRwevNy3Crt6ObVCElQd3S9qjoBMijNqBOChH3WSpbWVfVgVrcZIerex0tb0QGunR0EefHkSM1TmxokPjT7bsM?purpose=inline)

4\. Two-Wheeler Selling

Practise next

Availability, purchase decision, payment and delivery.

Exam writing strategy:

For an 8-mark question:

1. Definition and introduction – 1 mark.
2. Components or activities – 2 marks.
3. Neat and labelled diagram – 3 marks.
4. Explanation – 2 marks.

Note: This is a suggested answer-writing allocation, not an official SPPU marking scheme.

Most important: Do not confuse Decision/Merge with Fork/Join. Decision and Merge handle alternative paths, whereas Fork and Join handle concurrent paths. This distinction is particularly important in theory examinations.