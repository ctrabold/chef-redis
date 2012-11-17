# DESCRIPTION:

Installs Redis. Redis is an open source, advanced key-value store.

It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.

Details http://redis.io/

# REQUIREMENTS:

none

Currently tested on Ubuntu 10.04 ONLY.

# ATTRIBUTES:

	['redis']['config_path']                  # "/etc/redis/redis.conf"
	['redis']['daemonize']                    # "no"
	['redis']['pidfile']                      # "/var/run/redis.pid"
	['redis']['port']                         # "6379"
	['redis']['bind']                         # "127.0.0.1"
	['redis']['unixsocket']                   # nil
	['redis']['unixsocketperm']               # nil
	['redis']['timeout']                      # "300"
	['redis']['loglevel']                     # "notice"
	['redis']['logfile']                      # "/var/log/redis/redis-server.log"
	['redis']['syslog-enabled']               # "no"
	['redis']['syslog-ident']                 # "redis"
	['redis']['syslog-facility']              # "local0"
	['redis']['databases']                    # 16
	['redis']['save']                         # { 900 => 1, 300 => 10, 60 => 1000
	['redis']['rdbcompression']               # "yes"}
	['redis']['dbfilename']                   # "dump.rdb"
	['redis']['dir']                          # "/var/lib/redis"

### Replication

	['redis']['slaveof']['ip']                # nil
	['redis']['slaveof']['port']              # nil
	['redis']['masterauth']                   # nil
	['redis']['slave-serve-stale-data']       # "yes"
	['redis']['repl-ping-slave-period']       # 10

### Security

	['redis']['password']                     # nil
	['redis']['rename-command']               # { }

### Limits

	['redis']['maxclients']                   # nil
	['redis']['maxmemory']                    # nil
	['redis']['maxmemory-policy']             # nil

### Append Only Mode

	['redis']['appendonly']                   # "no"
	['redis']['appendfsync']                  # "everysec" (everysec, always, no)
	['redis']['no-appendfsync-on-rewrite']    # "no"
	['redis']['auto-aof-rewrite-percentage']  # 100
	['redis']['auto-aof-rewrite-min-size']    # "64mb"

### Slow Log

	['redis']['slowlog-log-slower-than']      # 10000
	['redis']['slowlog-max-len']              # 128

### Advanced Options

	['redis']['hash-max-zipmap-entries']      # 512
	['redis']['hash-max-zipmap-value']        # 64
	['redis']['list-max-ziplist-entries']     # 512
	['redis']['list-max-ziplist-value']       # 64
	['redis']['set-max-intset-entries']       # 512
	['redis']['zset-max-ziplist-entries']     # 128
	['redis']['zset-max-ziplist-value']       # 64
	['redis']['activerehashing']              # "yes"
	['redis']['include']                      # [ ]

### Compile From Source Options

	['redis']['source']['version']            # "2.4.1"
	['redis']['source']['prefix']             # "/usr/local"
	['redis']['source']['tar_url']            # "http://redis.googlecode.com/files/redis-2.4.1.tar.gz"
	['redis']['source']['tar_checksum']       # "38e02..."
	['redis']['source']['create_service']     # true
	['redis']['source']['user']               # "redis"
	['redis']['source']['group']              # "redis"

### Gem Options

	['redis']['gem']['packages']              # "redis"

# USAGE:

* Add cookbook ``redis`` to your runlist. This will install redis on your machine.
* Add cookbook ``redis::source`` to your runlist. This will build redis on your machine from source.
* Add cookbook ``redis::gem`` to your runlist. This will install the redis Rubygem.
* Add cookbook ``redis::remove`` to your runlist if you want to remove redis on your machine.
