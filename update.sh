#!/usr/bin/env bash

LIST_FILE='blacklist.txt'
API_KEY='--your-api-key-here--'

curl -G https://api.abuseipdb.com/api/v2/blacklist \
  -H "Key: $API_KEY" \
  -H "Accept: text/plain" \
  > $LIST_FILE
