# UNIT II — Advanced Class Modeling and State Modeling

# 07 — Metadata

## 1. Introduction

In Object-Oriented Modeling, **metadata** is information that describes other data or model elements.

The word **metadata** means:

> **Data about data.**

Metadata does not represent the actual business data directly. Instead, it provides information about the structure, meaning, properties, or characteristics of that data.

---

# 2. Definition of Metadata

> Metadata is data that describes the characteristics, structure, meaning, or properties of other data.

### Simple Example

Consider a student record:

```text
Student
----------------
Roll No: 101
Name: Yash
Branch: Computer
CGPA: 9.0
```

The actual data is:

```text
101
Yash
Computer
9.0
```

Metadata about this data could be:

```text
Roll No → Integer
Name    → String
Branch  → String
CGPA    → Decimal
```

Thus:

```text
Data     → Actual information
Metadata → Information about the data
```

---

# 3. Simple Example of Metadata

Consider a photograph.

### Actual Data

The photograph itself.

### Metadata

Information about the photograph:

```text
File Name      → photo.jpg
File Type      → JPEG
File Size      → 2 MB
Width          → 1920 pixels
Height         → 1080 pixels
Date Created   → 20-Aug-2026
```

The photograph is the **data**, while these details are **metadata**.

---

# 4. Metadata in Object-Oriented Modeling

In Object-Oriented Modeling, metadata can describe model elements such as:

- Classes
- Attributes
- Operations
- Associations
- Packages
- Constraints
- Data types
- Relationships

### Example

Suppose a class is:

```text
+----------------+
|    Customer    |
+----------------+
| customerId     |
| name           |
+----------------+
```

Metadata can describe:

```text
Class Name      → Customer
Attribute       → customerId
Data Type       → Integer
Visibility      → Private
Multiplicity    → 1
```

This information describes the model rather than representing a particular customer.

---

# 5. Metadata vs Data

| Data | Metadata |
|---|---|
| Actual information | Information about information |
| Represents business values | Describes structure/properties |
| Example: Yash | Example: Name is String |
| Used by application | Used to understand/manage data |
| Represents content | Describes content |

### Easy Memory Trick

```text
Data     → What is stored?
Metadata → What do we know about what is stored?
```

---

# 6. Metadata Example — Database

Consider a database table:

```text
Student
------------------------------
rollNo | name | branch | cgpa
```

Actual data:

```text
101 | Yash | Computer | 9.0
102 | Rahul | IT | 8.5
```

Metadata:

```text
Table Name → Student
Column     → rollNo
Data Type  → Integer
Column     → name
Data Type  → String
Column     → cgpa
Data Type  → Decimal
```

The metadata describes the structure of the database.

---

# 7. Metadata in UML

UML models themselves contain metadata-like information.

For example:

```text
+----------------------+
|       Customer       |
+----------------------+
| - customerId: int    |
| - name: String       |
+----------------------+
| + getName(): String  |
+----------------------+
```

Information such as:

```text
customerId → int
name → String
- → private
+ → public
```

describes the model elements.

---

# 8. Types of Metadata

Metadata can describe different aspects of data.

## 8.1 Structural Metadata

Describes the structure or organization of data.

Examples:

```text
Table Name
Column Names
Data Types
Relationships
File Format
```

---

## 8.2 Descriptive Metadata

Describes the content or meaning of data.

Examples:

```text
Title
Author
Description
Subject
Keywords
```

---

## 8.3 Administrative Metadata

Provides information used to manage data.

Examples:

```text
Creation Date
Modification Date
Owner
Access Permissions
File Size
```

---

# 9. Metadata Example — Book

Consider a book.

### Data

```text
Title: Object-Oriented Modeling
Author: David
```

### Metadata

```text
Title Field → String
Author Field → String
Publication Year → Integer
ISBN → String
```

The metadata describes the structure and properties of the book information.

---

# 10. Metadata and Model Management

Metadata is useful for managing complex models.

For example, in a large software system, metadata can describe:

```text
Class
   |
   +-- Attributes
   |
   +-- Operations
   |
   +-- Associations
   |
   +-- Constraints
   |
   +-- Package
```

This allows tools and developers to understand the structure of the model.

---

# 11. Importance of Metadata

Metadata is important because it:

1. Describes data.
2. Explains the structure of data.
3. Provides meaning to data.
4. Helps organize information.
5. Helps manage large systems.
6. Supports data discovery.
7. Helps software tools understand models.
8. Improves consistency and maintainability.

---

# 12. Metadata in Software Engineering

Metadata is widely used in software systems.

Examples include:

### Database Metadata

```text
Table
Column
Data Type
Constraint
Relationship
```

### File Metadata

```text
File Name
File Type
File Size
Creation Date
```

### UML Metadata

```text
Class
Attribute
Operation
Association
Multiplicity
Constraint
```

### API Metadata

```text
Endpoint
HTTP Method
Parameter
Return Type
Authentication
```

---

# 13. Metadata Example — Class Model

Consider:

```text
+--------------------+
|      Employee      |
+--------------------+
| employeeId: int    |
| name: String       |
| salary: double     |
+--------------------+
```

Metadata about the model could include:

```text
Class Name → Employee

employeeId:
    Type → int
    Visibility → private

name:
    Type → String
    Visibility → private

salary:
    Type → double
    Visibility → private
```

The actual employee values are not metadata.

The information describing the class structure is metadata.

---

# 14. Metadata and Data Dictionary

A **data dictionary** stores information about data elements.

For example:

| Field | Data Type | Description |
|---|---|---|
| customerId | Integer | Unique customer identifier |
| name | String | Customer name |
| email | String | Customer email |
| phone | String | Customer phone number |

This is an example of metadata because it describes the data fields.

---

# 15. Benefits of Metadata

