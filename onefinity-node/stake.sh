#!/bin/bash
mxpy validator stake \
  --pem=/opt/onefinity/VALIDATOR_KEYS/walletKey.pem \
  --value="2500000000000000000000" \
  --validators-file=/opt/onefinity/config/validator.json \
  --proxy="https://gateway.validators.onefinity.network" \
  --gas-limit 25000000 \
  --recall-nonce \
  --send

