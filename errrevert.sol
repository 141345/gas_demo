// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract CErr {

    error errGas();

    function i0i0(uint i) external {
        require(i == 0, "err");
    }

    function i1i1(uint i) external {
        if (i != 0) {
            revert errGas();
        }
    }
}

contract errrevert {
    uint public g0;
    uint public g1;
    uint public g2;
    uint public gas01;
    uint public gas12;

    event errGet();

    CErr cerr = new CErr();


    function err() public {

        g0 = gasleft();

        for (uint i; i < 100; ) {
            try cerr.i0i0(i) {
            } catch {
                emit errGet();
            }
            unchecked { ++i; }
        }

        g1 = gasleft();

        gas01 = g0 - g1;

        g1 = gasleft();
        for (uint i; i < 100; ) {
            try cerr.i1i1(i) {
            } catch {
                emit errGet();
            }
            unchecked { ++i; }
        }  

        g2 = gasleft();

        gas12 = g1 - g2;

    }
}
