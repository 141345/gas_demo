// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract gasgas {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public g3;
    uint public gas01;
    uint public gas12;
    uint public gas23;

    function gg00() public {

        g0 = gasleft();

        for (uint i; i < 1000; ) {
            unchecked { i++; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 1000; ) {
            unchecked { ++i; }
        }        

        g2 = gasleft();

        gas12 = g1 - g2;

        g2 = gasleft();
        for (uint i; i < 1000; ) {
            unchecked { i = i + 1; }
        }    

        g3 = gasleft();

        gas23 = g2 - g3;


    }

    function pplus() public {

        uint a = 10;

        g0 = gasleft();

        for (uint i; i < 1000; ) {
            a += 2;
            unchecked { i++; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        a = 10;
        g1 = gasleft();
        for (uint i; i < 1000; ) {
            a = a + 2;
            unchecked { i++; }
        }        

        g2 = gasleft();

        gas12 = g1 - g2;
    }
}
