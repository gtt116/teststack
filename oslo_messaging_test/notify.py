import oslo_config
import oslo_messaging
import logging

logging.basicConfig()
logging.getLogger().setLevel(logging.INFO)

conf = oslo_config.cfg.CONF

transport = oslo_messaging.get_transport(
    conf, 'rabbit://stackrabbit:password@localhost:5672/')

publisher = 'test_pub'
notifier = oslo_messaging.Notifier(transport,
                                   publisher,
                                   driver='messaging',
                                   topic='notifications')

event_type = 'test_type'
payload = {}

# Will send message to $topic.$priority queues
# For this case, the message will sit on 'notifications.info' queue
notifier.info({}, event_type, payload)
