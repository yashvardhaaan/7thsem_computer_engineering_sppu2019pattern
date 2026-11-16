# **UNIT III – Topic 3: Consensus in Blockchain**



Very Important PYQ

6–8 Marks Preparation



Consensus is one of the fundamental concepts of blockchain technology. Before learning individual algorithms such as Proof of Work, Proof of Stake and Proof of Activity, you must understand how consensus works.

We will study:

1. Meaning and definition of consensus.
2. Need for consensus.
3. Working of consensus.
4. Consensus approach.
5. Permissioned and permissionless consensus.
6. Elements of consensus.
7. Advantages and challenges.
8. University PYQs.

## **1. What is Consensus in Blockchain?**

### **Definition**

Consensus in blockchain is a process through which participating nodes in a distributed network agree on the validity and order of transactions and the state of the blockchain without depending on a central authority.

In simple words, consensus means **all participating nodes follow an agreed set of rules to maintain a consistent blockchain ledger.**

### **Example**

Suppose three people maintain copies of the same transaction register.

- Person A records a transaction of ₹1,000.
- Person B receives the transaction information.
- Person C also receives the transaction information.
- All three verify whether the transaction is valid.
- They follow an agreed procedure to accept the transaction.

This agreement is called consensus.

[Blockchain Governance—A New Way of Organizing Collaborations? | Organization Science](https://images.openai.com/static-rsc-4/NlX4WfoN-dIM2XWO2pwU7aomOHuuQg3h5AlZH1nbCxUZPwSP6N52mEaMH0vX8eQZhH53RT0MgwU2c5zfj4RhYhipyCHpEt0Vatjy4nP1UFRTYevs_hq_4aHuEsg5lroS0OszJ9_85Wmexrt_DS9h3MXTGSpUUoeeAOYniGhbjaQ?purpose=inline)

[pubsonline.informs.org](https://pubsonline.informs.org/doi/10.1287/orsc.2020.1379?utm_source=chatgpt.com)

## **2. Why is Consensus Required in Blockchain?**

A blockchain is decentralized, meaning there is no single central authority responsible for approving every transaction.

Consensus is required for the following reasons:

1. **Agreement:** Ensures participating nodes agree on valid transactions.
2. **Security:** Protects the network against malicious activities.
3. **Double-spending prevention:** Helps prevent the same digital asset from being spent multiple times.
4. **Consistency:** Maintains a consistent ledger across participating nodes.
5. **Trust:** Allows participants to transact without relying on one central intermediary.
6. **Fault tolerance:** Helps the network operate despite some faulty or malicious participants.
7. **Transaction ordering:** Establishes an agreed order for transactions.

## **3. Working of Consensus in Blockchain**

[What is Blockchain Technology. Image Source : blockgeeks.com | by Blockchain Simplified | Medium](https://images.openai.com/static-rsc-4/FkyTtbMA0bNysxV84kjoj-Ia_-QH07AE75r8MUEg1Tfzg4zCGF_3izQ6npPYpmQ20LX1-RWBpTEOyAq-VFGy23ir_HlstppiFDUxXWGQO4toOANz3B9A7dRbqlLhKsvpBns-xXrLDTCb5zzlll1_j4goklyl9rhaxPcgL8kZNJ4?purpose=inline)

[medium.com](https://medium.com/%40blockchain_simplified/what-is-blockchain-technology-48d520c395c8?utm_source=chatgpt.com)

### **Steps involved**

1. **Transaction creation:** A user initiates a transaction.
2. **Transaction broadcasting:** The transaction is shared with the blockchain network.
3. **Transaction verification:** Participating nodes check its validity.
4. **Consensus process:** The network follows its selected consensus algorithm.
5. **Agreement:** The required consensus conditions are satisfied.
6. **Block creation:** Valid transactions are organized into a block.
7. **Block addition:** The block is added according to the network's protocol.
8. **Ledger update:** Participating nodes update their ledger copies.

**Important:** The exact process differs between consensus algorithms. For example, Proof of Work uses computational puzzles, while Proof of Stake uses validators and stake.

## **4. Consensus Approach**

Consensus approaches describe how participants are allowed to join and participate in the blockchain network.

The two major approaches are:

1. Permissioned consensus.
2. Permissionless consensus.

[Blockchain 101: The Different Types of Blockchain Explained](https://images.openai.com/static-rsc-4/Ogs6YJbOuH8vpJUROspvZbsBkJq8Sb3IVTjNATvCLRobZ6pqWeJp4QanYnjmCuQG5zVysSZQydfUnUYKaPjoXJlKG6OWnzX9WSCzgdZIQrlgPywoxLYUG23Z7i7-QDJt8wWg-Rys3K6UTsLi4tZhnC9jP7JnYmM-WouwK5CiK5c?purpose=inline)

[defi-planet.com](https://defi-planet.com/2022/06/blockchain-101-the-different-types-of-blockchain-explained/?utm_source=chatgpt.com)

### **4.1 Permissionless Consensus**

**Definition:** Permissionless consensus is a blockchain approach in which anyone can generally participate in the network without obtaining prior authorization, subject to the protocol rules.

Characteristics:

- Open participation.
- No central authority grants membership.
- Participants can verify transactions.
- Usually highly decentralized.
- Uses mechanisms such as Proof of Work or Proof of Stake.

Examples:

- Bitcoin.
- Public Ethereum network.

Advantages:

1. Open participation.
2. Greater decentralization.
3. Transparency.
4. Resistance to censorship.

Disadvantages:

1. Network scalability challenges.
2. Transaction fees may fluctuate.
3. Public transaction visibility.
4. Consensus may require significant resources.

### **4.2 Permissioned Consensus**

**Definition:** Permissioned consensus is an approach in which only authorized participants can join and take part in validating transactions or maintaining the blockchain.

Characteristics:

- Restricted participation.
- Identity-based authorization.
- Controlled membership.
- Faster processing in many implementations.
- Suitable for enterprise applications.

Examples:

- Hyperledger Fabric.
- Permissioned enterprise blockchain networks.

Advantages:

1. Better access control.
2. Greater privacy.
3. Controlled participation.
4. Efficient transaction processing in suitable configurations.

Disadvantages:

1. Reduced decentralization.
2. Dependence on authorized organizations.
3. Complex governance.
4. Limited open participation.

## **5. Difference Between Permissioned and Permissionless Consensus**

Direct PYQ – 4 Marks

| Basis            | Permissioned                       | Permissionless                         |
| ---------------- | ---------------------------------- | -------------------------------------- |
| Access           | Restricted                         | Open                                   |
| Authorization    | Required                           | Generally not required                 |
| Participants     | Selected members                   | Anyone                                 |
| Identity         | Usually verified                   | Can be pseudonymous                    |
| Control          | Managed by authorized participants | Distributed among network participants |
| Privacy          | Greater control                    | Generally more transparent             |
| Decentralization | Usually lower                      | Usually higher                         |
| Examples         | Hyperledger Fabric                 | Bitcoin, Ethereum                      |

**Conclusion:** Permissioned consensus provides controlled participation and privacy, whereas permissionless consensus provides open participation and greater decentralization.

## **6. Elements of Consensus**

These are the important elements involved in achieving agreement in a blockchain network.

[Blockchain Consensus Mechanisms | Finance Strategists](https://images.openai.com/static-rsc-4/1cO3YywovMPHNJEoEqfk5-lRNKGYw1zjeowV6VRTmexzT7UjybwczF7OOYNzZGqrjtzr2ZTij926ibDxBnYfCv9JRWbLQd4mZjFcWlyC9Bi_xI1fdNZgJwgDfbiLQlTZky2lSVZGYwn2QnpRMq0QyDWCv-KM3dbfyyzOQXGOI1g?purpose=inline)

[financestrategists.com](https://www.financestrategists.com/wealth-management/blockchain/blockchain-consensus-mechanisms/?utm_source=chatgpt.com)

### **6.1 Agreement**

All honest participating nodes should agree on the accepted transaction history or blockchain state according to the protocol.

### **6.2 Validity**

Only transactions that satisfy the network's validation rules should be accepted.

### **6.3 Integrity**

The system should maintain the correctness of transaction records and prevent unauthorized modification.

### **6.4 Fault Tolerance**

The network should continue functioning despite certain nodes becoming faulty or behaving maliciously, within the protocol's security assumptions.

### **6.5 Authentication**

Participants and transactions should be verified using appropriate cryptographic mechanisms.

### **6.6 Consistency**

Honest nodes should maintain compatible views of the accepted ledger according to the consensus protocol.

No direct standalone PYQ

In your six papers, consensus is repeatedly asked, but the individual elements of consensus are not directly asked as a separate question.

## **7. Advantages of Consensus Mechanisms**

1. Removes the need for a central transaction authority.
2. Helps prevent double spending.
3. Improves blockchain security.
4. Maintains ledger consistency.
5. Enables decentralized decision-making.
6. Supports trust between unknown participants.

## **8. Challenges of Consensus Mechanisms**

1. Scalability: Some consensus mechanisms process fewer transactions per second.
2. Energy consumption: Proof of Work requires significant computational power.
3. Network delays: Communication delays can affect agreement.
4. Security attacks: Certain attacks can affect consensus under specific conditions.
5. Governance: Changes to protocol rules may be difficult to coordinate.
6. Resource requirements: Some mechanisms require substantial computing power or financial stake.

## **9. Consensus vs Consensus Algorithm**

This distinction is useful for examinations.

| Consensus                            | Consensus Algorithm                             |
| ------------------------------------ | ----------------------------------------------- |
| Agreement among network participants | Method used to achieve agreement                |
| Describes the objective              | Describes the procedure                         |
| Maintains a consistent ledger        | Defines how transactions or blocks are accepted |
| General concept                      | Technical implementation                        |
| Example: Network agreement           | PoW, PoS, PoA                                   |

# **10. PYQ Analysis – Consensus (Six Papers)**

I identified these directly relevant questions from your uploaded papers.

| Examination   | Actual question                                                                   | Marks |
| ------------- | --------------------------------------------------------------------------------- | ----- |
| Nov/Dec 2022  | Explain consensus in Blockchain in detail. Q2(a)                                  | 8     |
| Nov/Dec 2023  | What is consensus in Blockchain? Q2(c)                                            | 6     |
| May/June 2023 | List different consensus algorithms and explain any two. Q2(a)                    | 8     |
| May/June 2024 | Differentiate between permissioned and permissionless consensus approaches. Q2(b) | 4     |
| May/June 2025 | Illustrate five different types of consensus algorithms with examples. Q2(b)      | 9     |

Sources:&#x20;

Nov_Dec_2022 (2)(1).pdf

Nov_Dec_2023 (2)(1).pdf

May_Jun_2023 (2)(1).pdf

May_Jun_2024 (2)(1).pdf

May_Jun_2025 (2)(2).pdf



5 relevant appearances

## **11. Important questions for examination**

1. What is consensus in blockchain? Explain its importance. (6–8 marks)
2. Explain the working of consensus in blockchain with a diagram. (6 marks)
3. Differentiate between permissioned and permissionless consensus. (4 marks)
4. Explain the important elements of consensus. (Prepare; no direct PYQ)
5. Explain different consensus algorithms with examples. (8–9 marks)

## **12. Preparation checklist**

**Consensus preparation progress**

## **0/10**

Definition of consensus

Need for consensus

Working of consensus with diagram

Permissionless consensus

Permissioned consensus

Difference between permissioned and permissionless

Elements of consensus

Advantages of consensus

Challenges of consensus

Consensus vs consensus algorithm

# **Next Topic – Unit III, Topic 4: Consensus Algorithms**

This is a major examination section. We will study each algorithm individually in this order:

**Consensus Algorithms**

PYQ section

1. **Proof of Work (PoW)** – Very important
2. **Proof of Stake (PoS)** – Very important
3. **Proof of Elapsed Time (PoET)** – No direct PYQ
4. **Proof of Activity** – Repeated PYQ
5. **Proof of Burn** – PYQ in May/June 2024

We will cover definition, architecture, working, examples, advantages, disadvantages, comparison and exact PYQs for each.

**Next: Topic 4.1 – Proof of Work (PoW).**

Type **next** to begin.