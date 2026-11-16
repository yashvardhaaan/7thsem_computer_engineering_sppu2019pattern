# **Unit V – Blockchain Ethereum Platform Using Solidity**

06 Hours | SPPU B.E. Computer Engineering – Semester VII

We will cover Unit V in the exact syllabus order, one topic at a time. I’ll include exam-oriented notes, exact PYQs, exam sessions and marks, and clearly identify topics with no direct PYQs.

## **Unit V topic sequence**

1. What is Ethereum?
2. Types of Ethereum Networks
3. EVM (Ethereum Virtual Machine)
4. Introduction to Smart Contracts
5. Purpose and Types of Smart Contracts
6. Implementing and Deploying Smart Contracts Using Solidity
7. Swarm (Decentralized Storage Platform)
8. Whisper (Decentralized Messaging Platform)

## **Topic 1: What is Ethereum?**

### **1. Definition**

**Ethereum** is an open-source, decentralized blockchain platform that enables developers to build and execute smart contracts and decentralized applications (DApps).

It was proposed by Vitalik Buterin in 2013 and launched in 2015.

Ethereum is more than a digital currency platform. It allows developers to create programs that execute on its blockchain.

### **2. Important features of Ethereum**

1. **Decentralization:** Operates across a distributed network of computers.
2. **Open-source:** Its protocol and development ecosystem are publicly accessible.
3. **Smart contracts:** Supports self-executing programs stored and executed on the blockchain.
4. **Ether (ETH):** Native cryptocurrency used for transactions and network fees.
5. **Ethereum Virtual Machine (EVM):** Provides the execution environment for smart contracts.
6. **Transparency:** Transactions and smart-contract activity can be verified on the blockchain.
7. **DApps:** Supports decentralized applications in areas such as finance, gaming and digital assets.

### **3. Ether (ETH)**

- Ether is the native cryptocurrency of the Ethereum network.
- It is used to pay transaction fees, commonly called *gas fees*.
- It can be transferred between Ethereum addresses.
- It is used in the network's Proof of Stake mechanism.

**Remember:** Ethereum is the blockchain platform; Ether (ETH) is its native cryptocurrency.

### **4. Architecture of Ethereum**

[What is Ethereum (ETH)? The Foundation of Web3 Innovation](https://images.openai.com/static-rsc-4/pO9XSjjlQ6-gjJ8FLwUeh4tLiNp_V1l5jGprCFNInG9yC0U2yY4sFIybWWkZWE1xbIWpSsE42efDJw_F-8tNKpzNYPpIWVHvsf4llTHkjPitddyupSreBOeb16JjMcJcAOMoUFAd6_iNV6mKxbk1lDT41RqbnR4ZK1vM8ap3FhU?purpose=inline)

[whales.market](https://whales.market/blog/what-is-ethereum-eth/?utm_source=chatgpt.com)

Ethereum consists of the following major components:

| Component           | Function                                                     |
| ------------------- | ------------------------------------------------------------ |
| Ethereum blockchain | Stores transaction and block records.                        |
| Ether (ETH)         | Native cryptocurrency of Ethereum.                           |
| Smart contracts     | Programs that execute according to predefined rules.         |
| EVM                 | Executes smart-contract bytecode.                            |
| Nodes               | Maintain and verify blockchain data.                         |
| Wallets             | Manage accounts and authorize transactions.                  |
| Gas                 | Measures computational work and determines transaction fees. |

### **5. How Ethereum works**

1. A user creates a transaction using an Ethereum wallet.
2. The transaction is digitally signed.
3. It is broadcast to the Ethereum network.
4. Network validators verify and process the transaction.
5. The EVM executes the smart-contract instructions, if the transaction invokes a contract.
6. The transaction is included in a block.
7. The updated blockchain state is shared across the network.

### **6. Applications of Ethereum**

1. **Decentralized Finance (DeFi):** Lending, borrowing and decentralized exchanges.
2. **NFTs:** Creation and trading of non-fungible tokens.
3. **Supply chain:** Tracking products and recording transactions.
4. **Gaming:** Blockchain-based games and digital assets.
5. **Decentralized applications:** Applications that interact with smart contracts.
6. **Digital identity:** Blockchain-based identity and verification systems.

### **7. Advantages of Ethereum**

- Decentralized platform.
- Supports programmable smart contracts.
- Enables decentralized applications.
- Transparent and verifiable transactions.
- Large developer ecosystem.
- Supports token creation and digital assets.

### **8. Limitations of Ethereum**

- Transaction fees can become expensive during high demand.
- Network capacity and transaction throughput are limited compared with some centralized systems.
- Smart-contract bugs can cause financial losses.
- Users must understand wallets, gas fees and private-key security.
- Blockchain transactions are generally difficult to reverse.

## **PYQ mapping – What is Ethereum?**

Repeated in 5 papers

| Exam          | Exact question                                                                                                                             | Marks |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ----- |
| Nov/Dec 2022  | Q5(a): “What is Ethereum? Explain.”                                                                                                        | 8     |
| Nov/Dec 2023  | Q5(a): “What is ethereum? What are the types of ethereum?”                                                                                 | 6     |
| May/June 2023 | Q5(a): “Discuss what is Ethereum.”                                                                                                         | 8     |
| May/June 2024 | Q5(a): “What is Ethereum? Explain in detail it differs from traditional cryptocurrencies.”                                                 | 8     |
| Nov/Dec 2024  | Q5(b): “What is Ethereum? Define smart contracts and give an example of a real-world scenario where a smart contract could be beneficial.” | 9     |
| May/June 2025 | Q5(a): “Enlist features of Ethereum. Compare Ethereum Mainnet, Testnet, and Private Networks.”                                             | 9     |

Also, Nov/Dec 2024 Q1(a) asks: “Discuss in brief Bitcoin and Ethereum cryptocurrencies.” [8]

Sources:&#x20;

Nov_Dec_2022 (2)(1).pdf

Nov_Dec_2023 (2)(1).pdf

May_Jun_2023 (2)(1).pdf

May_Jun_2024 (2)(1).pdf

Nov_Dec_2024 (2)(2).pdf

May_Jun_2025 (2)(2).pdf



### **Exam preparation priority**

Prepare these points for an 8–9 mark answer:

1. Definition and introduction.
2. Features of Ethereum.
3. Ether and its purpose.
4. Ethereum architecture and components.
5. Working of Ethereum with a diagram.
6. Applications, advantages and limitations.

**Important:** Ethereum has appeared in all six papers either as a standalone question or as part of a combined question. Give this topic high priority.

**Next topic: 2. Types of Ethereum Networks** — Mainnet, Testnet and Private Networks, including their differences and uses.