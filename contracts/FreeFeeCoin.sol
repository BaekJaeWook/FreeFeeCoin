pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

/**
 * @title FreeFeeCoin contract
 */
contract FreeFeeCoin is StandardToken {
    string public symbol;
    string public name;
    uint8 public decimals = 9;

    uint noOfTokens = 2500000000; // 2,500,000,000 (2.5B)

    /**
     * @dev initialize ERC20
     *
     * @param _symbol token symbol
     * @param _name   token name
     * @param _owner  owner address
     */
    constructor (string _symbol, string _name) public {
        require(bytes(_symbol).length > 0);
        require(bytes(_name).length > 0);

        totalSupply_ = noOfTokens * (10 ** uint(decimals));
        // 2.5E9 tokens initially

        symbol = _symbol;
        name = _name;

        balances[msg.sender] = totalSupply_;
        emit Transfer(address(0), msg.sender, totalSupply_);
    }

    function getOneFreeFeeCoin() public view returns (uint) {
        return (10 ** uint(decimals));
    }

    function getMaxNumberOfTokens() public view returns (uint) {
        return noOfTokens;
    }
}