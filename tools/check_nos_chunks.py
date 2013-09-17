"""
The script used to validate the chunks in NOS.
"""
from nosclient import nos
from hashlib import md5


# A file contains all objectid which joined by ','.
chunks_file = '2b'
url = '127.0.0.1:8181'
host = 'nos.test.com'
access_key = 'test_key',
secret_key = 'secret_key',
n = nos.Nos(None, url, host, access_key, secret_key, is_whitelist=True)
bucket = 'nova-images'

if __name__ == '__main__':
    chunks = file(chunks_file).read().split(',')
    for c in chunks:
        checksum = md5(n.getObject(bucket, c)).hexdigest()
        if checksum != c:
            print c
        else:
            print 'ok %s' % c
