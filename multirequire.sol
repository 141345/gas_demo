// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract gasgas {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public gas01;
    uint public gas12;

    function multirequire() public {

        g0 = gasleft();

        for (uint i; i < 1000; ) {
            require(i >= 0 && i <= 1e20);
            unchecked { ++i; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 1000; ) {
            require(i >= 0);
            require(i <= 1e20);
            unchecked { ++i; }
        }        

        g2 = gasleft();

        gas12 = g1 - g2;

    }

}