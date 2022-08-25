// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract tfcompare {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public g3;
    uint public g4;
    uint public gas01;
    uint public gas12;
    uint public gas23;
    uint public gas34;

    function tf() public {

        bool val_t = true;
        bool val_f = false;

        g0 = gasleft();

        for (uint i; i < 1000; ) {
            if (val_t) {
                unchecked { ++i; }
            }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 1000; ) {
            if (val_t == true) {
                unchecked { ++i; }
            }
            
        }  

        g2 = gasleft();

        gas12 = g1 - g2;

        g2 = gasleft();
        for (uint i; i < 1000; ) {
            if (!val_f) {
                unchecked { ++i; }
            }
        }  

        g3 = gasleft();

        gas23 = g2 - g3;

        g3 = gasleft();
        for (uint i; i < 1000; ) {
            if (val_f == false) {
                unchecked { ++i; }
            }
        }  

        g4 = gasleft();

        gas34 = g3 - g4;

    }
}
