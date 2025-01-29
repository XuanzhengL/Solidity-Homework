// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryConverter {
    function binaryStringToDecimal(string memory binaryStr) public pure returns (uint256) {
        bytes memory binaryBytes = bytes(binaryStr);
        uint256 decimalValue = 0;
        
        for (uint256 i = 0; i < binaryBytes.length; i++) {
            require(binaryBytes[i] == '0' || binaryBytes[i] == '1', "Invalid binary character");
            
            decimalValue = decimalValue * 2 + (uint256(uint8(binaryBytes[i])) - 48);
        }
        
        return decimalValue;
    }
}
