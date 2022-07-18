// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract gasgas {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public g3;
    uint public g4;
    uint public g5;
    uint public gas01;
    uint public gas12;
    uint public gas23;
    uint public gas34;
    uint public gas45;

    function lt_gt() public {

        g0 = gasleft();

        for (uint i; i < 1000; ) {
            if (i > 0) {}
            unchecked { ++i; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 1000; ) {
            if (i != 0) {}
            unchecked { ++i; }
        }        

        g2 = gasleft();

        gas12 = g1 - g2;

    }

}