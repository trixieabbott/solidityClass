Lesson 4: Web3.py Simple Storage

Remix IDE
- Remix is good for starting out IDE
- web-based
- extremely quick and easy to create and test smart contracts
- limitations: 
can't integrate other parts of a project
limited support for tests or custom deployments
can't save files locally without a plugin
needs internet
doesn't have python

Web3.py
- python package for interactiving with ethereum
- Brownie: smart contract development framework built on top of web3.py


Ganache UI
- allows us to work on a local blockchain
- there is only 1 node - us
- downloaded it to mac
- simulated environment
- quickstart, local fake blockchain!
- we can connect to it through the http address

Web3py ddocumentation
- https://web3py.readthedocs.io/en/stable/providers.html
- provider is how web3 talks to the blockchain
- normally done by submitting a reset to an HTTP or IPC socket based server
- most common ways to connect your node are:
1. IPC (uses local filesystem, fast and secure)
2. Websockets (works remotely, faster than HTTP)
3. HTTP (more noddes support it)

Steps to create the contract and deploy it
1. Build the contract deploy transaciton
2. sign the transaction
3. send the transaction

