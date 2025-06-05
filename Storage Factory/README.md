# 🚀 Storage Factory Learning Repo

[![Solidity Version](https://img.shields.io/badge/Solidity-^0.8.x-blue.svg?logo=ethereum)](https://docs.soliditylang.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Learning Stage](https://img.shields.io/badge/Stage-Learning-green)](#)

This repository captures my progress as I learn and implement Solidity’s **Factory Pattern**, focusing on deploying and managing multiple smart contracts from a parent contract.

---

## 📚 Topics Covered

### 🔗 **Importing Contracts**
- ✅ Import full contract file:
  ```solidity
  import "./SimpleStorage.sol";

    ✅ Import specific contracts:

    import { SimpleStorage } from "./SimpleStorage.sol";

🏗️ Deploying Contracts from a Factory

    The parent (StorageFactory) contract deploys multiple SimpleStorage contracts using:

    new SimpleStorage();

    These contracts are stored in an array and can be referenced later.

📬 Accessing Deployed Contract Functions

    Each deployed contract is stored in an array (SimpleStorage[]).

    Call functions using:

    simpleArray[_index].store(_favoriteNumber);

🧬 Inheritance: virtual & override

    Enables reusability and polymorphism:

        Parent functions marked virtual

        Child overrides with override
