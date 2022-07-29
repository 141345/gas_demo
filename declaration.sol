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


    function declaration() public {
        g0 = gasleft();

        for (uint i; i < 500; ++i) {
            uint s;
            s = i;
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        uint ss;
        for (uint i; i < 500; ++i) {
            ss = i;
        }
        
        g2 = gasleft();

        gas12 = g1 - g2;        

        g2 = gasleft();
        uint sss;
        for (uint i; i < 500; ++i) {
            sss = i;
            sss = 0;
        }
        
        g3 = gasleft();

        gas23 = g2 - g3;  

    }

}