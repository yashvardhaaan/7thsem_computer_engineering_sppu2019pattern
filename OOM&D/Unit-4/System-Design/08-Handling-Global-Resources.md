# Unit IV — 7. Handling Global Resources



PYQ Priority: Very High

Repeated Topic



Important PYQ wording:

- Explain Global Resource Handling.
- How are Global Resources Handled while System Designing?

This is an important system design topic. Prepare the definition, need for management, techniques of coordination and examples.

## 1. Definition of Global Resources

Global resources are resources that are shared by multiple users, processes, objects or subsystems within a software system.

These resources are not restricted to a single component. Multiple components may need to access or modify them.

Global resource handling is the process of managing, controlling and coordinating access to shared resources to ensure their proper utilization, consistency and availability.

In simple words, global resource handling ensures that multiple parts of a system can safely use shared resources without conflicts.

### Examples of global resources

1. Database
2. Shared memory
3. Files
4. Printers
5. Network connections
6. CPU and processing resources
7. Shared configuration data
8. Application-wide objects

## 2. Why do global resources require management?

When multiple users or processes access the same resource, several problems may occur.

### 1. Resource conflict

Two or more processes may try to modify the same resource simultaneously.

Example: Two customers attempt to book the last available seat.

### 2. Race condition

A race condition occurs when the result of a program depends on the unpredictable order of execution of concurrent operations.

Example: Two transactions read the same account balance and update it simultaneously, causing an incorrect final balance.

### 3. Data inconsistency

Multiple components may modify shared data, resulting in incorrect or inconsistent information.

### 4. Deadlock

Deadlock occurs when two or more processes wait indefinitely for resources held by one another.

### 5. Resource starvation

A process may wait for a long time because other processes continuously receive access to a shared resource.

### 6. Security problems

Unauthorized users or components may access sensitive shared resources.

Therefore, global resources require proper coordination and control.

## 3. How are global resources handled during system design?

During system design, the designer identifies shared resources and defines rules for their access, allocation, synchronization and release.

The following techniques are commonly used.

### 1. Identification of global resources

Identify all resources that may be shared among different subsystems or processes.

Examples:

- Common database
- Shared files
- Shared memory
- Network connections

### 2. Resource ownership

Define which subsystem or component is responsible for managing a particular resource.

Example: The Inventory Management subsystem controls product stock information.

This avoids uncontrolled modifications by multiple components.

### 3. Synchronization

Synchronization coordinates concurrent access to shared resources.

It ensures that multiple processes do not perform conflicting operations simultaneously.

Common synchronization mechanisms:

- Mutex
- Semaphore
- Locks
- Monitors
- Synchronized methods

### 4. Mutual exclusion

Mutual exclusion ensures that only one process or thread at a time can execute a critical section that accesses a particular shared resource.

Example: When one user updates a bank account balance, another conflicting update must wait until the operation is safely completed.

### 5. Resource allocation and deallocation

Resources should be allocated when required and released after their use.

Example: A database connection is acquired from a connection pool and returned after the transaction finishes.

### 6. Transaction management

Transactions ensure that database operations are completed reliably.

The ACID properties help maintain transaction correctness:

| Property    | Meaning                                                |
| ----------- | ------------------------------------------------------ |
| Atomicity   | All operations complete or none do.                    |
| Consistency | Database remains valid before and after a transaction. |
| Isolation   | Concurrent transactions do not interfere improperly.   |
| Durability  | Committed changes remain saved.                        |

### 7. Deadlock prevention and handling

Design the system to reduce or handle deadlocks.

Methods include:

- Acquiring resources in a fixed order.
- Avoiding unnecessary resource holding.
- Using timeouts.
- Detecting deadlocks and recovering from them.

### 8. Access control and security

Define permissions to ensure that only authorized users or components can access shared resources.

Methods include:

- Authentication
- Authorization
- Role-based access control
- Permission management

## 4. Techniques used for handling global resources

