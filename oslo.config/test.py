import sys
from oslo.config import cfg

CONF = cfg.CONF

CONF(args=sys.argv[1:],
     project='gtt',
     prog='gtt-notifier',
     version='1.0',
     usage=None,
     default_config_files=None)

# :param args: command line arguments (defaults to sys.argv[1:])
# :param project: an optional project name
# :param prog: the program name, defaulting to the basename of sys.argv[0]
# :param version: the program version ( for --version)
# :param usage: a usage string (%prog will be expanded)
# :param default_config_files: config files to use by default
