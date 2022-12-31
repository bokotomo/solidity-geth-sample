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
