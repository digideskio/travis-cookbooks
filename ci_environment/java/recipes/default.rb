#
# Author:: Travis CI Development Team
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2008-2011, Opscode, Inc.
# Copyright 2011-2013, Travis CI Development Team <contact@travis-ci.org>
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

#
# WARNING:
# All recipes of this cookbook are (currently) specifically designed for Ubuntu
# Please keep this in mind.
#

include_recipe "java::oraclejdk7"

template "/etc/profile.d/java_home.sh" do
  owner "root"
  group "root"
  mode 0644

  source "etc/profile.d/java_home.sh.erb"
end
