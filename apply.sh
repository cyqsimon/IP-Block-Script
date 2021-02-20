#!/usr/bin/env bash

LIST_FILE='blacklist.txt'
CHAIN_NAME="abip-ban"

# read blacklist
mapfile -t list < $LIST_FILE

# clear iptables chain
iptables -F $CHAIN_NAME

# ban using iptables
for ip in ${list[@]}; do
  # filter out IPv6
  if ! [[ "$ip" =~ ":" ]]; then
    iptables -A $CHAIN_NAME -s $ip -j DROP
  fi
done
