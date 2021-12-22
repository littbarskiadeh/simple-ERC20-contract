// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract SampleToken is ERC20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _initialSupply
    ) ERC20(_name, _symbol) {
        require(_initialSupply > 0, "INITIAL_SUPPLY has to be greater than 0");
        // _totalSupply = _initialSupply;
        _mint(msg.sender, _initialSupply * 10**uint(decimals()));
        // _mint(msg.sender, 100 * 10**uint(decimals()));
    }
}
