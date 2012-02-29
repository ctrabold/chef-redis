#
# Author:: Christian Trabold <christian.trabold@dkd.de>
# Author:: Fletcher Nichol <fnichol@nichol.ca>
# Cookbook Name:: redis
# Attributes:: source
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

default['redis']['source']['version'] = "2.4.8"
default['redis']['source']['prefix']  = "/usr/local"

default['redis']['source']['tar_url']   =
  "http://redis.googlecode.com/files/redis-#{node['redis']['source']['version']}.tar.gz"
default['redis']['source']['tar_checksum']   =
  "8166ca6ddea4bdb311510590a1ef94e3e32eed2fae44875a5b44fe72bda556f3"

default['redis']['source']['create_service']  = true

default['redis']['source']['user']  = "redis"
default['redis']['source']['group'] = "redis"

case platform
when "ubuntu","debian"
  node.set['redis']['source']['pkgs'] = %w{build-essential}
else
  node.set['redis']['source']['pkgs'] = []
end
