// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Import the ERC20 implementation from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    // Constructor to initialize the token with a name, symbol, and set the owner
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner = msg.sender;
    }

    // Modifier to restrict access to owner-only functions
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Only the contract owner can call this function"
        );
        _;
    }

    // Function to mint new tokens, can only be called by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens, can be called by any token holder
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
