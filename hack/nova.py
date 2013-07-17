from nova import flags
flags.parse_args([])

from nova import context
c = context.get_admin_context()

from nova import quota
q = quota.QUOTAS
q.get_defaults(c)
q.get_project_quotas(c, '0cb025698166432c8acebe2b74860740')
