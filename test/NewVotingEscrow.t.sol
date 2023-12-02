// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {NewVotingEscrow} from "../src/NewVotingEscrow.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract CounterTest is Test {
    ERC20 public Mock;
    NewVotingEscrow public NewVotingEscrowContract;
    string MockToken;
    string mock;
    string VotingEscrowMock;
    string veMock;
    address alice;
    function setUp() public {
        Mock = new ERC20(MockToken, mock);
        NewVotingEscrowContract = new NewVotingEscrow(VotingEscrowMock, veMock, "1.0", 18, address(Mock), 1000);
        alice = makeAddr("alice");
        deal(address(Mock), address(this), 1000e18); 

    }

    function testcreatelock() public{
      NewVotingEscrowContract.addToWhitelist(address(this));
      Mock.approve(address(NewVotingEscrowContract), 1_000*1e18);
      NewVotingEscrowContract.CreateLock(1000e18, 1000000);
    }

    function testfail() public {
      vm.prank(alice);
      vm.expectRevert();
      NewVotingEscrowContract.addToWhitelist(alice);
      NewVotingEscrowContract.removeFromWhitelist(address(this));
      NewVotingEscrowContract.unlock();

    }

}
