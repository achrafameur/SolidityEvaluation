// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract MarketPlace {

    enum ShippingStatus { Pending, Shipped, Delivered }
    ShippingStatus public status;
    enum roles {owner , costumer }
    roles public role ;

    event MissionComplete(string message);

    constructor() public {
        role = roles.owner;
        status = ShippingStatus.Pending;
    }

    function Shipped() public  {
        if (role == roles.owner) {
            status = ShippingStatus.Shipped;
        }
    }

    function Delivered() public  {
        if (role == roles.owner) {
            status = ShippingStatus.Delivered;
            emit MissionComplete("Package has been delivered");
        }
    }

    function getStatus() public view  returns (ShippingStatus) {
        if (role == roles.owner) {
            return status;
        }
        
    }


    function Status() public payable returns (ShippingStatus) {
        if (role == roles.costumer) {
            require(msg.value == 1 ether, "Please pay 1 ether to get the status.");
            return status;
        }
    }
}