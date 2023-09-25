// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Explicit {
    struct User {
        string name;
        uint256 studentId;
    }

    mapping(uint256 => User) public users;

    uint256 public nextUserId = 1;

    function addUser(string memory _name, uint256 _id) public {
        users[nextUserId] = User(_name, _id);
        nextUserId++;
    }

    function updateUser(string calldata _newName, uint256 _newId, uint256 _userId) external {
        User storage userToUpdate = users[_userId];
        userToUpdate.name = _newName;
        userToUpdate.studentId = _newId;
    }
}
