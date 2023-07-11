Lesson 0: Welcome to blockchain

Smart Contracts
- self executing sets of instructions, without 3rd parties
- written in code
- used more in ethereum than bitcoin
- need real world data
- Blockchain Oracles: bring data into the blockchain
- Centralized Oracles are a Point of Failure
- Hybrid Smart Contracts: Smart Contracts with off chain componenet
- Chainlink: allows you to bring external data link
- Chainlink allows for unlimited smart contract customization
- Dapp = Smart Contract = Decentralized App
- Understanding Ethereum we will understand majority of these platforms

Blockchain
- Decentralized, and distributed
- Transparency & Flexibility
- Speed and Efficiency
- Security & Immutability
- Removal of counterparty risk
- Trust Minimized Agreements (Trustless agreements)
*freedom & trustless

DAOs
- Decentralized Autonomous Organizations
- people hold governance tokens
- may include people with voting rights, etc 

Making a Transaction on Ethereum Blockchain
- Metamask
- metamask has testnets, like Rinkeby testnets
- testnets are free and for testing smart Contracts
- mainnet cost money and are considered "live"
- go to rinkeby faucet & make a
- faucet: an application that gives us free test tokens, like free test rinkeby Ethereum
https://rinkebyfaucet.io/
- etherscan: a block explorer

Gas
- gas: cost to do business on the blockchain
- amount of "gas" used depends on how computationally expensive your transaction instructions
- sending ETH to 1 address is cheaper than to 1000 addresses
- gas: measure of computation use
- gas price: how much it costs per unit of gas
- gas limit: max amount of gas in a transaction
- transaction fee: gas used x gas price
- 21,000 gas @ 1 GWEI per gas = 21,000 GWEI
- why can we change gas price?
- eth gas station
- if you wnat to get your transaction done faster, pay more GWEI (like 30 GWEI)
- standard at the time was 21 GWEI
- gas prices is bassed of demand of the blockchain
- look at the gas station to check prices

Hash @ 00:44min
- unique fixed length string, meant to identify a piece of data
- created by placing said data into a hash function
- SHA256 Hash:
https://andersbrownworth.com/blockchain/hash

Block
- put 3 things into the hashing algorithm to create the hash
- the 3 things: block number, nonce, data
- miners have to keep mining until hash starts with four 0s
- ethereum miners have to keep changing nonce until they get 0000 hash
- through brute force

blockchain: list of transactions mined together
- multiple difference blocks
- 4 things now: block number, nonce, data, previous
- nonce: number used once to find the solution to the blockchain problem
- previous is previous block
- genesis block: first block in a blockchain
- genesis block has all 0s in its previous variable
- if you break one block it breaks all the following blocks
- because if the previous hash is broken (not four 0s), then the hash for the second will be wrong
- that's how it's immutable!!!!

how is it distributed?
https://andersbrownworth.com/blockchain/distributed
- number of different peers
- each peer has its own blockchain
- peer A wants to change something in their blockchain, they go back and change something then mine to get correct hashes
- peer A essentially forked their own way by creating their own history
- not all on the same blockchain anymore with their peers
- democracy rules, peer b and peer c say that's wrong

private keys 01:00 hrs
https://andersbrownworth.com/blockchain/public-private-keys/keys
- message + private key will create "sign" it and create the message signature
- BUT people can verify the message and signature with the public key
- private key > public key > address

- blockchain is Decentralized because anyone can join the network
- blockchain is resillient because there are thousands of nodes
- banks are centralizedd
- blockchain nodes keep lists of the transactions that occur, immutability!

Consensus @ 01:12hrs
- mechanism used to agree on the state of a blockchain
- consensus: chain selection algorithm and sybil resistance mechanism
- proof of work vs proof of stake

proof of work
- mining like earlier
- computationally expensive
- nakomoto consensus: any chain that is the longest is the main blockchain
- uses a lot of energy
- sybil attack: user creates a bunch of fake anonymous accounts
- 51% attack: when a longest chain has control of 51% of the other nodes
- the bigger a blockchain is, the more secure it is

proof of stake 
- Solana, Avalance, ETH 2.0
- Proof of stake nodes put up collateral that they will behave honestly in the network
- miners are called validators
- how do we chose the random validators in the system
- ETH 2 is using RANDAO, organization collectively chooses the random number
- great sybil resistance mechanism
- uses way less energy
- little less Decentralized becauase you have to stake a certain amount

scalability
- kind of a celing to how many people can use the system because gas prices will resistance
- sharding: sharded blockchain: blockhain of blockchain

layer 1
- base layer blockchain implementaitaon
- bitcoin, ethereum

layer 2: any application built on top of a layer 1
- arbitron and optisim: rollups
- rollup: kind of like a sharded blockchain