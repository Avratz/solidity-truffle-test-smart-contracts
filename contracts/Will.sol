pragma solidity ^0.8.9;

contract Will {
    address owner;
    uint fortune;
    bool isDeceased;
    
    constructor() payable {
        owner = msg.sender;
        fortune = msg.value;
        isDeceased = false;
    }
    
    //modifier so the only person who can call the contract is the owner
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    //modifier so that we only allocate funds if person die.
    modifier mustBeDeceased {
        require(isDeceased == true);
        _;
    }
    
    address payable [] familyWallets;
    mapping(address => uint) inheritance;
    
    //set inheritance for each address
    function setInheritance(address payable wallet, uint amount) public onlyOwner {
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }
    
    //pay each family member based on their wallet address
    function payout() private mustBeDeceased {
        for (uint i = 0; i < familyWallets.length; i++ ){
            address payable familyAddress = familyWallets[i];
            uint amount = inheritance[familyAddress];
            
            familyAddress.transfer(amount);
        }
    }
    
    // oracle switch simulation
    function deceased() public onlyOwner {
        isDeceased = true;
        payout();
    }
}