#
# Author:: Christian Trabold <christian.trabold@dkd.de>
# Cookbook Name:: redis
# Recipe:: package
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
#
case node['platform']
when 'centos', 'redhat'
  include_recipe 'yum-remi'
  package 'redis'
  redis_init_d = '/etc/init.d/redis'
when 'ubuntu'
  package "redis-server"
  redis_init_d = '/etc/init.d/redis-server'
end

service "redis" do
  start_command   "#{redis_init_d} start #{node['redis']['config_path']}" # Last argument is ignored in RH/Centos
  stop_command    "#{redis_init_d} stop"
  restart_command "#{redis_init_d} restart"
end

template "#{node['redis']['config_path']}" do
  source "redis.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, resources(:service => "redis")
end
