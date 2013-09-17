"""
Running this script in the host which glance is running.
"""

from nosclient import nos


n = nos.Nos(context=None,
            url='nos.test.com',
            host='nos.test.com',
            access_key='access_key',
            access_secret='secret_key',
            is_whitelist=False,
            use_nos_store_class=False)


bucket_name = 'fake-bucket'
n.check_bucket_exist(bucket_name)


objectKey = 'obj'
n.checkObjectExist(bucket_name, objectKey)
