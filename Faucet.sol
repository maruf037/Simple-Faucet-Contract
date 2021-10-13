contract Faucet {

    //Give out ether to anyone who asks
    function withdraw (uint withdraw_amount) public {

        //Limit withrawal amount
        require (withdraw_amount <= 1000000000000000000);

        //Send the amount to the address that requested it
        msg.sender.transfer(withdraw_amount);
        
    }

    //Accept any incoming amount
    function () payable public;
}