#!/bin/bash
# test for nova
URL='http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a'
XTOKEN='x-auth-token:49690cdc16824d3b94f37a6dbb0485d9'

# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/flavors/2

# http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a


# ---------------------------------
echo '[+] get flavor'
http -v get $URL/flavors $XTOKEN


# ---------------------------------
echo '[+] get servers'
http -v get $URL/servers/detail $XTOKEN

# ----------------------------------
#echo '[+] create instance: server-2'
# Create a intance with same_host with bd976f4a-ddd7-407f-bd30-2b74428e3716,
# and different host with bd976f4a-ddd7-407f-bd30-2b74428e3716, so that action
# will be faild.
# 
#NOTE:
# Before use `os:scheduler_hints`, you must add configuration in nova.conf,
# scheduler_default_filters=DifferentHostFilter,SameHostFilter ....
#http -v post $URL/servers $XTOKEN <<<  \
#'''
#{
#    "server": {
#        "name": "server-2",
#        "imageRef": "9496e46d-2a3f-4df0-9220-42151a8c2b1a",
#        "flavorRef": "2",
#        "metadata": {
#            "My Server Name": "Apache1"
#        }
#    }
#}
#'''


#'''
#{
#    "server": {
#        "name": "server-2",
#        "imageRef": "9496e46d-2a3f-4df0-9220-42151a8c2b1a",
#        "flavorRef": "2",
#        "metadata": {
#            "My Server Name": "Apache1"
#        }
#    },
#    "os:scheduler_hints": {
#        "same_host": [
#            "bd976f4a-ddd7-407f-bd30-2b74428e3716"
#        ],
#        "different_host": [""
#        ],
#        "build_near_host_ip": "10.120.34.200",
#        "cidr": "/24"
#    }
#}
#'''

#- -- test Security group api addSecurityGroup, removeSecurityGroup
#echo '[+] get securitys'
http -v post $URL/servers/6ac0fb78-2d55-487f-8ee2-a2eda480f0de/action $XTOKEN <<<'{"addSecurityGroup":{"name":"default"}}'
#POST /v1.1/149696bd1d1941afbeeb986b4e0fa75a/servers/6ac0fb78-2d55-487f-8ee2-a2eda480f0de/action HTTP/1.1
#Accept-Encoding: identity, deflate, compress, gzip
#Accept: application/json
#x-auth-token: 49690cdc16824d3b94f37a6dbb0485d9
#Host: 114.113.199.9:8774
#User-Agent: HTTPie/0.2.2
#Content-Type: application/json; charset=utf-8

#{
#    "addSecurityGroup": {
#        "name": "default"
#    }
#}

#HTTP/1.1 400 Bad Request
#Content-Length: 137
#Content-Type: application/json; charset=UTF-8
#X-Compute-Request-Id: req-03edc801-019b-4fdf-a3af-5fd31126f685
#Date: Fri, 06 Jul 2012 06:38:25 GMT

#{
#    "badRequest": {
#        "code": 400, 
#        "message": "Security group 2 is already associated with the instance 6ac0fb78-2d55-487f-8ee2-a2eda480f0de"
#    }
#}

