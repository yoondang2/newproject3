pragma solidity ^0.4.24;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
 
contract yoontoken is StandardToken {
    string public name = "yoontoken"; 
    string public symbol = "YOON"; //Currency Symbol
    uint public decimals = 18; // 1ETH is start from 18digit (소수점 자리수) 
    uint public totalSupply  = 21000000 * (10 ** decimals); 
    string public version = 'v0.1';
 
    /* 아래는 ICO Edition */
    uint256 public unitsOneEthCanBuy;     // 1ETH 당 토큰 배분비율
    uint256 public totalEthInWei;         // ICO ETH SoftCap .  
    address public fundsWallet;           // ICO ETH 모금지갑 .
    //construct
    function yoontoken() public {
        balances[msg.sender] = totalSupply;
    }
}