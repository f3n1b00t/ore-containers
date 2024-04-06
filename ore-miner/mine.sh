#!/bin/sh

rpc=${SOL_RPC:-"https://api.mainnet-beta.solana.com"}
priority_fee=${PRIORITY_FEE:-"5000000"}
thread_count=${THREAD_COUNT:-"16"}
command="/root/.cargo/bin/ore --rpc $rpc --keypair /root/wallet.json --priority-fee $priority_fee mine --threads $thread_count"

while true; do
    $command
    if [ $? -ne 0 ]; then
        echo "Error while handling command, retrying.."
    fi
done
