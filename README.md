# foundry_fund_me

## Introduction
`foundry_fund_me` is a decentralized application built using Foundry, designed to facilitate crowdfunding through smart contracts. This project demonstrates the use of Solidity for creating secure and efficient smart contracts, along with scripts and tests to ensure reliability and functionality.

## Features
- **Smart Contracts**: Secure and transparent crowdfunding logic.
- **Scripts**: Deployment and interaction scripts for ease of use.
- **Testing**: Comprehensive test suite to ensure contract correctness and reliability.
- **Gas Optimization**: Efficient contract design to minimize transaction costs.

## Getting Started
This project is designed for developers familiar with Solidity and Foundry. Follow the instructions below to set up and run the project locally.

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/marko-mrsevic/foundry_fund_me.git
    cd foundry_fund_me
    ```
2. Install Foundry:
    ```bash
    curl -L https://foundry.paradigm.xyz | bash
    foundryup
    ```
3. Install dependencies:
    ```bash
    forge install
    ```

## Usage
1. Compile the smart contracts:
    ```bash
    forge build
    ```
2. Deploy the contracts using the provided scripts:
    ```bash
    forge script script/DeployFundMe.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
    ```
3. Alternatively, use the custom Makefile commands to simplify deployment for Anvil and [Tenderly](https://tenderly.co). Just create a .env file in the root directory and specify your credentials:

    ```bash
    make deploy     # Deploy locally using Anvil
    make deploy-tenderly
    ```  
4. Interact with the deployed contracts using the scripts or a frontend of your choice.

## Testing
Run the test suite to ensure the contracts work as expected:
```bash
forge test
```

## License
This project is licensed under the MIT License. See the [LICENSE](https://opensource.org/licenses/MIT) file for details.