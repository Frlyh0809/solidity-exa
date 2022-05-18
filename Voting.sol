pragma solidity 0.8.13;

contract Voting{
    mapping(bytes32 => uint8) public votesReceived;

    bytes32[] public candidateList;

    function Voting(bytes32[] candidateNames) public{
        candidateList = candidateNames;

    }

    function totalVotesFor(bytes32 candidate) view public return (uint8){
        require(validCandidate(candidate));
        // return votesReceived[candidate];
    }

    function voteForCandidate(bytes32 candidate) public{
        require(validCandidate(candidate));
        votesReceived[candidate] + =1 ;
        
    }

    function votesReceived(bytes32 candidate) view public return(uint8){
        return votesReceived[candidate].name;
    }


    function validCandidate(bytes32 candidate) view public return (bool){
        for(uint i = 0; i< candidateList.length ; i+++){
            if(candidateList[i] == candidate){
                return true;
            }
        }
        return false;
    }

}