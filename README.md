

# Onefinity Docker
This is a straightforward Docker setup designed to run Onefinity nodes. Its goal is to simplify the process of getting started with running a Onefinity node. Please note that this setup is neither foolproof nor intended for production use.

The current installation document, which this is based on, can be found here: https://docs.google.com/document/d/1EIxRkIH6nY3BhbjvKqXxQe2B7ho9eb2_dYXR1gpGtz4/edit?tab=t.0
# How to use

## Prerequisites
- Have Docker and Docker Compose installed on your server: see <a href="https://docs.docker.com/engine/install/ubuntu/" target="_blank">https://docs.docker.com/engine/install/ubuntu/</a>



## Installation
Execute the commands below. This will install the nodes in /opt/onefinity-docker, if desired change the location.
```
cd /opt
sudo git clone https://github.com/MarkWillems/onefinity-docker.git
cd onefinity-docker
```

The data of all the nodes will be stored in the volumes subdirectory.

## 1. Configure your nodes

Execute the following command to build the Docker container locally:

``
./script.sh build
``
## 2. setup your nodes

Execute the following command to configure the nodes

``
./script.sh setup
``

### 2.1 Import existing key
To reuse keys, place them in the ./volume/node-name/keys directory, created in step 2. Make sure the files validatorKey.pem and walletKey.pem are located in this folder.

## 3 Funding
Execute step 9 in the official installation document to get enough funding to stake a node: https://docs.google.com/document/d/1EIxRkIH6nY3BhbjvKqXxQe2B7ho9eb2_dYXR1gpGtz4/edit?tab=t.0.

TL;DR 
```

Visit https://litewallet.validators.onefinity.network/unlock and use the (generated) walletKey.pem.

For now, this key is not highly secure, so simply copying its contents to a desktop with browser access will suffice. Use the 'Request Funds' or faucet option to proceed.

Staking will take place at a later stage.

## 2.Running

Start all the nodes
```
./script.sh start
```

## Other commands

### Stopping of all nodes

Stop all the nodes
```
./script.sh stop
```

### How to open termui of Onefinity get some stats of your node

```
docker exec -it <node-name> /opt/onefinity-utils/termui  --address localhost:9501

Default naming:
docker exec -it onefinity-validator-0 /opt/onefinity-utils/termui  --address localhost:9501

```
### How to see the logging of a node?

```
 docker logs <node-name> --follow
```

### How to restart a node?
```
 docker restart <node-name>
```

### Rebuild the container images
```
./script.sh rebuild
```
### Clear all nodes data and force a fresh start
```
./script.sh rebuild
./script.sh clear
```