#
# Author:: Christian Trabold <christian.trabold@dkd.de>
# Cookbook Name:: redis
# Attributes:: default
#
# Copyright 2011, dkd Internet Service GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Global Options
default['redis']['config_path']      = "/etc/redis/redis.conf"
default['redis']['daemonize']        = "no"
default['redis']['pidfile']          = "/var/run/redis.pid"
default['redis']['port']             = "6379"
default['redis']['bind']             = "127.0.0.1"
default['redis']['unixsocket']       = nil
default['redis']['unixsocketperm']   = nil
default['redis']['timeout']          = "300"
default['redis']['loglevel']         = "notice"
default['redis']['logfile']          = "/var/log/redis/redis-server.log"
default['redis']['syslog-enabled']   = "no"
default['redis']['syslog-ident']     = "redis"
default['redis']['syslog-facility']  = "LOCAL0"
default['redis']['databases']        = 16
default['redis']['save']             = { 900 => 1, 300 => 10, 60 => 1000 }
default['redis']['rdbcompression']   = "yes"
default['redis']['dbfilename']       = "dump.rdb"
default['redis']['dir']              = "/var/lib/redis"

# Replication
default['redis']['slaveof']['ip']           = nil
default['redis']['slaveof']['port']         = nil
default['redis']['masterauth']              = nil
default['redis']['slave-serve-stale-data']  = "yes"
default['redis']['repl-ping-slave-period']  = 10

# Security
default['redis']['password']         = nil
default['redis']['rename-command']   = { }

# Limits
default['redis']['maxclients']       = nil
default['redis']['maxmemory']        = nil
default['redis']['maxmemory-policy'] = nil

# Append Only Mode
default['redis']['appendonly']                  = "no"
default['redis']['appendfsync']                 = "everysec" # everysec, always, no
default['redis']['no-appendfsync-on-rewrite']   = "no"
default['redis']['auto-aof-rewrite-percentage'] = 100
default['redis']['auto-aof-rewrite-min-size']   = "64mb"

# Slow Log
default['redis']['slowlog-log-slower-than']  = 10000
default['redis']['slowlog-max-len']          = 128

# Advanced Options
default['redis']['hash-max-zipmap-entries']   = 512
default['redis']['hash-max-zipmap-value']     = 64
default['redis']['list-max-ziplist-entries']  = 512
default['redis']['list-max-ziplist-value']    = 64
default['redis']['set-max-intset-entries']    = 512
default['redis']['zset-max-ziplist-entries']  = 128
default['redis']['zset-max-ziplist-value']    = 64
default['redis']['activerehashing']           = "yes"
default['redis']['include']                   = [ ]
