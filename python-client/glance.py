from glanceclient import Client


version = '1'
token = '5ff6db3c3f534ee3af76edde26e8dcc0'
endpoint = 'http://localhost:9292'
c = Client(version, endpoint=endpoint, token=token)
images = [i for i in c.images.list()]
c.images.get('f3108ff6-60cc-452f-9f86-994ecf131cc8')
