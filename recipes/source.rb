#
# Author:: Christian Trabold <christian.trabold@dkd.de>
# Cookbook Name:: redis
# Recipe:: source
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

script "get and make redis" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget http://redis.googlecode.com/files/redis-#{node["redis"]["source_version"]}.tar.gz
  tar -zxf redis-#{node["redis"]["source_version"]}.tar.gz
  cd redis-#{node["redis"]["source_version"]}
  ./configure
  make
  cp src/redis-cli /usr/local/bin
  cp src/redis-server /usr/local/bin
  mkdir /etc/redis 
  mkdir #{node["redis"]["data_dir"]}
  EOH
end


template "/etc/init.d/redis" do
  source "redis_init.erb"
  mode "0744"
end

template "/etc/redis/#{node["redis"]["port"]}.conf" do
  source 'redis.source.conf.erb'
  mode "0644"
end


script "setup init.d and start process" do
  interpreter "bash"
  user "root"
  cwd "/etc/init.d"
  code <<-EOH
  update-rc.d redis defaults
  /etc/init.d/redis start
  EOH
end


