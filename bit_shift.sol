// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract bitexp {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public gas01;
    uint public gas12;
    uint public aa;
    uint public bb;


    function bit() public {
        g0 = gasleft();
        // uint a;
        for (uint i = 1; i < 200; ++i) {
            aa = 2**i;
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i = 1; i < 200; ++i) {
            bb = 2 << ( i - 1 );
        }
        g2 = gasleft();

        gas12 = g1 - g2;
    }

}