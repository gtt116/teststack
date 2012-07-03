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
