#!/bin/bash

nid="YOUR_NODE_ID"

while :
do
    sleep 30
    tid=$(curl 127.0.0.1:9002/incentivecash | jq -r '.response.uid')
    echo "Current id: $tid"
    echo "Your id: $nid"
    if [[ "$nid" != "$tid" ]]; then
        echo "Missmatch, Fixing..."
        curl 127.0.0.1:9002/incentivecash%20uid:$nid
        echo "  Fixed!"
    fi
done
