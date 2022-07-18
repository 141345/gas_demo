// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract callmemo {
    uint public g0;
    uint public g1;
    uint public fun_gas0;
    uint public fun_gas1;


    function f_calldata(uint[] calldata array) public {
        g0 = gasleft();
        uint a;
        for (uint i; i < array.length; ++i) {
            a = array[i];
        }

        g1 = gasleft();

        fun_gas0 = g0 - g1;

    }

    function f_memory(uint[] memory array) public{
        g0 = gasleft();

        uint a;
        for (uint i; i < array.length; ++i) {
            a = array[i];
        }

        g1 = gasleft();

        fun_gas1 = g0 - g1;
    }


}