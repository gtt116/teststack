import eventlet
eventlet.monkey_patch()

from nova import utils


def loop():
    while True:
        eventlet.sleep(1)
        print 'hello'


def subprocess():
    """Block at this function"""
    utils.execute('cat', '/dev/zero')

eventlet.spawn_n(loop)
# We want to make sure when subprocess() blocked, loop can continue to say H.
subprocess()
