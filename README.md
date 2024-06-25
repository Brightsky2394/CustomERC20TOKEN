# MyToken Smart Contract

A simple ERC20 token implementation with custom minting, burning, and transfer functions.

## Description

This project demonstrates a basic ERC20 token contract using OpenZeppelin's ERC20 implementation. The contract includes additional functionalities such as minting new tokens, burning existing tokens, and a custom transfer function. The minting function is restricted to the contract owner, while the burning function can be used by any token holder.

## Getting Started

### Installing

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/MyToken.git
   ```
2. Navigate to the project directory: using the command - cd MyToken
3. Install the necessary dependencies: By running the command npm install @openzeppelin/contracts

## Executing program

To deploy and interact with the smart contract, follow these steps:

1. Compile the contract using a Solidity compiler. You can use tools like Remix IDE, Hardhat, or Truffle. For example, with Hardhat:
   run the command - npx hardhat compile
2. Deploy the contract to your preferred Ethereum network. Example deployment script with Hardhat:

   ```
       async function main() {
           const MyToken = await ethers.getContractFactory("MyToken");
           const myToken = await MyToken.deploy("MyToken", "MTK");

           await myToken.deployed();

           console.log("MyToken deployed to:", myToken.address);
       }

       main().catch((error) => {
           console.error(error);
           process.exitCode = 1;
       });
   ```

   Run the deployment script: using the command - npx hardhat run scripts/deploy.js --network <network_name>

## Help

If you encounter any issues or have questions, please refer to the following resources:

- OpenZeppelin Documentation
- Hardhat Documentation
  For common problems or issues, you can also open an issue on the project's GitHub repository.

## Authors

Sikiru Yaya (Skycode)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

### Explanation:

- **Project Title**: Set as "MyToken Smart Contract".
- **Description**: Describes the project as an ERC20 token contract with minting, burning, and transfer functions.
- **Getting Started**:
  - **Installing**: Includes steps to clone the repository, navigate to the directory, and install dependencies.
  - **Executing program**: Provides an example of how to compile and deploy the contract using Hardhat.
- **Help**: Points to OpenZeppelin and Hardhat documentation for further assistance.
- **Authors**: Lists Sikiru Yaya (Skycode) with a Twitter handle.
- **License**: Mentions that the project is licensed under the MIT License.

Feel free to adjust the details and commands according to your actual project setup and deployment process.
