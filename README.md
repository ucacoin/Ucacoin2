# UCA

Ucacoin is a peer-to-peer decentralized digital currency for ordinary people, easy to use and acquire.

Ucacoin is fork of Pivx, improved with some of the following features: 

- Segwit protocol applied: fast transaction aprox. 300 tx/s 
- DNS hardcoded 
- Supersecure
- Consesus by masternode 
- POS 3.0. stake fixed
- Fast transactions featuring guaranteed zero confirmation transaction: Instantsend 
- Intregated BIP38, multisignature, blockexplorer, wallet repair and multisend functions in wallet
- Low transaction fee



Ucacoin Specifications:

- Type: POS + MASTERNODE
- Ticker: UCA
- Block time: 60 seconds
- Block size: 3 MB
- Transaction confirmation: 15 blocks
- Min Stake: 10 hours
- Max Supply: 21 Billions
- Masternode amount: starting at 150.000 UCA


Ucacoin Rewards:

POS Rewards:
```
Starting at 475 ucacoins
```

Masternode Governance: 

```
70% of all block rewards

```
# Debian/Ubuntu Linux Daemon Build Instructions

```
git clone https://github.com/ucacoin/Ucacoin.git
cd Ucacoin
./autogen.sh
./configure --disable-tests
make -j2 (2 is must be changed for number os Cpus that have VPS)
cd src
strip ucacoind ucacoin-cli
./ucacoind -daemon

```

# Docker

Build with

`docker build -t ucacoind . `

Start with

`docker run -it -v ~/crypto/ucacoin:/ucacoin -p 33211:33211 -p 33210:33210 --name=ucacoin ucacoind` 

Config can be found in `~/crypto/ucacoin/.Ucacoin/Ucacoin.conf`