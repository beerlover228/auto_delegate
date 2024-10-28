#!/bin/bash

while true; do
    arkeod tx distribution withdraw-all-rewards \
  --commission \
  --chain-id arkeo-testnet-3 \
  --fees 5000uarkeo \
  --from $WALLET
    sleep 60
    arkeod tx staking delegate $ARKEO_VALOPER_ADDRESS $(( $(arkeod q bank balances $ARKEO_WALLET_ADDRESS -o json | jq -r '.balances[0].amount') - 100000000 ))uarkeo \
    --chain-id arkeo-testnet-3 \
    --from $WALLET \
    --fees=5000uarkeo
    sleep 60
done
