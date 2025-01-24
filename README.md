

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
To reuse keys, place them in the ./volume/node-name/keys directory, which is created in step 2. Ensure that validatorKey.pem and walletKey.pem are in this folder.

## 3 Funding
Execute step 9 in the official installation document to get enough funding to stake a node: https://docs.google.com/document/d/1EIxRkIH6nY3BhbjvKqXxQe2B7ho9eb2_dYXR1gpGtz4/edit?tab=t.0.

TL;DR 
```
Go to the https://litewallet.validators.onefinity.network/unlock and use the (generated) walletKey.pem.
For now this key is not really secure so just copy the content of this file to a desktop with browser acces is succuficient and use the "Request funds" or faucet.

The staking will  happen later

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

### How to open termui of Elrond to get some stats of your node

```
docker exec -it <node-name> ./termui

```
### How to see the logging of a node?

```
 docker logs <node-name> --follow
```

### How to restart a node?
```
 docker restart <node-name>
```

### (re)set the github token
```
./script.sh github
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