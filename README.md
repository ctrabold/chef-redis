# DESCRIPTION:

Installs Redis. Redis is an open source, advanced key-value store.

It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.

Details http://redis.io/

# REQUIREMENTS:

none

Currently tested on Ubuntu 10.04 ONLY.

# ATTRIBUTES:

	['redis']['bind']             # "127.0.0.1"
	['redis']['port']             # "6379"
	['redis']['config_path']      # "/etc/redis/redis.conf"
	['redis']['daemonize']        # "no"
	['redis']['timeout']          # "300"
	['redis']['loglevel']         # "notice"
	['redis']['password']         # nil
	['redis']['logfile']          # "/var/log/redis/redis-server.log"
	['redis']['databases']        # 16
	['redis']['save']             # { 900: 1, 300: 10, 60: 1000 }
	['redis']['rdbcompression']   # "yes"
	['redis']['dbfilename']       # "dump.rdb"
	['redis']['dir']              # "/var/lib/redis"
	['redis']['maxclients']       # nil
	['redis']['maxmemory']        # nil
	['redis']['appendonly']       # "no"
	['redis']['appendfsync']      # "always"
	['redis']['glueoutputbuf']    # "yes"

	['redis']['slaveof']['ip']   # nil
	['redis']['slaveof']['port'] # nil
	['redis']['masterauth']      # nil

	['redis']['source']['version']          # "2.4.1"
	['redis']['source']['prefix']           # "/usr/local"
	['redis']['source']['tar_url']          # "http://redis.googlecode.com/files/redis-2.4.1.tar.gz"
	['redis']['source']['tar_checksum']     # "38e02..."
	['redis']['source']['create_service']   # true
	['redis']['source']['user']             # "redis"
	['redis']['source']['group']            # "redis"

# USAGE:

* Add cookbook ``redis`` to your runlist. This will install redis on your machine.
* Add cookbook ``redis::source`` to your runlist. This will build redis on your machine from source.
* Add cookbook ``redis::gem`` to your runlist. This will install the redis Rubygem.
* Add cookbook ``redis::remove`` to your runlist if you want to remove redis on your machine.
