// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract oldnew {

    event update(uint old, uint newnum);

    uint public num;

    uint public g0;
    uint public g1;
    uint public g2;
    uint public gas01;
    uint public gas12;


    function renew() public {

        g0 = gasleft();

        for (uint i; i < 200; ) {
            uint old = num;
            num = i;
            emit update(old, num);

            unchecked { ++i; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 200; ) {
            emit update(num, i);
            num = i;

            unchecked { ++i; }
        }  

        g2 = gasleft();

        gas12 = g1 - g2;
    }
}

