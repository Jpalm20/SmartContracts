pragma solidity >=0.7.0 <0.9.0;

contract Exchange
{
    address owner;

    constructor() 
    {
        owner = msg.sender;
    }

    modifier onlyOwner() 
    {
        require(msg.sender == owner);
        _;
    }

    function recieveETH() public onlyOwner payable 
    {
        
    }

    function sendETH(address payable _to) public onlyOwner payable  
    {
        _to.transfer(address(this).balance);
    }

    function balanceOf() external view returns(uint256)
    {
        return address(this).balance;
    }

 
}
