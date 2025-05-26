# 🛒 Digital Marketplace with Token Payments

This is a simple **blockchain-based marketplace** that allows users to **list** and **purchase digital items** using **ERC20 tokens** instead of native ETH.

---

## 🚀 Features

- 💼 Sellers can list digital items (name, description, token price)
- 🛒 Buyers can purchase items using any ERC20-compatible token
- 🔒 Ownership and payments are securely handled on-chain
- 📦 Items are marked as sold after purchase

---

## 🧱 Built With

- Solidity ^0.8.0
- ERC20 Token Interface
- Remix IDE / Hardhat / Truffle
- MetaMask for wallet interactions

---

## 📄 Smart Contract Overview

### Contract: `DigitalMarketplaceWithToken.sol`

#### Constructor
```solidity
constructor(address _tokenAddress)
Takes the address of an ERC20 token contract to use for payments.

Functions
listItem(string name, string description, uint price)

Lists a new item for sale.

price is in tokens (not ETH).

purchaseItem(uint id)

Purchases an item by ID using the token.

Buyer must first approve() this contract to spend their tokens.

getItem(uint id)

Returns item details for a given ID.
✅ Example Flow
Seller
Call listItem("Digital Art", "High-res image", 1000)

Lists a digital item for 1000 tokens

Buyer
Call token.approve(marketplaceAddress, 1000)

Call purchaseItem(1)

Transfers 1000 tokens from buyer to seller

Marks item as sold

💡 Notes
The contract assumes off-chain delivery of digital content (e.g., via email, IPFS, or private link).

You can use any ERC20-compatible token, such as:

DAI

USDT

Custom testnet tokens

🧪 Testing
You can deploy and test this contract using:

Remix Ethereum IDE

Or your local Hardhat/Truffle environment

Testnet suggestion: Sepolia or Mumbai (for Polygon)

🛠 Deployment Steps (Remix)
Compile the contract.

Deploy with the ERC20 token address as the constructor argument.

Interact with listItem() and purchaseItem() using MetaMask.

📜 License
MIT License

🙌 Contributions
Feel free to fork the repo, open issues, and make PRs to add features like:

✅ Marketplace fees

📁 IPFS file links

🔍 Item search and filters

🌐 Frontend dApp with React or HTML/JS

👨‍💻 Author
Pritam27112004

#contact adress
0x34bb80ed958e92aced48ff51a1ff9d89d90e8c17

#transaction details
![Screenshot 2025-05-26 144801](https://github.com/user-attachments/assets/36aee58f-e13c-4dd1-bd65-ea2d18755dac)



