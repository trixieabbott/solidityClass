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


Using https://docs.chain.link/data-feeds/price-feeds/addresses/?network=ethereum
- this will tell us the address of the ETH/USD address
- copy and paste it in to the ()


The number I was getting was around 1899710500000, which makes sense because at the time of deployment,
1 ETH = 1898 USD

Pitfalls of solidity
- before solidity 0.8, if you added to maximum number a uint could be, it would wrap around
- it would wrap around to the lowest number it could be
- ex: uint8 = 255 + uint8(1)
- solidity lets us do this, what happens it will be =0 in solidity, THIS IS BAD
- integers can wrap around once they reach their max amount
- we can accidentally pass this cap if we are doing calculations
- SafeMath @ 03:02
- SafeMathChainLink is basically the same as Openzepplin SafeMath
- we used to need SafeMath because of this, but we no longer need it

Libaries
- a library is similar to contracts but their purpose is that they are deployed only once at a specific address and their code is reused
- using keyword: the ddirective using A for B can be used to attach library functions 

Require statement
- same as an if statement
- ex: 
require(getConversionRate(msg.value) >= minimumUSD "You need to spend more ETH!");

Error message - you need to spend more
- So instead, on Remix we need to spend at least $50 USD
- So, we put in 0.1 ETH, or 100000000000000000 WEI
- remember we can't do decimals in ETH
- THEN, we can hit fund and actually send some funding to our contract
@ 03:08

- now we use our MetaMask address and use the addressToAmount function and see how much WEI we have in there

withdraw function
- how do we get our money back? make a withdraw function
- also will be a payable function

constructor
- we need a constructor that will be called right when the contract is deployed
- immedidately executed when we deploy the contract
- we can make the address the owner immediatley
- owner = msg.sender
- we test this through the owner function

Modifier
-  used to change the behavior of some function in a declarative way
- same as a require function

arrrays/for loops
- iterate through the funders and make each balance 0

Methods in FundMe:
- fund() - can fund the contract from an address
- withdraw() - will withdraw all funds if the address is the owner of the contract
- onlyOwner modifier - used for withdraw() function
- getVersion- will return priceFeed version
- getPrice - will return the price in USD
- funders[1] - will return the address of funder at index 1
- owner - will return the owner address