  // SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;


contract FundMe{
    uint256 public minimumUSD = 50;

    function fund () public payable{
        //Want to be able to set a minimum fund amount in USD
        // How do we send ETH to this contract ? 
            //Recordar que el VALUE es el valor mínimo que necesitamos para ejecutar el SC 

        // Para enviar una transacción necesito : 
            //Nonce:
            //Gas Price:
            //Gas Limit:
            //To:
            //Value:
            //Data:
            //v,r,s:
        // Le ponemos payable para decir que será una retirada de eth y accedemos al valor "value"
        // 1e18 = 1 eth
        require(msg.value >= minimumUSD, "Didnt send enough"); //definit que necesitamos mínimo un ETH para ejecutar esto


    }

    // function withdraw(){}
}