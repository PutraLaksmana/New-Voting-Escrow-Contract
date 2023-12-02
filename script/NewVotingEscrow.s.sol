// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import { BaseScript } from "./Base.s.sol";
import { NewVotingEscrow } from "../src/NewVotingEscrow.sol";
contract NewVotingEscrowScript is BaseScript {
// string VotingEscrowToken = "VotingEscrowToken" ;
// string veToken = "veToken";
// string version = "1.0";
// uint8 Decimal = number_decimal;
// address erc20 = (address);
// uint mintime = (number_mintime);

function run() public broadcast returns (NewVotingEscrow newVotingEscrow) {
        newVotingEscrow = new NewVotingEscrow(VotingEscrowToken, veToken, version, Decimal, erc20, mintime );
    }
}