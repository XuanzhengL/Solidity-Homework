// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseOperations {
    function extractBits(uint8 number) public pure returns (uint8[] memory) {
        uint8 count = 0;
        for (uint8 i = 0; i < 8; i++) {
            if (number & uint8(1 << i) != 0) {
                count++; // Count the number of set bits (1s) to determine the required array size
            }
        }

        uint8[] memory bitsArray = new uint8[](count); // Create a dynamic array to store only the nonzero bits
        uint8 index = 0;
        
        // Extract and store nonzero bits
        for (uint8 i = 0; i < 8; i++) {
            uint8 bitValue = number & uint8(1 << i);
            if (bitValue != 0) {
                bitsArray[index] = bitValue;
                index++;
            }
        }

        return bitsArray;
    }
}