| Technique            | Purpose                                         | Example                                |
| -------------------- | ----------------------------------------------- | -------------------------------------- |
| Mutex/Lock           | Allows controlled exclusive access.             | Protecting shared memory               |
| Semaphore            | Controls access to limited resources.           | Managing a fixed number of connections |
| Monitor              | Coordinates synchronized access to shared data. | Shared buffer management               |
| Database transaction | Maintains consistency during data updates.      | Bank transfer                          |
| Connection pool      | Manages reusable database connections.          | Application server                     |
| Access control       | Restricts unauthorized access.                  | Admin-only database operations         |

## 5. Example 1: Online Railway Reservation System

Consider an online railway reservation system where thousands of users attempt to book seats.

Suppose only one seat is available and two users try to book it simultaneously.

Without global resource handling:

1. User A checks seat availability.
2. User B checks the same seat availability.
3. Both users find the seat available.
4. Both attempt to book it.
5. The system may accidentally confirm two bookings for one seat.

This creates a double-booking problem.

With global resource handling:

1. User A and User B request the same seat.
2. The system coordinates access using an appropriate locking or transaction mechanism.
3. User A gets the opportunity to complete the booking.
4. The seat availability is updated and the transaction is committed.
5. User B's request is checked again.
6. User B receives an unavailable-seat response.

Railway seat booking — shared resource coordination

One available seat

User A

Booking request

User B

Booking request

Resource Manager

Coordinates access through transaction and locking mechanisms

User A

Booking confirmed

User B

Seat unavailable

Result: The system prevents double booking and maintains correct seat availability.

## 6. Example 2: Banking System

Consider a banking application where multiple users access a shared database.

Suppose a customer transfers ₹5,000 from Account A to Account B.

Global resource handling ensures:

1. Account balances are accessed safely.
2. The withdrawal and deposit operations are coordinated.
3. Both operations are performed as one transaction.
4. If the transaction fails, changes are rolled back.
5. Account balances remain consistent.

Result: The system prevents incorrect balance updates and maintains transaction integrity.

## 7. Advantages of global resource handling

1. Data consistency: Maintains correct and reliable data.
2. Prevents race conditions: Coordinates concurrent operations.
3. Avoids resource conflicts: Controls access to shared resources.
4. Improves security: Restricts unauthorized access.
5. Efficient utilization: Prevents unnecessary resource consumption.
6. Improves reliability: Reduces errors caused by concurrent access.
7. Prevents data corruption: Protects shared information during updates.

## 8. Conclusion

Global resource handling is an important activity in system design. It involves identifying shared resources, defining ownership, coordinating access, applying synchronization, managing transactions and controlling permissions. Proper global resource handling prevents race conditions, deadlocks, resource conflicts and data inconsistency while improving system reliability and security.

## 9. Quick revision — Important terms

| Term             | Meaning                                                         |
| ---------------- | --------------------------------------------------------------- |
| Global resource  | Resource shared by multiple components.                         |
| Race condition   | Result depends on execution order.                              |
| Synchronization  | Coordination of concurrent operations.                          |
| Mutual exclusion | Only one process enters a protected critical section at a time. |
| Deadlock         | Processes wait indefinitely for one another's resources.        |
| Semaphore        | Mechanism to control access to limited resources.               |
| Transaction      | Group of database operations treated as one logical unit.       |
| Resource manager | Component responsible for controlling resource usage.           |

## Exam preparation checklist

Study progress

0/12

Definition of global resources and global resource handling

Examples of global resources

Why shared resources require management

Resource identification and ownership

Synchronization and mutual exclusion

Resource allocation and deallocation

Transaction management and ACID properties

Deadlock prevention and handling

Access control and security

Railway reservation example

Banking system example

Advantages and conclusion

PYQ strategy: For “Explain Global Resource Handling,” prepare Sections 1, 2, 3, 5 and 7. For “How are Global Resources Handled while System Designing,” focus on the eight handling techniques in Section 3 and draw the railway reservation example.

Important: Global resource handling is broader than just locking. It includes identification, ownership, synchronization, allocation, transaction management, security and recovery.