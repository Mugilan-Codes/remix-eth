# Remix with Solidity Language

## Connection with localhost

### Solidity Programs

1. Math Contract - (Refer Storage.sol in default workspace)
   - Define functions that implement various math operations available in solidity.
2. Simple Voting Contract - (Refer Ballot.sol in default workspace)
   - Define candidate list, allow users with accounts to vote for a candidate. Define a function to return the winner candidate
3. Land Records Contract
   - Define land records, allow users to buy and sell lands. Find the provenance of a land record.

### How to Run

1. Install Packages

   ```sh
   npm i
   ```

2. Run Remixd Command

   ```sh
   remixd -s . --remix-ide https://remix.ethereum.org
   ```

3. Connect to Remix IDE by cliking on connect to localhost option

### Sources

- [Remix IDE](https://remix.ethereum.org/)
- [Solidity](https://docs.soliditylang.org/)
  - [V0.8.4](https://docs.soliditylang.org/en/v0.8.4/)
  - [Introduction to Smart Contracts](https://docs.soliditylang.org/en/v0.8.4/introduction-to-smart-contracts.html)
  - [Solidity by Example](https://docs.soliditylang.org/en/v0.8.4/solidity-by-example.html)
- [Remixd](https://www.npmjs.com/package/@remix-project/remixd)
- [Remixd: Access your Local Filesystem](https://remix-ide.readthedocs.io/en/latest/remixd.html)
