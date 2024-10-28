#!/bin/bash

while true; do
    echo "y" | arkeod tx distribution withdraw-rewards "$(arkeod keys show wallet --bech val -a)" \
    --commission \
    --chain-id arkeo-testnet-3 \
    --fees 5000uarkeo \
    --from "$WALLET" \
    --keyring-backend test
    echo !!!!!!CLAIM ALL REVARDS!!!!!!

    sleep 300

    echo "y" | arkeod tx staking delegate "$ARKEO_VALOPER_ADDRESS" $(( $(arkeod q bank balances "$ARKEO_WALLET_ADDRESS">
    --chain-id arkeo-testnet-3 \
    --from "$WALLET" \
    --fees=5000uarkeo \
    --keyring-backend test
    echo !!!!!!STAKE!!!!!!

    sleep 300
done
