# config

## run

```
geth --datadir /src/config/eth_private_net/ init /src/config/eth_private_net/myGenesis.json

geth --networkid "15" --nodiscover --datadir "/src/config/eth_private_net" console 2>> /src/config/eth_private_net//geth_err.log
```

## sample

```
eth.accounts

personal.newAccount("AccountPass1")

eth.accounts

personal.newAccount("AccountPass2")

eth.getBalance(eth.accounts[0])

miner.start()

eth.mining

eth.getBalance(eth.accounts[0])

personal.unlockAccount(eth.accounts[0])

eth.sendTransaction({from: eth.accounts[0], to: eth.accounts[1], value: web3.toWei(1, "ether")})

eth.getBalance(eth.accounts[1])

miner.stop()
```
