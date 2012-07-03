#!/bin/bash
# test for nova
URL='http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a'
XTOKEN='x-auth-token:736b396227da44ec993593a28088b762'

# get flavor
http -v get $URL/flavors $XTOKEN
# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/flavors/2

# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a


http -v get $URL/servers/detail $XTOKEN

echo '[+] create instance: server-1'
http -v post $URL/servers $XTOKEN <<<  \
'''
{
    "server": {
        "name": "server-1",
        "imageRef": "9496e46d-2a3f-4df0-9220-42151a8c2b1a",
        "flavorRef": "2"
    },
    "os:scheduler_hints": {
        "same_host":["bd976f4a-ddd7-407f-bd30-2b74428e3716"]
    }
}
'''



