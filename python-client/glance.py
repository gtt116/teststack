from glanceclient import Client

version = '1'
c = Client(version, endpoint='http://localhost:9292/',
           token='ed04f011085345ee94725580da2149e9')
images = [i for i in c.images.list()]
c.images.get('f3108ff6-60cc-452f-9f86-994ecf131cc8')
