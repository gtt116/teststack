import oslo_config
import oslo_messaging
import logging

logging.basicConfig()
logging.getLogger().setLevel(logging.INFO)

conf = oslo_config.cfg.CONF


transport = oslo_messaging.get_transport(
    conf, 'rabbit://stackrabbit:password@localhost:5672/')

target = oslo_messaging.Target(topic='test')
client = oslo_messaging.RPCClient(transport, target)

print client.call({}, 'hi', arg=1)
print client.call({}, 'hi', arg=3)
print client.cast({}, 'nothing')
