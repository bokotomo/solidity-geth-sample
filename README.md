# solidity-sample

solidity の geth,solc のテスト

## docker

```
cd ./infrastructure/docker
docker-compose exec tt-workspace bash
```

## solc build

```
solc --abi --bin setget.sol
```

## geth run

```
geth --datadir /src/config/eth_private_net/ init /src/config/eth_private_net/myGenesis.json

geth --networkid "15" --nodiscover --datadir "/src/config/eth_private_net" console 2>> /src/config/eth_private_net//geth_err.log
```

## geth contract

```
miner.start()

var bin = "0x"
var abi = [{}]
var contract = eth.contract(abi)

personal.unlockAccount(eth.accounts[0])

var myContract = contract.new({ from: eth.accounts[0], data: bin})

var cnt = eth.contract(myContract.abi).at(myContract.address);
cnt.set.sendTransaction(11,{from:eth.accounts[0]})
cnt.get()

miner.stop()
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
