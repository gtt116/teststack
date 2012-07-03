#!/bin/bash
# test for glance

URL='http://114.113.199.9:9292/v1'
XTOKEN='x-auth-token:736b396227da44ec993593a28088b762'

http -v get $URL/images $XTOKEN
#{
#    "images": [
#        {
#            "id": "21c62033-0fc0-454a-9160-5bc5cbcb61a6", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/21c62033-0fc0-454a-9160-5bc5cbcb61a6", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/21c62033-0fc0-454a-9160-5bc5cbcb61a6", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/21c62033-0fc0-454a-9160-5bc5cbcb61a6", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "po"
#        }, 
#        {
#            "id": "3e5570f5-a093-40cf-ae73-8db1aa47dad5", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/3e5570f5-a093-40cf-ae73-8db1aa47dad5", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/3e5570f5-a093-40cf-ae73-8db1aa47dad5", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/3e5570f5-a093-40cf-ae73-8db1aa47dad5", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "112334"
#        }, 
#        {
#            "id": "402fbd2f-5460-4ebb-b688-d1fa6044890d", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/402fbd2f-5460-4ebb-b688-d1fa6044890d", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/402fbd2f-5460-4ebb-b688-d1fa6044890d", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/402fbd2f-5460-4ebb-b688-d1fa6044890d", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "OpenSUSE_12.1.x86_64"
#        }, 
#        {
#            "id": "937e6ec1-6dd4-4c78-808e-62316e7fdcf6", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/937e6ec1-6dd4-4c78-808e-62316e7fdcf6", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/937e6ec1-6dd4-4c78-808e-62316e7fdcf6", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/937e6ec1-6dd4-4c78-808e-62316e7fdcf6", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "ubuntu-12.04-desktop-i386"
#        }, 
#        {
#            "id": "6534f78e-b9a4-4658-8b4e-32b4a4492818", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/6534f78e-b9a4-4658-8b4e-32b4a4492818", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/6534f78e-b9a4-4658-8b4e-32b4a4492818", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/6534f78e-b9a4-4658-8b4e-32b4a4492818", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "Ubuntu 12.04 x86"
#        }, 
#        {
#            "id": "9496e46d-2a3f-4df0-9220-42151a8c2b1a", 
#            "links": [
#                {
#                    "href": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a", 
#                    "rel": "self"
#                }, 
#                {
#                    "href": "http://114.113.199.9:8774/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a", 
#                    "rel": "bookmark"
#                }, 
#                {
#                    "href": "http://114.113.199.9:9292/149696bd1d1941afbeeb986b4e0fa75a/images/9496e46d-2a3f-4df0-9220-42151a8c2b1a", 
#                    "rel": "alternate", 
#                    "type": "application/vnd.openstack.image"
#                }
#            ], 
#            "name": "debian-6.0.4-amd64-standard"
#        }
#    ]
#}

