# Unit VI — 4. Counted Pointer Example



Important PYQ — November 2024

PYQ priority: Medium



The Counted Pointer is a programming idiom used in C++ to manage dynamically allocated objects that are shared by multiple pointers.

It is especially useful when multiple objects need to access the same dynamically allocated resource without deleting it prematurely.

## 1. Definition and purpose

Definition: A Counted Pointer is a pointer-management technique in which a reference counter keeps track of how many pointers are currently referring to a dynamically allocated object.

The dynamically allocated object is deleted only when the reference count becomes zero.

Purpose:

1. Manage dynamically allocated memory.
2. Allow multiple pointers to share an object.
3. Prevent premature deletion of shared objects.
4. Avoid memory leaks when ownership is managed correctly.
5. Automatically release memory when it is no longer required.

Basic idea:

- When a new pointer starts sharing an object, increment the reference count.
- When a pointer stops sharing the object, decrement the reference count.
- When the count reaches zero, delete the object.

## 2. How is the pointer count maintained?

A counted pointer generally uses two components:

1. Pointer: Stores the address of the dynamically allocated object.
2. Reference counter: Stores the number of pointers sharing that object.

## Counted pointer structure

Pointer A

Points to shared object

Pointer B

Points to the same object

Pointer C

Points to the same object

Shared Object

Dynamically allocated memory

# 3

Reference Count

Three pointers share this object.

The reference counter is shared by all pointers that refer to the same object.

## 3. How sharing and object lifetime are managed

The counted pointer follows these operations:

| Operation                    | Reference count    |
| ---------------------------- | ------------------ |
| First pointer created        | 1                  |
| Second pointer shares object | 2                  |
| Third pointer shares object  | 3                  |
| One pointer is destroyed     | 2                  |
| Another pointer is destroyed | 1                  |
| Last pointer is destroyed    | 0 — object deleted |

Important rules:

1. Creating the first counted pointer initializes the count to 1.
2. Copying a counted pointer increments the count.
3. Destroying a counted pointer decrements the count.
4. Assigning pointers must correctly release the old reference and acquire the new one.
5. When the count reaches zero, the shared object is deleted.

## 4. C++ implementation of counted pointer

The following is a simplified educational implementation of the counted pointer idiom.

```
#include <iostream>
using namespace std;

class CountedPointer {
private:
    int* ptr;
    int* count;

public:
    // Constructor
    CountedPointer(int value) {
        ptr = new int(value);
        count = new int(1);
    }

    // Copy constructor
    CountedPointer(const CountedPointer& other) {
        ptr = other.ptr;
        count = other.count;
        ++(*count);
    }

    // Destructor
    ~CountedPointer() {
        --(*count);

        if (*count == 0) {
            delete ptr;
            delete count;
        }
    }

    // Display shared object
    void display() {
        cout << "Value: " << *ptr << endl;
        cout << "Reference count: " << *count << endl;
    }
};

int main() {
    CountedPointer p1(100);

    {
        CountedPointer p2 = p1;

        p1.display();
        p2.display();
    }

    p1.display();

    return 0;
}
```

This example demonstrates construction, copying and destruction. It intentionally omits copy assignment and move operations, so it is not a complete production-ready smart pointer.

## 5. Worked example — Step-by-step execution

Consider the following statements:

```
CountedPointer p1(100);
CountedPointer p2 = p1;
```

Step 1: Create the first pointer

```
CountedPointer p1(100);
```

- A memory location is allocated.
- The value 100 is stored.
- Reference count is initialized to 1.

After creating p1

Count = 1

p1

Object: 100

Reference count: 1

Step 2: Create the second pointer

```
CountedPointer p2 = p1;
```

The copy constructor is called.

- `p2` receives the same object address.
- Both pointers share the same counter.
- Reference count increases from 1 to 2.

After creating p2

Count = 2

p1

p2

Shared Object: 100

Reference count: 2

Step 3: Destroy the second pointer

When `p2` goes out of scope, its destructor is called.

- Reference count decreases from 2 to 1.
- The object is not deleted because `p1` still refers to it.

After destroying p2

Count = 1

p1

Object: 100

Reference count: 1

Step 4: Destroy the last pointer

When `p1` is destroyed:

- Reference count decreases from 1 to 0.
- The dynamically allocated object is deleted.
- The reference counter itself is also deleted.

Reference count = 0

Object and counter are released

## 6. Advantages of counted pointer

1. Automatic memory management: Objects are deleted when no counted pointers share them.
2. Resource sharing: Multiple pointers can access the same object.
3. Prevents premature deletion: An object remains alive while references exist.
4. Reduces memory leaks: Properly managed references release unused objects.
5. Improves reusability: Shared objects can be accessed from different parts of a program.

## 7. Limitations of counted pointer

1. Maintaining reference counts adds some overhead.
2. Circular references can prevent the count from reaching zero.
3. Incorrect copy or assignment operations can cause memory errors.
4. A simple reference counter is not thread-safe.
5. Shared ownership can make object lifetime more difficult to understand.

Circular reference problem: If object A owns object B and object B owns object A through counted pointers, both reference counts may remain positive even when neither object is otherwise reachable. This can cause a memory leak.

Modern C++ addresses this situation using `std::weak_ptr` alongside `std::shared_ptr`.

## 8. Counted pointer vs ordinary pointer

| Ordinary pointer                                       | Counted pointer                                        |
| ------------------------------------------------------ | ------------------------------------------------------ |
| Stores an object's address.                            | Stores an object's address and tracks sharing.         |
| Does not automatically track the number of references. | Maintains a reference count.                           |
| Programmer manages object lifetime.                    | Deletes the shared object when the count reaches zero. |
| Can cause premature deletion or memory leaks.          | Helps manage shared object lifetime.                   |
| Example: `int* p`                                      | Example: `std::shared_ptr<int>`                        |

## 9. Modern C++ equivalent

C++ provides `std::shared_ptr`, which implements reference-counted shared ownership.

```
#include <iostream>
#include <memory>
using namespace std;

int main() {
    auto p1 = make_shared<int>(100);

    cout << p1.use_count() << endl; // 1

    {
        auto p2 = p1;

        cout << p1.use_count() << endl; // 2
    }

    cout << p1.use_count() << endl; // 1

    return 0;
}
```

`std::shared_ptr` automatically manages the shared object's lifetime. It also provides safer copy assignment and other ownership operations compared with the simplified educational implementation above.

## 10. Exam-ready conclusion

A Counted Pointer is a C++ programming idiom that uses reference counting to manage dynamically allocated shared objects. Whenever a pointer shares an object, the reference count increases. When a pointer is destroyed, the reference count decreases. When the count becomes zero, the object is automatically deleted. Thus, counted pointers help manage memory safely and efficiently when multiple pointers share the same object.

## 11. PYQ preparation checklist

Counted pointer preparation

# 0/9

Definition and purpose of counted pointer

Pointer and reference counter structure

How reference count is incremented

How reference count is decremented

Object deletion when count reaches zero

C++ counted pointer implementation

Worked example with p1 and p2

Advantages and limitations

Ordinary pointer vs counted pointer

Reset checklist

Exam tip: The November 2024 question asks for the counted pointer example in detail. Give special attention to the reference-counting mechanism, copy operation, destructor and the worked example showing the count changing from 1 → 2 → 1 → 0.

Textbook alignment note: You haven't attached the prescribed counted-pointer example, so this answer uses the standard C++ reference-counting idiom. If you share the relevant textbook page or class notes, I can align the terminology, diagram and implementation exactly with your prescribed material.