#!/bin/bash

nid=""
port=9005
while :
do
    tid=$(curl 127.0.0.1:{$port}/incentivecash | jq -r '.response.uid')
    echo "Current id: $tid"
    echo "Your id: $nid"
    if [[ "$nid" != "$tid" ]]; then
        echo "Missmatch, Fixing..."
        curl 127.0.0.1:{$port}/incentivecash%20uid:$nid
        echo "  Fixed!"
    fi
    sleep 300
done
