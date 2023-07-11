Lesson 3: Fund Me

Payable Functions
- msg.sender - sender of function caller
- msg.value - amount they are sending
- 

Chainlink Oracles
- Decentralized Oracle Network Chainlink
    - Blockchains can't make API calls
    - Centralized Nodes are Points of Failure
- ** if you have 1 node get the off-chain data, that makes the blockchain not decentralized anymore!
- instead we want decentralized computation
- so we want to use chainlink: decentralized oracle network
- data.chain.link: has number of differrent price feeds
- You can make API calls yourself, but we won't do that

- Decimals do not work in solidity
- there are no chainlink nodes on simulated JavaScript VM

Importing from NPM
- importing from npm is like import "@chainlink/contracts " etc 
- Interfaces compile down to an ABI, application binary interface
- ABI tells solidity and other programming languages how it can interact with another contract
- anytime you want to interact with an already deployed smart contract you will need an ABI
- interfaces compile down to an ABI