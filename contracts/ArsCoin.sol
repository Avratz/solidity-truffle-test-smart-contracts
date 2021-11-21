pragma solidity ^0.8.9;

contract ArsCoin {
    address public minter;
    mapping(address => uint) public balances;
    
    event Sent(address from, address to, uint amount);
    
    constructor(){
        minter = msg.sender;
    }
    
    modifier onlyMinter () {
        require(minter == msg.sender);
        _;
    }
    
    function mint(address receiver, uint amount) public onlyMinter { 
        balances[receiver] += amount;
    }

    error insufficientBalance(uint requested, uint available);

    modifier hasAmount(uint amount) {
        if (amount >= balances[msg.sender]){
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        }
        _;
    }
    
    function send(address receiver, uint amount) public hasAmount(amount) {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}