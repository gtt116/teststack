#!/bin/bash
# test for nova
URL='http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a'
XTOKEN='x-auth-token:736b396227da44ec993593a28088b762'

# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/flavors/2

# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a


# ---------------------------------
echo '[+] get flavor'
http -v get $URL/flavors $XTOKEN


# ---------------------------------
echo '[+] get servers'
http -v get $URL/servers/detail $XTOKEN

# ----------------------------------
echo '[+] create instance: server-2'
# Create a intance with same_host with bd976f4a-ddd7-407f-bd30-2b74428e3716,
# and different host with bd976f4a-ddd7-407f-bd30-2b74428e3716, so that action
# will be faild.
http -v post $URL/servers $XTOKEN <<<  \
'''
{
    "server": {
        "name": "server-2",
        "imageRef": "9496e46d-2a3f-4df0-9220-42151a8c2b1a",
        "flavorRef": "2",
        "metadata": {
            "My Server Name": "Apache1"
        }
    },
    "os:scheduler_hints": {
        "same_host": [
            "bd976f4a-ddd7-407f-bd30-2b74428e3716"
        ],
        "different_host": [
            "bd976f4a-ddd7-407f-bd30-2b74428e3716"
        ],
        "build_near_host_ip": "10.120.34.200",
        "cidr": "/24"
    }
}
'''



