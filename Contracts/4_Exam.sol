// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract Exam {
    
    address public teacher;
    mapping(uint => Student) students;
    uint public count = 0;
    
    mapping(address => string) answers;
    mapping(address => uint) marks;
    
    struct Student {
        string name;
        address studentId;
    }
    
    // TODO: submit answer only wher the status is OPEN
    enum SubmissionStatus {
        OPEN,
        CLOSED
    }
    
    constructor() {
        teacher = msg.sender;
    }
    
    modifier isTeacher() {
        require(msg.sender == teacher, "Not a Teacher");
        _;
    }
    
    modifier isEnrolledStudent() {
        address _studentId = msg.sender;
        bool flag = false;
        for(uint i =0; i<count;i++) {
            if(students[i].studentId == _studentId) {
                flag=true;
                _;
            }
        }
        
        if(!flag) {
            revert('Only Enrolled students can upload the answer');
        }
    }
    
    function enrollStudent(string memory _name, address _studentId) public isTeacher {
        students[count] = Student(_name, _studentId);
        count++;
    }
    
    function uploadAnswer(string memory _answer) public isEnrolledStudent {
        answers[msg.sender] = _answer;
    }
    
    function giveMarks(uint _marks, address _studentId) public isTeacher {
        marks[_studentId] = _marks;
    }
    
    function getMarks() public view returns (uint studentMark) {
        return marks[msg.sender];
    }
    
    // TODO: getAnswers of student by Teacher
    
}