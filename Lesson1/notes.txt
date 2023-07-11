Lesson 1: Welcome to Remix! Simple Storage

**working on SimpleStorage.sol

Functions in solidity @ 01:40hrs
- can be public, private, internal or external
- Functions have to be specified as being external, public, internal or private. For state variables, external is not possible.
- External functions are part of the contract interface, which means they can be called from other contracts and via transactions. An external function f cannot be called internally (i.e. f() does not work, but this.f() works). 
    External functions are sometimes more efficient when they receive large arrays of data, because the data is not copied from calldata to memory.
- Public functions are part of the contract interface and can be either called internally or via messages. For public state variables, an automatic getter function (see below) is generated.
- internal: Those functions and state variables can only be accessed internally (i.e. from within the current contract)
- private functions and state variables are only visible for the contract they are defined in and not in derived contracts.
- **if you don't set a variable, it will automatically set to internal

Structs in solidity
- way to define new type

SPDX License Identifier
- always include at the top of these contracts
- MIT license identifer is the most open one out there

Now we want to deploy this to the testnet @ 02:03 hrs
- lets go to a facuet 
- we need to change to Injected Web3 Environment on Remix
- Connect our metamask account to this Environment
- uncheck IPFS
- deploy on Remix
- pay gas fee for this becuase we are changingthe blockchain
- we did not send ETH we made a change on the blockchain
- this created a new smart contract
- now when we press store on Remix, metamask pops up
- metamask comes up every time we call a function

EVM 
- Ethereum Virtual Machine


We deployed an ethereum smart contract