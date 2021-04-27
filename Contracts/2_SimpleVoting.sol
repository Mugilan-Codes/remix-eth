// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleVoting {
    
    struct Voter {
        address id;
        bool isVoted;
    }
    
    struct Candidate {
        string id;
        uint256 voteCount;
    }
    
    string[] candidates;
    
    address[] listOfVoter;
    mapping (address=> Voter) voted;
    mapping (string=> Candidate) listOfCandidate;
    string defaultAdd;
    constructor (string[] memory candidates_){
        candidates= candidates_;
        
        for(uint128 i=0;i<candidates_.length;i++){
            listOfCandidate[candidates_[i]]= Candidate(candidates_[i], 0);
        }
    }
    
    function getCandidates() public view returns(string[] memory ){
        return candidates;
    }
    
    function vote(string memory cand) public{
        require(voted[msg.sender].id!=msg.sender, "You Already Voted");
        require(keccak256(abi.encodePacked(listOfCandidate[cand].id))!=keccak256(abi.encodePacked(defaultAdd)), "Enter valid candidates address");
        listOfVoter.push(msg.sender);
        voted[msg.sender]=Voter(msg.sender, true);
        listOfCandidate[cand].voteCount++;
    }
    
    function winner() public view returns(string memory data){
        uint256 max =0;
        for(uint i=0; i< candidates.length; i++){
            Candidate memory check = listOfCandidate[candidates[i]];
            if(check.voteCount>max){
                max= check.voteCount;
                data= check.id;
            }
        }
    }
    
}