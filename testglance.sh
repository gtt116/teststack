#!/bin/bash
# test for glance

URL='http://114.113.199.9:9292/v1'
XTOKEN='x-auth-token:736b396227da44ec993593a28088b762'

http -v get $URL/images $XTOKEN

#{
#    "images": [
#        {
#            "checksum": "faa47e7739870661ef91422e663d8b27", 
#            "container_format": "ovf", 
#            "disk_format": "qcow2", 
#            "id": "21c62033-0fc0-454a-9160-5bc5cbcb61a6", 
#            "name": "po", 
#            "size": 796852224
#        }, 
#        {
#            "checksum": "5f74d4903ce7798ffec7ea99860e3707", 
#            "container_format": "ovf", 
#            "disk_format": "qcow2", 
#            "id": "3e5570f5-a093-40cf-ae73-8db1aa47dad5", 
#            "name": "112334", 
#            "size": 770244608
#        }, 
#        {
#            "checksum": "b216a9e57d8a3170e652b9067e6beb2b", 
#            "container_format": "ovf", 
#            "disk_format": "vmdk", 
#            "id": "402fbd2f-5460-4ebb-b688-d1fa6044890d", 
#            "name": "OpenSUSE_12.1.x86_64", 
#            "size": 167371179
#        }, 
#        {
#            "checksum": "128f0c16f4734c420b0185a492d92e52", 
#            "container_format": "bare", 
#            "disk_format": "qcow2", 
#            "id": "937e6ec1-6dd4-4c78-808e-62316e7fdcf6", 
#            "name": "ubuntu-12.04-desktop-i386", 
#            "size": 732213248
#        }, 
#        {
#            "checksum": "1d7fdd5c951423f1c582b53f110df4b7", 
#            "container_format": "ovf", 
#            "disk_format": "qcow2", 
#            "id": "6534f78e-b9a4-4658-8b4e-32b4a4492818", 
#            "name": "Ubuntu 12.04 x86", 
#            "size": 217972736
#        }, 
#        {
#            "checksum": "67ebd94e6f164293a3768200810657aa", 
#            "container_format": "ovf", 
#            "disk_format": "qcow2", 
#            "id": "9496e46d-2a3f-4df0-9220-42151a8c2b1a", 
#            "name": "debian-6.0.4-amd64-standard", 
#            "size": 768868352
#        }
#    ]
#}

