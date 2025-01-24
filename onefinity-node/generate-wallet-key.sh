#!/bin/bash
mxpy wallet new --format pem --outfile walletKey.pem  > /dev/null && cat walletKey.pem
