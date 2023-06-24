/*Write a smart contract that allows only the admin to access and call all the functions of the contract.

Hint: use modifiers to restrict access

*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentContract {
    address public admin;

    struct Student {
        string name;
        uint age;
    }

    mapping(address => Student) private students;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    function addStudent(address _studentAddress, string memory _name, uint _age) public onlyAdmin {
        Student memory newStudent = Student(_name, _age);
        students[_studentAddress] = newStudent;
    }

    function getStudent(address _studentAddress) public view onlyAdmin returns (string memory, uint) {
        Student memory student = students[_studentAddress];
        return (student.name, student.age);
    }

    function updateStudentAge(address _studentAddress, uint _newAge) public onlyAdmin {
        students[_studentAddress].age = _newAge;
    }

    function deleteStudent(address _studentAddress) public onlyAdmin {
        delete students[_studentAddress];
    }
}


/*Explanation: The contract defines a data structure called Student that represents the information associated with each student. It consists of two fields: name (a string) and age (an unsigned integer).

Using the functions provided by the contract, the admin can add a new student by providing their address, name, and age. The admin can also retrieve a student's data by specifying the student's address. Additionally, the admind can update a student's age or delete a student's record from the contract.

The contract utilizes a mapping to associate each student's address with their corresponding Student struct, allowing efficient storage and retrieval of student data.

*/

