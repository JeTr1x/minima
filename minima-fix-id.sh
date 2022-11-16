#!/bin/bash

nid=""
port=9005
while :
do
    sleep 300
    tid=$(curl 127.0.0.1:{$port}/incentivecash | jq -r '.response.uid')
    echo "Current id: $tid"
    echo "Your id: $nid"
    if [[ "$nid" != "$tid" ]]; then
        echo "Missmatch, Fixing..."
        curl 127.0.0.1:{$port}/incentivecash%20uid:$nid
        echo "  Fixed!"
    fi
done
