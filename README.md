# Week 5 Project: Factory Pattern, Inheritance, and Resolving Inheritance Conflicts

## Project Overview  
This project focuses on implementing key Solidity concepts, including the **Factory Pattern**, **Inheritance**, and resolving inheritance conflicts. The primary goals were to organize contracts using imports, deploy and manage multiple instances using the factory pattern, extend functionality via inheritance, and resolve function conflicts in multi-inheritance scenarios.  

The project was deployed on the **Arbitrum Sepolia Testnet** using **Remix IDE** and **MetaMask**. The steps included creating a storage factory, utilizing inheritance, overriding functions, and managing conflicts explicitly with the `override` keyword.  

---

## Project Features  
### 1. **Factory Pattern**  
- Built a `StorageFactory` contract to deploy and manage multiple instances of the `SimpleStorage` contract.  
- Used an array to store and interact with deployed contract addresses.  

### 2. **Inheritance**  
- Developed an `AdvancedStorage` contract that inherits functionality from `SimpleStorage`.  
- Added new features, such as storing multiple numbers, while maintaining compatibility.  

### 3. **Conflict Resolution**  
- Demonstrated multi-inheritance conflicts with two parent contracts containing identical functions.  
- Explicitly resolved conflicts using the `override` and `super` keywords.  

### 4. **Deployment and Testing**  
- Deployed contracts on the **Arbitrum Sepolia Testnet**.  
- Verified interactions with deployed contracts, ensuring smooth data retrieval and updates.

---

## Challenges and Insights  
The primary challenge was adapting to new concepts like the **Factory Pattern** and multi-inheritance in Solidity. Initially, understanding these ideas took time, but once the fundamentals clicked, the implementation process was smooth.  

Key insights included:  
- The **Factory Pattern** is powerful for managing multiple contract instances efficiently.  
- Solidity's inheritance model provides flexibility, especially with the `virtual` and `override` keywords.  
- Resolving conflicts explicitly ensures code clarity and prevents unexpected behavior in complex inheritance hierarchies.  

