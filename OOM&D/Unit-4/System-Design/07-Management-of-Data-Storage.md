# Unit IV — 6. Management of Data Storage



PYQ Priority: High

Repeated PYQ



Repeated question: “Explain data storage management in software modelling” — November 2024 and November 2022 papers.

## 1. Definition

Data storage management is the process of planning, organizing, storing, accessing, updating and maintaining application data efficiently during system design.

It determines how and where data will be stored, how it will be retrieved and how its security, integrity, consistency and availability will be maintained.

In simple words, data storage management decides how application data is stored, organized, accessed and protected.

## 2. Purpose of data storage management

1. Efficient storage: Organize data to use storage resources effectively.
2. Fast data retrieval: Ensure that data can be accessed quickly.
3. Data integrity: Maintain accuracy and correctness of stored data.
4. Data security: Protect data against unauthorized access.
5. Data consistency: Ensure that data remains consistent across the system.
6. Data availability: Make required data available when needed.
7. Backup and recovery: Protect data against accidental loss or system failure.
8. Scalability: Support increasing amounts of data as the system grows.

## 3. Main considerations in data storage management

### 1. Data identification and classification

Identify the types of data handled by the system and classify them according to their importance and usage.

Examples:

- User information
- Product information
- Transaction records
- Payment details
- Log information

### 2. Selection of storage technology

Choose an appropriate storage technology based on application requirements.

| Storage type        | Description                              | Example                   |
| ------------------- | ---------------------------------------- | ------------------------- |
| Relational database | Stores structured data in tables.        | MySQL, PostgreSQL         |
| NoSQL database      | Stores flexible or semi-structured data. | MongoDB                   |
| File storage        | Stores documents, images and files.      | Local file system, AWS S3 |
| In-memory storage   | Stores data in memory for fast access.   | Redis                     |
| Cloud storage       | Stores data on cloud infrastructure.     | Amazon S3                 |

### 3. Database design and organization

Design the database structure according to application requirements.

It involves:

- Identifying entities and attributes.
- Defining relationships.
- Selecting primary and foreign keys.
- Applying normalization where appropriate.
- Defining constraints.

Example: An online shopping system may contain Customer, Product, Order and Payment tables.

### 4. Data access and retrieval

Define how application components will access and retrieve stored data.

Considerations:

- Query optimization
- Indexing
- Efficient database operations
- Connection management
- Caching frequently accessed data

### 5. Data security

Protect stored information from unauthorized access and misuse.

Methods:

- Authentication
- Authorization
- Encryption
- Access control
- Secure database connections

### 6. Data integrity and consistency

Ensure that stored data remains accurate, valid and consistent.

Methods:

- Primary key and foreign key constraints
- Validation rules
- Transactions
- ACID properties
- Referential integrity

### 7. Backup and recovery

Plan how data will be protected and restored after failures.

Methods:

- Regular database backups
- Recovery procedures
- Replication
- Disaster recovery planning

### 8. Performance and scalability

Ensure that the storage system can handle increasing data volumes and user requests.

Methods:

- Database indexing
- Caching
- Query optimization
- Database partitioning
- Replication
- Appropriate storage scaling

### 9. Data maintenance

Plan regular activities to maintain the storage system.

Examples:

- Removing obsolete data.
- Updating records.
- Archiving old transactions.
- Monitoring database performance.
- Managing database capacity.

## 4. Data storage management in software modelling

During software modelling and system design, data storage requirements are identified and represented through appropriate models.

The main activities include:

1. Identify the data required by the application.
2. Identify entities, attributes and relationships.
3. Design the database schema.
4. Select suitable storage technologies.
5. Define data access operations.
6. Establish security and integrity constraints.
7. Plan backup, recovery and maintenance.

Example: Online Shopping System

Online Shopping Application

Application layer

Database operations

Database storage

Customer

Product

Order

Payment

Backup and recovery

Backup Storage

For example, when a customer places an order, the application stores customer details, order information and payment status in the appropriate database records. The system must maintain consistency between these records.

## 5. Advantages of proper data storage management

1. Reduces data redundancy.
2. Improves data retrieval speed.
3. Maintains data accuracy and consistency.
4. Protects sensitive information.
5. Prevents data loss through backup and recovery.
6. Improves application performance.
7. Supports future system expansion.
8. Simplifies data maintenance.

## 6. Data Storage Management vs Data Dictionary

Important conceptual distinction

These two concepts are related to data but serve different purposes.

| Basis    | Data Storage Management                                 | Data Dictionary                                    |
| -------- | ------------------------------------------------------- | -------------------------------------------------- |
| Meaning  | Manages how application data is stored and accessed.    | Describes information about data elements.         |
| Purpose  | Stores, retrieves, protects and maintains data.         | Defines and documents data.                        |
| Focus    | Actual application data.                                | Metadata (data about data).                        |
| Contains | Records, files, database tables and storage structures. | Names, types, sizes, descriptions and constraints. |
| Example  | Storing customer records in PostgreSQL.                 | Defining Customer_ID as an integer primary key.    |

Remember:

- Data storage management = Managing the actual data.
- Data dictionary = Describing the structure and meaning of data.

## 7. Conclusion

Data storage management is an important activity in software system design. It determines how application data is organized, stored, accessed, secured and maintained. Proper data storage management improves performance, reliability, security, consistency and scalability of the software system.

## Exam preparation checklist

Study progress

0/11

Definition of data storage management

Purpose and objectives

Data identification and classification

Selection of storage technology

Database design and organization

Data access and retrieval

Security, integrity and consistency

Backup and recovery

Performance, scalability and maintenance

Online shopping example

Difference between storage management and data dictionary

PYQ strategy: Since this is a repeated question, prepare the definition, purpose, main considerations and online shopping example thoroughly. Also learn the distinction from a data dictionary to avoid mixing the two concepts in your answer.