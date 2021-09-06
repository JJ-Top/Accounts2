// SPDX-License-Identifier: JAIRO LAMUS
pragma solidity ^0.7.5;

contract Accounts2 { 
    
    string public documentTitle;
    string public documentURL;
    address public documentOwner;
    
    constructor(string memory title, string memory url) public {
        documentTitle = title;
        documentURL = url;
        documentOwner = msg.sender;
    }
    
    function get_Direccion_Contrato() public view returns (address) {
        
        return address(this);
        //retorna la direccion del contrato, la cual se asigna al momento del deploy
        
    }
    
      function get_Direccion_DelInvocante() public view returns (address) {
        
        return address(msg.sender);
        //retorna la direccion del invocante
        
    }
    
    function get_Saldo_Contrato() public view returns (uint256) {
        
        //return this.balance;
        return address(this).balance;
        //retorna el saldo de la direccion del contrato
        
    }
    
      function get_Saldo_DelInvocante() public view returns (uint256) {
        
        return msg.sender.balance;
        //retorna el saldo de la direccion del contrato
        
    }
    
}