### 1. Better Organization

Metadata helps organize large amounts of data.

### 2. Better Understanding

It provides meaning and context.

### 3. Easier Searching

Metadata can be used to find relevant information.

### 4. Better Management

It provides information required to manage data.

### 5. Improved Consistency

It defines standard structures and properties.

### 6. Tool Support

Software tools can use metadata to understand models and data.

---

# 16. Metadata vs Reification

Metadata and reification are different concepts.

### Metadata

Provides information **about data or model elements**.

```text
Data
 ↑
Metadata describes it
```

### Reification

Converts something implicit, such as a relationship, into an explicit model element.

```text
Relationship
      ↓
Explicit Class
```

Example:

```text
Student -------- Course
       |
       ↓
   Enrollment
```

---

# 17. Metadata vs Derived Data

These are also different.

### Metadata

Information describing data.

Example:

```text
CGPA → Data Type: Decimal
```

### Derived Data

Data calculated from other data.

Example:

```text
Total = Price × Quantity
```

Therefore:

```text
Metadata → Describes data
Derived Data → Calculated from data
```

---

# 18. Metadata vs Constraints

### Metadata

Describes properties of data/model elements.

Example:

```text
Age → Integer
```

### Constraint

Specifies a rule that must be satisfied.

Example:

```text
Age >= 18
```

Therefore:

```text
Metadata  → Description
Constraint → Rule
```

---

# 19. Real-World Examples

## Example 1 — Image

```text
Data:
Image

Metadata:
File type
File size
Dimensions
Creation date
Camera model
```

---

## Example 2 — Database

```text
Data:
Customer records

Metadata:
Table name
Column names
Data types
Primary key
Foreign key
Constraints
```

---

## Example 3 — UML Class

```text
Data/Model:
Customer class

Metadata:
Class name
Attribute types
Visibility
Multiplicity
Operations
Relationships
```

---

# 20. PYQ — August 2025

> **"Write a short note on: Metadata, Reification, Derived Data" — 5 marks**

## Answer — Metadata

### Definition

> Metadata is data that describes the characteristics, structure, meaning, or properties of other data.

### Example

For a student record:

```text
Data:
101 | Yash | Computer | 9.0
```

Metadata:

```text
Roll No → Integer
Name → String
Branch → String
CGPA → Decimal
```

### Types of Metadata

1. **Structural Metadata** — Describes the structure of data.
2. **Descriptive Metadata** — Describes the content or meaning.
3. **Administrative Metadata** — Provides information for managing data.

### Importance

- Describes data.
- Provides context.
- Helps organize information.
- Supports searching and management.
- Helps software tools understand data and models.

### Easy Definition

```text
Metadata = Data about Data
```

---

# 21. 5-Mark Short Note Structure

If asked to write a short note on Metadata:

### Definition

Metadata is information that describes other data.

### Example

```text
Data:
Student Name = Yash

Metadata:
Field Name = Student Name
Data Type = String
```

### Types

```text
Structural
Descriptive
Administrative
```

### Uses

```text
Organization
Understanding
Management
Searching
Consistency
```

---

# 22. Important Definitions

### Metadata

> Metadata is data about data that describes the structure, properties, meaning, or characteristics of data.

### Structural Metadata

> Structural metadata describes how data is organized.

### Descriptive Metadata

> Descriptive metadata describes the meaning or content of data.

### Administrative Metadata

> Administrative metadata provides information used to manage and control data.

---

# 23. Quick Revision

## Metadata

```text
Data about Data
```

### Examples

```text
File Size
File Type
Data Type
Creation Date
Column Name
Class Name
Attribute Type
```

### Types

```text
1. Structural
2. Descriptive
3. Administrative
```

### Benefits

```text
Organization
Understanding
Management
Searching
Consistency
Tool Support
```

---

# 24. Exam Memory Trick

Remember:

```text
METADATA
    ↓
Information about Data
    ↓
Structure
Meaning
Management
```

### Types

```text
S → Structural
D → Descriptive
A → Administrative
```

**SDA**

---

# 25. Common Mistakes

### Mistake 1

Writing that metadata is the actual data.

Incorrect:

```text
Yash → Metadata
```

Correct:

```text
Yash → Data
Name is String → Metadata
```

---

### Mistake 2

Confusing metadata with derived data.

```text
Metadata → Describes data
Derived Data → Calculated data
```

---

### Mistake 3

Confusing metadata with constraints.

```text
Metadata → Information about structure/properties
Constraint → Rule or restriction
```

---

# 26. PYQ Priority

| Topic | Year | Marks | Priority |
|---|---|---:|---|
| Metadata | Aug 2025 | 5 | 🔥🔥 |
| Metadata + Reification + Derived Data | Aug 2025 | 5 | 🔥🔥 |

---

# 27. Most Important Questions

1. **Define metadata.**
2. **Write a short note on metadata.**
3. **Explain metadata with a suitable example.**
4. **What are the types of metadata?**
5. **Explain the importance of metadata.**
6. **Differentiate between metadata and data.**
7. **Differentiate between metadata and derived data.**

---

# 28. Last-Minute Revision

```text
METADATA
→ Data about data
→ Describes structure, meaning and properties
→ Does not represent actual business values

TYPES
1. Structural
2. Descriptive
3. Administrative

EXAMPLES
→ Data type
→ File size
→ File type
→ Creation date
→ Column name
→ Class name
→ Attribute type

BENEFITS
→ Organization
→ Understanding
→ Management
→ Searching
→ Consistency
→ Tool support
```

## Most Important PYQ

> **"Write a short note on: Metadata, Reification, Derived Data" — Aug 2025 — 5 marks**

### Must Memorize

```text
Metadata = Data about Data

Types:
Structural
Descriptive
Administrative
```