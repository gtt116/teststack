import oslo_config
import oslo_messaging
import logging

logging.basicConfig()
logging.getLogger().setLevel(logging.DEBUG)

conf = oslo_config.cfg.CONF


class RPCServer(object):

    def hi(self, ctx, arg):
        return arg * 2


transport = oslo_messaging.get_transport(
    conf, 'rabbit://stackrabbit:password@localhost:5672/')

# Below target means listening on exchange `test_exchange`
# (if not specified, default exchange is 'openstack'.
#
# Queues:
#    test
#    test.server1
#    test_fanout_$uuid

target = oslo_messaging.Target(
    exchange='test_exchange', topic='test', server='server1')

server = oslo_messaging.get_rpc_server(
    transport, target, [RPCServer()], executor='blocking')

try:
    server.start()
except KeyboardInterrupt:
    pass
