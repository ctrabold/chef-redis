# DESCRIPTION:

Installs Redis. Redis is an open source, advanced key-value store. 

It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.

Details http://redis.io/

# REQUIREMENTS:

none

Currently tested on Ubuntu 10.04 ONLY.

# ATTRIBUTES:

	['redis']['bind']         # "127.0.0.1"
	['redis']['port']         # "6379"
	['redis']['config_path']  # "/etc/redis/redis.conf"
	['redis']['daemonize']    # "no"
	['redis']['timeout']      # "300"
	['redis']['loglevel']     # "notice"


# USAGE:

* Add cookbook ``redis`` to your runlist. This will install redis on your machine.
* Add cookbook ``redis::gem`` to your runlist. This will install the redis Rubygem.
* Add cookbook ``redis::remove`` to your runlist if you want to remove redis on your machine.

# TODO

* Implement ``redis::source`` recipe.