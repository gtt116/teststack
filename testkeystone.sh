# test for keystone

URL='http://testnode:5000/v2.0'

http -v post $URL/tokens auth:='{"passwordCredentials":{"username": "admin", "password": "admin"}}' 
#token: 7033e124a5984d82a8731a347a69a085


http -v get $URL/tenants x-auth-token:7033e124a5984d82a8731a347a69a085
#tenant: 149696bd1d1941afbeeb986b4e0fa75a

http -v post $URL/tokens auth:='{"tenantId":"149696bd1d1941afbeeb986b4e0fa75a","passwordCredentials":{"username": "admin", "password": "admin"}}' 	

#token: 736b396227da44ec993593a28088b762
# nova:http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a
# glance:http://114.113.199.9:9292/v1
# volume:http://114.113.199.9:8776/v1/149696bd1d1941afbeeb986b4e0fa75a


# Only One region
#==================
# 
#{
#    "access": {
#        "serviceCatalog": [
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://114.113.199.9:8776/v1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "internalURL": "http://114.113.199.9:8776/v1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "publicURL": "http://114.113.199.9:8776/v1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "cinder", 
#                "type": "volume"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://114.113.199.9:9292/v1", 
#                        "internalURL": "http://114.113.199.9:9292/v1", 
#                        "publicURL": "http://114.113.199.9:9292/v1", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "glance", 
#                "type": "image"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "internalURL": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "publicURL": "http://114.113.199.9:8774/v1.1/149696bd1d1941afbeeb986b4e0fa75a", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "nova", 
#                "type": "compute"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://114.113.199.9:35357/v2.0", 
#                        "internalURL": "http://114.113.199.9:5000/v2.0", 
#                        "publicURL": "http://114.113.199.9:5000/v2.0", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "keystone", 
#                "type": "identity"
#            }
#        ], 
#        "token": {
#            "expires": "2012-07-26T15:38:46Z", 
#            "id": "77b2c345c2e247cd9dcbd26d10dec1da", 
#            "tenant": {
#                "description": null, 
#                "enabled": true, 
#                "id": "149696bd1d1941afbeeb986b4e0fa75a", 
#                "name": "admin"
#            }
#        }, 
#        "user": {
#            "id": "dad54cead61440eebec222c56e07a99b", 
#            "name": "admin", 
#            "roles": [
#                {
#                    "id": "3e21c078ac054ea39c29b72494ebc083", 
#                    "name": "Admin"
#                }
#            ], 
#            "roles_links": [], 
#            "username": "admin"
#        }
#    }
#}


# Two regions
#=============
#{
#    "access": {
#        "serviceCatalog": [
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://localhost:8776/v1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "internalURL": "http://localhost:8776/v1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "publicURL": "http://localhost:8776/v1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "Volume Service", 
#                "type": "volume"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://localhost:9292/v1", 
#                        "internalURL": "http://localhost:9292/v1", 
#                        "publicURL": "http://localhost:9292/v1", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "Image Service", 
#                "type": "image"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://localhost:8774/v1.1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "internalURL": "http://localhost:8774/v1.1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "publicURL": "http://localhost:8774/v1.1/211c97bba4a44c11b796d17a27aa7bb8", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "Compute Service", 
#                "type": "compute"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://localhost:8773/services/Admin", 
#                        "internalURL": "http://localhost:8773/services/Cloud", 
#                        "publicURL": "http://localhost:8773/services/Cloud", 
#                        "region": "RegionOne"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "EC2 Service", 
#                "type": "ec2"
#            }, 
#            {
#                "endpoints": [
#                    {
#                        "adminURL": "http://localhost:35357/v2.0", 
#                        "internalURL": "http://localhost:5000/v2.0", 
#                        "publicURL": "http://localhost:5000/v2.0", 
#                        "region": "RegionOne"
#                    }, 
#                    {
#                        "adminURL": "http://114.113.199.9:35357/v2.0", 
#                        "internalURL": "http://114.113.199.9:5000/v2.0", 
#                        "publicURL": "http://114.113.199.9:5000/v2.0", 
#                        "region": "ReginTwo"
#                    }
#                ], 
#                "endpoints_links": [], 
#                "name": "Identity Service", 
#                "type": "identity"
#            }
#        ], 
#        "token": {
#            "expires": "2012-07-27T03:54:07Z", 
#            "id": "593fef9b623a483fb4ae331b6daa8423", 
#            "tenant": {
#                "description": "admin for test\r\n", 
#                "enabled": true, 
#                "id": "211c97bba4a44c11b796d17a27aa7bb8", 
#                "name": "admin"
#            }
#        }, 
#        "user": {
#            "id": "7b7ae2f69bfb4f0c9af0a201f7558ac5", 
#            "name": "admin", 
#            "roles": [], 
#            "roles_links": [], 
#            "username": "admin"
#        }
#    }
#}

